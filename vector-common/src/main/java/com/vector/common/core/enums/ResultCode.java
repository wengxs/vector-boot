package com.vector.common.core.enums;

import com.vector.common.core.result.IResultCode;

import java.io.Serializable;

/**
 * 错误码
 * @author Zorg
 * @date 2022/3/24
 */
public enum ResultCode implements IResultCode, Serializable {

    // 错误码
    SUCCESS(200, "操作成功"),
    FAILURE(500, "操作失败");

    private final int code;
    private final String message;

    ResultCode(int code, String message) {
        this.code = code;
        this.message = message;
    }

    @Override
    public int getCode() {
        return code;
    }

    @Override
    public String getMessage() {
        return message;
    }

    /**
     * 获取
     */
    public static ResultCode get(Integer code) {
        for (ResultCode value : values()) {
            if (value.code == code) {
                return value;
            }
        }
        throw new IndexOutOfBoundsException("未知枚举值：" + code);
    }
}
