package com.vector.common.security.service;

import com.vector.common.security.constant.SecurityConstant;
import com.vector.common.security.util.SecurityUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.Set;

/**
 * 权限校验管理类
 *
 * @author wengxs
 */
@Service("ss")
@Slf4j
public class PermissionService {

    /**
     * 拥有权限
     * @param authority
     * @return
     */
    public final boolean hasAuthority(String authority) {
        return hasAnyAuthority(authority);
    }

    /**
     * 拥有任意权限
     * @param authorities
     * @return
     */
    public final boolean hasAnyAuthority(String... authorities) {
        return hasAnyAuthorityName(null, authorities);
    }

    /**
     * 拥有角色
     * @param role
     * @return
     */
    public final boolean hasRole(String role) {
        return hasAnyRole(role);
    }

    /**
     * 拥有任意角色
     * @param roles
     * @return
     */
    public final boolean hasAnyRole(String... roles) {
        return hasAnyAuthorityName(SecurityConstant.ROLE_PREFIX, roles);
    }

    private boolean hasAnyAuthorityName(String prefix, String... roles) {
        // 超级管理员拥有所有权限
        if (SecurityUtils.isAdmin()) {
            return true;
        }

        Set<String> roleSet = SecurityUtils.getRoles();
        for (String role : roles) {
            String defaultedRole = getRoleWithDefaultPrefix(prefix, role);
            if (roleSet.contains(defaultedRole)) {
                return true;
            }
        }
        return false;
    }

    private String getRoleWithDefaultPrefix(String defaultRolePrefix, String role) {
        if (role == null) {
            return null;
        }
        if (defaultRolePrefix == null || defaultRolePrefix.isEmpty()) {
            return role;
        }
        if (role.startsWith(defaultRolePrefix)) {
            return role;
        }
        return defaultRolePrefix + role;
    }

}
