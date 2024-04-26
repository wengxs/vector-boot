package com.vector.common.redis.aspect;

import com.vector.common.redis.annotation.ResourceLock;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.redisson.api.RLock;
import org.redisson.api.RedissonClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.DefaultParameterNameDiscoverer;
import org.springframework.core.ParameterNameDiscoverer;
import org.springframework.expression.EvaluationContext;
import org.springframework.expression.Expression;
import org.springframework.expression.ExpressionParser;
import org.springframework.expression.spel.standard.SpelExpressionParser;
import org.springframework.expression.spel.support.StandardEvaluationContext;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;

@Aspect
@Component
@Slf4j
public class ResourceLockAspect {

    @Autowired
    private RedissonClient redissonClient;
    private final ExpressionParser expressionParser = new SpelExpressionParser();
    private final ParameterNameDiscoverer parameterNameDiscoverer = new DefaultParameterNameDiscoverer();

    @Pointcut("@annotation(com.vector.common.redis.annotation.ResourceLock)")
    public void pointCut() {
    }

    @Around("pointCut()")
    public Object around(ProceedingJoinPoint joinPoint) throws Throwable {
        Method method = getMethod(joinPoint);
        ResourceLock resourceLock = method.getAnnotation(ResourceLock.class);
        // 获取锁标识
        String key = resourceLock.nameKey();
//        System.out.println(key.matches("^#.*.$"));// 表达式判断
        if (key.matches("^#.*.$") && method.getParameterCount() > 0) {
            String keyExpression = resourceLock.nameKey();
            Expression expression = expressionParser.parseExpression(keyExpression);
            String[] params = parameterNameDiscoverer.getParameterNames(method);
            Object[] args = joinPoint.getArgs();
            EvaluationContext context = new StandardEvaluationContext();
            for (int i = 0; i < (params != null ? params.length : 0); i++) {
                context.setVariable(params[i], args[i]);
            }
            key = expression.getValue(context, String.class);
        }
        // 加锁操作
        RLock lock = redissonClient.getLock(resourceLock.namePrefix() + key);
        if (resourceLock.tryLock()) {
            lock.tryLock(resourceLock.tryTime(), resourceLock.leaseTime(), resourceLock.unit());
        } else {
            lock.lock(resourceLock.leaseTime(), resourceLock.unit());
        }
        try {
            return joinPoint.proceed();
        } finally {
            lock.unlock();
        }
    }

    private Method getMethod(JoinPoint joinPoint) {
        Signature signature = joinPoint.getSignature();
        MethodSignature methodSignature = (MethodSignature) signature;
        Method agentMethod = methodSignature.getMethod();
//        return joinPoint.getTarget().getClass().getMethod(agentMethod.getName(), agentMethod.getParameterTypes());
        return methodSignature.getMethod();
    }
}
