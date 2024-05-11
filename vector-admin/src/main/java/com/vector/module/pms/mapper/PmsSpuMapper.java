package com.vector.module.pms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.module.pms.pojo.entity.PmsSpu;
import com.vector.module.pms.pojo.query.PmsSpuQuery;
import com.vector.module.pms.pojo.vo.PmsSpuVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * 商品信息 Mapper
 * @author wengxs
 * @date 2024/05/05
 */
@Mapper
public interface PmsSpuMapper extends BaseMapper<PmsSpu> {

    PmsSpuVO selectVOById(Long id);

    IPage<PmsSpuVO> selectVOPage(@Param("page") IPage<?> page, @Param("q") PmsSpuQuery query);
}
