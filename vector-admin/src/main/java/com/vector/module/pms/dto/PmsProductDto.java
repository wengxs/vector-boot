package com.vector.module.pms.dto;

import lombok.Data;

/**
 * 产品信息 Dto
 * @author wengxs
 * @date 2024/05/04
 */
@Data
public class PmsProductDto {

    /** ID */
    private Long id;

    /** 产品名称 */
    private String productName;

    /** 生产厂家 */
    private String factory;
}
