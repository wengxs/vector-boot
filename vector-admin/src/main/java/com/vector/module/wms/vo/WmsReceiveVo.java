package com.vector.module.wms.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.vector.module.wms.enums.BizType;
import com.vector.module.wms.enums.WmsReceiveStatus;
import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * 收货单视图
 */
@Data
public class WmsReceiveVo {

    /** 收货单ID */
    private Long id;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /** 创建人 */
    private String createBy;

    /** 收货单号 */
    private String receiveNo;

    /** 订单状态 */
    private WmsReceiveStatus receiveStatus;

    /** 业务类型 */
    private BizType bizType;

    /** 业务单号 */
    private String bizNo;

    /** 物流名称 */
    private String logisticsName;

    /** 物流单号 */
    private String logisticsNo;

    /** 签收时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date signedTime;

    /** 批次编号 */
    private String batchNo;

    /** 创建时间：起 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String createBegin;

    /** 创建时间：止 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String createEnd;

    /** 签收时间：起 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String signedBegin;

    /** 签收时间：止 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String signedEnd;

    /** 产品ID */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private Long productId;

    /** 产品名称 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String productName;

    /** 收货明细 */
    private List<Detail> details;

    /**
     * 收货明细
     */
    @Data
    public static class Detail {

        /** ID */
        private Long id;

        /** 收货单ID */
        private Long receiveId;

        /** 产品ID */
        private Long productId;

        /** 产品名称 */
        private String productName;

        /** 应收数量 */
        private Integer qty;

        /** 实收数量 */
        private Integer receivedQty;

        /** 合格数量 */
        private Integer qualifiedQty;

        /** 不合格数量 */
        private Integer unqualifiedQty;
    }
}
