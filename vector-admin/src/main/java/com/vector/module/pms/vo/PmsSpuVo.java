package com.vector.module.pms.vo;

import com.vector.common.core.query.PageQuery;
import com.vector.module.pms.enums.PmsSpuStatus;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;
import java.util.List;

/**
 * 商品信息 Vo
 * @author wengxs
 * @date 2024/05/05
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class PmsSpuVo extends PageQuery {

    /** ID */
    private Long id;

    /** 创建时间 */
    private Date createTime;

    /** 创建人 */
    private Long createBy;

    /** 商品标题 */
    private String spuName;

    /** 商品状态 */
    private PmsSpuStatus spuStatus;

    /** 默认图片 */
    private String defaultImage;

    /** 分类ID */
    private Long categoryId;

    /** 分类名称 */
    private String categoryName;

    /** 总销量 */
    private Integer saleCount;

    /** 审核时间 */
    private Date approveTime;

    /** 上架时间 */
    private Date onTime;

    /** 下架时间 */
    private Date offTime;

    /** 驳回原因 */
    private String rejectReason;

    /** 商品描述 */
    private String description;

    /** 图片列表 */
    private List<String> images;
}
