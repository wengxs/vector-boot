package com.vector.module.scm.pojo.vo;

import com.vector.module.scm.enums.ScmPurchaseStatus;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Data
public class ScmPurchaseVO {

    /** 采购单ID */
    private Long id;

    /** 创建时间 */
    private Date createTime;

    /** 采购单号 */
    private String purchaseNo;

    /** 订单状态 */
    private ScmPurchaseStatus purchaseStatus;

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

        /** ID */
        private Long id;

        /** 采购单ID */
        private Long purchaseId;

        /** 产品ID */
        private Long productId;

        /** 产品名称 */
        private String productName;

        /** 单价 */
        private BigDecimal price;

        /** 采购数量 */
        private Integer qty;

        /** 总金额 */
        private BigDecimal amount;

        /** 收货数量 */
        private Integer receivedQty;
    }
}
