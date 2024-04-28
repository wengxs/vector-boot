package com.vector.common.security.util;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONObject;
import com.vector.common.core.constant.SecurityConstant;
import com.vector.common.security.domain.LoginUser;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.util.Objects;

public class SecurityUtils {

    public static HttpServletRequest getRequest() {
        return ((ServletRequestAttributes) Objects.requireNonNull(RequestContextHolder.getRequestAttributes()))
                .getRequest();
    }

    private static JSONObject getTokenInfo() {
        String tokenInfo = getRequest().getHeader(SecurityConstant.TOKEN_INFO);
        System.out.println(tokenInfo);
        return JSON.parseObject(tokenInfo);
    }

    public static LoginUser getLoginUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null) {
            Object principal = authentication.getPrincipal();
            if (principal instanceof LoginUser) {
                return (LoginUser) authentication.getPrincipal();
            }
        }
        return null;
    }

    public static Long getUserId() {
        return Objects.requireNonNull(getLoginUser()).getUserId();
    }

    public static String getUsername() {
        return Objects.requireNonNull(getLoginUser()).getUsername();
    }

    public static String getClientId() {
        return Objects.requireNonNull(getLoginUser()).getClientId();
    }

//    public static List<Long> getRoleIds() {
//        return null;
//    }
}
