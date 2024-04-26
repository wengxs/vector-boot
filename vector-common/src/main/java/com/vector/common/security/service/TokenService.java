package com.vector.common.security.service;

import com.vector.common.security.constant.SecurityConstant;
import com.vector.common.security.domain.LoginUser;
import com.vector.common.security.util.JwtUtils;
import io.jsonwebtoken.JwtException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.UUID;
import java.util.concurrent.TimeUnit;

@Service
@Slf4j
public class TokenService {

    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    public String createToken(LoginUser loginUser) {
        String token = UUID.randomUUID().toString();
        loginUser.setToken(token);
        refreshToken(loginUser);
        return JwtUtils.create(loginUser);
    }

    /**
     * 刷新token
     * @param loginUser
     */
    public void refreshToken(LoginUser loginUser) {
        loginUser.setLoginTime(System.currentTimeMillis());
        loginUser.setExpireTime(loginUser.getLoginTime() + SecurityConstant.TOKEN_EXPIRE_IN * 1000L);
        redisTemplate.boundValueOps(SecurityConstant.LOGIN_USER_KEY_PREFIX + loginUser.getToken())
                .set(loginUser, SecurityConstant.TOKEN_EXPIRE_IN, TimeUnit.SECONDS);
    }

    public LoginUser getLoginUser(String token) {
        String uuid = getUUIDToken(token);
        if (uuid != null) {
            return (LoginUser) redisTemplate.boundValueOps(SecurityConstant.LOGIN_USER_KEY_PREFIX + uuid).get();
        }
        return null;
    }

    public void deleteToken(String token) {
        String uuid = getUUIDToken(token);
        redisTemplate.delete(SecurityConstant.LOGIN_USER_KEY_PREFIX + uuid);
    }

    private String getUUIDToken(String token) {
        try {
            return JwtUtils.key(token);
        } catch (JwtException e) {
            log.error(e.getMessage());
            return null;
        }
    }
}
