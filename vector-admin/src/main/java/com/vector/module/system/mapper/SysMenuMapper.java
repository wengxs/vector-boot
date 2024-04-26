package com.vector.module.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.vector.module.system.entity.SysMenu;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author wengxs
 */
@Mapper
public interface SysMenuMapper extends BaseMapper<SysMenu> {

    @Select("SELECT DISTINCT m.* FROM sys_menu m " +
            "INNER JOIN sys_role_menu rm ON m.id = rm.menu_id " +
            "INNER JOIN sys_user_role ur ON ur.role_id = rm.role_id " +
            "WHERE ur.user_id = #{userId} ORDER BY m.sort")
    List<SysMenu> selectAllByUserId(@Param("userId") Long userId);

    @Select("SELECT m.id, m.parent_id FROM sys_menu m " +
            "LEFT JOIN sys_role_menu rm ON m.id = rm.menu_id " +
            "WHERE rm.role_id = #{roleId} " +
            "AND m.id NOT IN (" +
            "SELECT m.parent_id FROM sys_menu m " +
            "INNER JOIN sys_role_menu rm ON m.id = rm.menu_id AND rm.role_id = #{roleId})")
    List<Long> selectIdsByRoleId(@Param("roleId") Long roleId);

    @Select("SELECT DISTINCT m.* FROM sys_menu m " +
            "INNER JOIN sys_role_menu rm ON m.id = rm.menu_id " +
            "WHERE rm.role_id = #{roleId} ORDER BY m.sort")
    List<SysMenu> selectAllByRoleId(@Param("roleId") Long roleId);
}
