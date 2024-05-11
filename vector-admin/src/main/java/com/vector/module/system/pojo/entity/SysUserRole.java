package com.vector.module.system.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 用户角色
 * @author wengxs
 */
@Data
@TableName("sys_user_role")
@NoArgsConstructor
@AllArgsConstructor
public class SysUserRole {

    private Long userId;

    private Long roleId;

}
