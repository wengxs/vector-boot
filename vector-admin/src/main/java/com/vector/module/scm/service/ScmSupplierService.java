package com.vector.module.scm.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.scm.pojo.entity.ScmSupplier;
import com.vector.module.scm.pojo.query.ScmSupplierQuery;
import com.vector.module.scm.pojo.vo.ScmSupplierVO;

public interface ScmSupplierService extends IService<ScmSupplier> {

    ScmSupplierVO getVOById(Long id);

    IPage<ScmSupplierVO> pageVO(IPage<?> page, ScmSupplierQuery query);
}
