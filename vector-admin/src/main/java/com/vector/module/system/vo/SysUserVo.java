package com.vector.module.system.vo;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.vector.module.system.entity.SysRole;
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
public class SysUserVo {

    /** 采购单ID */
    private Long id;

    /** 创建时间 */
//    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /** 创建人 */
    private String createBy;

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

    /** 创建时间：起 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String createBegin;

    /** 创建时间：止 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String createEnd;

    /** 角色ID */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private Long roleId;

    List<SysRole> roles = new ArrayList<>();
}
