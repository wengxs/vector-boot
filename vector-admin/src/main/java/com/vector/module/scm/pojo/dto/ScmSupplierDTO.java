package com.vector.module.scm.pojo.dto;

import lombok.Data;

/**
 * 供应商信息 DTO
 * @author wengxs
 * @date 2024/05/12
 */
@Data
public class ScmSupplierDTO {

    /** ID */
    private Long id;

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
