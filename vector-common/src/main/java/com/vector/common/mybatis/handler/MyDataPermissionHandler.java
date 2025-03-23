package com.vector.common.mybatis.handler;

import com.baomidou.mybatisplus.core.toolkit.ObjectUtils;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.handler.DataPermissionHandler;
import com.vector.common.mybatis.annotation.DataPermission;
import com.vector.common.mybatis.enums.DataScope;
import com.vector.common.security.util.SecurityUtils;
import lombok.extern.slf4j.Slf4j;
import net.sf.jsqlparser.expression.Expression;
import net.sf.jsqlparser.expression.Function;
import net.sf.jsqlparser.expression.LongValue;
import net.sf.jsqlparser.expression.Parenthesis;
import net.sf.jsqlparser.expression.operators.conditional.AndExpression;
import net.sf.jsqlparser.expression.operators.conditional.OrExpression;
import net.sf.jsqlparser.expression.operators.relational.EqualsTo;
import net.sf.jsqlparser.expression.operators.relational.ExpressionList;
import net.sf.jsqlparser.expression.operators.relational.InExpression;
import net.sf.jsqlparser.schema.Column;
import net.sf.jsqlparser.schema.Table;
import net.sf.jsqlparser.statement.select.PlainSelect;
import net.sf.jsqlparser.statement.select.SelectExpressionItem;
import net.sf.jsqlparser.statement.select.SubSelect;

import java.lang.reflect.Method;
import java.util.Collections;

@Slf4j
public class MyDataPermissionHandler implements DataPermissionHandler {

    @Override
    public Expression getSqlSegment(Expression where, String mappedStatementId) {
        try {
            Class<?> clazz = Class.forName(mappedStatementId.substring(0, mappedStatementId.lastIndexOf(StringPool.DOT)));
            String methodName = mappedStatementId.substring(mappedStatementId.lastIndexOf(StringPool.DOT) + 1);
            Method[] methods = clazz.getDeclaredMethods();
            for (Method method : methods) {
                DataPermission annotation = method.getAnnotation(DataPermission.class);
                if (ObjectUtils.isNotEmpty(annotation)
                        && (method.getName().equals(methodName) || (method.getName() + "_COUNT").equals(methodName))) {
                    // 超级管理员不受数据权限控制
                    if (SecurityUtils.isAdmin()) {
                        return where;
                    }
                    return dataScopeFilter(annotation, where);
                }
            }
        } catch (ClassNotFoundException e) {
            log.error(e.getMessage(), e);
        }
        return where;
    }

    public static Expression dataScopeFilter(DataPermission annotation, Expression where) {
        String deptAlias = annotation.deptAlias();
        String deptIdColumnName = annotation.deptIdColumnName();
        String userAlias = annotation.userAlias();
        String userIdColumnName = annotation.userIdColumnName();

        String deptColumnName = StringUtils.isNotBlank(deptAlias) ?
                (deptAlias + StringPool.DOT + deptIdColumnName) : deptIdColumnName;
        String userColumnName = StringUtils.isNotBlank(userAlias) ?
                (userAlias + StringPool.DOT + userIdColumnName) : userIdColumnName;

        Expression expression = null;
        Long userId, deptId;
        String dataScopeStr = SecurityUtils.getDataScope();
        DataScope dataScope = DataScope.valueOf(dataScopeStr);
        switch (dataScope) {
            case DEPT_AND_CHILD -> {
                deptId = SecurityUtils.getDeptId();
                InExpression inExpression = new InExpression();
                inExpression.setLeftExpression(new Column(deptColumnName));
                SubSelect subSelect = new SubSelect();
                PlainSelect plainSelect = new PlainSelect();
                plainSelect.setSelectItems(Collections.singletonList(
                        new SelectExpressionItem(new Column("id"))
                ));
                plainSelect.setFromItem(new Table("sys_dept"));
                EqualsTo equalsTo = new EqualsTo();
                equalsTo.setLeftExpression(new Column("id"));
                equalsTo.setRightExpression(new LongValue(deptId));
                Function function = new Function();
                function.setName("FIND_IN_SET");
                function.setParameters(new ExpressionList(new LongValue(deptId), new Column("ancestors")));
                plainSelect.setWhere(new OrExpression(equalsTo, function));
                subSelect.setSelectBody(plainSelect);
                inExpression.setRightExpression(subSelect);
                expression = inExpression;
            }
            case DEPT -> {
                deptId = SecurityUtils.getDeptId();
                EqualsTo equalsTo = new EqualsTo();
                equalsTo.setLeftExpression(new Column(deptColumnName));
                equalsTo.setRightExpression(new LongValue(deptId));
                expression = equalsTo;
            }
            case SELF -> {
                userId = SecurityUtils.getUserId();
                EqualsTo equalsTo = new EqualsTo();
                equalsTo.setLeftExpression(new Column(userColumnName));
                equalsTo.setRightExpression(new LongValue(userId));
                expression = equalsTo;
            }
        }
        return ObjectUtils.isNotEmpty(where) ? new AndExpression(where, new Parenthesis(expression)) : expression;
    }

}
