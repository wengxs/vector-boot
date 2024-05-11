package com.vector.module.system.pojo.query;

import com.vector.common.core.query.PageQuery;
import com.vector.module.system.enums.SysUserStatus;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 角色查询参数
 * @author wengxs
 * @date 2024/5/12
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class SysRoleQuery extends PageQuery {

    /** 角色名称 */
    private String roleName;

    /** 角色编码 */
    private String roleKey;
}
