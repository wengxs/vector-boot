package com.vector.module.system.pojo.vo;

import lombok.Data;

import java.util.List;

/**
 * 部门 Tree
 * @author wengxs
 */
@Data
public class SysDeptTree {

    /** ID */
    private Long id;

    /** 部门名称 */
    private String deptName;

    /** 子部门 */
    private List<SysDeptTree> children;
}
