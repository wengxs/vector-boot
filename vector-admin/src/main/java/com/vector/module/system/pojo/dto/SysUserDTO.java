package com.vector.module.system.pojo.dto;

import com.vector.module.system.enums.SysUserStatus;
import lombok.Data;

/**
 * @author wengxs
 */
@Data
public class SysUserDTO {

    /** 用户ID */
    private Long Id;

    /** 用户名 */
    private String username;

    /** 昵称 */
    private String nickname;

    /** 密码 */
    private String password;

    /** 手机号码 */
    private String mobile;

    /** 邮箱 */
    private String email;

    /** 性别 */
    private String gender;

    /** 用户头像 */
    private String avatar;

    /** 帐号状态（0停用，1正常） */
    private SysUserStatus userStatus;

    /** 部门ID */
    private Long deptId;

    /** 备注 */
    private String remark;

    /** 角色ID */
    private Long[] roleIds;
}
