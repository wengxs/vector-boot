package com.vector.common.web.handler;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import com.vector.common.security.util.SecurityUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

@Component
@Slf4j
public class MyBatisMetaObjectHandler implements MetaObjectHandler {

    private String getOperator() {
        try {
            return StringUtils.defaultIfBlank(SecurityUtils.getUsername(), "");
        } catch (Exception e){
            log.warn(e.getMessage());
        }
        return "";
    }

    @Override
    public void insertFill(MetaObject metaObject) {
        String operator = getOperator();
        this.setFieldValByName("createBy", operator, metaObject);
        this.setFieldValByName("updateBy", operator, metaObject);

    }

    @Override
    public void updateFill(MetaObject metaObject) {
        this.setFieldValByName("updateBy", getOperator(), metaObject);
    }
}
