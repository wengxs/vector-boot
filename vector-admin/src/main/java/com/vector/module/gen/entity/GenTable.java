package com.vector.module.gen.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

/**
 * 生成代码-数据表
 * @author wengxs
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("gen_table")
public class GenTable extends BaseEntity<Long> {

    /** 数据库名 */
    private String dbName;

    /** 表名称 */
//    @NotBlank(message = "表名称不能为空")
    private String tbName;

    /** 表描述 */
//    @NotBlank(message = "表描述不能为空")
    private String tbComment;

    /** 实体类名称(首字母大写) */
//    @NotBlank(message = "实体类名称不能为空")
    private String className;

    /** 生成包路径 */
//    @NotBlank(message = "生成包路径不能为空")
    private String packageName;

    /** 模块名 */
    private String moduleName;

    /** 业务名 */
    private String bizName;

    /** 作者 */
    private String author;

    /** 表字段列表 */
    @TableField(exist = false)
    private List<GenTableField> fields;

}
