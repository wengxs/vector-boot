package com.vector.module.pms.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.module.pms.mapper.PmsAttrValMapper;
import com.vector.module.pms.pojo.entity.PmsAttrVal;
import com.vector.module.pms.service.PmsAttrValService;
import org.springframework.stereotype.Service;

/**
 * 商品属性值 ServiceImpl
 * @author wengxs
 * @date 2024/06/02
 */
@Service
public class PmsAttrValServiceImpl extends ServiceImpl<PmsAttrValMapper, PmsAttrVal>
        implements PmsAttrValService {
}
