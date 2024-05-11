package com.vector.module.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.module.system.pojo.entity.SysRole;
import com.vector.module.system.pojo.query.SysRoleQuery;
import com.vector.module.system.pojo.vo.SysRoleVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author wengxs
 */
@Mapper
public interface SysRoleMapper extends BaseMapper<SysRole> {

    SysRoleVO selectVOById(Long id);

    IPage<SysRoleVO> selectVOPage(@Param("page") IPage<?> page, @Param("q") SysRoleQuery query);

    @Select("SELECT DISTINCT a.* FROM sys_role a LEFT JOIN sys_user_role b ON b.role_id=a.id WHERE b.user_id=#{userId}")
    List<SysRole> selectAllByUserId(Long userId);

    @Select("select * from sys_role where role_name=#{roleName}")
    SysRole selectOneByRoleName(String roleName);
}
