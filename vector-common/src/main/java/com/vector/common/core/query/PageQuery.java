package com.vector.common.core.query;

import lombok.Data;

/**
 * 查询参数基类
 * @author wengxs
 * @date 2024/5/4
 */
@Data
public class PageQuery {

    /** 分码 */
    protected Integer page;

    /** 分页大学 */
    protected Integer pageSize;

    /** 排序字段 */
    protected String sortBy;

    /** 排序方式 */
    protected String sortDirection;

    /** 创建时间：起 */
    private String createBegin;

    /** 创建时间：止 */
    private String createEnd;
}
