package com.vector.module.pms.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 商品属性 Entity
 * @author wengxs
 * @date 2024/06/02
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("pms_attr")
public class PmsAttr extends BaseEntity<Long> {

    /** 分类ID */
    private Long categoryId;

    /** 属性名称 */
    private String attrName;

    /** 排序 */
    private Integer sort;
}
