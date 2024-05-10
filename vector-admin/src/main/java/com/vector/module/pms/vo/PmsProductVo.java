package com.vector.module.pms.vo;

import com.vector.common.core.query.PageQuery;
import lombok.Data;

import java.util.Date;

/**
 * 产品信息 Vo
 * @author wengxs
 * @date 2024/05/04
 */
@Data
public class PmsProductVo extends PageQuery {

    /** ID */
    private Long id;

    /** 创建时间 */
    private Date createTime;

    /** 创建人 */
    private String createBy;

    /** 产品名称 */
    private String productName;

    /** 生产厂家 */
    private String factory;
}
