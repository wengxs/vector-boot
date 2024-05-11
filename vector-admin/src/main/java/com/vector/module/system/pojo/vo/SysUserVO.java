package com.vector.module.system.pojo.vo;

import com.vector.module.system.enums.SysUserStatus;
import lombok.Data;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 用户视图
 * @author wengxs
 */
@Data
public class SysUserVO {

    /** 用户ID */
    private Long id;

    /** 创建时间 */
    private Date createTime;

    /** 创建人 */
    private Long createBy;

    /** 用户名 */
    private String username;

    /** 手机号码 */
    private String mobile;

    /** 用户头像 */
    private String avatar;

    /** 帐号状态（0停用，1正常） */
    private SysUserStatus userStatus;

    /** 角色名称 */
    private String roleNames;

    /** 角色ID */
    List<Long> roleIds = new ArrayList<>();
}
