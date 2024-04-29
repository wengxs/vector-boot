package com.vector.security.service;

import com.alibaba.fastjson2.JSON;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.vector.common.security.constant.SecurityConstant;
import com.vector.common.security.domain.LoginUser;
import com.vector.module.system.entity.SysMenu;
import com.vector.module.system.entity.SysRole;
import com.vector.module.system.entity.SysUser;
import com.vector.module.system.enums.SysUserStatus;
import com.vector.module.system.service.SysMenuService;
import com.vector.module.system.service.SysUserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;


/**
 * @author wengxs
 */
@Service
@Slf4j
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private SysUserService sysUserService;
    @Autowired
    private SysMenuService sysMenuService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        log.info("loadUserByUsername({})", username);
        SysUser user = sysUserService.getOne(new LambdaQueryWrapper<SysUser>().eq(SysUser::getUsername, username));
        if (user == null)
            throw new UsernameNotFoundException("用户不存在");
        Set<String> permissions = getPermissionsByUserId(user.getId());
        permissions.addAll(getRolesByUserId(user.getId()));
        LoginUser loginUser = new LoginUser();
        loginUser.setUserId(user.getId());
        loginUser.setUsername(user.getUsername());
        loginUser.setPassword(user.getPassword());
        loginUser.setEnabled(SysUserStatus.ENABLED.equals(user.getUserStatus()));
        loginUser.setPermissions(permissions);
        log.info("登录结果={}", JSON.toJSONString(loginUser));
        return loginUser;
    }

    public Set<String> getRolesByUserId(Long userId) {
        Set<String> roleList = new HashSet<>();
        if (userId.equals(SecurityConstant.ADMIN_ID)) {
            roleList.add(SecurityConstant.ADMIN_ROLES);
            return roleList;
        }
        List<SysRole> roles = sysUserService.listUserRole(userId);
        for (SysRole role : roles) {
            roleList.add("ROLE_" + role.getRoleKey());
        }
        return roleList;
    }

    private Set<String> getPermissionsByUserId(Long userId) {
        if (userId.equals(SecurityConstant.ADMIN_ID)) {
            Set<String> permissions = new HashSet<>();
            permissions.add(SecurityConstant.ADMIN_PERMISSIONS);
            return permissions;
        }
        List<SysMenu> menus = sysMenuService.listByUserId(userId);
        return menus.stream()
                .map(SysMenu::getPermission)
                .filter(StringUtils::isNotBlank)
                .collect(Collectors.toSet());
    }

}
