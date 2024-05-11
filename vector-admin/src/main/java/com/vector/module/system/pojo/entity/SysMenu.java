package com.vector.module.system.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.vector.common.core.entity.BaseEntity;
import com.vector.module.system.enums.SysMenuType;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

/**
 * 系统菜单
 * @author wengxs
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("sys_menu")
public class SysMenu extends BaseEntity<Long> {

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

}
