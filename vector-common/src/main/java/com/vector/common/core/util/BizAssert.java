package com.vector.common.core.util;

import com.vector.common.core.enums.ResultCode;
import com.vector.common.core.exception.BizException;
import com.vector.common.core.result.IResultCode;
import org.springframework.util.Assert;
import org.springframework.util.CollectionUtils;
import org.springframework.util.ObjectUtils;
import org.springframework.util.StringUtils;

import java.util.Collection;
import java.util.Map;
import java.util.function.Supplier;

/**
 * 验证业务参数断言类
 * 使用方法参考 {@link Assert}
 */
public class BizAssert {
    
    private static IResultCode nullSafeGet(Supplier<IResultCode> resultCodeSupplier) {
        return resultCodeSupplier.get() != null ? resultCodeSupplier.get() : ResultCode.FAILURE;
    }
    
    public static void isTrue(boolean expression, String message) {
        if (!expression) {
            throw new BizException(message);
        }
    }

    public static void isTrue(boolean expression, Supplier<IResultCode> resultCodeSupplier) {
        if (!expression) {
            throw new BizException(nullSafeGet(resultCodeSupplier));
        }
    }

    public static void isNull(Object object, String message) {
        if (object != null) {
            throw new BizException(message);
        }
    }

    public static void isNull(Object object, Supplier<IResultCode> resultCodeSupplier) {
        if (object != null) {
            throw new BizException(nullSafeGet(resultCodeSupplier));
        }
    }

    public static void notNull(Object object, String message) {
        if (object == null) {
            throw new BizException(message);
        }
    }

    public static void notNull(Object object, Supplier<IResultCode> resultCodeSupplier) {
        if (object == null) {
            throw new BizException(nullSafeGet(resultCodeSupplier));
        }
    }

    public static void hasLength(String text, String message) {
        if (!StringUtils.hasLength(text)) {
            throw new BizException(message);
        }
    }

    public static void hasLength(String text, Supplier<IResultCode> resultCodeSupplier) {
        if (!StringUtils.hasLength(text)) {
            throw new BizException(nullSafeGet(resultCodeSupplier));
        }
    }

    public static void hasText(String text, String message) {
        if (!StringUtils.hasText(text)) {
            throw new BizException(message);
        }
    }

    public static void hasText(String text, Supplier<IResultCode> resultCodeSupplier) {
        if (!StringUtils.hasText(text)) {
            throw new BizException(nullSafeGet(resultCodeSupplier));
        }
    }

    public static void doesNotContain(String textToSearch, String substring, String message) {
        if (StringUtils.hasLength(textToSearch) && StringUtils.hasLength(substring) &&
                textToSearch.contains(substring)) {
            throw new BizException(message);
        }
    }

    public static void doesNotContain(String textToSearch, String substring, Supplier<IResultCode> resultCodeSupplier) {
        if (StringUtils.hasLength(textToSearch) && StringUtils.hasLength(substring) &&
                textToSearch.contains(substring)) {
            throw new BizException(nullSafeGet(resultCodeSupplier));
        }
    }

    public static void notEmpty(Object[] array, String message) {
        if (ObjectUtils.isEmpty(array)) {
            throw new BizException(message);
        }
    }

    public static void notEmpty(Object[] array, Supplier<IResultCode> resultCodeSupplier) {
        if (ObjectUtils.isEmpty(array)) {
            throw new BizException(nullSafeGet(resultCodeSupplier));
        }
    }

    public static void noNullElements(Object[] array, String message) {
        if (array != null) {
            for (Object element : array) {
                if (element == null) {
                    throw new BizException(message);
                }
            }
        }
    }

    public static void noNullElements(Object[] array, Supplier<IResultCode> resultCodeSupplier) {
        if (array != null) {
            for (Object element : array) {
                if (element == null) {
                    throw new BizException(nullSafeGet(resultCodeSupplier));
                }
            }
        }
    }

    public static void notEmpty(Collection<?> collection, String message) {
        if (CollectionUtils.isEmpty(collection)) {
            throw new BizException(message);
        }
    }

    public static void notEmpty(Collection<?> collection, Supplier<IResultCode> resultCodeSupplier) {
        if (CollectionUtils.isEmpty(collection)) {
            throw new BizException(nullSafeGet(resultCodeSupplier));
        }
    }

    public static void noNullElements(Collection<?> collection, String message) {
        if (collection != null) {
            for (Object element : collection) {
                if (element == null) {
                    throw new BizException(message);
                }
            }
        }
    }

    public static void noNullElements(Collection<?> collection, Supplier<IResultCode> resultCodeSupplier) {
        if (collection != null) {
            for (Object element : collection) {
                if (element == null) {
                    throw new BizException(nullSafeGet(resultCodeSupplier));
                }
            }
        }
    }

    public static void notEmpty(Map<?, ?> map, String message) {
        if (CollectionUtils.isEmpty(map)) {
            throw new BizException(message);
        }
    }

    public static void notEmpty(Map<?, ?> map, Supplier<IResultCode> resultCodeSupplier) {
        if (CollectionUtils.isEmpty(map)) {
            throw new BizException(nullSafeGet(resultCodeSupplier));
        }
    }

    public static void contains(Collection<?> collection, Object element, String message) {
        if (!CollectionUtils.containsInstance(collection, element)) {
            throw new BizException(message);
        }
    }

    public static void contains(Collection<?> collection, Object element, Supplier<IResultCode> resultCodeSupplier) {
        if (!CollectionUtils.containsInstance(collection, element)) {
            throw new BizException(nullSafeGet(resultCodeSupplier));
        }
    }
}
