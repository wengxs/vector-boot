package com.vector.common.web.handler;

import com.vector.common.core.exception.BizException;
import com.vector.common.core.result.R;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.validation.BindException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * 全局异常处理器
 */
@RestControllerAdvice
@Slf4j
public class GlobalExceptionHandler {

    /**
     * 业务异常
     */
    @ExceptionHandler(BizException.class)
    public R<?> bizException(BizException e) {
        log.error(e.getMessage(), e);
        return R.fail(e.getResultCode().getCode(), e.getMessage());
    }

/*    @ExceptionHandler(FlowException.class)
    public R<?> flowException(FlowException e) {
        log.error(e.getMessage(), e);
        return R.fail(HttpStatus.BAD_REQUEST.value(), "限流");
    }*/

    /**
     * 自定义验证异常
     */
    @ExceptionHandler(BindException.class)
    public R<?> validatedBindException(BindException e) {
        log.error(e.getMessage(), e);
        String message = e.getAllErrors().get(0).getDefaultMessage();
        return R.fail(HttpStatus.BAD_REQUEST.value(), message);
    }

    /**
     * 业务异常
     */
    @ExceptionHandler(RuntimeException.class)
    public R<?> runtimeException(RuntimeException e) {
        log.error(e.getMessage(), e);
        if (e instanceof AccessDeniedException) {
            throw e;
        }
        return R.fail(HttpStatus.INTERNAL_SERVER_ERROR.value(), e.getMessage());
    }

    @ExceptionHandler(Exception.class)
    public R<?> exception(Exception e) {
        log.error(e.getMessage(), e);
        return R.fail(HttpStatus.INTERNAL_SERVER_ERROR.value(), e.getMessage());
    }

    @ExceptionHandler(Throwable.class)
    public R<?> exception(Throwable throwable) {
        log.error("系统异常", throwable);
        return R.fail(HttpStatus.INTERNAL_SERVER_ERROR.value(), "操作失败");
    }
}
