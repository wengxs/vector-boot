package com.vector.module.scm.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.scm.pojo.dto.ScmPurchaseDTO;
import com.vector.module.scm.pojo.entity.ScmPurchase;
import com.vector.module.scm.pojo.query.ScmPurchaseQuery;
import com.vector.module.scm.pojo.vo.ScmPurchaseVO;

/**
 * 采购单 Service
 * @author wengxs
 * @date 2024/05/12
 */
public interface ScmPurchaseService extends IService<ScmPurchase> {

    ScmPurchaseVO getVOById(Long id);

    IPage<ScmPurchaseVO> pageVO(IPage<?> page, ScmPurchaseQuery query);

    /**
     * 创建订单
     * @param purchaseDTO
     */
    void create(ScmPurchaseDTO purchaseDTO);

    /**
     * 修改订单
     * @param purchaseDTO
     */
    void updateById(ScmPurchaseDTO purchaseDTO);

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
