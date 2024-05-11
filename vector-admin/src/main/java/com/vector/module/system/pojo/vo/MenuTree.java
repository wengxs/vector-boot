package com.vector.module.system.pojo.vo;

import lombok.Data;

import java.util.List;

/**
 * @author wengxs
 */
@Data
public class MenuTree {

    /** 菜单ID */
    private Long id;

    /** 菜单名称 */
    private String menuName;

    /** 子菜单 */
    private List<MenuTree> children;
}
