package com.vector.module.scm.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.query.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.module.scm.pojo.dto.ScmPurchaseDTO;
import com.vector.module.scm.pojo.query.ScmPurchaseQuery;
import com.vector.module.scm.pojo.vo.ScmPurchaseVO;
import com.vector.module.scm.service.ScmPurchaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * 采购单 Controller
 * @author wengxs
 * @date 2024/05/12
 */
@RestController
@RequestMapping("scm/purchase")
public class ScmPurchaseController {

    @Autowired
    private ScmPurchaseService scmPurchaseService;

    @GetMapping("/list")
    public R<PageResult> list(ScmPurchaseQuery query) {
        IPage<ScmPurchaseVO> page = scmPurchaseService.pageVO(Pageable.getPage(query), query);
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
    public R<ScmPurchaseVO> get(@PathVariable Long id) {
        return R.ok(scmPurchaseService.getVOById(id));
    }

    @PostMapping
    public R<?> add(@RequestBody ScmPurchaseDTO purchaseDTO) {
        scmPurchaseService.create(purchaseDTO);
        return R.ok();
    }

    @PutMapping
    public R<?> update(@RequestBody ScmPurchaseDTO purchaseDTO) {
        scmPurchaseService.updateById(purchaseDTO);
        return R.ok();
    }

    /**
     * 取消订单
     * @param id
     * @return
     */
    @PutMapping("/{id}/cancel")
    public R<?> cancel(@PathVariable Long id) {
        scmPurchaseService.cancel(id);
        return R.ok();
    }

    /**
     * 签约采购
     * @param id
     * @return
     */
    @PutMapping("/{id}/sign")
    public R<?> sign(@PathVariable Long id) {
        scmPurchaseService.sign(id);
        return R.ok();
    }

    /**
     * 发货信息回传
     * @param id
     * @return
     */
    @PutMapping("/{id}/send")
    public R<?> send(@PathVariable Long id, @RequestBody Map<String, String> params) {
        String logisticsName = params.get("logisticsName");
        String logisticsNo = params.get("logisticsNo");
        scmPurchaseService.callbackLogistics(id, logisticsName, logisticsNo);
        return R.ok();
    }
}
