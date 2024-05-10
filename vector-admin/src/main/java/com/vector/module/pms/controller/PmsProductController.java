package com.vector.module.pms.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.query.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.module.pms.dto.PmsProductDto;
import com.vector.module.pms.entity.PmsProduct;
import com.vector.module.pms.service.PmsProductService;
import com.vector.module.pms.vo.PmsProductVo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 产品信息 Controller
 * @author wengxs
 * @date 2024/05/04
 */
@RestController
@RequestMapping("/pms/product")
public class PmsProductController {

    @Autowired
    private PmsProductService pmsProductService;

    @GetMapping("/list")
    public R<PageResult> list(PmsProductVo query) {
        IPage<PmsProductVo> page = pmsProductService.pageVo(Pageable.getPage(query), query);
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
    public R<PmsProductVo> get(@PathVariable Long id) {
        return R.ok(pmsProductService.getVoById(id));
    }

    @PostMapping
    public R<?> add(@RequestBody PmsProductDto productDto) {
        PmsProduct pmsProduct = new PmsProduct();
        BeanUtils.copyProperties(productDto, pmsProduct);
        pmsProductService.save(pmsProduct);
        return R.ok();
    }

    @PutMapping
    public R<?> update(@RequestBody PmsProductDto productDto) {
        PmsProduct pmsProduct = new PmsProduct();
        BeanUtils.copyProperties(productDto, pmsProduct);
        pmsProductService.updateById(pmsProduct);
        return R.ok();
    }

    @DeleteMapping("/{ids}")
    public R<?> delete(@PathVariable List<Long> ids) {
        pmsProductService.removeByIds(ids);
        return R.ok();
    }

}
