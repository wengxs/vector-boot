package com.vector.module.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.common.mybatis.annotation.DataPermission;
import com.vector.module.system.pojo.entity.SysUser;
import com.vector.module.system.pojo.query.SysUserQuery;
import com.vector.module.system.pojo.vo.SysUserVO;
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

    SysUserVO selectVOById(Long id);

    @DataPermission(deptAlias = "p")
    IPage<SysUserVO> selectVOPage(@Param("page") IPage<?> page, @Param("q") SysUserQuery query);

    @Select("select * from sys_user where username=#{username}")
    SysUser selectOneByUsername(String username);

    @Update("update sys_user set password=#{password} where username=#{username}")
    int updatePassword(@Param("username") String username, @Param("password") String password);

    @Select("select role_id from sys_user_role where user_id=#{userId}")
    List<Long> selectIdsByUserId(Long userId);
}
