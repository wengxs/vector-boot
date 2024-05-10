package com.vector.module.wms.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.wms.entity.WmsProductStock;
import com.vector.module.wms.dto.WmsProductStockLockDto;
import com.vector.module.wms.vo.WmsProductStockVo;

public interface WmsProductStockService extends IService<WmsProductStock> {

    WmsProductStockVo getVoById(Long id);

    IPage<WmsProductStockVo> pageVo(IPage<?> page, WmsProductStockVo query);

    /**
     * 锁定库存
     * @param lockDto
     */
    void lock(WmsProductStockLockDto lockDto);

    /**
     * 锁定库存
     * @param productId
     * @param qty
     */
    void lock(Long productId, Integer qty);

    /**
     * 释放库存
     * @param lockDto
     */
    void unlock(WmsProductStockLockDto lockDto);

    /**
     * 释放库存
     * @param productId
     * @param qty
     */
    void unlock(Long productId, Integer qty);
}
