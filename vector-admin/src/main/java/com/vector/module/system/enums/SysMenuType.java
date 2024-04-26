package com.vector.module.system.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 系统菜单类型
 * @author wengxs
 */
@AllArgsConstructor
@Getter
public enum SysMenuType {

    MENU("菜单"),
    BUTTON("按钮");

    private final String desc;

}
