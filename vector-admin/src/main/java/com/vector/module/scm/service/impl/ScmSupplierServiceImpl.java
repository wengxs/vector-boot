package com.vector.module.scm.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.module.scm.mapper.ScmSupplierMapper;
import com.vector.module.scm.pojo.entity.ScmSupplier;
import com.vector.module.scm.pojo.query.ScmSupplierQuery;
import com.vector.module.scm.pojo.vo.ScmSupplierVO;
import com.vector.module.scm.service.ScmSupplierService;
import org.springframework.stereotype.Service;

/**
 * 供应商信息 ServiceImpl
 * @author wengxs
 * @date 2024/05/12
 */
@Service
public class ScmSupplierServiceImpl extends ServiceImpl<ScmSupplierMapper, ScmSupplier>
        implements ScmSupplierService {

    @Override
    public ScmSupplierVO getVOById(Long id) {
        return baseMapper.selectVOById(id);
    }

    @Override
    public IPage<ScmSupplierVO> pageVO(IPage<?> page, ScmSupplierQuery query) {
        return baseMapper.selectVOPage(page, query);
    }
}
