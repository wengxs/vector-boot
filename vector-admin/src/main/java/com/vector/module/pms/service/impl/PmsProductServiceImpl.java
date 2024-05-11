package com.vector.module.pms.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.module.pms.pojo.entity.PmsProduct;
import com.vector.module.pms.mapper.PmsProductMapper;
import com.vector.module.pms.pojo.query.PmsProductQuery;
import com.vector.module.pms.service.PmsProductService;
import com.vector.module.pms.pojo.vo.PmsProductVO;
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
    public PmsProductVO getVOById(Long id) {
        return baseMapper.selectVOById(id);
    }

    @Override
    public IPage<PmsProductVO> pageVO(IPage<?> page, PmsProductQuery query) {
        return baseMapper.selectVOPage(page, query);
    }
}
