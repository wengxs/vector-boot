package com.vector.module.gen.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.gen.entity.GenTable;

import java.util.List;
import java.util.Map;

/**
 * @author wengxs
 */
public interface GenTableService extends IService<GenTable> {

    Map<String, String> preview(Long id);

    void removeAllByIds(List<Long> ids);

    List<String> listDatabase();

    IPage<GenTable> pageSchema(IPage<GenTable> page, String dbName);

    void importSchema(String dbName, String tableName);

    void updateAll(GenTable genTable);
}
