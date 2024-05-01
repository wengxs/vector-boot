package com.vector.module.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.system.entity.SysRoleMenu;

import java.util.List;

/**
 * @author wengxs
 */
public interface SysRoleMenuService extends IService<SysRoleMenu> {
    List<Long> listAllMenuIds();
}
