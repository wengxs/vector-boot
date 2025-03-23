package com.vector.common.mybatis.handler;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import com.vector.common.security.util.SecurityUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

@Component
@Slf4j
public class MyBatisMetaObjectHandler implements MetaObjectHandler {

    private Long getOperator() {
        try {
            return SecurityUtils.getUserId();
        } catch (Exception e){
            log.warn(e.getMessage());
        }
        return 0L;
    }

    @Override
    public void insertFill(MetaObject metaObject) {
        Long operator = getOperator();
        this.setFieldValByName("createBy", operator, metaObject);
        this.setFieldValByName("updateBy", operator, metaObject);
    }

    @Override
    public void updateFill(MetaObject metaObject) {
        this.setFieldValByName("updateBy", getOperator(), metaObject);
    }
}
