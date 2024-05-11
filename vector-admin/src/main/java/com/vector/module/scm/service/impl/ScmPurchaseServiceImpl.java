package com.vector.module.scm.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.common.core.util.BizAssert;
import com.vector.common.core.util.OrderNoGenerator;
import com.vector.common.mq.constant.RabbitMqConstant;
import com.vector.module.scm.constant.ScmConstant;
import com.vector.module.scm.enums.ScmPurchaseStatus;
import com.vector.module.scm.mapper.ScmPurchaseMapper;
import com.vector.module.scm.pojo.dto.ScmPurchaseDTO;
import com.vector.module.scm.pojo.entity.ScmPurchase;
import com.vector.module.scm.pojo.entity.ScmPurchaseDetail;
import com.vector.module.scm.pojo.query.ScmPurchaseQuery;
import com.vector.module.scm.pojo.vo.ScmPurchaseVO;
import com.vector.module.scm.service.ScmPurchaseDetailService;
import com.vector.module.scm.service.ScmPurchaseService;
import com.vector.module.wms.enums.BizType;
import com.vector.module.wms.pojo.dto.WmsReceiveDTO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.*;

@Slf4j
@Service
public class ScmPurchaseServiceImpl extends ServiceImpl<ScmPurchaseMapper, ScmPurchase> 
        implements ScmPurchaseService {

    @Autowired
    private OrderNoGenerator orderNoGenerator;
    @Autowired
    private ScmPurchaseDetailService scmPurchaseDetailService;
    @Autowired
    private RabbitTemplate rabbitTemplate;

    @Override
    public ScmPurchaseVO getVOById(Long id) {
        ScmPurchaseVO vo = baseMapper.selectVOById(id);
        if (vo != null)
            vo.setDetails(scmPurchaseDetailService.listVOByPurchaseId(id));
        return vo;
    }

    @Override
    public IPage<ScmPurchaseVO> pageVO(IPage<?> page, ScmPurchaseQuery query) {
        return baseMapper.selectVOPage(page, query);
    }

    private void handleDetail(List<ScmPurchaseDTO.Detail> details, Long purchaseId) {
        for (ScmPurchaseDTO.Detail detail : details) {
            ScmPurchaseDetail purchaseDetail = new ScmPurchaseDetail();
            purchaseDetail.setPurchaseId(purchaseId);
            purchaseDetail.setProductId(detail.getProductId());
            purchaseDetail.setPrice(detail.getPrice());
            purchaseDetail.setQty(detail.getQty());
            purchaseDetail.setAmount(detail.getPrice().multiply(BigDecimal.valueOf(detail.getQty())));
            scmPurchaseDetailService.save(purchaseDetail);
        }
    }

    @Override
    @Transactional
    public void create(ScmPurchaseDTO purchaseDTO) {
        ScmPurchase purchase = new ScmPurchase();
        purchase.setPurchaseNo(orderNoGenerator.generate(ScmConstant.NUMBER_PREFIX_ORDER));
        purchase.setPurchaseStatus(ScmPurchaseStatus.DRAFT);
        purchase.setSupplierId(purchaseDTO.getSupplierId());
        purchase.setPurchaseRemake(purchaseDTO.getPurchaseRemake());
        BigDecimal amount = purchaseDTO.getDetails().stream()
                .map(detail -> detail.getPrice().multiply(BigDecimal.valueOf(detail.getQty())))
                .reduce(BigDecimal.ZERO, BigDecimal::add);
        purchase.setAmount(amount);
        baseMapper.insert(purchase);
        handleDetail(purchaseDTO.getDetails(), purchase.getId());
    }

    @Override
    @Transactional
    public void updateById(ScmPurchaseDTO purchaseDTO) {
        ScmPurchase purchase = baseMapper.selectById(purchaseDTO.getId());
        BizAssert.notNull(purchase, "采购单不存在");
        BizAssert.isTrue(ScmPurchaseStatus.DRAFT.equals(purchase.getPurchaseStatus()), "该状态的采购单不可以修改");
        purchase.setSupplierId(purchaseDTO.getSupplierId());
        purchase.setPurchaseRemake(purchaseDTO.getPurchaseRemake());
        BigDecimal amount = purchaseDTO.getDetails().stream()
                .map(detail -> detail.getPrice().multiply(BigDecimal.valueOf(detail.getQty())))
                .reduce(BigDecimal.ZERO, BigDecimal::add);
        purchase.setAmount(amount);
        baseMapper.updateById(purchase);
        // 清除明细
        scmPurchaseDetailService.remove(new LambdaQueryWrapper<>(ScmPurchaseDetail.class)
                .eq(ScmPurchaseDetail::getPurchaseId, purchase.getId()));
        handleDetail(purchaseDTO.getDetails(), purchase.getId());
    }

    @Override
    @Transactional
    public void cancel(Long id) {
        ScmPurchase purchase = baseMapper.selectById(id);
        BizAssert.notNull(purchase, "采购单不存在");
        BizAssert.contains(Arrays.asList(
                ScmPurchaseStatus.DRAFT,
                ScmPurchaseStatus.APPROVING,
                ScmPurchaseStatus.SIGNING
                ), purchase.getPurchaseStatus(), "该状态的采购单不可以取消");
        purchase.setPurchaseStatus(ScmPurchaseStatus.CANCELED);
        purchase.setCanceledTime(new Date());
        baseMapper.updateById(purchase);
        // TODO 取消审批任务
    }

    @Override
    @Transactional
    public void sign(Long id) {
        ScmPurchase purchase = baseMapper.selectById(id);
        BizAssert.notNull(purchase, "采购单不存在");
        BizAssert.isTrue(ScmPurchaseStatus.SIGNING.equals(purchase.getPurchaseStatus()),
                String.format("只有%s状态可执行此操作", ScmPurchaseStatus.SIGNING.getDesc()));
        List<ScmPurchaseDetail> details = scmPurchaseDetailService.list(
                new LambdaQueryWrapper<>(ScmPurchaseDetail.class).eq(ScmPurchaseDetail::getPurchaseId, id));
        BizAssert.notEmpty(details, "订单无采购明细");
        // 构建收货表单
        WmsReceiveDTO form = new WmsReceiveDTO();
        form.setBizType(BizType.PURCHASE);
        form.setBizNo(purchase.getPurchaseNo());
        form.setDetails(details.stream().map(purchaseDetail -> {
            WmsReceiveDTO.Detail detail = new WmsReceiveDTO.Detail();
            detail.setProductId(purchaseDetail.getProductId());
            detail.setQty(purchaseDetail.getQty());
            return detail;
        }).toList());
        // 远程创建收货单
//        R<?> r = warehouseApi.receiveCreate(form);
//        Assert.isTrue(r.isOk(), r.getMessage());
        // 使用mq异步创建收货单
        rabbitTemplate.convertAndSend(RabbitMqConstant.EXCHANGE, "receiveCreate", form);

        purchase.setPurchaseStatus(ScmPurchaseStatus.PURCHASING);
        purchase.setSignedTime(new Date());
        baseMapper.updateById(purchase);
    }

    @Override
    public void callbackLogistics(Long id, String logisticsName, String logisticsNo) {
        ScmPurchase purchase = baseMapper.selectById(id);
        BizAssert.notNull(purchase, "采购单不存在");
        BizAssert.isTrue(ScmPurchaseStatus.PURCHASING.equals(purchase.getPurchaseStatus()),
                String.format("只有%s状态可执行此操作", ScmPurchaseStatus.PURCHASING.getDesc()));
        Map<String, Object> message = new HashMap<>();
        message.put("bizNo", purchase.getPurchaseNo());
        message.put("logisticsName", logisticsName);
        message.put("logisticsNo", logisticsNo);
        rabbitTemplate.convertAndSend(RabbitMqConstant.EXCHANGE, "receiveLogistics", message);
    }

    @Override
    @Transactional
    public void finished(Long id) {
        ScmPurchase purchase = baseMapper.selectById(id);
        BizAssert.notNull(purchase, "采购单不存在");
        purchase.setPurchaseStatus(ScmPurchaseStatus.FINISHED);
        purchase.setFinishedTime(new Date());
        baseMapper.updateById(purchase);
    }
}
