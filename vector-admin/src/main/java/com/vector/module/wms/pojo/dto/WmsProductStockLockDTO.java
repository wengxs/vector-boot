package com.vector.module.wms.pojo.dto;

import lombok.Data;

import java.util.List;

/**
 * 锁库存表单
 */
@Data
public class WmsProductStockLockDTO {

    /** 订单号 */
    private String orderNo;

    /** 销售平台 */
    private String platform;

    /** 店铺名称 */
    private String shopName;

    /** 买家名称 */
    private String buyer;

    /** 买家电话 */
    private String mobile;

    /** 买家地区编码 */
    private String areaCode;

    /** 买家地区 */
    private String area;

    /** 买家地址 */
    private String address;

    /** 锁库存明细 */
    private List<Detail> details;

    @Data
    public static class Detail {

        /** 产品ID */
        private Long productId;

        /** 数量 */
        private Integer qty;
    }
}
