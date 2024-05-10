package com.vector.module.scm.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.scm.entity.ScmPurchaseDetail;
import com.vector.module.scm.vo.ScmPurchaseVo;

import java.util.List;

public interface ScmPurchaseDetailService extends IService<ScmPurchaseDetail> {

    List<ScmPurchaseVo.Detail> listVoByPurchaseId(Long purchaseId);
}
