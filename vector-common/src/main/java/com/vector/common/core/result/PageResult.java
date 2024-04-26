package com.vector.common.core.result;

import java.util.List;

public class PageResult {

    /** 总记录数 */
    private final long total;

    /** 内容 */
    private final List<?> list;

    public PageResult(List<?> list, long total) {
        this.list = list;
        this.total = total;
    }

    /**
     * 获取内容
     * @return 内容
     */
    public List<?> getList() {
        return list;
    }

    /**
     * 获取总记录数
     * @return 总记录数
     */
    public long getTotal() {
        return total;
    }

}
