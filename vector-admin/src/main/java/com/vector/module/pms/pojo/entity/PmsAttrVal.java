package com.vector.module.pms.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 商品属性值 Entity
 * @author wengxs
 * @date 2024/06/02
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("pms_attr_val")
public class PmsAttrVal extends BaseEntity<Long> {

    /** 属性ID */
    private Long attrId;

    /** 属性值 */
    private String attrValue;

    /** 排序 */
    private Integer sort;
}
