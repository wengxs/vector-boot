package com.vector.module.wms.enums;

import lombok.Getter;

@Getter
public enum BizType {

    PURCHASE("采购"),
    SALE_RETURN("销退");

    private final String desc;

    BizType(String desc){
        this.desc = desc;
    }
}
