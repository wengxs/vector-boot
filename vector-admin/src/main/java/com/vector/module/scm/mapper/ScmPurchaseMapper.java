package com.vector.module.scm.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.module.scm.entity.ScmPurchase;
import com.vector.module.scm.vo.ScmPurchaseVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ScmPurchaseMapper extends BaseMapper<ScmPurchase> {

    ScmPurchaseVo selectVoById(Long id);

    IPage<ScmPurchaseVo> selectVoPage(@Param("page") IPage<?> page, @Param("q") ScmPurchaseVo query);

}
