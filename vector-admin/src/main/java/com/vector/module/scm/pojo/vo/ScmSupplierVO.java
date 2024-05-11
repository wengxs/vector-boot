package com.vector.module.scm.pojo.vo;

import lombok.Data;

import java.util.Date;

@Data
public class ScmSupplierVO {

    /** 采购单ID */
    private Long id;

    /** 创建时间 */
    private Date createTime;

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
