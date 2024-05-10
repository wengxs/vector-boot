package com.vector.module.wms.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.wms.dto.WmsReceiveDto;
import com.vector.module.wms.entity.WmsReceiveDetail;
import com.vector.module.wms.vo.WmsReceiveVo;

import java.util.List;

public interface WmsReceiveDetailService extends IService<WmsReceiveDetail> {

    List<WmsReceiveVo.Detail> listVoByReceiveId(Long receiveId);
}
