package com.vector.module.wms.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.query.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.module.wms.pojo.dto.WmsCheckDTO;
import com.vector.module.wms.pojo.dto.WmsReceiveDTO;
import com.vector.module.wms.pojo.query.WmsReceiveQuery;
import com.vector.module.wms.service.WmsReceiveService;
import com.vector.module.wms.pojo.vo.WmsReceiveVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/wms/receive")
public class WmsReceiveController {

    @Autowired
    private WmsReceiveService wmsReceiveService;

    @GetMapping("/list")
    public R<PageResult> list(WmsReceiveQuery query) {
        IPage<WmsReceiveVO> page = wmsReceiveService.pageVO(Pageable.getPage(query), query);
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
    public R<WmsReceiveVO> get(@PathVariable Long id) {
        return R.ok(wmsReceiveService.getVOById(id));
    }

    @PostMapping()
    public R<?> add(@RequestBody WmsReceiveDTO receiveDTO) {
        wmsReceiveService.create(receiveDTO);
        return R.ok();
    }

    @PutMapping("/{id}/sign")
    public R<?> sign(@PathVariable Long id) {
        wmsReceiveService.sign(id);
        return R.ok();
    }

    @PutMapping("/check")
    public R<?> check(@RequestBody WmsCheckDTO checkDTO) {
        wmsReceiveService.check(checkDTO);
        return R.ok();
    }

}
