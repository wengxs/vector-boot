package com.vector.module.system.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.pagination.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.common.core.util.BizAssert;
import com.vector.common.web.util.SecurityUtils;
import com.vector.module.system.dto.SysUserDto;
import com.vector.module.system.entity.SysUser;
import com.vector.module.system.service.SysUserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
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
        SysUser query = Pageable.getQuery(params, SysUser.class);
        IPage<SysUser> page = sysUserService.page(Pageable.getPage(params), new LambdaQueryWrapper<SysUser>()
                .eq(StringUtils.isNotBlank(query.getUsername()), SysUser::getUsername, query.getUsername())
        );
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
//    @PreAuthorize("hasAuthority('sys:user:query')")
    public R<SysUserDto> get(@PathVariable Long id) {
        SysUser user = sysUserService.getById(id);
        SysUserDto userDto = new SysUserDto();
        BeanUtils.copyProperties(user, userDto);
        userDto.setRoles(sysUserService.listUserRole(id));
        return R.ok(userDto);
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

    @DeleteMapping("/{ids}")
//    @PreAuthorize("hasAuthority('sys:user:del')")
    public R<?> delete(@PathVariable Long[] ids) {
        sysUserService.delete(ids);
        return R.ok();
    }
}
