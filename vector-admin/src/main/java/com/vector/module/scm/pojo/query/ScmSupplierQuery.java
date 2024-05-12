package com.vector.module.scm.pojo.query;

import com.vector.common.core.query.PageQuery;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 供应商信息 查询参数
 * @author wengxs
 * @date 2024/05/12
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class ScmSupplierQuery extends PageQuery {

    /** 供应商 */
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
