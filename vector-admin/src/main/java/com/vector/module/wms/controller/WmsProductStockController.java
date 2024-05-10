package com.vector.module.wms.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.query.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.module.wms.dto.WmsProductStockLockDto;
import com.vector.module.wms.service.WmsProductStockService;
import com.vector.module.wms.vo.WmsProductStockVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/wms/productStock")
public class WmsProductStockController {

    @Autowired
    private WmsProductStockService wmsProductStockService;

    @GetMapping("/list")
    public R<PageResult> list(@RequestParam Map<String, Object> params) {
        WmsProductStockVo query = Pageable.getQuery(params, WmsProductStockVo.class);
        IPage<WmsProductStockVo> page = wmsProductStockService.pageVo(Pageable.getPage(params), query);
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
    public R<WmsProductStockVo> get(@PathVariable Long id) {
        return R.ok(wmsProductStockService.getVoById(id));
    }

    @PostMapping("/lock")
    public R<?> lock(@RequestBody WmsProductStockLockDto lockDto) {
        wmsProductStockService.lock(lockDto);
        return R.ok();
    }

    @PostMapping("/unlock")
    public R<?> unlock(@RequestBody WmsProductStockLockDto lockDto) {
        wmsProductStockService.unlock(lockDto);
        return R.ok();
    }

}
