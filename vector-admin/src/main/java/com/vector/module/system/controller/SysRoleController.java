package com.vector.module.system.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.query.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.common.core.util.BizAssert;
import com.vector.module.system.pojo.dto.SysRoleDTO;
import com.vector.module.system.pojo.entity.SysRole;
import com.vector.module.system.pojo.query.SysRoleQuery;
import com.vector.module.system.service.SysMenuService;
import com.vector.module.system.service.SysRoleService;
import com.vector.module.system.pojo.vo.SysRoleVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("/sys/role")
public class SysRoleController {

    @Autowired
    private SysRoleService sysRoleService;
    @Autowired
    private SysMenuService sysMenuService;

    @GetMapping("/list")
    @PreAuthorize("@ss.hasAuthority('sys:role:query')")
    public R<PageResult> list(SysRoleQuery query) {
        IPage<SysRoleVO> page = sysRoleService.pageVO(Pageable.getPage(query), query);
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
    @PreAuthorize("@ss.hasAuthority('sys:role:query')")
    public R<SysRoleVO> get(@PathVariable Long id) {
        SysRoleVO roleVO = sysRoleService.getVOById(id);
        roleVO.setMenuIds(sysMenuService.listIdsByRoleId(id));
        return R.ok(roleVO);
    }

    @PostMapping
    @PreAuthorize("@ss.hasAuthority('sys:role:add')")
    public R<?> add(@RequestBody SysRoleDTO roleDTO) {
        BizAssert.notEmpty(roleDTO.getMenuIds(), "必须选择一个菜单");
        BizAssert.isTrue(!sysRoleService.exists(roleDTO.getRoleName()), roleDTO.getRoleName() + "已存在");
        SysRole sysRole = new SysRole();
        BeanUtils.copyProperties(roleDTO, sysRole);
        sysRole.setId(null);
        sysRoleService.saveOrUpdate(sysRole, Arrays.asList(roleDTO.getMenuIds()));
        return R.ok();
    }

    @PutMapping
    @PreAuthorize("@ss.hasAuthority('sys:role:edit')")
    public R<?> update(@RequestBody SysRoleDTO roleDTO) {
        BizAssert.isTrue(roleDTO.getId() != 1L, "不允许操作超级管理员");
        BizAssert.notEmpty(roleDTO.getMenuIds(), "必须选择一个菜单");
        SysRole sysRole = new SysRole();
        BeanUtils.copyProperties(roleDTO, sysRole);
        sysRoleService.saveOrUpdate(sysRole, Arrays.asList(roleDTO.getMenuIds()));
        return R.ok();
    }

    @DeleteMapping("/{ids}")
    @PreAuthorize("@ss.hasAuthority('sys:role:del')")
    public R<?> delete(@PathVariable Long[] ids) {
        sysRoleService.delete(ids);
        return R.ok();
    }

    @GetMapping("/all")
    public R<List<SysRole>> roles() {
        return R.ok(sysRoleService.list());
    }

}
