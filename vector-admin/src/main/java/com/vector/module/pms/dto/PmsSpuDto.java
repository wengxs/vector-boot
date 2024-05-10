package com.vector.module.pms.dto;

import lombok.Data;

import java.util.List;

/**
 * 商品信息 Dto
 * @author wengxs
 * @date 2024/05/05
 */
@Data
public class PmsSpuDto {

    /** ID */
    private Long id;

    /** 商品标题 */
    private String spuName;

    /** 默认图片 */
    private String defaultImage;

    /** 分类ID */
    private Long categoryId;

    /** 商品介绍 */
    private String description;

    /** 商品图片 */
    private List<String> images;
}
