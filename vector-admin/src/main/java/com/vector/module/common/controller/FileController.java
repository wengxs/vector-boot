package com.vector.module.common.controller;

import com.vector.common.core.result.R;
import com.vector.module.common.pojo.OssFile;
import com.vector.module.common.service.OssService;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

/**
 * 文件服务
 * @author wengxs
 * @date 2024/5/5
 */
@RestController
@RequestMapping("/third/file")
public class FileController {

    @Autowired
    private OssService ossService;

    @PostMapping()
    public R<OssFile> uploadFile(@RequestParam(value = "file") MultipartFile file) {
        return R.ok(ossService.uploadFile(file));
    }

    @DeleteMapping
    @SneakyThrows
    public R<?> deleteFile(@RequestParam String filePath) {
        ossService.removeFile(filePath);
        return R.ok();
    }
}
