package com.vector.module.system.pojo.vo;

import lombok.Data;

import java.util.Date;

/**
 * 字典 VO
 * @author wengxs
 */
@Data
public class SysDictVO {

    /** ID */
    private Long id;

    /** 创建时间 */
    private Date createTime;

    /** 字典名称 */
    private String dictName;

    /** 字典键 */
    private String dictKey;

    /** 字典状态 */
    private String dictStatus;

    /** 备注 */
    private String remark;
}
