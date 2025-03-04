package com.vector.module.system.pojo.query;

import com.vector.common.core.query.PageQuery;
import com.vector.module.system.enums.SysUserStatus;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 用户查询参数
 * @author wengxs
 * @date 2024/5/12
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class SysUserQuery extends PageQuery {

    /** 用户名 */
    private String username;

    /** 手机号码 */
    private String mobile;

    /** 邮箱 */
    private String email;

    /** 帐号状态（0停用，1正常） */
    private SysUserStatus userStatus;

    /** 角色ID */
    private Long roleId;

    /** 部门ID */
    private Long deptId;
}
