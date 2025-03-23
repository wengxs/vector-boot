package com.vector.security.service;

import com.alibaba.fastjson2.JSON;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.vector.common.mybatis.enums.DataScope;
import com.vector.common.security.domain.LoginUser;
import com.vector.module.system.pojo.entity.SysMenu;
import com.vector.module.system.pojo.entity.SysRole;
import com.vector.module.system.pojo.entity.SysUser;
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
        if (user == null) {
            throw new UsernameNotFoundException("用户不存在");
        }

        List<SysRole> sysRoles = sysUserService.listUserRole(user.getId());
        List<SysMenu> sysMenus = sysMenuService.listByUserId(user.getId());
        Set<String> permissions = sysMenus.stream()
                .map(SysMenu::getPermission)
                .filter(StringUtils::isNotBlank)
                .collect(Collectors.toSet());
        Set<String> roles = sysRoles.stream()
                .map(sysRole -> "ROLE_" + sysRole.getRoleKey())
                .collect(Collectors.toSet());
        permissions.addAll(roles);

        LoginUser loginUser = new LoginUser();
        loginUser.setUserId(user.getId());
        loginUser.setUsername(user.getUsername());
        loginUser.setPassword(user.getPassword());
        loginUser.setDeptId(user.getDeptId());
        loginUser.setDataScope(getDataScope(sysRoles));
        loginUser.setEnabled(SysUserStatus.ENABLED.equals(user.getUserStatus()));
        loginUser.setPermissions(permissions);
        log.info("登录结果={}", JSON.toJSONString(loginUser));
        return loginUser;
    }

    private String getDataScope(List<SysRole> sysRoles) {
        Set<DataScope> dataScopes = sysRoles.stream().map(SysRole::getDataScope).collect(Collectors.toSet());
        if (dataScopes.contains(DataScope.ALL)) {
            return DataScope.ALL.name();
        } else if (dataScopes.contains(DataScope.DEPT_AND_CHILD)) {
            return DataScope.DEPT_AND_CHILD.name();
        } else if (dataScopes.contains(DataScope.DEPT)) {
            return DataScope.DEPT.name();
        } else {
            return DataScope.SELF.name();
        }
    }

}
