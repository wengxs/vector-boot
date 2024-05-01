package com.vector.module.system.vo;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * 角色视图
 * @author wengxs
 */
@Data
public class SysRoleVo {

    /** 角色ID */
    private Long id;

    /** 创建时间 */
//    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /** 创建人 */
    private String createBy;

    /** 角色名称 */
    private String roleName;

    /** 角色编码 */
    private String roleKey;

    /** 角色描述 */
    private String description;

    /** 菜单权限ID */
    private List<Long> menuIds;

    /** 创建时间：起 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String createBegin;

    /** 创建时间：止 */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String createEnd;
}
