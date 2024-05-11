package com.vector.module.pms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.module.pms.pojo.entity.PmsProduct;
import com.vector.module.pms.pojo.query.PmsProductQuery;
import com.vector.module.pms.pojo.vo.PmsProductVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * 产品信息 Mapper
 * @author wengxs
 * @date 2024/05/04
 */
@Mapper
public interface PmsProductMapper extends BaseMapper<PmsProduct> {

    PmsProductVO selectVOById(Long id);

    IPage<PmsProductVO> selectVOPage(@Param("page") IPage<?> page, @Param("q") PmsProductQuery query);
}
