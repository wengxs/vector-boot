package com.vector.module.pms.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 产品信息 Entity
 * @author wengxs
 * @date 2024/05/04
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("pms_product")
public class PmsProduct extends BaseEntity<Long> {

    /** 产品名称 */
    private String productName;

    /** 生产厂家 */
    private String factory;
}
