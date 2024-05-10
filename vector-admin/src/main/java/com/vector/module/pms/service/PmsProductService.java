package com.vector.module.pms.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.pms.entity.PmsProduct;
import com.vector.module.pms.vo.PmsProductVo;

/**
 * 产品信息 Service
 * @author wengxs
 * @date 2024/05/04
 */
public interface PmsProductService extends IService<PmsProduct> {

    PmsProductVo getVoById(Long id);

    IPage<PmsProductVo> pageVo(IPage<?> page, PmsProductVo query);
}
