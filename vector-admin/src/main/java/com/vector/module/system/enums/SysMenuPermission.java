package com.vector.module.system.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 菜单权限
 * @author wengxs
 * @date 2024/5/1
 */
@AllArgsConstructor
@Getter
public enum SysMenuPermission {

    QUERY("查询"),
    ADD("新增"),
    EDIT("修改"),
    DEL("删除"),
    EXPORT("导出"),
    IMPORT("导入");

    private final String desc;
}
