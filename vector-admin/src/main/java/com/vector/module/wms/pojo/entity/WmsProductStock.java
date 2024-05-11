package com.vector.module.wms.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 产品库存
 */
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("wms_product_stock")
public class WmsProductStock extends BaseEntity<Long> {

    /** 产品ID */
    private Long productId;

    /** 总库存 */
    private Integer totalStock;

    /** 可用库存 */
    private Integer usableStock;

    /** 锁定库存 */
    private Integer lockedStock;

}
