package com.vector.module.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.system.entity.SysMenu;
import com.vector.module.system.vo.MenuTree;
import com.vector.module.system.vo.RouterVo;
import com.vector.module.system.vo.SysMenuVo;

import java.util.List;

/**
 * @author wengxs
 */
public interface SysMenuService extends IService<SysMenu> {

    List<SysMenu> listByUserId(Long userId);

    List<RouterVo> getRouters(Long userId);

    List<MenuTree> menuTree();

    List<Long> listIdsByRoleId(Long roleId);

    List<SysMenuVo> listTree();

    List<MenuTree> routerTree();
}
