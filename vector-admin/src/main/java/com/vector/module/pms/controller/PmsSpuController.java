package com.vector.module.pms.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.query.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.module.pms.dto.PmsSpuDto;
import com.vector.module.pms.entity.PmsSpuDescription;
import com.vector.module.pms.entity.PmsSpuImage;
import com.vector.module.pms.service.PmsSpuDescriptionService;
import com.vector.module.pms.service.PmsSpuImageService;
import com.vector.module.pms.service.PmsSpuService;
import com.vector.module.pms.vo.PmsSpuVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 商品信息 Controller
 * @author wengxs
 * @date 2024/05/05
 */
@RestController
@RequestMapping("/pms/spu")
public class PmsSpuController {

    @Autowired
    private PmsSpuService pmsSpuService;
    @Autowired
    private PmsSpuDescriptionService pmsSpuDescriptionService;
    @Autowired
    private PmsSpuImageService pmsSpuImageService;

    @GetMapping("/list")
    public R<PageResult> list(PmsSpuVo query) {
        IPage<PmsSpuVo> page = pmsSpuService.pageVo(Pageable.getPage(query), query);
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
    public R<PmsSpuVo> get(@PathVariable Long id) {
        PmsSpuVo spuVo = pmsSpuService.getVoById(id);
        PmsSpuDescription spuDescription = pmsSpuDescriptionService.getById(id);
        spuVo.setDescription(spuDescription.getDescription());
        List<PmsSpuImage> spuImages = pmsSpuImageService.list(new LambdaQueryWrapper<>(PmsSpuImage.class)
                .eq(PmsSpuImage::getSpuId, id));
        spuVo.setImages(spuImages.stream().map(PmsSpuImage::getUrl).toList());
        return R.ok(spuVo);
    }

    @PostMapping
    public R<?> add(@RequestBody PmsSpuDto spuDto) {
        pmsSpuService.saveSpu(spuDto);
        return R.ok();
    }

    @PutMapping
    public R<?> update(@RequestBody PmsSpuDto spuDto) {
        pmsSpuService.updateSpu(spuDto);
        return R.ok();
    }

    @DeleteMapping("/{id}")
    public R<?> delete(@PathVariable Long id) {
        pmsSpuService.removeDraftById(id);
        return R.ok();
    }
}
