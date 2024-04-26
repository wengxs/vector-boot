package com.vector.common.security.util;

import com.vector.common.security.constant.SecurityConstant;
import com.vector.common.security.domain.LoginUser;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class JwtUtils {

    /**
     * 创建 Json Web Token
     * @param loginUser
     * @return
     */
    public static String create(LoginUser loginUser) {
        Map<String, Object> claims = new HashMap<>();
        claims.put(SecurityConstant.LOGIN_USER_KEY, loginUser.getToken());
        claims.put(SecurityConstant.TOKEN_INFO_CLIENT_ID, loginUser.getClientId());
        claims.put(SecurityConstant.TOKEN_INFO_USER_ID, loginUser.getUserId());
        return Jwts.builder()
                .claims(claims)
                .subject(loginUser.getUsername())
                .issuedAt(new Date())
//                .issuer()
                .signWith(Keys.hmacShaKeyFor(Decoders.BASE64.decode(SecurityConstant.TOKEN_SECRET)), Jwts.SIG.HS256)
                .compact();
    }

    /**
     * 获取 Subject
     * @param jwt
     * @return
     */
    public static String subject(String jwt) {
        return claims(jwt).getSubject();
    }

    /**
     * 获取 UUID
     * @param token
     * @return
     */
    public static String key(String token) {
        return claims(token).get(SecurityConstant.LOGIN_USER_KEY, String.class);
    }

    private static Claims claims(String jwt) {
        return Jwts.parser()
                .verifyWith(Keys.hmacShaKeyFor(Decoders.BASE64.decode(SecurityConstant.TOKEN_SECRET)))
                .build()
                .parseSignedClaims(jwt)
                .getPayload();
    }
}
