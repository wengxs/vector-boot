package com.vector.module.wms.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.common.core.util.BizAssert;
import com.vector.module.wms.constant.WmsConstant;
import com.vector.module.wms.entity.WmsProductStock;
import com.vector.module.wms.dto.WmsProductStockLockDto;
import com.vector.module.wms.mapper.WmsProductStockMapper;
import com.vector.module.wms.service.WmsProductStockService;
import com.vector.module.wms.vo.WmsProductStockVo;
import org.redisson.api.RLock;
import org.redisson.api.RedissonClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.concurrent.TimeUnit;

@Service
public class WmsProductStockServiceImpl extends ServiceImpl<WmsProductStockMapper, WmsProductStock>
        implements WmsProductStockService {

    @Autowired
    private RedissonClient redissonClient;

    @Override
    public WmsProductStockVo getVoById(Long id) {
        return baseMapper.selectVoById(id);
    }

    @Override
    public IPage<WmsProductStockVo> pageVo(IPage<?> page, WmsProductStockVo query) {
        return baseMapper.selectVoPage(page, query);
    }

    @Override
    @Transactional
    public void lock(WmsProductStockLockDto lockDto) {
        for (WmsProductStockLockDto.Detail detail : lockDto.getDetails()) {
            this.lock(detail.getProductId(), detail.getQty());
        }
    }

    @Override
    @Transactional
    public void lock(Long productId, Integer qty) {
        RLock lock = redissonClient.getLock(WmsConstant.LOCK_PREFIX_PRODUCT_STOCK + productId);
        lock.lock(3, TimeUnit.SECONDS);
        try {
            int res = baseMapper.lock(productId, qty);
            BizAssert.isTrue(res > 0, "商品库存不足");
        } finally {
            lock.unlock();
        }
    }

    @Override
    @Transactional
    public void unlock(WmsProductStockLockDto lockDto) {
        for (WmsProductStockLockDto.Detail detail : lockDto.getDetails()) {
            this.unlock(detail.getProductId(), detail.getQty());
        }
    }

    @Override
    @Transactional
    public void unlock(Long productId, Integer qty) {
        RLock lock = redissonClient.getLock(WmsConstant.LOCK_PREFIX_PRODUCT_STOCK + productId);
        lock.lock(3, TimeUnit.SECONDS);
        try {
            int res = baseMapper.unlock(productId, qty);
            BizAssert.isTrue(res > 0, "商品库存释放失败");
        } finally {
            lock.unlock();
        }
    }

}
