package com.vector.module.wms.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.module.wms.pojo.entity.WmsReceiveDetail;
import com.vector.module.wms.mapper.WmsReceiveDetailMapper;
import com.vector.module.wms.service.WmsReceiveDetailService;
import com.vector.module.wms.pojo.vo.WmsReceiveVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WmsReceiveDetailServiceImpl extends ServiceImpl<WmsReceiveDetailMapper, WmsReceiveDetail>
        implements WmsReceiveDetailService {

    @Override
    public List<WmsReceiveVO.Detail> listVOByReceiveId(Long receiveId) {
        return baseMapper.selectVOByReceiveId(receiveId);
    }
}
