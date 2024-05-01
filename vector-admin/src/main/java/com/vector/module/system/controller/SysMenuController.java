package com.vector.module.system.controller;

import com.vector.common.core.result.R;
import com.vector.module.system.dto.SysMenuDto;
import com.vector.module.system.entity.SysMenu;
import com.vector.module.system.service.SysMenuService;
import com.vector.module.system.vo.MenuTree;
import com.vector.module.system.vo.SysMenuVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/sys/menu")
public class SysMenuController {

    @Autowired
    private SysMenuService sysMenuService;

    @GetMapping("/list")
//    @PreAuthorize("hasAuthority('sys:menu:query')")
    public R<List<SysMenuVo>> list() {
        return R.ok(sysMenuService.listTree());
    }

    @GetMapping("/router")
//    @PreAuthorize("hasAuthority('sys:menu:query')")
    public R<List<MenuTree>> router() {
        return R.ok(sysMenuService.routerTree());
    }

    @GetMapping("/{id}")
//    @PreAuthorize("hasAuthority('sys:menu:query')")
    public R<SysMenu> get(@PathVariable Long id) {
        return R.ok(sysMenuService.getById(id));
    }

    @PostMapping
//    @PreAuthorize("hasAuthority('sys:menu:add')")
    public R<?> add(@RequestBody SysMenuDto menuDto) {
        sysMenuService.save(menuDto);
        return R.ok();
    }

    @PutMapping
//    @PreAuthorize("hasAuthority('sys:menu:edit')")
    public R<?> update(@RequestBody SysMenu sysMenu) {
        sysMenuService.updateById(sysMenu);
        return R.ok();
    }

    @DeleteMapping("/{id}")
//    @PreAuthorize("hasAuthority('sys:menu:del')")
    public R<?> delete(@PathVariable Long id) {
        sysMenuService.removeAllById(id, true);
        return R.ok();
    }

    @GetMapping("/tree")
    public R<List<MenuTree>> tree() {
        return R.ok(sysMenuService.menuTree());
    }

}
