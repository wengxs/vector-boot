package com.vector.module.gen.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 生成代码-数据表字段
 * @author wengxs
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("gen_table_field")
public class GenTableField extends BaseEntity<Long> {

    private Long tableId;

    /** 字段名称 */
    private String name;

    /** 字段描述 */
    private String comment;

    /** 字段类型 */
    private String type;

    /** JAVA类型 */
    private String javaType;

    /** JAVA字段名 */
//    @NotBlank(message = "Java属性不能为空")
    private String javaField;

    /** 是否主键（1是） */
    private Boolean isPk;

    /** 是否自增（1是） */
    private Boolean isIncrement;

    /** 是否必填（1是） */
    private Boolean isRequired;

    /** 是否列表字段（1是） */
    private Boolean isList;

    /** 是否查询字段（1是） */
    private Boolean isQuery;

    /** 查询方式（EQ等于、NE不等于、GT大于、LT小于、LIKE模糊、BETWEEN范围） */
    private String queryType;

    /** 排序 */
    private Integer sort;

    /** 控件类型 */
    private String componentType;

}
