package com.vector.module.scm.pojo.vo;

import lombok.Data;

import java.util.Date;

/**
 * 供应商信息 VO
 * @author wengxs
 * @date 2024/05/12
 */
@Data
public class ScmSupplierVO {

    /** ID */
    private Long id;

    /** 创建时间 */
    private Date createTime;

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
