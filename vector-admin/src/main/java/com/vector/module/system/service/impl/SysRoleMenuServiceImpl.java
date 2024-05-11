package com.vector.module.system.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.module.system.pojo.entity.SysRoleMenu;
import com.vector.module.system.mapper.SysRoleMenuMapper;
import com.vector.module.system.service.SysRoleMenuService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author wengxs
 */
@Service
public class SysRoleMenuServiceImpl extends ServiceImpl<SysRoleMenuMapper, SysRoleMenu> implements SysRoleMenuService {
    @Override
    public List<Long> listAllMenuIds() {
        return baseMapper.selectAllMenuIds();
    }
}
