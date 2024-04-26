package com.vector.module.system.dto;

import com.vector.module.system.entity.SysRole;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.ArrayList;
import java.util.List;

/**
 * @author wengxs
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class SysRoleDto extends SysRole {

    private Long[] menuIds;

    List<Long> permissionIds = new ArrayList<>();
}
