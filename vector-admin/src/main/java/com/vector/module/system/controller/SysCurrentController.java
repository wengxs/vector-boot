package com.vector.module.system.controller;

import com.vector.common.core.constant.SecurityConstant;
import com.vector.common.core.result.R;
import com.vector.common.core.util.BizAssert;
import com.vector.common.security.domain.LoginUser;
import com.vector.common.security.service.TokenService;
import com.vector.common.security.util.SecurityUtils;
import com.vector.module.system.entity.SysMenu;
import com.vector.module.system.entity.SysRole;
import com.vector.module.system.entity.SysUser;
import com.vector.module.system.service.SysMenuService;
import com.vector.module.system.service.SysUserService;
import com.vector.module.system.vo.CurrentUserVo;
import com.vector.module.system.vo.RouterVo;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.MapUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;
import java.util.Map;
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
    public R<CurrentUserVo> userProfile() {
        SysUser sysUser = sysUserService.getById(SecurityUtils.getUserId());
        CurrentUserVo currentUserVo = new CurrentUserVo();
        currentUserVo.setUsername(sysUser.getUsername());
        currentUserVo.setAvatar(sysUser.getAvatar());
        currentUserVo.setMobile(sysUser.getMobile());
        if (SecurityConstant.ADMIN_ID.equals(sysUser.getId())) {
            currentUserVo.setRoles(Collections.singleton(SecurityConstant.ADMIN_ROLES
                    .substring(SecurityConstant.ROLE_PREFIX.length())));
            currentUserVo.setPermissions(Collections.singleton(SecurityConstant.ADMIN_PERMISSIONS));
        } else {
            List<SysRole> sysRoles = sysUserService.listUserRole(sysUser.getId());
            List<SysMenu> sysMenus = sysMenuService.listByUserId(sysUser.getId());
            currentUserVo.setRoles(sysRoles.stream()
                    .map(SysRole::getRoleKey).collect(Collectors.toSet()));
            currentUserVo.setPermissions(sysMenus.stream()
                    .map(SysMenu::getPermission)
                    .filter(StringUtils::isNotBlank).collect(Collectors.toSet()));
        }
        return R.ok(currentUserVo);
    }

    @PutMapping("/profile")
    public R<?> updateProfile(@RequestBody Map<String, String> params) {
        SysUser sysUser = sysUserService.getById(SecurityUtils.getUserId());
        sysUser.setAvatar(MapUtils.getString(params, "avatar"));
        sysUser.setMobile(MapUtils.getString(params, "mobile"));
        sysUserService.updateById(sysUser);
        return R.ok();
    }

    @GetMapping("/menu")
    public R<List<RouterVo>> userMenu() {
        List<RouterVo> menus = sysMenuService.getRouters(SecurityUtils.getUserId());
        return R.ok(menus);
    }

    @PutMapping("/password")
    public R<?> updatePassword(@RequestBody Map<String, String> params) {
        LoginUser loginUser = SecurityUtils.getLoginUser();
        BizAssert.notNull(loginUser, "未登录");
        String oldPassword = MapUtils.getString(params, "oldPassword");
        BizAssert.isTrue(passwordEncoder.matches(oldPassword, loginUser.getPassword()), "旧密码错误");
        String newPassword = passwordEncoder.encode(MapUtils.getString(params, "newPassword"));
        sysUserService.updatePassword(loginUser.getUsername(), newPassword);
        loginUser.setPassword(newPassword);
        tokenService.refreshToken(loginUser);
        return R.ok();
    }

}
