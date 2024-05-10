package com.vector.module.scm.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.module.scm.entity.ScmPurchaseDetail;
import com.vector.module.scm.mapper.ScmPurchaseDetailMapper;
import com.vector.module.scm.service.ScmPurchaseDetailService;
import com.vector.module.scm.vo.ScmPurchaseVo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScmPurchaseDetailServiceImpl extends ServiceImpl<ScmPurchaseDetailMapper, ScmPurchaseDetail> implements ScmPurchaseDetailService {

    @Override
    public List<ScmPurchaseVo.Detail> listVoByPurchaseId(Long purchaseId) {
        return baseMapper.selectVoByPurchaseId(purchaseId);
    }
}
