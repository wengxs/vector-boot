package com.vector.common.web.util;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONObject;
import com.vector.common.core.constant.SecurityConstant;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.util.List;
import java.util.Objects;

public class SecurityUtils {

    public static HttpServletRequest getRequest() {
        return ((ServletRequestAttributes) Objects.requireNonNull(RequestContextHolder.getRequestAttributes()))
                .getRequest();
    }

    private static JSONObject getTokenInfo() {
        String tokenInfo = getRequest().getHeader(SecurityConstant.TOKEN_INFO);
        return JSON.parseObject(tokenInfo);
    }

    public static Long getUserId() {
        return getTokenInfo().getLong(SecurityConstant.TOKEN_INFO_USER_ID);
    }

    public static String getUsername() {
        return getTokenInfo().getString(SecurityConstant.TOKEN_USERNAME);
    }

    public static Long getClientId() {
        return getTokenInfo().getLong(SecurityConstant.TOKEN_INFO_CLIENT_ID);
    }

    public static List<Long> getRoleIds() {
        return null;
    }
}
