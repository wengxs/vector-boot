package com.vector.module.gen.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.core.pagination.Pageable;
import com.vector.common.core.result.PageResult;
import com.vector.common.core.result.R;
import com.vector.module.gen.entity.GenTable;
import com.vector.module.gen.entity.GenTableField;
import com.vector.module.gen.service.GenTableFieldService;
import com.vector.module.gen.service.GenTableService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * 代码生成
 * @author wengxs
 * 2020/6/9 19:32
 */
@RestController
@RequestMapping("/gen/code")
public class GenCodeController {

    @Autowired
    private GenTableService genTableService;
    @Autowired
    private GenTableFieldService genTableFieldService;

    @GetMapping("/list")
    public R<PageResult> list(@RequestParam Map<String, Object> params) {
        GenTable query = Pageable.getQuery(params, GenTable.class);
        IPage<GenTable> page = genTableService.page(Pageable.getPage(params), new LambdaQueryWrapper<GenTable>()
                .eq(StringUtils.isNotBlank(query.getDbName()), GenTable::getDbName, query.getDbName())
                .eq(StringUtils.isNotBlank(query.getTbName()), GenTable::getTbName, query.getTbName())
                .like(StringUtils.isNotBlank(query.getTbComment()), GenTable::getTbComment, query.getTbComment())
        );
        return R.page(page.getRecords(), page.getTotal());
    }

    @GetMapping("/{id}")
    public R<GenTable> get(@PathVariable Long id) {
        List<GenTableField> fields = genTableFieldService.list(new LambdaQueryWrapper<GenTableField>()
                .eq(GenTableField::getTableId, id));
        GenTable table = genTableService.getById(id);
        table.setFields(fields);
        return R.ok(table);
    }

    @GetMapping("/preview/{id}")
    public R<?> preview(@PathVariable Long id) {
        return R.ok(genTableService.preview(id));
    }

    @DeleteMapping("/{ids}")
    public R<?> delete(@PathVariable List<Long> ids) {
        genTableService.removeAllByIds(ids);
        return R.ok();
    }

    @GetMapping("/dbList")
    public R<List<String>> databases() {
        return R.ok(genTableService.listDatabase());
    }

    @GetMapping("/schemaList")
        public R<PageResult> schemaList(@RequestParam Map<String, Object> params) {
        GenTable query = Pageable.getQuery(params, GenTable.class);
        IPage<GenTable> page = genTableService.pageSchema(Pageable.getPage(params), query.getDbName());
        return R.page(page.getRecords(), page.getTotal());
    }

    @PostMapping("/schemaImport/{dbName}/{tableName}")
    public R<?> schemaImport(@PathVariable String dbName, @PathVariable String tableName) {
        genTableService.importSchema(dbName, tableName);
        return R.ok();
    }
}
