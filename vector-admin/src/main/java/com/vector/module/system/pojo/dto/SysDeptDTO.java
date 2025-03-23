package com.vector.module.system.pojo.dto;

import lombok.Data;

/**
 * 部门 DTO
 * @author wengxs
 */
@Data
public class SysDeptDTO {

    /** ID */
    private Long id;

    /** 上级部门ID */
    private Long parentId;

    /** 部门名称 */
    private String deptName;

    /** 部门领导 */
    private String leader;

    /** 联系电话 */
    private String phone;

    /** 邮箱 */
    private String email;

    /** 部门状态 */
    private String deptStatus;

    /** 备注 */
    private String remark;

    /** 排序 */
    private Integer sort;
}
