package com.vector.module.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.module.system.pojo.entity.SysDict;
import com.vector.module.system.pojo.query.SysDictQuery;
import com.vector.module.system.pojo.vo.SysDictVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * 字典 Mapper
 * @author wengxs
 */
@Mapper
public interface SysDictMapper extends BaseMapper<SysDict> {

    SysDictVO selectVOById(Long id);

    IPage<SysDictVO> selectVOPage(@Param("page") IPage<?> page, @Param("q") SysDictQuery query);
}
