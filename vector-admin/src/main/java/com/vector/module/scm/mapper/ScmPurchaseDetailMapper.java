package com.vector.module.scm.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.vector.module.scm.entity.ScmPurchaseDetail;
import com.vector.module.scm.vo.ScmPurchaseVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ScmPurchaseDetailMapper extends BaseMapper<ScmPurchaseDetail> {

    List<ScmPurchaseVo.Detail> selectVoByPurchaseId(Long purchaseId);
}
