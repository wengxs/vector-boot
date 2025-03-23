package com.vector.module.system.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 部门 Entity
 * @author wengxs
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("sys_dept")
public class SysDept extends BaseEntity<Long> {

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
}
