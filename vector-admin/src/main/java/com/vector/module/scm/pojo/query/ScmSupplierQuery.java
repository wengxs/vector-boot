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
public class ScmSupplierQuery extends PageQuery {

    /** 供应商名称 */
    private String supplierName;

    /** 联系人 */
    private String contacts;

    /** 联系电话 */
    private String mobile;

    /** 所在省份 */
    private String province;

    /** 详细地址 */
    private String address;
}
