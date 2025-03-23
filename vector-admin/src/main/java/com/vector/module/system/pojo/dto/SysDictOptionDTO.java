package com.vector.module.system.pojo.dto;

import lombok.Data;

/**
 * 字典选项 DTO
 * @author wengxs
 * @date 2025/03/01
 */
@Data
public class SysDictOptionDTO {

    /** ID */
    private Long id;

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
