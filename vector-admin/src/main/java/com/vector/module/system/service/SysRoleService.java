package com.vector.module.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.system.pojo.entity.SysRole;
import com.vector.module.system.pojo.query.SysRoleQuery;
import com.vector.module.system.pojo.vo.SysRoleVO;

import java.util.List;

/**
 * @author wengxs
 */
public interface SysRoleService extends IService<SysRole> {

    SysRoleVO getVOById(Long id);

    IPage<SysRoleVO> pageVO(IPage<?> page, SysRoleQuery query);

    boolean exists(String roleName);

    void saveOrUpdate(SysRole sysRole, List<Long> menuIds);

    void delete(Long[] ids);

    List<SysRole> listByUserId(Long userId);
}
