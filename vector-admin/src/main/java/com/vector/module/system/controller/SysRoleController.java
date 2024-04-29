package com.vector.module.system.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.pagination.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.common.core.util.BizAssert;
import com.vector.module.system.dto.SysRoleDto;
import com.vector.module.system.entity.SysRole;
import com.vector.module.system.service.SysMenuService;
import com.vector.module.system.service.SysRoleService;
import org.apache.commons.lang3.StringUtils;
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
        SysRole query = Pageable.getQuery(params, SysRole.class);
        IPage<SysRole> page = sysRoleService.page(Pageable.getPage(params), new LambdaQueryWrapper<SysRole>()
                .like(StringUtils.isNotBlank(query.getRoleName()), SysRole::getRoleName, query.getRoleName())
                .eq(StringUtils.isNotBlank(query.getRoleKey()), SysRole::getRoleKey, query.getRoleKey())
        );
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
//    @PreAuthorize("hasAuthority('sys:role:query')")
    public R<SysRoleDto> get(@PathVariable Long id) {
        SysRole sysRole = sysRoleService.getById(id);
        SysRoleDto roleDto = new SysRoleDto();
        BeanUtils.copyProperties(sysRole, roleDto);
        roleDto.setPermissionIds(sysMenuService.listIdsByRoleId(id));
        return R.ok(roleDto);
    }

    @PostMapping
//    @PreAuthorize("hasAuthority('sys:role:add')")
    public R<?> add(@RequestBody SysRoleDto sysRole) {
        BizAssert.notEmpty(sysRole.getMenuIds(), "必须选择一个菜单");
        BizAssert.isTrue(!sysRoleService.exists(sysRole.getRoleName()), sysRole.getRoleName() + "已存在");
        sysRole.setId(null);
        sysRoleService.saveOrUpdate(sysRole, Arrays.asList(sysRole.getMenuIds()));
        return R.ok();
    }

    @PutMapping
//    @PreAuthorize("hasAuthority('sys:role:edit')")
    public R<?> update(@RequestBody SysRoleDto sysRole) {
        BizAssert.isTrue(sysRole.getId() != 1L, "不允许操作超级管理员");
        BizAssert.notEmpty(sysRole.getMenuIds(), "必须选择一个菜单");
        sysRoleService.saveOrUpdate(sysRole, Arrays.asList(sysRole.getMenuIds()));
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
