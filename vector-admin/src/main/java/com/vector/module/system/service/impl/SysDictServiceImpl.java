package com.vector.module.system.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.module.system.mapper.SysDictMapper;
import com.vector.module.system.pojo.entity.SysDict;
import com.vector.module.system.pojo.query.SysDictQuery;
import com.vector.module.system.pojo.vo.SysDictVO;
import com.vector.module.system.service.SysDictService;
import org.springframework.stereotype.Service;

/**
 * 字典 ServiceImpl
 * @author wengxs
 */
@Service
public class SysDictServiceImpl extends ServiceImpl<SysDictMapper, SysDict>
        implements SysDictService {

    @Override
    public SysDictVO getVOById(Long id) {
        return baseMapper.selectVOById(id);
    }

    @Override
    public IPage<SysDictVO> pageVO(IPage<?> page, SysDictQuery query) {
        return baseMapper.selectVOPage(page, query);
    }
}
