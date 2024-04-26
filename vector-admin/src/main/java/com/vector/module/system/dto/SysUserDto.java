package com.vector.module.system.dto;

import com.vector.module.system.entity.SysRole;
import com.vector.module.system.entity.SysUser;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.ArrayList;
import java.util.List;

/**
 * @author wengxs
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class SysUserDto extends SysUser {

    private Long[] roleIds;

    List<SysRole> roles = new ArrayList<>();
}
