package com.vector.module.wms.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.module.wms.pojo.entity.WmsProductLot;
import com.vector.module.wms.mapper.WmsProductLotMapper;
import com.vector.module.wms.service.WmsProductLotService;
import org.springframework.stereotype.Service;

@Service
public class WmsProductLotServiceImpl extends ServiceImpl<WmsProductLotMapper, WmsProductLot>
        implements WmsProductLotService {

}
