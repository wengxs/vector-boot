package com.vector.module.scm.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.vector.module.scm.pojo.entity.ScmPurchaseDetail;
import com.vector.module.scm.pojo.vo.ScmPurchaseVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ScmPurchaseDetailMapper extends BaseMapper<ScmPurchaseDetail> {

    List<ScmPurchaseVO.Detail> selectVOByPurchaseId(Long purchaseId);
}
