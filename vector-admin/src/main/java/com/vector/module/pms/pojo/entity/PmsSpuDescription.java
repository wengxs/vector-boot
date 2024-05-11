package com.vector.module.pms.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * 商品介绍
 */
@Data
@TableName("pms_spu_description")
public class PmsSpuDescription {

    /** 产品ID */
    @TableId
    private Long spuId;

    /** 商品介绍 */
    private String description;
}
