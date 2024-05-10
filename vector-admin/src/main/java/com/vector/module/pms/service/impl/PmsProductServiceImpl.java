package com.vector.module.pms.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.module.pms.entity.PmsProduct;
import com.vector.module.pms.mapper.PmsProductMapper;
import com.vector.module.pms.service.PmsProductService;
import com.vector.module.pms.vo.PmsProductVo;
import org.springframework.stereotype.Service;

/**
 * 产品信息 ServiceImpl
 * @author wengxs
 * @date 2024/05/04
 */
@Service
public class PmsProductServiceImpl extends ServiceImpl<PmsProductMapper, PmsProduct>
        implements PmsProductService {

    @Override
    public PmsProductVo getVoById(Long id) {
        return baseMapper.selectVoById(id);
    }

    @Override
    public IPage<PmsProductVo> pageVo(IPage<?> page, PmsProductVo query) {
        return baseMapper.selectVoPage(page, query);
    }
}
