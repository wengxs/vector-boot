package com.vector.module.wms.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.query.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.module.wms.dto.WmsCheckDto;
import com.vector.module.wms.dto.WmsReceiveDto;
import com.vector.module.wms.service.WmsReceiveService;
import com.vector.module.wms.vo.WmsReceiveVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/wms/receive")
public class WmsReceiveController {

    @Autowired
    private WmsReceiveService wmsReceiveService;

    @GetMapping("/list")
    public R<PageResult> list(@RequestParam Map<String, Object> params) {
        WmsReceiveVo query = Pageable.getQuery(params, WmsReceiveVo.class);
        IPage<WmsReceiveVo> page = wmsReceiveService.pageVo(Pageable.getPage(params), query);
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
    public R<WmsReceiveVo> get(@PathVariable Long id) {
        return R.ok(wmsReceiveService.getVoById(id));
    }

    @PostMapping()
    public R<?> add(@RequestBody WmsReceiveDto receiveDto) {
        wmsReceiveService.create(receiveDto);
        return R.ok();
    }

    @PutMapping("/{id}/sign")
    public R<?> sign(@PathVariable Long id) {
        wmsReceiveService.sign(id);
        return R.ok();
    }

    @PutMapping("/check")
    public R<?> check(@RequestBody WmsCheckDto checkDto) {
        wmsReceiveService.check(checkDto);
        return R.ok();
    }

}
