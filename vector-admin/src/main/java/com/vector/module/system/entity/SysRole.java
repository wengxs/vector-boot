package com.vector.module.system.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 系统角色
 * @author wengxs
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("sys_role")
public class SysRole extends BaseEntity<Long> {

    /** 角色名称 */
    private String roleName;

    /** 角色标识 */
    private String roleKey;

    /** 角色描述 */
    private String description;

}
