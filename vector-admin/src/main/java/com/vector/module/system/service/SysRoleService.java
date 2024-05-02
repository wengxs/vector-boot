package com.vector.module.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.system.entity.SysRole;
import com.vector.module.system.vo.SysRoleVo;

import java.util.List;

/**
 * @author wengxs
 */
public interface SysRoleService extends IService<SysRole> {

    SysRoleVo getVoById(Long id);

    IPage<SysRoleVo> pageVo(IPage<?> page, SysRoleVo query);

    boolean exists(String roleName);

    void saveOrUpdate(SysRole sysRole, List<Long> menuIds);

    void delete(Long[] ids);

    List<SysRole> listByUserId(Long userId);
}
