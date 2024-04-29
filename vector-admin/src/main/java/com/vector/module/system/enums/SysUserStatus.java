package com.vector.module.system.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 用户状态
 *
 * @author wengxs
 * @date 2024/4/29
 */
@AllArgsConstructor
@Getter
public enum SysUserStatus {

    DISABLED("禁用"),
    ENABLED("启用");

    private final String desc;
}
