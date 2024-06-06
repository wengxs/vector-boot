package com.vector.module.pms.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;

/**
 * SKU Entity
 * @author wengxs
 * @date 2024/06/06
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("pms_sku")
public class PmsSku extends BaseEntity<Long> {

    /** spuID */
    private Long spuId;

    /** 图片 */
    private String image;

    /** 价格 */
    private BigDecimal price;

    /** 库存 */
    private Integer stock;

    /** 上架状态 */
    private Boolean onSale;
}
