package com.vector.common.mybatis.annotation;

import java.lang.annotation.*;

/**
 * 数据权限注解(MyBatisPlus)
 * {@link com.baomidou.mybatisplus.extension.plugins.inner.DataPermissionInterceptor}
 *
 * @author wengxs
 */
@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.TYPE, ElementType.METHOD})
public @interface DataPermission {

    /** 部门表别名 */
    String deptAlias() default "";

    /** 部门id字段名 */
    String deptIdColumnName() default "dept_id";

    /** 用户表别名 */
    String userAlias() default "";

    /** 用户id字段名 */
    String userIdColumnName() default "create_by";

}