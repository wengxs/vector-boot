package com.vector.module.pms.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.module.pms.mapper.PmsSkuMapper;
import com.vector.module.pms.pojo.entity.PmsSku;
import com.vector.module.pms.service.PmsSkuService;
import org.springframework.stereotype.Service;

/**
 * SKU ServiceImpl
 * @author wengxs
 * @date 2024/06/06
 */
@Service
public class PmsSkuServiceImpl extends ServiceImpl<PmsSkuMapper, PmsSku>
        implements PmsSkuService {
}
