package com.vector.module.system.pojo.query;

import com.vector.common.core.query.PageQuery;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 字典 查询参数
 * @author wengxs
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class SysDictQuery extends PageQuery {

    /** 字典名称 */
    private String dictName;

    /** 字典键 */
    private String dictKey;

    /** 字典状态 */
    private String dictStatus;

    /** 备注 */
    private String remark;
}
