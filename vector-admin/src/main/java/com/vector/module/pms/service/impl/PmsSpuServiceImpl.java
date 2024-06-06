package com.vector.module.pms.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.common.core.util.BizAssert;
import com.vector.module.pms.pojo.dto.PmsSpuDTO;
import com.vector.module.pms.pojo.entity.*;
import com.vector.module.pms.enums.PmsSpuStatus;
import com.vector.module.pms.mapper.PmsSpuMapper;
import com.vector.module.pms.pojo.query.PmsSpuQuery;
import com.vector.module.pms.service.*;
import com.vector.module.pms.pojo.vo.PmsSpuVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 商品信息 ServiceImpl
 * @author wengxs
 * @date 2024/05/05
 */
@Service
public class PmsSpuServiceImpl extends ServiceImpl<PmsSpuMapper, PmsSpu>
        implements PmsSpuService {

    @Autowired
    private PmsSpuImageService pmsSpuImageService;
    @Autowired
    private PmsSpuDescriptionService pmsSpuDescriptionService;
    @Autowired
    private PmsSkuService pmsSkuService;
    @Autowired
    private PmsAttrService pmsAttrService;
    @Autowired
    private PmsSpuSkuAttrRelationService pmsSpuSkuAttrRelationService;

    @Override
    public PmsSpuVO getVOById(Long id) {
        return baseMapper.selectVOById(id);
    }

    @Override
    public IPage<PmsSpuVO> pageVO(IPage<?> page, PmsSpuQuery query) {
        return baseMapper.selectVOPage(page, query);
    }

    private void saveImage(Long spuId, List<String> images) {
        for (String image : images) {
            PmsSpuImage spuImage = new PmsSpuImage();
            spuImage.setSpuId(spuId);
            spuImage.setUrl(image);
            pmsSpuImageService.save(spuImage);
        }
    }

    private void saveSku(PmsSpu pmsSpu, List<PmsSpuDTO.Sku> skus) {
        Map<String, PmsAttr> attrMap = new HashMap<>();
        for (PmsSpuDTO.Sku sku : skus) {
            PmsSku pmsSku = new PmsSku();
            pmsSku.setSpuId(pmsSpu.getId());
            pmsSku.setPrice(sku.getPrice());
            pmsSku.setStock(sku.getStock());
            pmsSku.setOnSale(sku.getOnSale());
            pmsSku.setImage(pmsSpu.getDefaultImage());
            pmsSkuService.save(pmsSku);
            for (PmsSpuDTO.Attr attr : sku.getAttrs()) {
                PmsAttr pmsAttr = attrMap.get(attr.getName());
                if (pmsAttr == null) {
                    pmsAttr = pmsAttrService.getOne(new LambdaQueryWrapper<>(PmsAttr.class)
                            .eq(PmsAttr::getCategoryId, pmsSpu.getCategoryId())
                            .eq(PmsAttr::getAttrName, attr.getName()));
                    attrMap.put(attr.getName(), pmsAttr);
                }
                if (pmsAttr == null) {
                    pmsAttr = new PmsAttr();
                    pmsAttr.setAttrName(attr.getName());
                    pmsAttr.setCategoryId(pmsSpu.getCategoryId());
                    pmsAttrService.save(pmsAttr);
                }
                PmsSpuSkuAttrRelation spec = new PmsSpuSkuAttrRelation();
                spec.setSpuId(pmsSpu.getId());
                spec.setAttrId(pmsAttr.getId());
                spec.setSkuId(pmsSku.getId());
                spec.setAttrValue(attr.getValue());
                pmsSpuSkuAttrRelationService.save(spec);
            }
        }
    }

    @Override
    @Transactional
    public void saveSpu(PmsSpuDTO spuDTO) {
        List<String> images = spuDTO.getImages();
        BizAssert.notEmpty(images, "请上传商品图片");
        PmsSpu pmsSpu = new PmsSpu();
        BeanUtils.copyProperties(spuDTO, pmsSpu);
        pmsSpu.setSpuStatus(PmsSpuStatus.DRAFT);
        pmsSpu.setDefaultImage(spuDTO.getImages().get(0));
        baseMapper.insert(pmsSpu);
        PmsSpuDescription spuDescription = new PmsSpuDescription();
        spuDescription.setSpuId(pmsSpu.getId());
        spuDescription.setDescription(spuDTO.getDescription());
        pmsSpuDescriptionService.save(spuDescription);
        saveImage(pmsSpu.getId(), images);
        saveSku(pmsSpu, spuDTO.getSkus());
    }

    @Override
    @Transactional
    public void updateSpu(PmsSpuDTO spuDTO) {
        List<String> images = spuDTO.getImages();
        BizAssert.notEmpty(images, "请上传商品图片");
        PmsSpu pmsSpu = baseMapper.selectById(spuDTO.getId());
        BizAssert.notNull(pmsSpu, "商品不存在");
        BeanUtils.copyProperties(spuDTO, pmsSpu);
        pmsSpu.setDefaultImage(spuDTO.getImages().get(0));
        baseMapper.updateById(pmsSpu);
        PmsSpuDescription spuDescription = new PmsSpuDescription();
        spuDescription.setSpuId(spuDTO.getId());
        spuDescription.setDescription(spuDTO.getDescription());
        pmsSpuDescriptionService.saveOrUpdate(spuDescription);
        pmsSpuImageService.remove(new LambdaQueryWrapper<>(PmsSpuImage.class)
                .eq(PmsSpuImage::getSpuId, spuDTO.getId()));
        saveImage(spuDTO.getId(), images);
    }

    @Override
    @Transactional
    public void removeDraftById(Long id) {
        PmsSpu pmsSpu = baseMapper.selectById(id);
        BizAssert.notNull(pmsSpu, "商品不存在");
        BizAssert.isTrue(PmsSpuStatus.DRAFT.equals(pmsSpu.getSpuStatus()), "非草稿状态的商品不可以删除");
        baseMapper.deleteById(id);
        pmsSpuDescriptionService.removeById(id);
        pmsSpuImageService.remove(new LambdaQueryWrapper<>(PmsSpuImage.class)
                .eq(PmsSpuImage::getSpuId, id));
    }
}
