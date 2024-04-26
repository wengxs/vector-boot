package com.vector.common.redis.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.connection.DataType;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import java.util.*;
import java.util.concurrent.TimeUnit;

/**
 * Redis工具类
 *
 * @author wengxs
 */
@Component
public class RedisUtil {

    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    private boolean isTrue(Boolean b) {
        return b != null && b;
    }

    // =============================Common============================

    /**
     * 为给定 key 设置过期时间，以秒计
     *
     * @param key 键
     * @param timeout 时间(秒)
     * @return 设置成功
     */
    public boolean expire(String key, long timeout) {
        if (timeout > 0)
            return isTrue(redisTemplate.expire(key, timeout, TimeUnit.SECONDS));
        return false;
    }

    /**
     * 为给定 key 设置过期时间
     *
     * @param key 键
     * @param expireDate 过期时间（时间戳）
     * @return 设置成功
     */
    public boolean expire(String key, Date expireDate) {
        if (expireDate.after(new Date()))
            return isTrue(redisTemplate.expireAt(key, expireDate));
        return false;
    }

    /**
     * 根据key 获取过期时间
     *
     * @param key 键 不能为null
     * @return 时间(秒) 返回0代表为永久有效
     */
    public Long ttl(String key) {
        return redisTemplate.getExpire(key, TimeUnit.SECONDS);
    }

    /**
     * 判断key是否存在
     *
     * @param key 键
     * @return true 存在 false不存在
     */
    public boolean exists(String key) {
        return isTrue(redisTemplate.hasKey(key));
    }

    /**
     * 该命令用于在 key 存在时删除 key
     *
     * @param keys 键 可以传一个值 或多个
     * @return 被删除 key 的数量
     */
    public Long del(String... keys) {
        return redisTemplate.delete(Arrays.asList(keys));
    }

    /**
     * 将当前数据库的 key 移动到给定的数据库 db 当中
     *
     * @param key 键
     * @param dbIndex 数据库索引
     * @return 移动成功
     */
    public boolean move(String key, int dbIndex) {
        return isTrue(redisTemplate.move(key, dbIndex));
    }

    /**
     * 查找所有符合给定模式( pattern)的 key
     *
     * @param pattern 模式
     * @return 符合给定模式的 key 列表
     */
    public Set<String> keys(String pattern) {
        return redisTemplate.keys(pattern);
    }

    /**
     * 返回 key 所储存的值的类型
     *
     * @param key 键
     * @return 值的类型
     */
    public DataType type(String key) {
        return redisTemplate.type(key);
    }

    //============================String=============================

    /**
     * 获取指定 key 的值
     *
     * @param key 键
     * @return 值
     */
    public Object get(String key) {
        return redisTemplate.opsForValue().get(key);
    }

    /**
     * 将给定 key 的值设为 value ，并返回 key 的旧值(old value)
     *
     * @param key 键
     * @param value 值
     * @return 旧值
     */
    public Object getSet(String key, Object value) {
        return redisTemplate.opsForValue().getAndSet(key, value);
    }

    /**
     * 设置指定 key 的值
     *
     * @param key 键
     * @param value 值
     */
    public void set(String key, Object value) {
        redisTemplate.opsForValue().set(key, value);
    }

    /**
     * 设置指定 key 的值，并设置过期时间
     *
     * @param key 键
     * @param value 值
     * @param timeout 过期时间(秒)，小于1则不设置过期时间
     */
    public void set(String key, Object value, long timeout){
        if (timeout > 0)
            redisTemplate.opsForValue().set(key, value, timeout, TimeUnit.SECONDS);
        else
            set(key, value);
    }

    /**
     * 只有在 key 不存在时设置 key 的值
     *
     * @param key 键
     * @param value 值
     * @return 是否设置成功
     */
    public boolean setNX(String key, Object value) {
        return isTrue(redisTemplate.opsForValue().setIfAbsent(key, value));
    }

    /**
     * 只有在 key 不存在时设置 key 的值，并设置过期时间
     *
     * @param key 键
     * @param value 值
     * @param timeout 过期时间(秒)，小于1则不设置过期时间
     * @return 是否设置成功
     */
    public boolean setNX(String key, Object value, long timeout) {
        if (timeout > 0)
            return isTrue(redisTemplate.opsForValue().setIfAbsent(key, value, timeout, TimeUnit.SECONDS));
        else
            return isTrue(redisTemplate.opsForValue().setIfAbsent(key, value));
    }

    /**
     * 将 key 所储存的值加上给定的增量值
     *
     * @param key 键
     * @param increment 增量值
     * @return 加上指定的增量值之后， key 的值
     */
    public Long incr(String key, long increment){
        return redisTemplate.opsForValue().increment(key, increment);
    }

    /**
     * 将 key 所储存的值加上给定的减量值
     *
     * @param key 键
     * @param decrement 减量值
     * @return 减去指定的减量值之后， key 的值
     */
    public Long decr(String key, long decrement){
        return redisTemplate.opsForValue().decrement(key, decrement);
    }

    //================================Hash=================================

    /**
     * 删除一个或多个哈希表字段
     *
     * @param key 键
     * @param field 字段
     * @return 被成功删除字段的数量，不包括被忽略的字段
     */
    public Long hDel(String key, Object... field) {
        return redisTemplate.opsForHash().delete(key, field);
    }

    /**
     * 查看哈希表 key 中，指定的字段是否存在
     *
     * @param key 键
     * @param field 字段
     * @return 指定的字段是否存在
     */
    public boolean hExists(String key, Object field) {
        return redisTemplate.opsForHash().hasKey(key, field);
    }

    /**
     * 返回给定字段的值。如果给定的字段或 key 不存在时，返回 null
     *
     * @param key 键
     * @param field 字段
     * @return 给定字段的值
     */
    public Object hGet(String key, Object field) {
        return redisTemplate.opsForHash().get(key, field);
    }

    /**
     * 获取在哈希表中指定 key 的所有字段和值
     *
     * @param key 键
     * @return 以列表形式返回哈希表的字段及字段值。 若 key 不存在，返回空列表
     */
    public Map<Object, Object> hGetAll(String key) {
        return redisTemplate.opsForHash().entries(key);
    }

    /**
     * 为哈希表 key 中的指定字段的整数值加上增量 increment
     *
     * @param key 键
     * @param field 字段
     * @param increment 增量值
     * @return 加上指定的增量值之后，哈希表中字段的值
     */
    public Long hIncrBy(String key, Object field, long increment) {
        return redisTemplate.opsForHash().increment(key, field, increment);
    }

    /**
     * 为哈希表 key 中的指定字段的整数值加上增量 increment
     *
     * @param key 键
     * @param field 字段
     * @param increment 增量值（浮点数）
     * @return 加上指定的增量值之后，哈希表中字段的值
     */
    public Double hIncrBy(String key, Object field, double increment) {
        return redisTemplate.opsForHash().increment(key, field, increment);
    }

    /**
     * 获取所有哈希表中的字段
     *
     * @param key 键
     * @return 包含哈希表中所有字段（field）列表。 当 key 不存在时，返回一个空列表
     */
    public Set<Object> hKeys(String key) {
        return redisTemplate.opsForHash().keys(key);
    }

    /**
     * 获取哈希表中字段的数量
     *
     * @param key 键
     * @return 哈希表中字段的数量。 当 key 不存在时，返回 0
     */
    public Long hLen(String key) {
        return redisTemplate.opsForHash().size(key);
    }

    /**
     * 获取所有给定字段的值
     *
     * @param key 键
     * @param field 字段
     * @return 一个包含多个给定字段关联值的表，表值的排列顺序和指定字段的请求顺序一样
     */
    public List<Object> hMGet(String key, Object... field) {
        return redisTemplate.opsForHash().multiGet(key, Arrays.asList(field));
    }

    /**
     * 同时将多个 field-value (字段-值)对设置到哈希表中
     *
     * @param key 键
     * @param m field-value (字段-值)
     */
    public void hMSet(String key, Map<Object, Object> m) {
        redisTemplate.opsForHash().putAll(key, m);
    }

    /**
     * 将哈希表 key 中的字段 field 的值设为 value
     *
     * @param key 键
     * @param field 字段
     * @param value 值
     */
    public void hSet(String key, Object field, Object value) {
        redisTemplate.opsForHash().put(key, field, value);
    }

    /**
     * 只有在字段 field 不存在时，设置哈希表字段的值
     *
     * @param key 键
     * @param field 字段
     * @param value 值
     * @return 设置成功或失败
     */
    public boolean hSetNX(String key, Object field, Object value) {
        return isTrue(redisTemplate.opsForHash().putIfAbsent(key, field, value));
    }

    /**
     * 获取哈希表中所有值
     *
     * @param key 键
     * @return 一个包含哈希表中所有字段(field)值的列表。 当 key 不存在时，返回一个空表
     */
    public List<Object> hVals(String key) {
        return redisTemplate.opsForHash().values(key);
    }

    //===============================List=================================

    /**
     * 通过索引获取列表中的元素
     *
     * @param key 键
     * @param index 索引
     * @return 列表中下标为指定索引值的元素。 如果指定索引值不在列表的区间范围内，返回 null
     */
    public Object lIndex(String key, long index) {
        return redisTemplate.opsForList().index(key, index);
    }

    /**
     * 获取列表长度
     *
     * @param key 键
     * @return 列表长度
     */
    public Long lLen(String key) {
        return redisTemplate.opsForList().size(key);
    }

    /**
     * 弹出并获取列表的第一个元素
     *
     * @param key 键
     * @return 被弹出的元素
     */
    public Object lPop(String key) {
        return redisTemplate.opsForList().leftPop(key);
    }

    /**
     * 将一个或多个值插入到列表头部
     *
     * @param key 键
     * @param values 值
     * @return 列表的长度
     */
    public Long lPush(String key, Object... values) {
        return redisTemplate.opsForList().leftPushAll(key, values);
    }

    /**
     * 将一个或多个值插入到列表头部
     *
     * @param key 键
     * @param values 值
     * @return 列表的长度
     */
    public Long lPush(String key, List<Object> values) {
        return redisTemplate.opsForList().leftPushAll(key, values);
    }

    /**
     * 将一个值插入到已存在的列表头部
     *
     * @param key 键
     * @param value 值
     * @return 列表的长度，0表示列表不存在
     */
    public Long lPushX(String key, Object value) {
        return redisTemplate.opsForList().leftPushIfPresent(key, value);
    }

    /**
     * 在列表的指定元素前面插入元素
     *
     * @param key 键
     * @param pivot 指定元素
     * @param value 值
     * @return 如果命令执行成功，返回插入操作完成之后，列表的长度。
     *          如果没有找到指定元素 ，返回 -1 。
     *          如果 key 不存在或为空列表，返回 0
     */
    public Long lInsertBefore(String key, Object pivot, Object value) {
        return redisTemplate.opsForList().leftPush(key, pivot, value);
    }

    /**
     * 在列表的指定元素后面插入元素
     *
     * @param key 键
     * @param pivot 指定元素
     * @param value 值
     * @return 如果命令执行成功，返回插入操作完成之后，列表的长度。
     *          如果没有找到指定元素 ，返回 -1 。
     *          如果 key 不存在或为空列表，返回 0
     */
    public Long lInsertAfter(String key, Object pivot, Object value) {
        return redisTemplate.opsForList().rightPush(key, pivot, value);
    }

    /**
     * 获取列表指定范围内的元素。
     * 区间以偏移量 START 和 END 指定。
     * 其中 0 表示列表的第一个元素， 1 表示列表的第二个元素，以此类推。
     * 也可以使用负数下标，以 -1 表示列表的最后一个元素， -2 表示列表的倒数第二个元素，以此类推
     *
     * @param key 键
     * @param start 开始位置
     * @param end 结束位置
     * @return 指定区间内的元素列表
     */
    public List<Object> lRange(String key, long start, long end) {
        return redisTemplate.opsForList().range(key, start, end);
    }

    /**
     * 根据参数 COUNT 的值，移除列表中与参数 VALUE 相等的元素。
     * COUNT 的值可以是以下几种：
     * count > 0 : 从表头开始向表尾搜索，移除与 VALUE 相等的元素，数量为 COUNT 。
     * count < 0 : 从表尾开始向表头搜索，移除与 VALUE 相等的元素，数量为 COUNT 的绝对值。
     * count = 0 : 移除表中所有与 VALUE 相等的值。
     *
     * @param key 键
     * @param count 移除数量
     * @param value 值
     * @return 被移除元素的数量。 列表不存在时返回 0
     */
    public Long lRem(String key, long count, Object value) {
        return redisTemplate.opsForList().remove(key, count, value);
    }

    /**
     * 通过索引设置列表元素的值
     *
     * @param key 键
     * @param index 索引
     * @param value 值
     */
    public void lSet(String key, long index, Object value) {
        redisTemplate.opsForList().set(key, index, value);
    }

    /**
     * 对一个列表进行修剪(trim)，就是说，让列表只保留指定区间内的元素，不在指定区间之内的元素都将被删除
     * 区间以偏移量 START 和 END 指定。
     * 下标 0 表示列表的第一个元素，以 1 表示列表的第二个元素，以此类推。
     * 也可以使用负数下标，以 -1 表示列表的最后一个元素， -2 表示列表的倒数第二个元素，以此类推。
     *
     * @param key 键
     * @param start 开始位置
     * @param end 结束位置
     */
    public void lTrim(String key, long start, long end) {
        redisTemplate.opsForList().trim(key, start, end);
    }

    /**
     * 弹出并获取列表的最后一个元素
     *
     * @param key 键
     * @return 被弹出的元素
     */
    public Object rPop(String key) {
        return redisTemplate.opsForList().rightPop(key);
    }

    /**
     * 将一个或多个值插入到列表尾部
     *
     * @param key 键
     * @param values 值
     * @return 列表的长度
     */
    public Long rPush(String key, Object... values) {
        return redisTemplate.opsForList().rightPushAll(key, values);
    }

    /**
     * 将一个或多个值插入到列表尾部
     *
     * @param key 键
     * @param values 值
     * @return 列表的长度
     */
    public Long rPush(String key, List<Object> values) {
        return redisTemplate.opsForList().rightPushAll(key, values);
    }

    /**
     * 将一个值插入到已存在的列表尾部
     *
     * @param key 键
     * @param value 值
     * @return 列表的长度，0表示列表不存在
     */
    public Long rPushX(String key, Object value) {
        return redisTemplate.opsForList().rightPushIfPresent(key, value);
    }

    //============================Set=============================

    /**
     * 向集合添加一个或多个成员
     *
     * @param key 键
     * @param values 值 可以是多个
     * @return 被添加到集合中的新元素的数量，不包括被忽略的元素
     */
    public Long sAdd(String key, Object...values) {
        return redisTemplate.opsForSet().add(key, values);
    }

    /**
     * 获取集合的成员数
     *
     * @param key 键
     * @return
     */
    public Long sCard(String key){
        return redisTemplate.opsForSet().size(key);
    }

    /**
     * 判断 member 元素是否是集合 key 的成员
     *
     * @param key 键
     * @param member 元素
     * @return 是否是集合 key 的成员
     */
    public boolean sIsMember(String key, Object member){
        return isTrue(redisTemplate.opsForSet().isMember(key, member));
    }

    /**
     * 根据key获取Set中的所有值
     *
     * @param key 键
     * @return 集合中的所有成员
     */
    public Set<Object> sMembers(String key){
        return redisTemplate.opsForSet().members(key);
    }

    /**
     * 将指定成员 member 元素从 source 集合移动到 destination 集合
     *
     * @param source 原集合
     * @param destination 目标集合
     * @param member 移动目标元素
     * @return 如果成员元素被成功移除，返回 true 。
     *          如果成员元素不是 source 集合的成员，并且没有任何操作对 destination 集合执行，那么返回 false
     */
    public boolean sMove(String source, String destination, Object member) {
        return isTrue(redisTemplate.opsForSet().move(source, member, destination));
    }

    /**
     * 移除并返回集合中的一个随机元素
     *
     * @param key 键
     * @return 被移除的元素
     */
    public Object sPop(String key) {
        return redisTemplate.opsForSet().pop(key);
    }

    /**
     * 移除并返回集合中的多个随机元素
     *
     * @param key 键
     * @param count 移除个数
     * @return 指定个数被移除的元素集合
     */
    public List<Object> sPop(String key, long count) {
        return redisTemplate.opsForSet().pop(key, count);
    }

    /**
     * 返回集合中的一个随机元素
     *
     * @param key 键
     * @return 随机元素
     */
    public Object sRandMember(String key) {
        return redisTemplate.opsForSet().randomMember(key);
    }

    /**
     * 移除并返回集合中的多个随机元素
     *
     * @param key 键
     * @param count 返回元素个数
     * @return 指定个数随机元素集合
     */
    public List<Object> sRandMember(String key, long count) {
        return redisTemplate.opsForSet().randomMembers(key, count);
    }

    /**
     * 从集合中移除一个或多个元素
     *
     * @param key 键
     * @param values 目标元素 可以是多个
     * @return 被移除的个数
     */
    public Long sRemove(String key, Object ...values) {
        return redisTemplate.opsForSet().remove(key, values);
    }

    /**
     * 返回给定所有集合的差集
     *
     * @param key 键
     * @param otherKey 其他集合键
     * @return 给定集合之间的差集。不存在的集合 key 将视为空集
     *          差集的结果来自前面的 key ,而不是后面的 otherKey
     */
    public Set<Object> sDiff(String key, String otherKey) {
        return redisTemplate.opsForSet().difference(key, otherKey);
    }

    //============================ZSet=============================

    /**
     * 向有序集合添加一个成员，或者更新已存在成员的分数
     *
     * @param key 键
     * @param score 分数
     * @param member 成员
     */
    public boolean zAdd(String key, double score, Object member) {
        return isTrue(redisTemplate.opsForZSet().add(key, member, score));
    }

    /**
     * 获取有序集合的成员数
     *
     * @param key 键
     * @return 成员数
     */
    public Long zCard(String key) {
        return redisTemplate.opsForZSet().zCard(key);
    }

    /**
     * 计算在有序集合中指定区间分数的成员数
     *
     * @param key 键
     * @param min 最小分数
     * @param max 最大分数
     * @return 指定区间分数的成员数
     */
    public Long zCount(String key, double min, double max) {
        return redisTemplate.opsForZSet().count(key, min, max);
    }

    /**
     * 有序集合中对指定成员的分数加上增量 increment
     *
     * @param key 键
     * @param increment 增量值
     * @param member 成员
     * @return 成员的新分数值
     */
    public Double zIncrBy(String key, double increment, Object member) {
        return redisTemplate.opsForZSet().incrementScore(key, member, increment);
    }

    /**
     * 返回有序集合中指定成员的索引
     *
     * @param key 键
     * @param member 成员
     * @return 索引
     */
    public Long zRank(String key, Object member) {
        return redisTemplate.opsForZSet().rank(key, member);
    }

    /**
     * 移除有序集合中的一个或多个成员
     *
     * @param key 键
     * @param members 成员
     * @return 被成功移除的成员的数量，不包括被忽略的成员
     */
    public Long zRem(String key, Object... members) {
        return redisTemplate.opsForZSet().remove(key, members);
    }

    /**
     * 返回有序集中，成员的分数值
     *
     * @param key 键
     * @param member 成员
     * @return 成员的分数值
     */
    public Double zScore(String key, Object member) {
        return redisTemplate.opsForZSet().score(key, member);
    }

}
