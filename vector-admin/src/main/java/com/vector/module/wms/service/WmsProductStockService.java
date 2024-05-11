package com.vector.module.wms.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.wms.pojo.entity.WmsProductStock;
import com.vector.module.wms.pojo.dto.WmsProductStockLockDTO;
import com.vector.module.wms.pojo.query.WmsProductStockQuery;
import com.vector.module.wms.pojo.vo.WmsProductStockVO;

public interface WmsProductStockService extends IService<WmsProductStock> {

    WmsProductStockVO getVOById(Long id);

    IPage<WmsProductStockVO> pageVO(IPage<?> page, WmsProductStockQuery query);

    /**
     * 锁定库存
     * @param lockDTO
     */
    void lock(WmsProductStockLockDTO lockDTO);

    /**
     * 锁定库存
     * @param productId
     * @param qty
     */
    void lock(Long productId, Integer qty);

    /**
     * 释放库存
     * @param lockDTO
     */
    void unlock(WmsProductStockLockDTO lockDTO);

    /**
     * 释放库存
     * @param productId
     * @param qty
     */
    void unlock(Long productId, Integer qty);
}
