package com.vector.module.system.pojo.dto;

import lombok.Data;

/**
 * @author wengxs
 */
@Data
public class SysRoleDTO {

    /** 角色ID */
    private Long Id;

    /** 角色名称 */
    private String roleName;

    /** 角色标识 */
    private String roleKey;

    /** 角色描述 */
    private String description;

    /** 菜单权限ID */
    private Long[] menuIds;
}
