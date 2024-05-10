package com.vector.module.wms.enums;

import lombok.Getter;

@Getter
public enum WmsReceiveStatus {

    UNSENT("待发货"),
    SENT_OUT("待收货"),
    SIGNED("已签收"),
    FINISHED("已入库"),
    CANCELED("已取消");

    private final String desc;

    WmsReceiveStatus(String desc){
        this.desc = desc;
    }

}
