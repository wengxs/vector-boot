package com.vector.module.wms.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.vector.common.core.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

/**
 * 产品批号
 */
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("wms_product_lot")
public class WmsProductLot extends BaseEntity<Long> {

    /** 产品ID */
    private Long productId;

    /** 生产批号 */
    private String lotNo;

    /** 生产日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date prodDate;

    /** 有效日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date expiredDate;

    /** 总数量 */
    private Integer totalQty;

    /** 合格数量 */
    private Integer qualifiedQty;

    /** 不合格数量 */
    private Integer unqualifiedQty;
}
