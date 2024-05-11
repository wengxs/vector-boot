package com.vector.module.system.pojo.vo;

import com.vector.module.system.enums.SysMenuType;
import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * 菜单视图
 * @author wengxs
 */
@Data
public class SysMenuVO {

    /** 菜单ID */
    private Long id;

    /** 创建时间 */
    private Date createTime;

    /** 创建人 */
    private Long createBy;

    /** 菜单名称 */
    private String menuName;

    /** 父级id */
    private Long parentId;

    /** 路径 */
    private String path;

    /** 组件 */
    private String component;

    /** 类型 */
    private SysMenuType type;

    /** 权限 */
    private String permission;

    /** 图标 */
    private String icon;

    /** 排序 */
    private Integer sort;

    /** 子菜单 */
    private List<SysMenuVO> children;
}
