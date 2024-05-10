package com.vector.module.scm.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.query.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.module.scm.entity.ScmSupplier;
import com.vector.module.scm.service.ScmSupplierService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/scm/supplier")
public class ScmSupplierController {

    @Autowired
    private ScmSupplierService scmSupplierService;

    @GetMapping("/list")
    public R<PageResult> list(@RequestParam Map<String, Object> params) {
        ScmSupplier query = Pageable.getQuery(params, ScmSupplier.class);
        IPage<ScmSupplier> page = scmSupplierService.page(Pageable.getPage(params), new LambdaQueryWrapper<>(ScmSupplier.class)
                .like(StringUtils.isNotBlank(query.getSupplierName()), ScmSupplier::getSupplierName, query.getSupplierName())
                .like(StringUtils.isNotBlank(query.getProvince()), ScmSupplier::getProvince, query.getProvince())
        );
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
    public R<ScmSupplier> get(@PathVariable Long id) {
        return R.ok(scmSupplierService.getById(id));
    }

    @PostMapping
    public R<?> add(@RequestBody ScmSupplier supplier) {
        scmSupplierService.save(supplier);
        return R.ok();
    }

    @PutMapping
    public R<?> update(@RequestBody ScmSupplier supplier) {
        scmSupplierService.updateById(supplier);
        return R.ok();
    }

    @DeleteMapping("/{ids}")
    public R<?> delete(@PathVariable List<Long> ids) {
        scmSupplierService.removeByIds(ids);
        return R.ok();
    }
}
