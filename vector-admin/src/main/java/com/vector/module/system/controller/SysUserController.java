package com.vector.module.system.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.query.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.common.core.util.BizAssert;
import com.vector.common.security.constant.SecurityConstant;
import com.vector.module.system.enums.SysUserStatus;
import com.vector.module.system.pojo.dto.SysUserDTO;
import com.vector.module.system.pojo.entity.SysUser;
import com.vector.module.system.pojo.query.SysUserQuery;
import com.vector.module.system.pojo.vo.SysUserVO;
import com.vector.module.system.service.SysUserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
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
    @PreAuthorize("@ss.hasAuthority('sys:user:query')")
    public R<PageResult> list(SysUserQuery query) {
        IPage<SysUserVO> page = sysUserService.pageVO(Pageable.getPage(query), query);
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
    @PreAuthorize("@ss.hasAuthority('sys:user:query')")
    public R<SysUserVO> get(@PathVariable Long id) {
        SysUserVO userVO = sysUserService.getVOById(id);
        userVO.setRoleIds(sysRoleService.listIdsByUserId(id));
        return R.ok(userVO);
    }

    @PostMapping
    @PreAuthorize("@ss.hasAuthority('sys:user:add')")
    public R<?> add(@RequestBody SysUserDTO userDTO) {
        BizAssert.notEmpty(userDTO.getRoleIds(), "必须选择一个角色");
        BizAssert.isTrue(!sysUserService.exists(userDTO.getUsername()), userDTO.getUsername() + "已存在");
        String password = userDTO.getPassword();
        password = passwordEncoder.encode(
                StringUtils.isNotBlank(password) ? password : SecurityConstant.DEFAULT_PASSWORD);
        SysUser sysUser = new SysUser();
        BeanUtils.copyProperties(userDTO, sysUser);
        sysUser.setId(null);
        sysUser.setPassword(password);
        sysUserService.saveOrUpdate(sysUser, Arrays.asList(userDTO.getRoleIds()));
        return R.ok();
    }

    @PutMapping
    @PreAuthorize("@ss.hasAuthority('sys:user:edit')")
    public R<?> update(@RequestBody SysUserDTO userDTO) {
        BizAssert.isTrue(userDTO.getId() != 1L, "不允许操作超级管理员");
        BizAssert.notEmpty(userDTO.getRoleIds(), "必须选择一个角色");
        if (StringUtils.isNotBlank(userDTO.getPassword())) {
            userDTO.setPassword(passwordEncoder.encode(userDTO.getPassword()));
        } else {
            userDTO.setPassword(null);
        }
        SysUser sysUser = new SysUser();
        BeanUtils.copyProperties(userDTO, sysUser);
        sysUserService.saveOrUpdate(sysUser, Arrays.asList(userDTO.getRoleIds()));
        return R.ok();
    }

    @PutMapping("/{id}/{userStatus}")
    @PreAuthorize("@ss.hasAuthority('sys:user:edit')")
    public R<?> updateUserStatus(@PathVariable Long id, @PathVariable SysUserStatus userStatus) {
        BizAssert.isTrue(id != 1L, "不允许操作超级管理员");
        SysUser sysUser = new SysUser();
        sysUser.setId(id);
        sysUser.setUserStatus(userStatus);
        sysUserService.updateById(sysUser);
        return R.ok();
    }
}
