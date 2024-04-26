package com.vector.common.core.result;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.vector.common.core.enums.ResultCode;

import java.io.Serializable;
import java.util.List;

/**
 * @author Zorg
 * @date 2022/3/24
 */
public class R<T> implements Serializable {

    public static final ResultCode SUCCESS = ResultCode.SUCCESS;

    public static final ResultCode FAIL = ResultCode.FAILURE;

    private int code = SUCCESS.getCode();

    private String message = SUCCESS.getMessage();

    private T data;

    public R() {
    }

    public R(int code, String massage, T data) {
        this.code = code;
        this.message = massage;
        this.data = data;
    }

    public static <T> R<T> ok() {
        return ok(null);
    }

    public static <T> R<T> ok(T data) {
        R<T> r = new R<>();
        r.data = data;
        return r;
    }

    public static <T> R<T> result(IResultCode resultCode) {
        return new R<>(resultCode.getCode(), resultCode.getMessage(), null);
    }

    public static <T> R<T> fail(int code, String massage) {
        return new R<>(code, massage, null);
    }

    public static <T> R<T> fail(String massage) {
        return fail(FAIL.getCode(), massage);
    }

    public static <T> R<T> fail(Throwable e) {
        return fail(e.getMessage());
    }

    public static R<PageResult> page(List<?> list, long total) {
        PageResult page = new PageResult(list, total);
        return ok(page);
    }

    @JsonIgnore
    public boolean isOk() {
        return SUCCESS.getCode() == this.code;
    }

    public int getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }

    public T getData() {
        return data;
    }
}
