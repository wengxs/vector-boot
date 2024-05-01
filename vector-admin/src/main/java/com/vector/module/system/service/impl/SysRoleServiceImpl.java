package com.vector.module.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.common.core.util.BizAssert;
import com.vector.module.system.entity.SysRole;
import com.vector.module.system.entity.SysRoleMenu;
import com.vector.module.system.entity.SysUserRole;
import com.vector.module.system.mapper.SysRoleMapper;
import com.vector.module.system.service.SysRoleMenuService;
import com.vector.module.system.service.SysRoleService;
import com.vector.module.system.service.SysUserRoleService;
import com.vector.module.system.vo.SysRoleVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author wengxs
 */
@Service
public class SysRoleServiceImpl extends ServiceImpl<SysRoleMapper, SysRole> implements SysRoleService {

    @Autowired
    private SysRoleMenuService sysRoleMenuService;
    @Autowired
    private SysUserRoleService sysUserRoleService;

    @Override
    public SysRoleVo getVoById(Long id) {
        return baseMapper.selectVoById(id);
    }

    @Override
    public IPage<SysRoleVo> pageVo(IPage<?> page, SysRoleVo query) {
        return baseMapper.selectVoPage(page, query);
    }

    @Override
    public boolean exists(String name) {
        return baseMapper.selectOneByName(name) != null;
    }

    @Override
    @Transactional
    public void saveOrUpdate(SysRole sysRole, List<Long> menuIds) {
        if (sysRole.getId() == null) {
            baseMapper.insert(sysRole);
        } else {
            baseMapper.updateById(sysRole);
            sysRoleMenuService.remove(new LambdaQueryWrapper<SysRoleMenu>().eq(SysRoleMenu::getRoleId, sysRole.getId()));
        }
        // 保存菜单
        List<SysRoleMenu> roleMenus = menuIds.stream().distinct()
                .map(menuId -> new SysRoleMenu(sysRole.getId(), menuId))
                .collect(Collectors.toList());
        sysRoleMenuService.saveBatch(roleMenus);
    }

    @Override
    @Transactional
    public void delete(Long[] ids) {
        for (Long id : ids) {
            BizAssert.isTrue(id != 1L, "不允许操作超级管理员");
            long count = sysUserRoleService.count(new LambdaQueryWrapper<SysUserRole>()
                    .eq(SysUserRole::getRoleId, id));
            BizAssert.isTrue(count == 0, "删除失败，已分配");
            baseMapper.deleteById(id);
            sysRoleMenuService.remove(new LambdaQueryWrapper<SysRoleMenu>().eq(SysRoleMenu::getRoleId, id));
        }
    }

    @Override
    public List<SysRole> listByUserId(Long userId) {
        return baseMapper.selectAllByUserId(userId);
    }
}
