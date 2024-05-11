package com.vector.module.pms.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * 商品图片 Entity
 * @author wengxs
 * @date 2024/05/05
 */
@Data
@TableName("pms_spu_image")
public class PmsSpuImage {

    /** ID */
    @TableId
    private Long id;

    /** 产品ID */
    private Long spuId;

    /** 图片地址 */
    private String url;
}
