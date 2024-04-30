package com.vector.module.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.common.core.util.BizAssert;
import com.vector.module.system.entity.SysRole;
import com.vector.module.system.entity.SysUser;
import com.vector.module.system.entity.SysUserRole;
import com.vector.module.system.mapper.SysUserMapper;
import com.vector.module.system.service.SysRoleService;
import com.vector.module.system.service.SysUserRoleService;
import com.vector.module.system.service.SysUserService;
import com.vector.module.system.vo.SysUserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author wengxs
 */
@Service
public class SysUserServiceImpl extends ServiceImpl<SysUserMapper, SysUser> implements SysUserService {

    @Autowired
    private SysRoleService sysRoleService;
    @Autowired
    private SysUserRoleService sysUserRoleService;

    @Override
    public SysUserVo getVoById(Long id) {
        return baseMapper.selectVoById(id);
    }

    @Override
    public IPage<SysUserVo> pageVo(IPage<?> page, SysUserVo query) {
        return baseMapper.selectVoPage(page, query);
    }

    @Override
    public void updatePassword(String username, String password) {
        baseMapper.updatePassword(username, password);
    }

    @Override
    public boolean exists(String username) {
        return baseMapper.selectOneByUsername(username) != null;
    }

    @Override
    public List<SysRole> listUserRole(Long userId) {
        return sysRoleService.listByUserId(userId);
    }

    @Override
    @Transactional
    public void saveOrUpdate(SysUser sysUser, List<Long> roleIds) {
        if (sysUser.getId() == null) {
            baseMapper.insert(sysUser);
        } else {
            baseMapper.updateById(sysUser);
            sysUserRoleService.remove(new LambdaQueryWrapper<SysUserRole>().eq(SysUserRole::getUserId, sysUser.getId()));
        }
        // 保存角色
        List<SysUserRole> userRoles = roleIds.stream().distinct()
                .map(roleId -> new SysUserRole(sysUser.getId(), roleId))
                .collect(Collectors.toList());
        sysUserRoleService.saveBatch(userRoles);
    }

    @Override
    @Transactional
    public void delete(Long[] ids) {
        for (Long id : ids) {
            BizAssert.isTrue(id != 1L, "不允许操作超级管理员");
            baseMapper.deleteById(id);
            sysUserRoleService.remove(new LambdaQueryWrapper<SysUserRole>().eq(SysUserRole::getUserId, id));
        }
    }

    @Override
    public List<Long> listIdsByUserId(Long userId) {
        return baseMapper.selectIdsByUserId(userId);
    }
}
