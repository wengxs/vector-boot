package com.vector.module.system.pojo.dto;

import com.vector.module.system.enums.SysMenuPermission;
import com.vector.module.system.enums.SysMenuType;
import lombok.Data;

import java.util.List;

/**
 * vector-boot
 *
 * @author wengxs
 * @date 2024/5/1
 */
@Data
public class SysMenuDTO {

    /** 菜单ID */
    private Long id;

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

    /** 隐藏菜单 */
    private Boolean hidden;

    /** 子权限 */
    private List<SysMenuPermission> subPermissions;
}
