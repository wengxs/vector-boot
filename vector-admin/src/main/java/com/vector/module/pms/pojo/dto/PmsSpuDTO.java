package com.vector.module.pms.pojo.dto;

import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

/**
 * 商品信息 DTO
 * @author wengxs
 * @date 2024/05/05
 */
@Data
public class PmsSpuDTO {

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

    private List<Sku> skus;

    /**
     * 商品SKU
     */
    @Data
    public static class Sku {
        /** skuID */
        private Long skuId;
        /** 售价 */
        private BigDecimal price;
        /** 库存 */
        private Integer stock;
        /** 上架 */
        private Boolean onSale;
        /** 属性列表 */
        private List<Attr> attrs;
    }

    @Data
    public static class Attr {

        private String name;

        private String value;
    }
}
