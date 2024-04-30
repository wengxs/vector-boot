package com.vector.common.core.constant;

/**
 * Created by Zorg
 * 2020/5/23 20:53
 */
public interface SecurityConstant {

    String LOGIN_USER_KEY = "login_user_key";

    String LOGIN_USER_KEY_PREFIX = "login_user_keys:";

    String TOKEN_HEADER = "Authorization";

    String TOKEN_PREFIX = "Bearer ";

    String BASIC_PREFIX = "Basic ";

    String TOKEN_SECRET = "vector";

    String TOKEN_INFO = "TokenInfo";

    String TOKEN_USERNAME = "user_name";

    String TOKEN_INFO_USER_ID = "user_id";

    String TOKEN_INFO_CLIENT_ID = "client_id";


    /** JWT存储权限前缀 */
    String ROLE_PREFIX = "ROLE_";

    /** JWT存储权限属性 */
    String JWT_AUTHORITIES_KEY = "authorities";

    long MINUTES_TEN = 10 * 60 * 1000;

    Long ADMIN_ID = 1L;

    String ADMIN_PERMISSIONS = "*:*:*";

    String ADMIN_ROLES = "ROLE_*";

    String DEFAULT_PASSWORD = "123456";
}
