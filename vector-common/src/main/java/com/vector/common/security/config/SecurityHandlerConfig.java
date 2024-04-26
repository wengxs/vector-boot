package com.vector.common.security.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.vector.common.core.result.R;
import com.vector.common.security.constant.SecurityConstant;
import com.vector.common.security.domain.LoginUser;
import com.vector.common.security.service.TokenService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.*;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

/**
 * Security认证处理器
 * <p>
 * Created by Zorg
 * 2020/5/23 17:05
 */
@Configuration
@Slf4j
public class SecurityHandlerConfig {

    @Autowired
    private ObjectMapper objectMapper;
    @Autowired
    private TokenService tokenService;

    /**
     * 登录成功
     */
    @Bean
    public AuthenticationSuccessHandler loginSuccessHandler() {
        return (request, response, authentication) -> {
            log.info("登录成功");
            log.info("onAuthenticationSuccess().authentication={}", objectMapper.writeValueAsString(authentication));
            log.info("onAuthenticationSuccess().getPrincipal={}", objectMapper.writeValueAsString(authentication.getPrincipal()));
            // TODO 保存用户登录信息
            LoginUser loginUser = (LoginUser) authentication.getPrincipal();
            response.setContentType("application/json;charset=UTF-8");
            response.getWriter().write(objectMapper.writeValueAsString(R.ok(tokenService.createToken(loginUser))));
        };
    }

    /**
     * 登录失败
     */
    @Bean
    public AuthenticationFailureHandler loginFailureHandler() {
        return (request, response, exception) -> {
            log.info("登录失败");
//                response.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
            response.setContentType("application/json;charset=UTF-8");
            if (exception instanceof BadCredentialsException || exception instanceof UsernameNotFoundException) {
                log.error("用户不存在：{}", exception.getMessage());
                response.getWriter().write(objectMapper.writeValueAsString(R.fail("用户名或密码有误")));
            } else if (exception instanceof LockedException) {
                log.error("账号已锁定：{}", exception.getMessage());
                response.getWriter().write(objectMapper.writeValueAsString(R.fail("账号已锁定")));
            } else if (exception instanceof CredentialsExpiredException) {
                log.error("证书过期：{}", exception.getMessage());
                response.getWriter().write(objectMapper.writeValueAsString(R.fail("证书过期")));
            } else if (exception instanceof AccountExpiredException) {
                log.error("账号已过期：{}", exception.getMessage());
                response.getWriter().write(objectMapper.writeValueAsString(R.fail("账号已过期")));
            } else if (exception instanceof DisabledException) {
                log.error("账号已禁用：{}", exception.getMessage());
                response.getWriter().write(objectMapper.writeValueAsString(R.fail("账号已禁用")));
            } else {
                log.error("登录失败：{}", exception.getMessage());
                response.getWriter().write(objectMapper.writeValueAsString(R.fail("登录失败")));
            }
        };
    }

    /**
     * 退出登录
     */
    @Bean
    public LogoutSuccessHandler logoutSuccessHandler() {
        return (request, response, authentication) -> {
            String authHeader = request.getHeader(SecurityConstant.TOKEN_HEADER);
            if (authHeader != null && authHeader.startsWith(SecurityConstant.TOKEN_PREFIX)) {
                String authToken = authHeader.substring(SecurityConstant.TOKEN_PREFIX.length());
                tokenService.deleteToken(authToken);
            }
            log.info("用户退出登录成功");
            SecurityContextHolder.clearContext();
            response.setContentType("application/json;charset=UTF-8");
            response.getWriter().write(objectMapper.writeValueAsString(R.ok()));
        };
    }

    /**
     * 未登录
     */
    @Bean
    public AuthenticationEntryPoint authenticationEntryPoint() {
        return (request, response, authException) -> {
            log.info("未登录：{}", authException.getMessage());
            response.setStatus(HttpStatus.OK.value());
            response.setContentType("application/json;charset=UTF-8");
            response.getWriter().write(objectMapper.writeValueAsString(
                    R.fail(HttpStatus.UNAUTHORIZED.value(), "未登录")
            ));
        };
    }

    @Bean
    public AccessDeniedHandler accessDeniedHandler() {
        return (request, response, accessDeniedException) -> {
            log.info("没有权限访问：{}", accessDeniedException.getMessage());
            response.setStatus(HttpStatus.OK.value());
            response.setContentType("application/json;charset=UTF-8");
            response.getWriter().write(objectMapper.writeValueAsString(
                    R.fail(HttpStatus.FORBIDDEN.value(), "没有权限访问")
            ));
        };
    }

}
