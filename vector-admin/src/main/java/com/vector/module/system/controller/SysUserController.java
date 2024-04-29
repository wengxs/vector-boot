package com.vector.module.system.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.pagination.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.common.core.util.BizAssert;
import com.vector.common.security.util.SecurityUtils;
import com.vector.module.system.dto.SysUserDto;
import com.vector.module.system.entity.SysUser;
import com.vector.module.system.enums.SysUserStatus;
import com.vector.module.system.service.SysUserService;
import com.vector.module.system.vo.SysUserVo;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;

@RestController
@RequestMapping("/sys/user")
@Slf4j
public class SysUserController {

    @Autowired
    private SysUserService sysUserService;
//    @Autowired
    // TODO 待优化
    private final PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @GetMapping("/list")
//    @PreAuthorize("hasAuthority('sys:user:query')")
    public R<PageResult> list(@RequestParam Map<String, Object> params) {
        SysUserVo query = Pageable.getQuery(params, SysUserVo.class);
        IPage<SysUserVo> page = sysUserService.pageVo(Pageable.getPage(params), query);
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
//    @PreAuthorize("hasAuthority('sys:user:query')")
    public R<SysUserVo> get(@PathVariable Long id) {
        SysUserVo userVo = sysUserService.getVoById(id);
        userVo.setRoles(sysUserService.listUserRole(id));
        return R.ok(userVo);
    }

    @PostMapping
//    @PreAuthorize("hasAuthority('sys:user:add')")
    public R<?> add(@RequestBody SysUserDto sysUser) {
        BizAssert.isTrue(!sysUserService.exists(sysUser.getUsername()), sysUser.getUsername() + "已存在");
        sysUser.setId(null);
        sysUser.setCreateBy(SecurityUtils.getUserId().toString());
        sysUser.setPassword(passwordEncoder.encode(sysUser.getPassword()));
        sysUserService.saveOrUpdate(sysUser, Arrays.asList(sysUser.getRoleIds()));
        return R.ok();
    }

    @PutMapping
//    @PreAuthorize("hasAuthority('sys:user:edit')")
    public R<?> update(@RequestBody SysUserDto sysUser) {
        BizAssert.isTrue(sysUser.getId() != 1L, "不允许操作超级管理员");
        if (StringUtils.isNotBlank(sysUser.getPassword()))
            sysUser.setPassword(passwordEncoder.encode(sysUser.getPassword()));
        sysUserService.saveOrUpdate(sysUser, Arrays.asList(sysUser.getRoleIds()));
        return R.ok();
    }

    @PutMapping("/{id}/{userStatus}")
//    @PreAuthorize("hasAuthority('sys:user:del')")
    public R<?> delete(@PathVariable Long id, @PathVariable SysUserStatus userStatus) {
        BizAssert.isTrue(id != 1L, "不允许操作超级管理员");
        SysUser sysUser = new SysUser();
        sysUser.setId(id);
        sysUser.setUserStatus(userStatus);
        sysUserService.updateById(sysUser);
        return R.ok();
    }
}
