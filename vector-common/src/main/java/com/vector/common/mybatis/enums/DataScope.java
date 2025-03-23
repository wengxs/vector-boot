package com.vector.common.mybatis.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public enum DataScope {

    ALL("全部数据"),
    DEPT_AND_CHILD("部门及子部门数据"),
    DEPT("本部门数据"),
    SELF("本人数据");

    private final String desc;
}
