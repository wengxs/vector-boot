package com.vector.module.pms.pojo.vo;

import com.vector.module.pms.enums.PmsSpuStatus;
import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * 商品信息 VO
 * @author wengxs
 * @date 2024/05/05
 */
@Data
public class PmsSpuVO {

    /** ID */
    private Long id;

    /** 创建时间 */
    private Date createTime;

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
