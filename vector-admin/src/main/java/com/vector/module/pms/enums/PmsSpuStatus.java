package com.vector.module.pms.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * vector-boot
 *
 * @author wengxs
 * @date 2024/5/4
 */
@AllArgsConstructor
@Getter
public enum PmsSpuStatus {

    DRAFT("草稿"),
    APPROVING("审核中"),
    APPROVED("审核通过"),
    REJECTED("审核驳回"),
    ON_SALE("售卖中"),
    OFF_SALE("已下架");

    private final String desc;
}
