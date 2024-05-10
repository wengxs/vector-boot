package com.vector.module.wms.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.module.wms.entity.WmsProductBatch;
import com.vector.module.wms.mapper.WmsProductBatchMapper;
import com.vector.module.wms.service.WmsProductBatchService;
import org.springframework.stereotype.Service;

@Service
public class WmsProductBatchServiceImpl extends ServiceImpl<WmsProductBatchMapper, WmsProductBatch>
        implements WmsProductBatchService {

}
