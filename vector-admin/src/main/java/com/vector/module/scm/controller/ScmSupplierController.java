package com.vector.module.scm.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.query.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.module.scm.pojo.entity.ScmSupplier;
import com.vector.module.scm.pojo.query.ScmSupplierQuery;
import com.vector.module.scm.pojo.vo.ScmSupplierVO;
import com.vector.module.scm.service.ScmSupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/scm/supplier")
public class ScmSupplierController {

    @Autowired
    private ScmSupplierService scmSupplierService;

    @GetMapping("/list")
    public R<PageResult> list(ScmSupplierQuery query) {
        IPage<ScmSupplierVO> page = scmSupplierService.pageVO(Pageable.getPage(query), query);
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
    public R<ScmSupplierVO> get(@PathVariable Long id) {
        return R.ok(scmSupplierService.getVOById(id));
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
