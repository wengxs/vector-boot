package com.vector.module.system.pojo.vo;

import lombok.Data;

import java.util.Date;

/**
 * 字典选项 VO
 * @author wengxs
 */
@Data
public class SysDictOptionVO {

    /** ID */
    private Long id;

    /** 创建时间 */
    private Date createTime;

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
