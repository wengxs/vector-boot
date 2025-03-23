package com.vector.module.system.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 字典选项 Entity
 * @author wengxs
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("sys_dict_option")
public class SysDictOption extends BaseEntity<Long> {

    public static String OPTION_STATUS_ENABLED = "ENABLED";

    /** 字典键 */
    private String dictKey;

    /** 标签 */
    private String optionLabel;

    /** 项值 */
    private String optionValue;

    /** 排序 */
    private Integer sort;

    /** 选项状态 */
    private String optionStatus;

    /** 样式 */
    private String style;
}
