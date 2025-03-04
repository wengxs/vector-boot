package com.vector.module.system.pojo.vo;

import lombok.Data;

import java.util.Set;

/**
 * 当前登录用户视图
 * @author wengxs
 */
@Data
public class CurrentUserVO {

    /** 用户名 */
    private String username;

    /** 昵称 */
    private String nickname;

    /** 用户头像 */
    private String avatar;

    /** 手机号码 */
    private String mobile;

    /** 角色 */
    private Set<String> roles;

    /** 权限 */
    private Set<String> permissions;
}
