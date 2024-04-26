package com.vector.module.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.system.entity.SysRole;

import java.util.List;

/**
 * @author wengxs
 */
public interface SysRoleService extends IService<SysRole> {

    boolean exists(String name);

    void saveOrUpdate(SysRole sysRole, List<Long> menuIds);

    void delete(Long[] ids);

    List<SysRole> listByUserId(Long userId);
}
