package com.vector.module.wms.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.common.core.util.BizAssert;
import com.vector.common.core.util.OrderNoGenerator;
import com.vector.common.mq.constant.RabbitMqConstant;
import com.vector.module.wms.constant.WmsConstant;
import com.vector.module.wms.enums.BizType;
import com.vector.module.wms.enums.WmsReceiveStatus;
import com.vector.module.wms.mapper.WmsReceiveMapper;
import com.vector.module.wms.pojo.dto.WmsCheckDTO;
import com.vector.module.wms.pojo.dto.WmsReceiveDTO;
import com.vector.module.wms.pojo.entity.*;
import com.vector.module.wms.pojo.query.WmsReceiveQuery;
import com.vector.module.wms.pojo.vo.WmsReceiveVO;
import com.vector.module.wms.service.*;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service
public class WmsReceiveServiceImpl extends ServiceImpl<WmsReceiveMapper, WmsReceive>
        implements WmsReceiveService {

    @Autowired
    private OrderNoGenerator orderNoGenerator;
    @Autowired
    private RabbitTemplate rabbitTemplate;
    @Autowired
    private WmsReceiveDetailService wmsReceiveDetailService;
    @Autowired
    private WmsProductLotService wmsProductLotService;
    @Autowired
    private WmsProductStockService wmsProductStockService;
    @Autowired
    private WmsProductBatchService wmsProductBatchService;

    @Override
    public WmsReceiveVO getVOById(Long id) {
        WmsReceiveVO vo = baseMapper.selectVOById(id);
        if (vo != null)
            vo.setDetails(wmsReceiveDetailService.listVOByReceiveId(id));
        return vo;
    }

    @Override
    public IPage<WmsReceiveVO> pageVO(IPage<?> page, WmsReceiveQuery query) {
        return baseMapper.selectVOPage(page, query);
    }

    @Override
    @Transactional
    public void create(WmsReceiveDTO receiveDTO) {
        WmsReceive receive = new WmsReceive();
        receive.setReceiveNo(orderNoGenerator.generate(WmsConstant.NUMBER_PREFIX_RECEIVE));
        receive.setReceiveStatus(WmsReceiveStatus.SENT_OUT);
        receive.setBizType(receiveDTO.getBizType());
        receive.setBizNo(receiveDTO.getBizNo());
        receive.setLogisticsName(receiveDTO.getLogisticsName());
        receive.setLogisticsNo(receiveDTO.getLogisticsNo());
        baseMapper.insert(receive);
        for (WmsReceiveDTO.Detail detail : receiveDTO.getDetails()) {
            WmsReceiveDetail receiveDetail = new WmsReceiveDetail();
            receiveDetail.setReceiveId(receive.getId());
            receiveDetail.setProductId(detail.getProductId());
            receiveDetail.setQty(detail.getQty());
            wmsReceiveDetailService.save(receiveDetail);
        }
    }

    @Override
    @Transactional
    public void sign(Long id) {
        WmsReceive receive = baseMapper.selectById(id);
        BizAssert.notNull(receive, "收货单不存在");
        BizAssert.contains(Arrays.asList(
                WmsReceiveStatus.UNSENT,
                WmsReceiveStatus.SENT_OUT
        ), receive.getReceiveStatus(), String.format("该收货单状态%s", receive.getReceiveStatus().getDesc()));
        receive.setReceiveStatus(WmsReceiveStatus.SIGNED);
        receive.setSignedTime(new Date());
        baseMapper.updateById(receive);
        if (BizType.PURCHASE.equals(receive.getBizType())) {
            // 采购单完结
            Map<String, Object> message = new HashMap<>();
            message.put("bizNo", receive.getBizNo());
            rabbitTemplate.convertAndSend(RabbitMqConstant.EXCHANGE, "purchaseFinished", message);
        }
    }

    @Override
    @Transactional
    public void check(WmsCheckDTO checkForm) {
        WmsReceive receive = baseMapper.selectById(checkForm.getId());
        BizAssert.notNull(receive, "收货单不存在");
        BizAssert.isTrue(WmsReceiveStatus.SIGNED.equals(receive.getReceiveStatus()),
                String.format("该收货单状态%s", receive.getReceiveStatus().getDesc()));
        String batchNo = orderNoGenerator.generate(WmsConstant.NUMBER_PREFIX_PRODUCT_BATCH);
        receive.setReceiveStatus(WmsReceiveStatus.FINISHED);
        receive.setBatchNo(batchNo);
        baseMapper.updateById(receive);
        List<WmsReceiveDetail> receiveDetails = wmsReceiveDetailService.list(
                new LambdaQueryWrapper<>(WmsReceiveDetail.class)
                        .eq(WmsReceiveDetail::getReceiveId, receive.getId())
        );
        // 验收入库
        for (WmsCheckDTO.Detail detail : checkForm.getDetails()) {
            Long productId = detail.getProductId();
            // 增加批号库存
            WmsProductLot productLot = wmsProductLotService.getOne(
                    new LambdaQueryWrapper<>(WmsProductLot.class)
                            .eq(WmsProductLot::getProductId, productId)
                            .eq(WmsProductLot::getLotNo, detail.getLotNo())
            );
            boolean isNew = productLot == null;
            if (isNew) {
                productLot = new WmsProductLot();
                productLot.setProductId(productId);
                productLot.setLotNo(detail.getLotNo());
                productLot.setProdDate(detail.getProdDate());
                productLot.setExpiredDate(detail.getExpiredDate());
                productLot.setTotalQty(0);
                productLot.setQualifiedQty(0);
                productLot.setUnqualifiedQty(0);
            }
            productLot.setQualifiedQty(productLot.getQualifiedQty() + detail.getQualifiedQty());
            productLot.setUnqualifiedQty(productLot.getUnqualifiedQty() + detail.getUnqualifiedQty());
            productLot.setTotalQty(productLot.getTotalQty() + detail.getQualifiedQty() + detail.getUnqualifiedQty());
            if (isNew) {
                wmsProductLotService.save(productLot);
            } else {
                wmsProductLotService.updateById(productLot);
            }
            // 增加库存
            WmsProductStock productStock = wmsProductStockService.getOne(
                    new LambdaQueryWrapper<>(WmsProductStock.class)
                            .eq(WmsProductStock::getProductId, productId)
            );
            isNew = productStock == null;
            if (isNew) {
                productStock = new WmsProductStock();
                productStock.setProductId(productId);
                productStock.setTotalStock(0);
                productStock.setUsableStock(0);
                productStock.setLockedStock(0);
            }
            productStock.setUsableStock(productStock.getUsableStock() + detail.getQualifiedQty());
            productStock.setTotalStock(productStock.getTotalStock() + detail.getQualifiedQty());
            if (isNew) {
                wmsProductStockService.save(productStock);
            } else {
                wmsProductStockService.updateById(productStock);
            }
            // 保存批次
            if (detail.getQualifiedQty() > 0) {
                WmsProductBatch productBatch = new WmsProductBatch();
                productBatch.setProductLotId(productLot.getId());
                productBatch.setBatchNo(batchNo);
                productBatch.setQualified(1);
                productBatch.setReceivedQty(detail.getQualifiedQty());
                productBatch.setUsableQty(detail.getQualifiedQty());
                productBatch.setReceiveId(receive.getId());
                WmsReceiveDetail receiveDetail = receiveDetails.stream()
                        .filter(item -> item.getProductId().equals(productId))
                        .findFirst().orElseThrow();
                productBatch.setReceiveDetailId(receiveDetail.getId());
                wmsProductBatchService.save(productBatch);
            }
            if (detail.getUnqualifiedQty() > 0) {
                WmsProductBatch productBatch = new WmsProductBatch();
                productBatch.setProductLotId(productLot.getId());
                productBatch.setBatchNo(batchNo);
                productBatch.setQualified(0);
                productBatch.setReceivedQty(detail.getUnqualifiedQty());
                productBatch.setUsableQty(detail.getUnqualifiedQty());
                productBatch.setReceiveId(receive.getId());
                WmsReceiveDetail receiveDetail = receiveDetails.stream()
                        .filter(item -> item.getProductId().equals(productId))
                        .findFirst().orElseThrow();
                productBatch.setReceiveDetailId(receiveDetail.getId());
                wmsProductBatchService.save(productBatch);
            }
        }
        // 保存收货单明细
        for (WmsReceiveDetail receiveDetail : receiveDetails) {
            int qualifiedQty = checkForm.getDetails().stream()
                    .filter(item -> item.getProductId().equals(receiveDetail.getProductId()))
                    .mapToInt(WmsCheckDTO.Detail::getQualifiedQty).sum();
            int unqualifiedQty = checkForm.getDetails().stream()
                    .filter(item -> item.getProductId().equals(receiveDetail.getProductId()))
                    .mapToInt(WmsCheckDTO.Detail::getUnqualifiedQty).sum();
            receiveDetail.setReceivedQty(qualifiedQty + unqualifiedQty);
            receiveDetail.setQualifiedQty(qualifiedQty);
            receiveDetail.setUnqualifiedQty(unqualifiedQty);
            wmsReceiveDetailService.updateById(receiveDetail);
        }
    }
}
