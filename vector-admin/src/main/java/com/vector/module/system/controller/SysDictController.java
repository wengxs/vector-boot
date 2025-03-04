package com.vector.module.system.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.query.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.module.system.pojo.dto.SysDictDTO;
import com.vector.module.system.pojo.dto.SysDictOptionDTO;
import com.vector.module.system.pojo.entity.SysDict;
import com.vector.module.system.pojo.entity.SysDictOption;
import com.vector.module.system.pojo.query.SysDictQuery;
import com.vector.module.system.pojo.vo.SysDictOptionVO;
import com.vector.module.system.pojo.vo.SysDictVO;
import com.vector.module.system.service.SysDictOptionService;
import com.vector.module.system.service.SysDictService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 字典 Controller
 * @author wengxs
 */
@RestController
@RequestMapping("/sys/dict")
public class SysDictController {

    @Autowired
    private SysDictService sysDictService;
    @Autowired
    private SysDictOptionService sysDictOptionService;

    @GetMapping("/list")
    public R<PageResult> list(SysDictQuery query) {
        IPage<SysDictVO> page = sysDictService.pageVO(Pageable.getPage(query), query);
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
    public R<SysDictVO> get(@PathVariable Long id) {
        return R.ok(sysDictService.getVOById(id));
    }

    @PostMapping
    public R<?> add(@RequestBody SysDictDTO dictDTO) {
        SysDict sysDict = new SysDict();
        BeanUtils.copyProperties(dictDTO, sysDict);
        sysDictService.save(sysDict);
        return R.ok();
    }

    @PutMapping
    public R<?> update(@RequestBody SysDictDTO dictDTO) {
        SysDict sysDict = new SysDict();
        BeanUtils.copyProperties(dictDTO, sysDict);
        sysDictService.updateById(sysDict);
        return R.ok();
    }

    @DeleteMapping("/{ids}")
    public R<?> delete(@PathVariable List<Long> ids) {
        sysDictService.removeByIds(ids);
        return R.ok();
    }

    @GetMapping("/option/list")
    public R<List<SysDictOption>> listOption(@RequestParam String dictKey,
                                             @RequestParam(required = false, defaultValue = "false") Boolean onlyEnabled) {
        List<SysDictOption> list = sysDictOptionService.list(new LambdaQueryWrapper<SysDictOption>()
                .eq(SysDictOption::getDictKey, dictKey)
                .eq(onlyEnabled, SysDictOption::getOptionStatus, SysDictOption.OPTION_STATUS_ENABLED)
                .orderByAsc(SysDictOption::getSort));
        return R.ok(list);
    }

    @GetMapping("/option/{id}")
    public R<SysDictOptionVO> getOption(@PathVariable String id) {
        SysDictOption dictOption = sysDictOptionService.getById(id);
        SysDictOptionVO vo = new SysDictOptionVO();
        BeanUtils.copyProperties(dictOption, vo);
        vo.setId(dictOption.getId());
        return R.ok(vo);
    }

    @PostMapping("/option")
    public R<?> addOption(@RequestBody SysDictOptionDTO dictOptionDTO) {
        SysDictOption sysDictOption = new SysDictOption();
        BeanUtils.copyProperties(dictOptionDTO, sysDictOption);
        sysDictOptionService.save(sysDictOption);
        return R.ok();
    }

    @PutMapping("/option")
    public R<?> updateOption(@RequestBody SysDictOptionDTO dictOptionDTO) {
        SysDictOption sysDictOption = new SysDictOption();
        BeanUtils.copyProperties(dictOptionDTO, sysDictOption);
        sysDictOptionService.updateById(sysDictOption);
        return R.ok();
    }

    @DeleteMapping("/option/{id}")
    public R<?> deleteOption(@PathVariable Long id) {
        sysDictOptionService.removeById(id);
        return R.ok();
    }
}
