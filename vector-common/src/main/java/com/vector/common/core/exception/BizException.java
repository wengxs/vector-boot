package com.vector.common.core.exception;

import com.vector.common.core.enums.ResultCode;
import com.vector.common.core.result.IResultCode;
import lombok.Getter;

@Getter
public class BizException extends RuntimeException {

    private IResultCode resultCode = ResultCode.FAILURE;

    public BizException(IResultCode resultCode) {
        super(resultCode.getMessage());
        this.resultCode = resultCode;
    }

    public BizException(String message) {
        super(message);
    }

    public BizException(String message, Throwable cause){
        super(message, cause);
    }

    public BizException(Throwable cause){
        super(cause);
    }

}
