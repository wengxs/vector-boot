package com.vector.module.wms.pojo.query;

import com.vector.common.core.query.PageQuery;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * vector-boot
 *
 * @author wengxs
 * @date 2024/5/12
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class WmsProductStockQuery extends PageQuery {

    /** 产品ID */
    private Long productId;

    /** 产品名称 */
    private String productName;

    /** 生产厂家 */
    private String factory;
}
