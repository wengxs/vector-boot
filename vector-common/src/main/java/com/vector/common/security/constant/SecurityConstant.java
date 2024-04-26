package com.vector.common.security.constant;

public interface SecurityConstant {

    String LOGIN_USER_KEY = "login_user_key";

    String LOGIN_USER_KEY_PREFIX = "login_user_keys:";

    String TOKEN_HEADER = "Authorization";

    String TOKEN_PREFIX = "Bearer ";

    String BASIC_PREFIX = "Basic ";

    long TOKEN_EXPIRE_IN = 3600L;

    String TOKEN_SECRET = "b0d51c58c8b9c1f458fadf16c7d375630ef51da4df81915893b05c0fa4ed8bc6";

    String TOKEN_INFO = "TokenInfo";

    String TOKEN_USERNAME = "user_name";

    String TOKEN_INFO_USER_ID = "user_id";

    String TOKEN_INFO_CLIENT_ID = "client_id";


    /** JWT存储权限前缀 */
    String AUTHORITY_PREFIX = "ROLE_";

    /** JWT存储权限属性 */
    String JWT_AUTHORITIES_KEY = "authorities";

    long MINUTES_TEN = 600L;

    long HOURS_ONE = 3600L;

    Long ADMIN_ID = 1L;

    String ADMIN_PERMISSIONS = "*:*:*";

    String ADMIN_ROLES = "ROLE_*";
}