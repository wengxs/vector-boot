package com.vector.common.security.filter;

import com.vector.common.security.constant.SecurityConstant;
import com.vector.common.security.domain.LoginUser;
import com.vector.common.security.service.TokenService;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * 认证过滤器
 */
@Slf4j
@Component
public class AuthenticationFilter extends OncePerRequestFilter {

    private static final long MINUTES_TEN = 10 * 60 * 1000;
    private static final Set<String> WHITE_LIST = Stream.of(
            "/register",
            "/login"
    ).collect(Collectors.toSet());

    @Autowired
    private TokenService tokenService;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {
        String authHeader = request.getHeader(SecurityConstant.TOKEN_HEADER);
        // 白名单
        if (WHITE_LIST.contains(request.getServletPath())) {
            filterChain.doFilter(request, response);
            return;
        }
        if (authHeader != null && authHeader.startsWith(SecurityConstant.TOKEN_PREFIX)) {
            String authToken = authHeader.substring(SecurityConstant.TOKEN_PREFIX.length());
            LoginUser loginUser = tokenService.getLoginUser(authToken);
            if (loginUser != null) {
                checkLoginUser(loginUser);
                UsernamePasswordAuthenticationToken token =
                        new UsernamePasswordAuthenticationToken(loginUser, null, loginUser.getAuthorities());
                token.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
                SecurityContextHolder.getContext().setAuthentication(token);
            }
        }
        filterChain.doFilter(request, response);
    }

    private void checkLoginUser(LoginUser loginUser) {
        long expireTime = loginUser.getExpireTime();
        long currentTime = System.currentTimeMillis();
        if (expireTime - currentTime < MINUTES_TEN) {
            tokenService.refreshToken(loginUser);
        }
    }

}
