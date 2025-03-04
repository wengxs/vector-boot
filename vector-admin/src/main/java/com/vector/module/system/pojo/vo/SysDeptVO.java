package com.vector.module.system.pojo.vo;

import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * 部门 VO
 * @author wengxs
 */
@Data
public class SysDeptVO {

    /** ID */
    private Long id;

    /** 创建时间 */
    private Date createTime;

    /** 上级部门ID */
    private Long parentId;

    /** 祖级列表 */
    private String ancestors;

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

    /** 子部门 */
    private List<SysDeptVO> children;
}
