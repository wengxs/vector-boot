package com.vector.common.redis.config;

import com.vector.common.core.util.SpringUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.cache.Cache;
import org.springframework.data.redis.core.RedisTemplate;

import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

//@Component
@Slf4j
public class MyBatisRedisCache implements Cache {

    /** 读写锁 */
    private final ReadWriteLock readWriteLock = new ReentrantReadWriteLock(true);

    /** 这里使用了redis缓存，使用springboot自动注入 */
    private RedisTemplate<String, Object> redisTemplate;

    private final String id;

    public MyBatisRedisCache(final String id) {
        if (id == null) {
            throw new IllegalArgumentException("Cache instances require an ID");
        }
        this.id = id;
    }
    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public void putObject(Object key, Object value) {
        if (redisTemplate == null) {
            redisTemplate = (RedisTemplate<String, Object>) SpringUtil.getBean("redisTemplate", RedisTemplate.class).get();
        }
        if (value != null) {
            redisTemplate.opsForHash().put(id, key.toString(), value);
        }
    }

    @Override
    public Object getObject(Object key) {
        if (redisTemplate == null) {
            redisTemplate = (RedisTemplate<String, Object>) SpringUtil.getBean("redisTemplate", RedisTemplate.class).get();
        }
        try {
            if (key != null) {
                return redisTemplate.opsForHash().get(id, key.toString());
            }
        } catch (Exception e) {
            e.printStackTrace();
            log.error("缓存出错 ");
        }
        return null;
    }

    @Override
    public Object removeObject(Object key) {
        if (redisTemplate == null) {
            redisTemplate = (RedisTemplate<String, Object>) SpringUtil.getBean("redisTemplate", RedisTemplate.class).get();
        }
        if (key != null) {
            redisTemplate.delete(key.toString());
        }
        return null;
    }

    @Override
    public void clear() {
        if (redisTemplate == null) {
            redisTemplate = (RedisTemplate<String, Object>) SpringUtil.getBean("redisTemplate", RedisTemplate.class).get();
        }
        System.out.println("清空缓存");
        log.debug("清空缓存");
        redisTemplate.delete(id);
    }

    @Override
    public int getSize() {
        if (redisTemplate == null) {
            redisTemplate = (RedisTemplate<String, Object>) SpringUtil.getBean("redisTemplate", RedisTemplate.class).get();
        }
        Long size = redisTemplate.opsForHash().size(id);
        return size.intValue();
    }

    @Override
    public ReadWriteLock getReadWriteLock() {
        return this.readWriteLock;
    }
}
