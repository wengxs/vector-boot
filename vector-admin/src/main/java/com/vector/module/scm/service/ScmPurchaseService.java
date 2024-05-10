package com.vector.module.scm.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.scm.dto.ScmPurchaseDto;
import com.vector.module.scm.entity.ScmPurchase;
import com.vector.module.scm.vo.ScmPurchaseVo;

public interface ScmPurchaseService extends IService<ScmPurchase> {

    ScmPurchaseVo getVoById(Long id);

    IPage<ScmPurchaseVo> pageVo(IPage<?> page, ScmPurchaseVo query);

    /**
     * 创建订单
     * @param purchaseDto
     */
    void create(ScmPurchaseDto purchaseDto);

    /**
     * 修改订单
     * @param purchaseDto
     */
    void updateById(ScmPurchaseDto purchaseDto);

    /**
     * 取消订单
     * @param id
     */
    void cancel(Long id);

    /**
     * 签约采购
     * @param id
     */
    void sign(Long id);

    /**
     * 物流信息回传
     * @param id
     * @param logisticsName
     * @param logisticsNo
     */
    void callbackLogistics(Long id, String logisticsName, String logisticsNo);

    /**
     * 采购单完结
     * @param id
     */
    void finished(Long id);
}
