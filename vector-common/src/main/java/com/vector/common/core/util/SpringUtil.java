package com.vector.common.core.util;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import java.util.Optional;

/**
 * 获取容器Bean工具类
 * Ps: 该类可以在非SpringIoC管理的普通类中获取Spring管理的Bean实例
 * @author Zorg
 */
@Component
public class SpringUtil implements ApplicationContextAware {

    private static ApplicationContext ctx = null;

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        ctx = applicationContext;
    }

    /**
     * 根据类型获取容器中的Bean
     * @param type
     * @param <T>
     * @return
     */
    public static <T> Optional<T> getBean(Class<T> type) {
        return ctx == null ? Optional.empty() : Optional.of(ctx.getBean(type));
    }

    /**
     * 根据名字和类型获取容器中的Bean
     * @param name
     * @param type
     * @param <T>
     * @return
     */
    public static <T> Optional<T> getBean(String name, Class<T> type) {
        return ctx == null ? Optional.empty() : Optional.of(ctx.getBean(name, type));
    }

}
