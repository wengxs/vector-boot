package com.vector.module.system.vo;

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
public class SysUserVo extends SysUser {

    List<SysRole> roles = new ArrayList<>();
}
