package com.vector.module.system.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.module.system.mapper.SysDictOptionMapper;
import com.vector.module.system.pojo.entity.SysDictOption;
import com.vector.module.system.service.SysDictOptionService;
import org.springframework.stereotype.Service;

/**
 * 字典选项 ServiceImpl
 * @author wengxs
 */
@Service
public class SysDictOptionServiceImpl extends ServiceImpl<SysDictOptionMapper, SysDictOption>
        implements SysDictOptionService {
}
