package com.vector.module.pms.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.module.pms.mapper.PmsAttrMapper;
import com.vector.module.pms.pojo.entity.PmsAttr;
import com.vector.module.pms.service.PmsAttrService;
import org.springframework.stereotype.Service;

/**
 * 商品属性 ServiceImpl
 * @author wengxs
 * @date 2024/06/02
 */
@Service
public class PmsAttrServiceImpl extends ServiceImpl<PmsAttrMapper, PmsAttr>
        implements PmsAttrService {
}
