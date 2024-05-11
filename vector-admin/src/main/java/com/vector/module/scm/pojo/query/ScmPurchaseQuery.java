package com.vector.module.scm.pojo.query;

import com.vector.common.core.query.PageQuery;
import com.vector.module.scm.enums.ScmPurchaseStatus;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * vector-boot
 *
 * @author wengxs
 * @date 2024/5/12
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class ScmPurchaseQuery extends PageQuery {

    /** 采购单号 */
    private String purchaseNo;

    /** 订单状态 */
    private ScmPurchaseStatus purchaseStatus;

    /** 供应商ID */
    private Long supplierId;

    /** 供应商名称 */
    private String supplierName;

    /** 产品ID */
    private Long productId;

    /** 产品名称 */
    private String productName;
}
