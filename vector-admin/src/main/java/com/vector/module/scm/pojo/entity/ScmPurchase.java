package com.vector.module.scm.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import com.vector.module.scm.enums.ScmPurchaseStatus;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 采购单 Entity
 * @author wengxs
 * @date 2024/05/12
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("scm_purchase")
public class ScmPurchase extends BaseEntity<Long> {

    /** 采购单号 */
    private String purchaseNo;

    /** 订单状态 */
    private ScmPurchaseStatus purchaseStatus;

    /** 供应商ID */
    private Long supplierId;

    /** 采购备注 */
    private String purchaseRemake;

    /** 订单金额 */
    private BigDecimal amount;

    /** 签约时间 */
    private Date signedTime;

    /** 完结时间 */
    private Date finishedTime;

    /** 取消时间 */
    private Date canceledTime;
}
