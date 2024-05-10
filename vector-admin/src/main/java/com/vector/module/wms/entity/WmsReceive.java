package com.vector.module.wms.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import com.vector.module.wms.enums.BizType;
import com.vector.module.wms.enums.WmsReceiveStatus;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

/**
 * 收货单
 */
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("wms_receive")
public class WmsReceive extends BaseEntity<Long> {

    /** 收货单号 */
    private String receiveNo;

    /** 收货状态 */
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

}
