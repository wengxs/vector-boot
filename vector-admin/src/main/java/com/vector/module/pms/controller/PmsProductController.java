package com.vector.module.pms.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.entity.BaseEntity;
import com.vector.common.core.query.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.module.pms.pojo.dto.PmsProductDTO;
import com.vector.module.pms.pojo.entity.PmsProduct;
import com.vector.module.pms.pojo.query.PmsProductQuery;
import com.vector.module.pms.pojo.vo.PmsProductVO;
import com.vector.module.pms.service.PmsProductService;
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
    public R<PageResult> list(PmsProductQuery query) {
        IPage<PmsProductVO> page = pmsProductService.pageVO(Pageable.getPage(query), query);
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
    public R<PmsProductVO> get(@PathVariable Long id) {
        return R.ok(pmsProductService.getVOById(id));
    }

    @GetMapping("/search")
    public R<List<PmsProduct>> search(String q) {
        List<PmsProduct> data = pmsProductService.list(new LambdaQueryWrapper<>(PmsProduct.class)
                .like(PmsProduct::getProductName, q)
                .or()
                .eq(BaseEntity::getId, q)
        );
        return R.ok(data);
    }

    @PostMapping
    public R<?> add(@RequestBody PmsProductDTO productDTO) {
        PmsProduct pmsProduct = new PmsProduct();
        BeanUtils.copyProperties(productDTO, pmsProduct);
        pmsProductService.save(pmsProduct);
        return R.ok();
    }

    @PutMapping
    public R<?> update(@RequestBody PmsProductDTO productDTO) {
        PmsProduct pmsProduct = new PmsProduct();
        BeanUtils.copyProperties(productDTO, pmsProduct);
        pmsProductService.updateById(pmsProduct);
        return R.ok();
    }

    @DeleteMapping("/{ids}")
    public R<?> delete(@PathVariable List<Long> ids) {
        pmsProductService.removeByIds(ids);
        return R.ok();
    }

}
