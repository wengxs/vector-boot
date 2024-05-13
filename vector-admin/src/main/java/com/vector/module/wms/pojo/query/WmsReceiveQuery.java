package com.vector.module.wms.pojo.query;

import com.vector.common.core.query.PageQuery;
import com.vector.module.wms.enums.BizType;
import com.vector.module.wms.enums.WmsReceiveStatus;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 收货单 查询参数
 * @author wengxs
 * @date 2024/05/13
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class WmsReceiveQuery extends PageQuery {

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

    /** 批次编号 */
    private String batchNo;

    /** 签收时间：起 */
    private String signedBegin;

    /** 签收时间：止 */
    private String signedEnd;

    /** 产品ID */
    private Long productId;

    /** 产品名称 */
    private String productName;
}
