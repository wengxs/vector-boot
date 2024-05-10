package com.vector.module.pms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.module.pms.entity.PmsProduct;
import com.vector.module.pms.vo.PmsProductVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * 产品信息 Mapper
 * @author wengxs
 * @date 2024/05/04
 */
@Mapper
public interface PmsProductMapper extends BaseMapper<PmsProduct> {

    PmsProductVo selectVoById(Long id);

    IPage<PmsProductVo> selectVoPage(@Param("page") IPage<?> page, @Param("q") PmsProductVo query);
}
