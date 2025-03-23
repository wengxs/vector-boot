package com.vector.module.system.controller;

import com.vector.common.core.result.R;
import com.vector.module.system.pojo.dto.SysMenuDTO;
import com.vector.module.system.pojo.entity.SysMenu;
import com.vector.module.system.pojo.query.SysMenuQuery;
import com.vector.module.system.service.SysMenuService;
import com.vector.module.system.pojo.vo.MenuTree;
import com.vector.module.system.pojo.vo.SysMenuVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/sys/menu")
public class SysMenuController {

    @Autowired
    private SysMenuService sysMenuService;

    @GetMapping("/list")
    @PreAuthorize("@ss.hasAuthority('sys:menu:query')")
    public R<List<SysMenuVO>> list(SysMenuQuery query) {
        List<SysMenuVO> list = sysMenuService.listTree();
        return R.ok(filterQuery(list, query));
    }

    private List<SysMenuVO> filterQuery(List<SysMenuVO> list, SysMenuQuery query) {
        return list.stream().filter(item -> {
            if (StringUtils.isNotBlank(query.getMenuName()) && item.getMenuName().contains(query.getMenuName())) {
                return true;
            }
            item.setChildren(filterQuery(item.getChildren(), query));
            if (!CollectionUtils.isEmpty(item.getChildren()) || StringUtils.isBlank(query.getMenuName())) {
                return true;
            } else {
                return item.getMenuName().contains(query.getMenuName());
            }
        }).toList();
    }

    @GetMapping("/router")
    public R<List<MenuTree>> router() {
        return R.ok(sysMenuService.routerTree());
    }

    @GetMapping("/{id}")
    @PreAuthorize("@ss.hasAuthority('sys:menu:query')")
    public R<SysMenu> get(@PathVariable Long id) {
        return R.ok(sysMenuService.getById(id));
    }

    @PostMapping
    @PreAuthorize("@ss.hasAuthority('sys:menu:add')")
    public R<?> add(@RequestBody SysMenuDTO menuDTO) {
        sysMenuService.save(menuDTO);
        return R.ok();
    }

    @PutMapping
    @PreAuthorize("@ss.hasAuthority('sys:menu:edit')")
    public R<?> update(@RequestBody SysMenu sysMenu) {
        sysMenuService.updateById(sysMenu);
        return R.ok();
    }

    @DeleteMapping("/{id}")
    @PreAuthorize("@ss.hasAuthority('sys:menu:del')")
    public R<?> delete(@PathVariable Long id) {
        sysMenuService.removeAllById(id, true);
        return R.ok();
    }

    @GetMapping("/tree")
    public R<List<MenuTree>> tree() {
        return R.ok(sysMenuService.menuTree());
    }

}
