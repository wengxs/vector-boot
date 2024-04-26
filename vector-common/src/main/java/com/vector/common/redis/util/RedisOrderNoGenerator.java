package com.vector.common.redis.util;

import com.vector.common.core.util.OrderNoGenerator;
import com.vector.common.redis.constant.RedisKeyConstant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;

@Component
public class RedisOrderNoGenerator implements OrderNoGenerator {

    @Autowired
    private RedisUtil redisUtil;

    @Override
    public String generate(String prefix) {
        return generate(prefix, 5);
    }

    @Override
    public String generate(String prefix, int suffixLength) {
        prefix = prefix + new SimpleDateFormat("yyyyMMdd").format(new Date());
        String rKey = RedisKeyConstant.ORDER_NO_GENERATOR + ":" + prefix;
        //校验key是否存在
        redisUtil.setNX(rKey, 0);
        //获取流水号
        Long number = redisUtil.incr(rKey, 1);
        String format = "%0"+(suffixLength > 0 ? suffixLength : 5) +"d";
        return prefix + String.format(format, number);
    }
}
