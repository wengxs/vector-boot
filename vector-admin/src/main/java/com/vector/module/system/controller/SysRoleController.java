package com.vector.module.system.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.pagination.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.common.core.util.BizAssert;
import com.vector.module.system.dto.SysRoleDto;
import com.vector.module.system.entity.SysRole;
import com.vector.module.system.service.SysMenuService;
import com.vector.module.system.service.SysRoleService;
import com.vector.module.system.vo.SysRoleVo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/sys/role")
public class SysRoleController {

    @Autowired
    private SysRoleService sysRoleService;
    @Autowired
    private SysMenuService sysMenuService;

    @GetMapping("/list")
//    @PreAuthorize("hasAuthority('sys:role:query')")
    public R<PageResult> list(@RequestParam Map<String, Object> params) {
        SysRoleVo query = Pageable.getQuery(params, SysRoleVo.class);
        IPage<SysRoleVo> page = sysRoleService.pageVo(Pageable.getPage(params), query);
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
//    @PreAuthorize("hasAuthority('sys:role:query')")
    public R<SysRoleVo> get(@PathVariable Long id) {
        SysRoleVo roleVo = sysRoleService.getVoById(id);
        roleVo.setMenuIds(sysMenuService.listIdsByRoleId(id));
        return R.ok(roleVo);
    }

    @PostMapping
//    @PreAuthorize("hasAuthority('sys:role:add')")
    public R<?> add(@RequestBody SysRoleDto roleDto) {
        BizAssert.notEmpty(roleDto.getMenuIds(), "必须选择一个菜单");
        BizAssert.isTrue(!sysRoleService.exists(roleDto.getRoleName()), roleDto.getRoleName() + "已存在");
        SysRole sysRole = new SysRole();
        BeanUtils.copyProperties(roleDto, sysRole);
        sysRole.setId(null);
        sysRoleService.saveOrUpdate(sysRole, Arrays.asList(roleDto.getMenuIds()));
        return R.ok();
    }

    @PutMapping
//    @PreAuthorize("hasAuthority('sys:role:edit')")
    public R<?> update(@RequestBody SysRoleDto roleDto) {
        BizAssert.isTrue(roleDto.getId() != 1L, "不允许操作超级管理员");
        BizAssert.notEmpty(roleDto.getMenuIds(), "必须选择一个菜单");
        SysRole sysRole = new SysRole();
        BeanUtils.copyProperties(roleDto, sysRole);
        sysRoleService.saveOrUpdate(sysRole, Arrays.asList(roleDto.getMenuIds()));
        return R.ok();
    }

    @DeleteMapping("/{ids}")
//    @PreAuthorize("hasAuthority('sys:role:del')")
    public R<?> delete(@PathVariable Long[] ids) {
        sysRoleService.delete(ids);
        return R.ok();
    }

    @GetMapping("/all")
    public R<List<SysRole>> roles() {
        return R.ok(sysRoleService.list());
    }

}
