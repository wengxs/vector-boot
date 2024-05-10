package com.vector.module.pms.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import com.vector.module.pms.enums.PmsSpuStatus;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

/**
 * 商品信息 Entity
 * @author wengxs
 * @date 2024/05/05
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("pms_spu")
public class PmsSpu extends BaseEntity<Long> {

    /** 商品标题 */
    private String spuName;

    /** 商品状态 */
    private PmsSpuStatus spuStatus;

    /** 默认图片 */
    private String defaultImage;

    /** 分类ID */
    private Long categoryId;

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
}
