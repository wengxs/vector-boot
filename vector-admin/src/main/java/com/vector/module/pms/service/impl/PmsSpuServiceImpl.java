package com.vector.module.pms.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.common.core.util.BizAssert;
import com.vector.module.pms.dto.PmsSpuDto;
import com.vector.module.pms.entity.PmsSpu;
import com.vector.module.pms.entity.PmsSpuDescription;
import com.vector.module.pms.entity.PmsSpuImage;
import com.vector.module.pms.enums.PmsSpuStatus;
import com.vector.module.pms.mapper.PmsSpuMapper;
import com.vector.module.pms.service.PmsSpuDescriptionService;
import com.vector.module.pms.service.PmsSpuImageService;
import com.vector.module.pms.service.PmsSpuService;
import com.vector.module.pms.vo.PmsSpuVo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

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

    @Override
    public PmsSpuVo getVoById(Long id) {
        return baseMapper.selectVoById(id);
    }

    @Override
    public IPage<PmsSpuVo> pageVo(IPage<?> page, PmsSpuVo query) {
        return baseMapper.selectVoPage(page, query);
    }

    private void saveImage(Long spuId, List<String> images) {
        for (int i = 0; i < images.size(); i++) {
            PmsSpuImage spuImage = new PmsSpuImage();
            spuImage.setSpuId(spuId);
            spuImage.setUrl(images.get(i));
            pmsSpuImageService.save(spuImage);
        }
    }

    @Override
    @Transactional
    public void saveSpu(PmsSpuDto spuDto) {
        List<String> images = spuDto.getImages();
        BizAssert.notEmpty(images, "请上传商品图片");
        PmsSpu pmsSpu = new PmsSpu();
        BeanUtils.copyProperties(spuDto, pmsSpu);
        pmsSpu.setSpuStatus(PmsSpuStatus.DRAFT);
        pmsSpu.setDefaultImage(spuDto.getImages().get(0));
        baseMapper.insert(pmsSpu);
        PmsSpuDescription spuDescription = new PmsSpuDescription();
        spuDescription.setSpuId(pmsSpu.getId());
        spuDescription.setDescription(spuDto.getDescription());
        pmsSpuDescriptionService.save(spuDescription);
        saveImage(spuDto.getId(), images);
    }

    @Override
    @Transactional
    public void updateSpu(PmsSpuDto spuDto) {
        List<String> images = spuDto.getImages();
        BizAssert.notEmpty(images, "请上传商品图片");
        PmsSpu pmsSpu = baseMapper.selectById(spuDto.getId());
        BizAssert.notNull(pmsSpu, "商品不存在");
        BeanUtils.copyProperties(spuDto, pmsSpu);
        pmsSpu.setDefaultImage(spuDto.getImages().get(0));
        baseMapper.updateById(pmsSpu);
        PmsSpuDescription spuDescription = new PmsSpuDescription();
        spuDescription.setSpuId(spuDto.getId());
        spuDescription.setDescription(spuDto.getDescription());
        pmsSpuDescriptionService.saveOrUpdate(spuDescription);
        pmsSpuImageService.remove(new LambdaQueryWrapper<>(PmsSpuImage.class)
                .eq(PmsSpuImage::getSpuId, spuDto.getId()));
        saveImage(spuDto.getId(), images);
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
