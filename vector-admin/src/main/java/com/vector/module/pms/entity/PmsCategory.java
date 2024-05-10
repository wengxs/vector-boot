package com.vector.module.pms.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 产品分类表
 * @author wengxs
 * @date 2022/3/24
 */
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("pms_category")
public class PmsCategory extends BaseEntity<Long> {

    /** 分类名称 */
    private String categoryName;

    /** 图标 */
    private String icon;

    /** 父级ID */
    private Long parentId;

    /** 层级 */
    private Integer level;

    /** 排序 */
    private Integer sort;

    /** 展示状态(0=不展示,1=展示) */
    private Boolean displayed;

}
