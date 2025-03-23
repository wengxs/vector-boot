package com.vector.module.system.pojo.query;

import com.vector.common.core.query.PageQuery;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 部门 查询参数
 * @author wengxs
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class SysDeptQuery extends PageQuery {

    /** 上级部门ID */
    private Long parentId;

    /** 部门名称 */
    private String deptName;

    /** 部门状态 */
    private String deptStatus;
}
