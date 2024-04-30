package com.vector.module.system.dto;

import com.vector.module.system.enums.SysUserStatus;
import lombok.Data;

/**
 * @author wengxs
 */
@Data
public class SysUserDto {

    /** 用户ID */
    private Long Id;

    /** 用户名 */
    private String username;

    /** 密码 */
    private String password;

    /** 手机号码 */
    private String mobile;

    /** 用户头像 */
    private String avatar;

    /** 帐号状态（0停用，1正常） */
    private SysUserStatus userStatus;

    /** 角色ID */
    private Long[] roleIds;
}
