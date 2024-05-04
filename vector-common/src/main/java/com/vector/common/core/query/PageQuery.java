package com.vector.common.core.query;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

/**
 * 查询参数基类
 * @author wengxs
 * @date 2024/5/4
 */
@Data
public class PageQuery {

    /** 分码 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    protected Integer page;

    /** 分页大学 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    protected Integer pageSize;

    /** 排序字段 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    protected String sortBy;

    /** 排序方式 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    protected String sortDirection;

    /** 创建时间：起 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String createBegin;

    /** 创建时间：止 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String createEnd;
}
