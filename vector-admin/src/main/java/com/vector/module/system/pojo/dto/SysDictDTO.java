package com.vector.module.system.pojo.dto;

import lombok.Data;

/**
 * 字典 DTO
 * @author wengxs
 */
@Data
public class SysDictDTO {

    /** ID */
    private Long id;

    /** 字典名称 */
    private String dictName;

    /** 字典键 */
    private String dictKey;

    /** 字典状态 */
    private String dictStatus;

    /** 备注 */
    private String remark;
}
