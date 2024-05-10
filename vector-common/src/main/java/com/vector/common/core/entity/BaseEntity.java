package com.vector.common.core.entity;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author Zorg
 * @date 2022/3/24
 */
@Data
public class BaseEntity<ID extends Serializable> {

    /** ID */
    @TableId
    private ID id;

    /** 创建时间 */
    @TableField(insertStrategy = FieldStrategy.NEVER, updateStrategy = FieldStrategy.NEVER)
    private Date createTime;

    /** 创建人 */
    @TableField(fill = FieldFill.INSERT, updateStrategy = FieldStrategy.NEVER)
    private Long createBy;

    /** 更新时间 */
    @TableField(insertStrategy = FieldStrategy.NEVER, update = "now()")
    private Date updateTime;

    /** 更新人 */
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Long updateBy;

}
