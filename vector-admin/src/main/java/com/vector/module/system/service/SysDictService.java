package com.vector.module.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.system.pojo.entity.SysDict;
import com.vector.module.system.pojo.query.SysDictQuery;
import com.vector.module.system.pojo.vo.SysDictVO;

/**
 * 字典 Service
 * @author wengxs
 */
public interface SysDictService extends IService<SysDict> {

    SysDictVO getVOById(Long id);

    IPage<SysDictVO> pageVO(IPage<?> page, SysDictQuery query);
}
