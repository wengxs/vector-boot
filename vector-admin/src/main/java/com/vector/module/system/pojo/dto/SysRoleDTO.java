package com.vector.module.system.pojo.dto;

import com.vector.common.mybatis.enums.DataScope;
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

    /** 数据权限 */
    private DataScope dataScope;

    /** 角色描述 */
    private String description;

    /** 菜单权限ID */
    private Long[] menuIds;
}
