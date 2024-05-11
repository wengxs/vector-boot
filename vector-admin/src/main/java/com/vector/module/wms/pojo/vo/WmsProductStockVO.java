package com.vector.module.wms.pojo.vo;

import lombok.Data;

/**
 * 产品库存VO
 */
@Data
public class WmsProductStockVO {

    /** 产品库存ID */
    private Long id;

    /** 产品ID */
    private Long productId;

    /** 产品名称 */
    private String productName;

    /** 生产厂家 */
    private String factory;

    /** 总库存 */
    private Integer totalStock;

    /** 可用库存 */
    private Integer usableStock;

    /** 锁定库存 */
    private Integer lockedStock;
}
