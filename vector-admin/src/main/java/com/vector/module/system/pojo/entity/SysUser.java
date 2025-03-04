package com.vector.module.system.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import com.vector.module.system.enums.SysUserStatus;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 系统用户
 * @author wengxs
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("sys_user")
public class SysUser extends BaseEntity<Long> {

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
}
