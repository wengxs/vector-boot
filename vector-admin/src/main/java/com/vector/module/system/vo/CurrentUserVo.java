package com.vector.module.system.vo;

import lombok.Data;

import java.util.Set;

@Data
public class CurrentUserVo {

    /** 用户名 */
    private String username;

    /** 用户头像 */
    private String avatar;

    /** 角色 */
    private Set<String> roles;

    /** 权限 */
    private Set<String> permissions;
}
