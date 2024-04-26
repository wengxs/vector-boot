package com.vector.module.system.controller;

//import com.wengxs.admin.entity.SysTemplate;
//import com.wengxs.admin.service.SysTemplateService;
//import com.wengxs.core.Filter;
//import com.wengxs.core.req.Pageable;
//import com.wengxs.core.resp.PageResult;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 代码模版 Controller
 */
@RestController
@RequestMapping("/sys/template")
public class SysTemplateController {

//    @Autowired
//    private SysTemplateService sysTemplateService;
//
//    @GetMapping("/list")
//    @PreAuthorize("hasAuthority('sys:template:query')")
//    public PageResult<SysTemplate> list(Pageable pageable) {
//        pageable.getFilters().add(Filter.eq("property", pageable.getParams().get("property")));
//        return sysTemplateService.page(pageable);
//    }
//
//    @GetMapping("/{id}")
//    @PreAuthorize("hasAuthority('sys:template:query')")
//    public R get(@PathVariable Long id) {
//        return R.ok(sysTemplateService.find(id));
//    }
//
//    @PostMapping
//    @PreAuthorize("hasAuthority('sys:template:add')")
//    public R add(@RequestBody SysTemplate sysTemplate) {
//        sysTemplateService.save(sysTemplate);
//        return R.ok();
//    }
//
//    @PutMapping
//    @PreAuthorize("hasAuthority('sys:template:edit')")
//    public R update(@RequestBody SysTemplate sysTemplate) {
//        sysTemplateService.update(sysTemplate);
//        return R.ok();
//    }
//
//    @DeleteMapping("/{ids}")
//    @PreAuthorize("hasAuthority('sys:template:del')")
//    public R delete(@PathVariable Long[] ids) {
//        sysTemplateService.delete(ids);
//        return R.ok();
//    }
}
