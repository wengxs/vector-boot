package com.vector.module.system.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
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

    /** 密码 */
    private String password;

    /** 用户头像 */
    private String avatar;

    /** 帐号状态（0停用，1正常） */
    private Boolean enabled;

}
