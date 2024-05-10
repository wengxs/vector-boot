package com.vector.module.pms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.module.pms.entity.PmsSpu;
import com.vector.module.pms.vo.PmsSpuVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * 商品信息 Mapper
 * @author wengxs
 * @date 2024/05/05
 */
@Mapper
public interface PmsSpuMapper extends BaseMapper<PmsSpu> {

    PmsSpuVo selectVoById(Long id);

    IPage<PmsSpuVo> selectVoPage(@Param("page") IPage<?> page, @Param("q") PmsSpuVo query);
}
