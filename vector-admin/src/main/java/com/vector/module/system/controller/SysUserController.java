package com.vector.module.system.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.constant.SecurityConstant;
import com.vector.common.core.pagination.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.common.core.util.BizAssert;
import com.vector.module.system.dto.SysUserDto;
import com.vector.module.system.entity.SysUser;
import com.vector.module.system.enums.SysUserStatus;
import com.vector.module.system.service.SysUserService;
import com.vector.module.system.vo.SysUserVo;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;

@RestController
@RequestMapping("/sys/user")
@Slf4j
public class SysUserController {

    @Autowired
    private SysUserService sysUserService;
    @Autowired
    private SysUserService sysRoleService;
//    @Autowired
    // TODO 待优化
    private final PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @GetMapping("/list")
//    @PreAuthorize("hasAuthority('sys:user:query')")
    public R<PageResult> list(SysUserVo query) {
        IPage<SysUserVo> page = sysUserService.pageVo(Pageable.getPage(query), query);
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
//    @PreAuthorize("hasAuthority('sys:user:query')")
    public R<SysUserVo> get(@PathVariable Long id) {
        SysUserVo userVo = sysUserService.getVoById(id);
        userVo.setRoleIds(sysRoleService.listIdsByUserId(id));
        return R.ok(userVo);
    }

    @PostMapping
//    @PreAuthorize("hasAuthority('sys:user:add')")
    public R<?> add(@RequestBody SysUserDto userDto) {
        BizAssert.notEmpty(userDto.getRoleIds(), "必须选择一个角色");
        BizAssert.isTrue(!sysUserService.exists(userDto.getUsername()), userDto.getUsername() + "已存在");
        String password = userDto.getPassword();
        password = passwordEncoder.encode(
                StringUtils.isNotBlank(password) ? password : SecurityConstant.DEFAULT_PASSWORD);
        SysUser sysUser = new SysUser();
        BeanUtils.copyProperties(userDto, sysUser);
        sysUser.setId(null);
        sysUser.setPassword(password);
        sysUserService.saveOrUpdate(sysUser, Arrays.asList(userDto.getRoleIds()));
        return R.ok();
    }

    @PutMapping
//    @PreAuthorize("hasAuthority('sys:user:edit')")
    public R<?> update(@RequestBody SysUserDto userDto) {
        BizAssert.isTrue(userDto.getId() != 1L, "不允许操作超级管理员");
        BizAssert.notEmpty(userDto.getRoleIds(), "必须选择一个角色");
        if (StringUtils.isNotBlank(userDto.getPassword())) {
            userDto.setPassword(passwordEncoder.encode(userDto.getPassword()));
        } else {
            userDto.setPassword(null);
        }
        SysUser sysUser = new SysUser();
        BeanUtils.copyProperties(userDto, sysUser);
        sysUserService.saveOrUpdate(sysUser, Arrays.asList(userDto.getRoleIds()));
        return R.ok();
    }

    @PutMapping("/{id}/{userStatus}")
//    @PreAuthorize("hasAuthority('sys:user:edit')")
    public R<?> updateUserStatus(@PathVariable Long id, @PathVariable SysUserStatus userStatus) {
        BizAssert.isTrue(id != 1L, "不允许操作超级管理员");
        SysUser sysUser = new SysUser();
        sysUser.setId(id);
        sysUser.setUserStatus(userStatus);
        sysUserService.updateById(sysUser);
        return R.ok();
    }
}
