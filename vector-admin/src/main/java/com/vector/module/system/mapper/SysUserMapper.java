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

    @Select("select * from sys_user where username=#{username}")
    SysUser selectOneByUsername(String username);

    @Update("update sys_user set password=#{password} where username=#{username}")
    int updatePassword(@Param("username") String username, @Param("password") String password);

    SysUserVo selectVoById(Long id);

    IPage<SysUserVo> selectVoPage(@Param("page") IPage<?> page, @Param("q") SysUserVo query);

//    int insertUserRoles(@Param("userId") Long userId, @Param("roleIds") List<Long> roleIds);
}
