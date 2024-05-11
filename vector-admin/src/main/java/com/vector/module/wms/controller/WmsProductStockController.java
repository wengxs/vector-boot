package com.vector.module.wms.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.query.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.module.wms.pojo.dto.WmsProductStockLockDTO;
import com.vector.module.wms.pojo.query.WmsProductStockQuery;
import com.vector.module.wms.pojo.vo.WmsProductStockVO;
import com.vector.module.wms.service.WmsProductStockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/wms/productStock")
public class WmsProductStockController {

    @Autowired
    private WmsProductStockService wmsProductStockService;

    @GetMapping("/list")
    public R<PageResult> list(WmsProductStockQuery query) {
        IPage<WmsProductStockVO> page = wmsProductStockService.pageVO(Pageable.getPage(query), query);
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
    public R<WmsProductStockVO> get(@PathVariable Long id) {
        return R.ok(wmsProductStockService.getVOById(id));
    }

    @PostMapping("/lock")
    public R<?> lock(@RequestBody WmsProductStockLockDTO lockDTO) {
        wmsProductStockService.lock(lockDTO);
        return R.ok();
    }

    @PostMapping("/unlock")
    public R<?> unlock(@RequestBody WmsProductStockLockDTO lockDTO) {
        wmsProductStockService.unlock(lockDTO);
        return R.ok();
    }

}
