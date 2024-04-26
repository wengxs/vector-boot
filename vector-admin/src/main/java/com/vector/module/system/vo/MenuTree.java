package com.vector.module.system.vo;

import lombok.Data;

import java.util.List;

/**
 * @author wengxs
 */
@Data
public class MenuTree {

    private Long id;

    private String name;

    private List<MenuTree> children;

}
