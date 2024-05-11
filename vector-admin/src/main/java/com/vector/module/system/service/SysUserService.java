package com.vector.module.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.system.pojo.entity.SysRole;
import com.vector.module.system.pojo.entity.SysUser;
import com.vector.module.system.pojo.query.SysUserQuery;
import com.vector.module.system.pojo.vo.SysUserVO;

import java.util.List;

/**
 * @author wengxs
 */
public interface SysUserService extends IService<SysUser> {

    SysUserVO getVOById(Long id);

    IPage<SysUserVO> pageVO(IPage<?> page, SysUserQuery query);

    void updatePassword(String username, String newPassword);

    boolean exists(String username);

    List<SysRole> listUserRole(Long userId);

    void saveOrUpdate(SysUser sysUser, List<Long> roleIds);

    void delete(Long[] ids);

    List<Long> listIdsByUserId(Long userId);
}
