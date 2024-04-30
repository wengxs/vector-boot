package com.vector.module.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.system.entity.SysRole;
import com.vector.module.system.entity.SysUser;
import com.vector.module.system.vo.SysUserVo;

import java.util.List;

/**
 * @author wengxs
 */
public interface SysUserService extends IService<SysUser> {

    SysUserVo getVoById(Long id);

    IPage<SysUserVo> pageVo(IPage<?> page, SysUserVo query);

    void updatePassword(String username, String newPassword);

    boolean exists(String username);

    List<SysRole> listUserRole(Long userId);

    void saveOrUpdate(SysUser sysUser, List<Long> roleIds);

    void delete(Long[] ids);

    List<Long> listIdsByUserId(Long userId);
}
