package com.vector.module.system.pojo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * 前端路由视图
 */
@Data
public class RouterVO {

    private String name;

    private String path;

    private String component;

    private Meta meta;

    private List<RouterVO> children;

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Meta {

        private String title;

        private String icon;

        private Boolean hidden;

        private Boolean keepAlive;
    }

}
