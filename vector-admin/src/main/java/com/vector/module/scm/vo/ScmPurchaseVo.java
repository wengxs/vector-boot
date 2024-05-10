package com.vector.module.scm.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.vector.module.scm.enums.ScmPurchaseStatus;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Data
public class ScmPurchaseVo {

    /** 采购单ID */
    private Long id;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /** 创建人 */
    private String createBy;

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

    /** 创建时间：起 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String createBegin;

    /** 创建时间：止 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String createEnd;

    /** 产品ID */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private Long productId;

    /** 产品名称 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String productName;

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
