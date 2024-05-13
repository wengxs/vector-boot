package com.vector.module.wms.pojo.vo;

import com.vector.module.wms.enums.BizType;
import com.vector.module.wms.enums.WmsReceiveStatus;
import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * 收货单 VO
 * @author wengxs
 * @date 2024/05/13
 */
@Data
public class WmsReceiveVO {

    /** 收货单ID */
    private Long id;

    /** 创建时间 */
    private Date createTime;

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
    private Date signedTime;

    /** 批次编号 */
    private String batchNo;

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
