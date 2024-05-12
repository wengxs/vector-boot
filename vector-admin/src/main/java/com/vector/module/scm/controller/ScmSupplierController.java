package com.vector.module.scm.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.entity.BaseEntity;
import com.vector.common.core.query.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.module.scm.pojo.dto.ScmSupplierDTO;
import com.vector.module.scm.pojo.entity.ScmSupplier;
import com.vector.module.scm.pojo.query.ScmSupplierQuery;
import com.vector.module.scm.pojo.vo.ScmSupplierVO;
import com.vector.module.scm.service.ScmSupplierService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 供应商信息 Controller
 * @author wengxs
 * @date 2024/05/12
 */
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

    @GetMapping("/search")
    public R<List<ScmSupplier>> search(String q) {
        List<ScmSupplier> data = scmSupplierService.list(new LambdaQueryWrapper<>(ScmSupplier.class)
                .like(ScmSupplier::getSupplierName, q)
                .or()
                .eq(BaseEntity::getId, q)
        );
        return R.ok(data);
    }

    @PostMapping
    public R<?> add(@RequestBody ScmSupplierDTO supplierDTO) {
        ScmSupplier scmSupplier = new ScmSupplier();
        BeanUtils.copyProperties(supplierDTO, scmSupplier);
        scmSupplierService.save(scmSupplier);
        return R.ok();
    }

    @PutMapping
    public R<?> update(@RequestBody ScmSupplierDTO supplierDTO) {
        ScmSupplier scmSupplier = new ScmSupplier();
        BeanUtils.copyProperties(supplierDTO, scmSupplier);
        scmSupplierService.updateById(scmSupplier);
        return R.ok();
    }

    @DeleteMapping("/{ids}")
    public R<?> delete(@PathVariable List<Long> ids) {
        scmSupplierService.removeByIds(ids);
        return R.ok();
    }
}
