package com.vector.module.wms.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 产品批号
 */
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("wms_product_batch")
public class WmsProductBatch extends BaseEntity<Long> {

    /** 产品批号ID */
    private Long productLotId;

    /** 批次编号 */
    private String batchNo;

    /** 合格状态(0=不合格,1=合格) */
    private Integer qualified;

    /** 收货数量 */
    private Integer receivedQty;

    /** 可用数量 */
    private Integer usableQty;

    /** 收货单ID */
    private Long receiveId;

    /** 收货单明细ID */
    private Long receiveDetailId;

}
