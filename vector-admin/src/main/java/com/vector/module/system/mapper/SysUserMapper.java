package com.vector.module.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.module.system.entity.SysUser;
import com.vector.module.system.vo.SysUserVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * @author wengxs
 */
@Mapper
public interface SysUserMapper extends BaseMapper<SysUser> {

    SysUserVo selectVoById(Long id);

    IPage<SysUserVo> selectVoPage(@Param("page") IPage<?> page, @Param("q") SysUserVo query);

    @Select("select * from sys_user where username=#{username}")
    SysUser selectOneByUsername(String username);

    @Update("update sys_user set password=#{password} where username=#{username}")
    int updatePassword(@Param("username") String username, @Param("password") String password);

    @Select("select role_id from sys_user_role where user_id=#{userId}")
    List<Long> selectIdsByUserId(Long userId);

//    int insertUserRoles(@Param("userId") Long userId, @Param("roleIds") List<Long> roleIds);
}
