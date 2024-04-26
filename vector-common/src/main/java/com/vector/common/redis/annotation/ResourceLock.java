package com.vector.common.redis.annotation;

import java.lang.annotation.*;
import java.util.concurrent.TimeUnit;

/**
 * 资源锁（使用redisson实现）
 * 注意：实例内部调用该注解的方法会失效，请谨慎使用
 */
@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface ResourceLock {

    /** 锁前缀 */
    String namePrefix();

    /** 锁的标识（支持spEL表达式） */
    String nameKey();

    /** 锁的有效时间 */
    long leaseTime() default -1;

    /** 时间单位 */
    TimeUnit unit() default TimeUnit.SECONDS;

    /** 是否在等待时间内尝试获取锁 */
    boolean tryLock() default false;

    /** 尝试获取锁最大等待时间 */
    long tryTime() default 0;

}
