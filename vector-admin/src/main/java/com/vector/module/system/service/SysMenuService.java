package com.vector.module.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.system.pojo.dto.SysMenuDTO;
import com.vector.module.system.pojo.entity.SysMenu;
import com.vector.module.system.pojo.vo.MenuTree;
import com.vector.module.system.pojo.vo.RouterVO;
import com.vector.module.system.pojo.vo.SysMenuVO;

import java.util.List;

/**
 * @author wengxs
 */
public interface SysMenuService extends IService<SysMenu> {

    List<SysMenu> listByUserId(Long userId);

    List<RouterVO> getRouters(Long userId);

    List<MenuTree> menuTree();

    List<Long> listIdsByRoleId(Long roleId);

    List<SysMenuVO> listTree();

    List<MenuTree> routerTree();

    void save(SysMenuDTO menuDTO);

    /**
     * 删除菜单及子菜单
     * @param id 菜单ID
     * @param assignCheck 是否角色分配校验
     */
    void removeAllById(Long id, boolean assignCheck);
}
