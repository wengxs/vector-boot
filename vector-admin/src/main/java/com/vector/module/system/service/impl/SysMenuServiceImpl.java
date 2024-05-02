package com.vector.module.system.service.impl;

import com.alibaba.fastjson2.JSON;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.common.core.constant.SecurityConstant;
import com.vector.common.core.util.BizAssert;
import com.vector.module.system.dto.SysMenuDto;
import com.vector.module.system.entity.SysMenu;
import com.vector.module.system.entity.SysRoleMenu;
import com.vector.module.system.enums.SysMenuPermission;
import com.vector.module.system.enums.SysMenuType;
import com.vector.module.system.mapper.SysMenuMapper;
import com.vector.module.system.service.SysMenuService;
import com.vector.module.system.service.SysRoleMenuService;
import com.vector.module.system.vo.MenuTree;
import com.vector.module.system.vo.RouterVo;
import com.vector.module.system.vo.SysMenuVo;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * @author wengxs
 */
@Service
@Slf4j
public class SysMenuServiceImpl extends ServiceImpl<SysMenuMapper, SysMenu> implements SysMenuService {

    @Autowired
    private SysRoleMenuService sysRoleMenuService;

    @Override
    @Transactional
    public void save(SysMenuDto menuDto) {
        SysMenu sysMenu = new SysMenu();
        BeanUtils.copyProperties(menuDto, sysMenu);
        baseMapper.insert(sysMenu);
        if (sysMenu.getParentId() == 0L || SysMenuType.BUTTON.equals(sysMenu.getType())) {
            return;
        }
        if (!CollectionUtils.isEmpty(menuDto.getSubPermissions())) {
            String permissionPrefix;
            if (StringUtils.isNotBlank(menuDto.getPermission())) {
                permissionPrefix = menuDto.getPermission().substring(0, menuDto.getPermission().lastIndexOf(":") + 1);
            } else {
                permissionPrefix = menuDto.getComponent().replace("/", ":");
                permissionPrefix = permissionPrefix.substring(0, permissionPrefix.lastIndexOf(":") + 1);
            }
            for (int i = 0; i < menuDto.getSubPermissions().size(); i++) {
                SysMenuPermission subPermission = menuDto.getSubPermissions().get(i);
                SysMenu subMenu = new SysMenu();
                subMenu.setParentId(sysMenu.getId());
                subMenu.setType(SysMenuType.BUTTON);
                subMenu.setMenuName(sysMenu.getMenuName() + "-" + subPermission.getDesc());
                subMenu.setSort(i);
                subMenu.setPermission(permissionPrefix + subPermission.name().toLowerCase());
                baseMapper.insert(subMenu);
            }
        }
    }

    @Override
    @Transactional
    public void removeAllById(Long id, boolean assignCheck) {
        List<Long> assignedMenuIds = sysRoleMenuService.listAllMenuIds();
        removeChildren(id, assignCheck, assignedMenuIds);
    }

    private void removeChildren(Long id, boolean assignCheck, List<Long> assignedMenuIds) {
        if (assignedMenuIds.contains(id)) {
            BizAssert.isTrue(!assignCheck, "菜单已分配，请先删除角色菜单");
            sysRoleMenuService.remove(new LambdaQueryWrapper<SysRoleMenu>().eq(SysRoleMenu::getMenuId, id));
        }
        List<SysMenu> subMenus = baseMapper.selectList(
                new LambdaQueryWrapper<SysMenu>().eq(SysMenu::getParentId, id));
        for (SysMenu subMenu : subMenus) {
            removeChildren(subMenu.getId(), assignCheck, assignedMenuIds);
        }
        baseMapper.deleteById(id);
    }

    @Override
    public List<SysMenu> listByUserId(Long userId) {
        return baseMapper.selectAllByUserId(userId);
    }

    @Override
    public List<RouterVo> getRouters(Long userId) {
        List<SysMenu> menus;
        if (SecurityConstant.ADMIN_ID.equals(userId)) {
            menus = baseMapper.selectList(new LambdaQueryWrapper<SysMenu>()
                    .eq(SysMenu::getType, SysMenuType.MENU)
                    .orderByAsc(SysMenu::getSort)
            );
        } else {
            menus = baseMapper.selectAllByUserId(userId);
        }
        log.info("menus={}", JSON.toJSONString(menus));
        return genRouters(menus, 0L);
    }

    private List<RouterVo> genRouters(List<SysMenu> menus, Long parentId) {
        List<RouterVo> routers = new ArrayList<>();
        menus.stream()
                .filter(menu -> SysMenuType.MENU.equals(menu.getType()))
                .filter(menu -> parentId.equals(menu.getParentId()))
                .forEach(menu -> {
                    RouterVo router = new RouterVo();
                    router.setName(convertToName(menu.getComponent()));
                    router.setPath(menu.getPath());
                    router.setComponent(StringUtils.isEmpty(menu.getComponent()) ? "Layout" : menu.getComponent());
                    router.setMeta(new RouterVo.Meta(menu.getMenuName(), menu.getIcon(), true));
                    router.setChildren(genRouters(menus, menu.getId()));
                    routers.add(router);
                });
        return routers;
    }

    private String convertToName(String component) {
        if (StringUtils.isEmpty(component)) return "";
        String[] paths = component.split("/");
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < paths.length - 1; i++) {
            sb.append(StringUtils.capitalize(paths[i]));
        }
        return sb.toString();
    }

    @Override
    public List<MenuTree> menuTree() {
        List<SysMenu> menus = baseMapper.selectList(new LambdaQueryWrapper<SysMenu>().orderByAsc(SysMenu::getSort));
        return genMenuTree(menus, 0L);
    }

    private List<MenuTree> genMenuTree(List<SysMenu> menus, Long parentId) {
        List<MenuTree> menuTrees = new ArrayList<>();
        menus.stream()
                .filter(menu -> parentId.equals(menu.getParentId()))
                .forEach(menu -> {
                    MenuTree menuTree = new MenuTree();
                    menuTree.setId(menu.getId());
                    menuTree.setMenuName(menu.getMenuName());
                    menuTree.setChildren(genMenuTree(menus, menu.getId()));
                    menuTrees.add(menuTree);
                });
        return menuTrees;
    }

    @Override
    public List<Long> listIdsByRoleId(Long roleId) {
        return baseMapper.selectIdsByRoleId(roleId);
    }

    @Override
    public List<SysMenuVo> listTree() {
        List<SysMenu> menus = baseMapper.selectList(new LambdaQueryWrapper<SysMenu>().orderByAsc(SysMenu::getSort));
        return genTree(menus, 0L);
    }

    private List<SysMenuVo> genTree(List<SysMenu> menus, Long parentId) {
        List<SysMenuVo> sysMenus = new ArrayList<>();
        menus.stream()
                .filter(menu -> parentId.equals(menu.getParentId()))
                .forEach(menu -> {
                    SysMenuVo menuVo = new SysMenuVo();
                    BeanUtils.copyProperties(menu, menuVo);
                    menuVo.setId(menu.getId());
                    menuVo.setChildren(genTree(menus, menu.getId()));
                    sysMenus.add(menuVo);
                });
        return sysMenus;
    }

    @Override
    public List<MenuTree> routerTree() {
        List<SysMenu> menus = baseMapper.selectList(new LambdaQueryWrapper<SysMenu>()
                .eq(SysMenu::getType, SysMenuType.MENU)
                .orderByAsc(SysMenu::getSort));
        return genMenuTree(menus, 0L);
    }
}
