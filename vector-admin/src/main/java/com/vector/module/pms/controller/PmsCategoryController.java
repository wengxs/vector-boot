package com.vector.module.pms.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.query.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.module.pms.entity.PmsCategory;
import com.vector.module.pms.service.PmsCategoryService;
import com.vector.module.pms.vo.PmsCategoryTreeVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * 商品分类 Controller
 */
@RestController
@RequestMapping("/pms/category")
public class PmsCategoryController {

    @Autowired
    private PmsCategoryService pmsCategoryService;

    @GetMapping("/list")
    public R<PageResult> list(@RequestParam Map<String, Object> params) {
        PmsCategory query = Pageable.getQuery(params, PmsCategory.class);
        IPage<PmsCategory> page = pmsCategoryService.page(Pageable.getPage(params), new LambdaQueryWrapper<>(PmsCategory.class)
                .like(StringUtils.isNotBlank(query.getCategoryName()), PmsCategory::getCategoryName, query.getCategoryName())
        );
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/tree")
    public R<List<PmsCategoryTreeVo>> tree(PmsCategoryTreeVo params) {
        List<PmsCategoryTreeVo> list = pmsCategoryService.tree();
        return R.ok(filterQuery(list, params));
    }

    private List<PmsCategoryTreeVo> filterQuery(List<PmsCategoryTreeVo> list, PmsCategoryTreeVo params) {
        return list.stream().filter(item -> {
            if (StringUtils.isNotBlank(params.getCategoryName())
                    && item.getCategoryName().contains(params.getCategoryName())) {
                return true;
            }
            item.setChildren(filterQuery(item.getChildren(), params));
            if (!CollectionUtils.isEmpty(item.getChildren()) || StringUtils.isBlank(params.getCategoryName())) {
                return true;
            } else {
                return item.getCategoryName().contains(params.getCategoryName());
            }
        }).toList();
    }

    @GetMapping("{id}")
    public R<PmsCategory> get(@PathVariable Long id) {
        return R.ok(pmsCategoryService.getById(id));
    }

    @PostMapping
    public R<?> add(@RequestBody PmsCategory pmsCategory) {
        if (pmsCategory.getParentId() != 0) {
            PmsCategory parent = pmsCategoryService.getById(pmsCategory.getParentId());
            pmsCategory.setLevel(parent.getLevel() + 1);
        } else {
            pmsCategory.setLevel(1);
        }
        pmsCategoryService.save(pmsCategory);
        return R.ok();
    }

    @PutMapping
    public R<?> update(@RequestBody PmsCategory pmsCategory) {
        if (pmsCategory.getParentId() != 0) {
            PmsCategory parent = pmsCategoryService.getById(pmsCategory.getParentId());
            pmsCategory.setLevel(parent.getLevel() + 1);
        } else {
            pmsCategory.setLevel(1);
        }
        pmsCategoryService.updateById(pmsCategory);
        return R.ok();
    }

    @DeleteMapping("/{ids}")
    public R<?> delete(@PathVariable List<Long> ids) {
        pmsCategoryService.removeByIds(ids);
        return R.ok();
    }

}
