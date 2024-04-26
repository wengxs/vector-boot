package com.vector.module.system.service.impl;

import com.alibaba.fastjson2.JSON;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.common.core.constant.SecurityConstant;
import com.vector.module.system.entity.SysMenu;
import com.vector.module.system.enums.SysMenuType;
import com.vector.module.system.mapper.SysMenuMapper;
import com.vector.module.system.service.SysMenuService;
import com.vector.module.system.vo.MenuTree;
import com.vector.module.system.vo.RouterVo;
import com.vector.module.system.vo.SysMenuVo;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * @author wengxs
 */
@Service
@Slf4j
public class SysMenuServiceImpl extends ServiceImpl<SysMenuMapper, SysMenu> implements SysMenuService {

    @Override
    @Transactional
    public boolean save(SysMenu entity) {
        baseMapper.insert(entity);
        if (SysMenuType.MENU.equals(entity.getType()) && entity.getSubPermissions() != null) {
            String permissionPrefix;
            if (StringUtils.isNotBlank(entity.getPermission())) {
                permissionPrefix = entity.getPermission().substring(0, entity.getPermission().lastIndexOf(":") + 1);
            } else {
                permissionPrefix = entity.getComponent().replace("/", ":") + ":";
            }
            for (int i = 0; i < entity.getSubPermissions().size(); i++) {
                String subPermission = entity.getSubPermissions().get(i);
                String[] permission = subPermission.split(":");
                SysMenu subMenu = new SysMenu();
                subMenu.setParentId(entity.getId());
                subMenu.setType(SysMenuType.BUTTON);
                subMenu.setName(entity.getName() + permission[0]);
                subMenu.setSort(i);
                subMenu.setPermission(permissionPrefix + permission[1]);
                baseMapper.insert(subMenu);
            }
        }
        return true;
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
                    router.setComponent(menu.getComponent());
                    router.setMeta(new RouterVo.Meta(menu.getName(), menu.getIcon()));
                    router.setChildren(genRouters(menus, menu.getId()));
                    routers.add(router);
                });
        return routers;
    }

    private String convertToName(String component) {
        if (StringUtils.isEmpty(component)) return "";
        String[] paths = component.split("/");
        StringBuilder sb = new StringBuilder();
        for (String path : paths) {
            sb.append(StringUtils.capitalize(path));
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
                    menuTree.setName(menu.getName());
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
