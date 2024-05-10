package com.vector.module.pms.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.module.pms.entity.PmsSpuImage;
import com.vector.module.pms.mapper.PmsSpuImageMapper;
import com.vector.module.pms.service.PmsSpuImageService;
import org.springframework.stereotype.Service;

/**
 * 商品图片 ServiceImpl
 * @author wengxs
 * @date 2024/05/05
 */
@Service
public class PmsSpuImageServiceImpl extends ServiceImpl<PmsSpuImageMapper, PmsSpuImage>
        implements PmsSpuImageService {
}
