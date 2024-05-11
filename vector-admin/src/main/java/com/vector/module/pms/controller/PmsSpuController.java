package com.vector.module.pms.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.query.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.module.pms.pojo.dto.PmsSpuDTO;
import com.vector.module.pms.pojo.entity.PmsSpuDescription;
import com.vector.module.pms.pojo.entity.PmsSpuImage;
import com.vector.module.pms.pojo.query.PmsSpuQuery;
import com.vector.module.pms.service.PmsSpuDescriptionService;
import com.vector.module.pms.service.PmsSpuImageService;
import com.vector.module.pms.service.PmsSpuService;
import com.vector.module.pms.pojo.vo.PmsSpuVO;
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
    public R<PageResult> list(PmsSpuQuery query) {
        IPage<PmsSpuVO> page = pmsSpuService.pageVO(Pageable.getPage(query), query);
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
    public R<PmsSpuVO> get(@PathVariable Long id) {
        PmsSpuVO spuVO = pmsSpuService.getVOById(id);
        PmsSpuDescription spuDescription = pmsSpuDescriptionService.getById(id);
        spuVO.setDescription(spuDescription.getDescription());
        List<PmsSpuImage> spuImages = pmsSpuImageService.list(new LambdaQueryWrapper<>(PmsSpuImage.class)
                .eq(PmsSpuImage::getSpuId, id));
        spuVO.setImages(spuImages.stream().map(PmsSpuImage::getUrl).toList());
        return R.ok(spuVO);
    }

    @PostMapping
    public R<?> add(@RequestBody PmsSpuDTO spuDTO) {
        pmsSpuService.saveSpu(spuDTO);
        return R.ok();
    }

    @PutMapping
    public R<?> update(@RequestBody PmsSpuDTO spuDTO) {
        pmsSpuService.updateSpu(spuDTO);
        return R.ok();
    }

    @DeleteMapping("/{id}")
    public R<?> delete(@PathVariable Long id) {
        pmsSpuService.removeDraftById(id);
        return R.ok();
    }
}
