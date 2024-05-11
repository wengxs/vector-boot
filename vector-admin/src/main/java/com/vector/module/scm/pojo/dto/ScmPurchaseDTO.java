package com.vector.module.scm.pojo.dto;

import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

@Data
public class ScmPurchaseDTO {

    /** 订单ID */
    private Long id;

    /** 供应商ID */
    private Long supplierId;

    /** 供应商名称 */
    private String supplierName;

    /** 采购备注 */
    private String purchaseRemake;

    /** 采购明细 */
    private List<Detail> details;

    @Data
    public static class Detail {

        /** 产品ID */
        private Long productId;

        /** 产品名称 */
        private String productName;

        /** 单价 */
        private BigDecimal price;

        /** 采购数量 */
        private Integer qty;
    }
}
