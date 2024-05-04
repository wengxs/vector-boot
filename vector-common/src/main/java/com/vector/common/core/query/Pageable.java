package com.vector.common.core.query;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.metadata.OrderItem;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.util.Map;

/**
 * 分页
 * @author Zorg
 */
public class Pageable {

    /** 默认页码 */
    public static final int DEFAULT_PAGE_NUMBER = 1;

    /** 默认每页记录数 */
    public static final int DEFAULT_PAGE_SIZE = 20;

    /** 默认排序 */
    public static final String DEFAULT_ORDER_BY = "id";

    /** 默认排序 */
    public static final String DEFAULT_PAGE_NUMBER_FIELD = "page";

    /** 默认排序 */
    public static final String DEFAULT_PAGE_SIZE_FIELD = "pageSize";

    /** 默认排序 */
    public static final String DEFAULT_ORDER_BY_FIELD = "sortBy";

    /** 默认排序 */
    public static final String DEFAULT_ORDER_TYPE_FIELD = "sortDirection";

    public static <T> T getQuery(Map<String, Object> paramsMap, Class<T> clazz) {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        return objectMapper.convertValue(paramsMap, clazz);
    }

    public static <T> IPage<T> getPage(Map<String, Object> paramsMap) {
        long current = DEFAULT_PAGE_NUMBER;
        long size = DEFAULT_PAGE_SIZE;
        if (paramsMap.get(DEFAULT_PAGE_NUMBER_FIELD) != null) {
            current = Long.parseLong((String) paramsMap.get(DEFAULT_PAGE_NUMBER_FIELD));
        }
        if (paramsMap.get(DEFAULT_PAGE_SIZE_FIELD) != null) {
            size = Long.parseLong((String) paramsMap.get(DEFAULT_PAGE_SIZE_FIELD));
        }
        Page<T> page = new Page<>(current, size);

        String sortColumn = (String) paramsMap.getOrDefault(DEFAULT_ORDER_BY_FIELD, DEFAULT_ORDER_BY);
        // 驼峰转下划线
        sortColumn = sortColumn.replaceAll("([A-Z])", "_$1").toLowerCase();
        boolean isAsc = "asc".equalsIgnoreCase((String) paramsMap.get(DEFAULT_ORDER_TYPE_FIELD));
        if (isAsc) {
            page.addOrder(OrderItem.asc(sortColumn));
        } else {
            page.addOrder(OrderItem.desc(sortColumn));
        }
        return page;
    }

    public static <T> IPage<T> getPage(PageQuery query) {
        long current = query.getPage() != null ? query.getPage() : DEFAULT_PAGE_NUMBER;
        long size = query.getPageSize() != null ? query.getPageSize() : DEFAULT_PAGE_SIZE;
        Page<T> page = new Page<>(current, size);

        String sortColumn = query.getSortBy() != null ? query.getSortBy() : DEFAULT_ORDER_BY;
        // 驼峰转下划线
        sortColumn = sortColumn.replaceAll("([A-Z])", "_$1").toLowerCase();
        boolean isAsc = "asc".equalsIgnoreCase(query.getSortDirection());
        if (isAsc) {
            page.addOrder(OrderItem.asc(sortColumn));
        } else {
            page.addOrder(OrderItem.desc(sortColumn));
        }
        return page;
    }

}
