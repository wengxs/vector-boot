package com.vector.module.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.system.dto.SysMenuDto;
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

    void save(SysMenuDto menuDto);

    /**
     * 删除菜单及子菜单
     * @param id 菜单ID
     * @param assignCheck 是否角色分配校验
     */
    void removeAllById(Long id, boolean assignCheck);
}
