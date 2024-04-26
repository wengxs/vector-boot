package com.vector.module.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.system.entity.SysRole;
import com.vector.module.system.entity.SysUser;

import java.util.List;

/**
 * @author wengxs
 */
public interface SysUserService extends IService<SysUser> {

    void updatePassword(String username, String newPassword);

    boolean exists(String username);

    List<SysRole> listUserRole(Long userId);

    void saveOrUpdate(SysUser sysUser, List<Long> roleIds);

    void delete(Long[] ids);
}
