package com.vector.module.system.pojo.dto;

import lombok.Data;

/**
 * @author wengxs
 * @date 2024/5/12
 */
@Data
public class SysCurrentDTO {

    /** 手机号码 */
    private String mobile;

    /** 头像 */
    private String avatar;

    /** 旧密码 */
    private String oldPassword;

    /** 新密码 */
    private String newPassword;
}
