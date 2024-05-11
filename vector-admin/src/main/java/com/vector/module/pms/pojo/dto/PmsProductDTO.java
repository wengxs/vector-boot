package com.vector.module.pms.pojo.dto;

import lombok.Data;

/**
 * 产品信息 DTO
 * @author wengxs
 * @date 2024/05/04
 */
@Data
public class PmsProductDTO {

    /** ID */
    private Long id;

    /** 产品名称 */
    private String productName;

    /** 生产厂家 */
    private String factory;
}
