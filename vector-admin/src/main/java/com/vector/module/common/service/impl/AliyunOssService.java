package com.vector.module.common.service.impl;

import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;
import com.aliyun.oss.model.ObjectMetadata;
import com.aliyun.oss.model.PutObjectRequest;
import com.vector.module.common.pojo.OssFile;
import com.vector.module.common.service.OssService;
import jakarta.annotation.PostConstruct;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * vector-boot
 *
 * @author wengxs
 * @date 2024/5/5
 */
@Component
@ConditionalOnProperty(value = "oss.type", havingValue = "aliyun")
@ConfigurationProperties(prefix = "oss.aliyun")
@RequiredArgsConstructor
@Data
@Slf4j
public class AliyunOssService implements OssService {

    /** 服务Endpoint */
    private String endpoint;
    /** 访问凭据 */
    private String accessKey;
    /** 凭据密钥 */
    private String secretKey;
    /** 存储桶名称 */
    private String bucketName;

    private OSS ossClient;

    @PostConstruct
    public void init() {
        ossClient = new OSSClientBuilder().build(endpoint, accessKey, secretKey);
    }

    @Override
    public OssFile uploadFile(MultipartFile file) {
        // 获取文件名
        String fileName = file.getOriginalFilename();
        log.info("fileName: {}", fileName);
        // 获取文件的后缀名
        String suffixName = ".jpg";
        if (fileName != null && fileName.lastIndexOf(".") >= 0)
            suffixName = fileName.substring(fileName.lastIndexOf("."));
        String uuid = UUID.randomUUID().toString();
        fileName = new SimpleDateFormat("yyyyMMdd/").format(new Date()) + uuid + suffixName;
        //  try-with-resource 语法糖自动释放流
        try (InputStream inputStream = file.getInputStream()) {
            // 设置上传文件的元信息，例如Content-Type
            ObjectMetadata metadata = new ObjectMetadata();
            metadata.setContentType(file.getContentType());
            // 创建PutObjectRequest对象，指定Bucket名称、对象名称和输入流
            PutObjectRequest putObjectRequest = new PutObjectRequest(bucketName, fileName, inputStream, metadata);
            // 上传文件
            ossClient.putObject(putObjectRequest);
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            throw new RuntimeException("文件上传失败");
        }
        // 获取文件访问路径
        String fileUrl = "https://" + bucketName + "." + endpoint + "/" + fileName;
        return new OssFile(fileName, fileUrl);
    }

    @Override
    public boolean removeFile(String filePath) {
        String fileHost = "https://" + bucketName + "." + endpoint; // 文件主机域名
        String fileName = filePath.substring(fileHost.length() + 1); // +1 是/占一个字符，截断左闭右开
        ossClient.deleteObject(bucketName, fileName);
        return true;
    }
}
