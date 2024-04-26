package com.vector.common.core.pagination;

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
    private static final int DEFAULT_PAGE_NUMBER = 1;

    /** 默认每页记录数 */
    private static final int DEFAULT_PAGE_SIZE = 20;

    /** 默认排序 */
    private static final String DEFAULT_ORDER_BY = "createTime";

    /** 默认排序 */
    private static final String DEFAULT_PAGE_NUMBER_FIELD = "page";

    /** 默认排序 */
    private static final String DEFAULT_PAGE_SIZE_FIELD = "pageSize";

    /** 默认排序 */
    private static final String DEFAULT_ORDER_BY_FIELD = "sortBy";

    /** 默认排序 */
    private static final String DEFAULT_ORDER_TYPE_FIELD = "sortDirection";

//    private final Object query;
//
//    private final Page<?> page;

//    public <T> Pageable(Map<String, Object> paramsMap, Class<T> clazz) {
//        //返回表示此 Class 所表示的实体（类、接口、基本类型或 void）的直接超类的 Type。
////        ParameterizedType type = (ParameterizedType) this.getClass().getGenericSuperclass();
////        Class<T> clazz = type.getActualTypeArguments()[0];
////        if (type instanceof ParameterizedType) {
////            clazz = (Class<T>) type.getActualTypeArguments()[0];
////        }
//        //返回表示此类型实际类型参数的 Type 对象的数组(),赋值给this.classt
//        // Class<T> clazz = (Class<T>) type.getActualTypeArguments()[0];//<T>
//        query = JSON.toJavaObject((JSON) JSON.toJSON(paramsMap), clazz);
//        long current = DEFAULT_PAGE_NUMBER;
//        long size = DEFAULT_PAGE_SIZE;
//        if (paramsMap.get(DEFAULT_PAGE_NUMBER_FIELD) != null) {
//            current = Long.parseLong((String) paramsMap.get(DEFAULT_PAGE_NUMBER_FIELD));
//        }
//        if (paramsMap.get(DEFAULT_PAGE_SIZE_FIELD) != null) {
//            size = Long.parseLong((String) paramsMap.get(DEFAULT_PAGE_SIZE_FIELD));
//        }
//
//        page = new Page<>(current, size);
//
//        String sortColumn = (String) paramsMap.getOrDefault(DEFAULT_ORDER_BY_FIELD, DEFAULT_ORDER_BY);
//        boolean isAsc = "asc".equalsIgnoreCase((String) paramsMap.get(DEFAULT_ORDER_TYPE_FIELD));
//        if (isAsc) {
//            page.addOrder(OrderItem.asc(sortColumn));
//        } else {
//            page.addOrder(OrderItem.desc(sortColumn));
//        }
//    }
//
//    public Object getQuery() {
//        return query;
//    }
//
//    public Page<?> getPage() {
//        return page;
//    }

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

}
