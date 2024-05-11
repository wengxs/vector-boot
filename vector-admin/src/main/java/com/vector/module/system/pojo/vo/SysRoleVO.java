package com.vector.module.system.pojo.vo;

import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * 角色视图
 * @author wengxs
 */
@Data
public class SysRoleVO {

    /** 角色ID */
    private Long id;

    /** 创建时间 */
    private Date createTime;

    /** 创建人 */
    private Long createBy;

    /** 角色名称 */
    private String roleName;

    /** 角色编码 */
    private String roleKey;

    /** 角色描述 */
    private String description;

    /** 菜单权限ID */
    private List<Long> menuIds;
}
