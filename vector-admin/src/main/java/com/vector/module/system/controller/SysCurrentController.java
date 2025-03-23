package com.vector.module.system.controller;

import com.vector.common.security.constant.SecurityConstant;
import com.vector.common.core.result.R;
import com.vector.common.core.util.BizAssert;
import com.vector.common.security.domain.LoginUser;
import com.vector.common.security.service.TokenService;
import com.vector.common.security.util.SecurityUtils;
import com.vector.module.system.pojo.dto.SysCurrentDTO;
import com.vector.module.system.pojo.entity.SysMenu;
import com.vector.module.system.pojo.entity.SysRole;
import com.vector.module.system.pojo.entity.SysUser;
import com.vector.module.system.service.SysMenuService;
import com.vector.module.system.service.SysUserService;
import com.vector.module.system.pojo.vo.CurrentUserVO;
import com.vector.module.system.pojo.vo.RouterVO;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/sys/current")
@Slf4j
public class SysCurrentController {

//    @Autowired
    private final PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
    @Autowired
    private SysUserService sysUserService;
    @Autowired
    private SysMenuService sysMenuService;
    @Autowired
    private TokenService tokenService;

    @GetMapping("/profile")
    public R<CurrentUserVO> userProfile() {
        SysUser sysUser = sysUserService.getById(SecurityUtils.getUserId());
        CurrentUserVO currentUserVO = new CurrentUserVO();
        currentUserVO.setUsername(sysUser.getUsername());
        currentUserVO.setNickname(sysUser.getNickname());
        currentUserVO.setAvatar(sysUser.getAvatar());
        currentUserVO.setMobile(sysUser.getMobile());
        if (SecurityConstant.ADMIN_ID.equals(sysUser.getId())) {
            currentUserVO.setRoles(Collections.singleton(SecurityConstant.ADMIN_ROLES
                    .substring(SecurityConstant.ROLE_PREFIX.length())));
            currentUserVO.setPermissions(Collections.singleton(SecurityConstant.ADMIN_PERMISSIONS));
        } else {
            List<SysRole> sysRoles = sysUserService.listUserRole(sysUser.getId());
            List<SysMenu> sysMenus = sysMenuService.listByUserId(sysUser.getId());
            currentUserVO.setRoles(sysRoles.stream()
                    .map(SysRole::getRoleKey).collect(Collectors.toSet()));
            currentUserVO.setPermissions(sysMenus.stream()
                    .map(SysMenu::getPermission)
                    .filter(StringUtils::isNotBlank).collect(Collectors.toSet()));
        }
        return R.ok(currentUserVO);
    }

    @PutMapping("/profile")
    public R<?> updateProfile(@RequestBody SysCurrentDTO currentDTO) {
        SysUser sysUser = sysUserService.getById(SecurityUtils.getUserId());
        sysUser.setAvatar(currentDTO.getAvatar());
        sysUser.setMobile(currentDTO.getMobile());
        sysUserService.updateById(sysUser);
        return R.ok();
    }

    @GetMapping("/menu")
    public R<List<RouterVO>> userMenu() {
        List<RouterVO> menus = sysMenuService.getRouters(SecurityUtils.getUserId());
        return R.ok(menus);
    }

    @PutMapping("/password")
    public R<?> updatePassword(@RequestBody SysCurrentDTO currentDTO) {
        LoginUser loginUser = SecurityUtils.getLoginUser();
        BizAssert.notNull(loginUser, "未登录");
        BizAssert.hasText(currentDTO.getOldPassword(), "旧密码不能为空");
        BizAssert.hasText(currentDTO.getNewPassword(), "新密码不能为空");
        boolean isMatches = passwordEncoder.matches(currentDTO.getOldPassword(), loginUser.getPassword());
        BizAssert.isTrue(isMatches, "旧密码错误");
        String newPassword = passwordEncoder.encode(currentDTO.getNewPassword());
        sysUserService.updatePassword(loginUser.getUsername(), newPassword);
        loginUser.setPassword(newPassword);
        tokenService.refreshToken(loginUser);
        return R.ok();
    }

}
