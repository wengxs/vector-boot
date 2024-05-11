package com.vector.module.scm.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.module.scm.pojo.entity.ScmPurchase;
import com.vector.module.scm.pojo.query.ScmPurchaseQuery;
import com.vector.module.scm.pojo.vo.ScmPurchaseVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ScmPurchaseMapper extends BaseMapper<ScmPurchase> {

    ScmPurchaseVO selectVOById(Long id);

    IPage<ScmPurchaseVO> selectVOPage(@Param("page") IPage<?> page, @Param("q") ScmPurchaseQuery query);
}
