package com.vector.module.pms.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 分类品牌关系表
 * @author Zorg
 * @date 2022/3/24
 */
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("pms_category_brand_relation")
public class PmsCategoryBrandRelation extends BaseEntity<Long> {

    /** 分类ID */
    private Long categoryId;

    /** 品牌ID */
    private Long brandId;

}
