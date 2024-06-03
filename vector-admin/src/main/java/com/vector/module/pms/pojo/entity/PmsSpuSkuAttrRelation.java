package com.vector.module.pms.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 商品属性关系 Entity
 * @author wengxs
 * @date 2024/06/02
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("pms_spu_sku_attr_relation")
public class PmsSpuSkuAttrRelation extends BaseEntity<Long> {

    /** SPU ID */
    private Long spuId;

    /** SKU ID */
    private Long skuId;

    /** 属性ID */
    private Long attrId;

    /** 属性值 */
    private String attrValue;
}
