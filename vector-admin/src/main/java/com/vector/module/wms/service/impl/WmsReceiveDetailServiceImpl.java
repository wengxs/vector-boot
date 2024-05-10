package com.vector.module.wms.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.module.wms.entity.WmsReceiveDetail;
import com.vector.module.wms.mapper.WmsReceiveDetailMapper;
import com.vector.module.wms.service.WmsReceiveDetailService;
import com.vector.module.wms.vo.WmsReceiveVo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WmsReceiveDetailServiceImpl extends ServiceImpl<WmsReceiveDetailMapper, WmsReceiveDetail>
        implements WmsReceiveDetailService {

    @Override
    public List<WmsReceiveVo.Detail> listVoByReceiveId(Long receiveId) {
        return baseMapper.selectVoByReceiveId(receiveId);
    }
}
