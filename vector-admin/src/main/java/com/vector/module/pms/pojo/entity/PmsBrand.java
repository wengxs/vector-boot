package com.vector.module.pms.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 产品品牌表
 * @author Zorg
 * @date 2022/3/24
 */
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("pms_brand")
public class PmsBrand extends BaseEntity<Long> {

    /** 品牌名称 */
    private String brandName;

    /** 品牌logo地址 */
    private String logo;

    /** 品牌描述 */
    private String description;

    /** 检索首字母 */
    private String initial;

    /** 排序 */
    private Integer sort;

    /** 展示状态(0=不展示,1=展示) */
    private Integer showStatus;

}
