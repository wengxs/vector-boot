package com.vector.module.system.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 字典 Entity
 * @author wengxs
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("sys_dict")
public class SysDict extends BaseEntity<Long> {

    /** 字典名称 */
    private String dictName;

    /** 字典键 */
    private String dictKey;

    /** 字典状态 */
    private String dictStatus;

    /** 备注 */
    private String remark;
}
