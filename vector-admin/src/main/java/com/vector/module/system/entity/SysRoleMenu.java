package com.vector.module.system.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 角色菜单
 * @author wengxs
 */
@Data
@TableName("sys_role_menu")
@NoArgsConstructor
@AllArgsConstructor
public class SysRoleMenu {

    private Long roleId;

    private Long menuId;

}
