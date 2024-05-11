package com.vector.module.pms.pojo.vo;

import lombok.Data;

import java.util.Date;

/**
 * 产品信息 VO
 * @author wengxs
 * @date 2024/05/04
 */
@Data
public class PmsProductVO {

    /** ID */
    private Long id;

    /** 创建时间 */
    private Date createTime;

    /** 产品名称 */
    private String productName;

    /** 生产厂家 */
    private String factory;
}
