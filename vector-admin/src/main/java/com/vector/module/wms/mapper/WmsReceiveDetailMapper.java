package com.vector.module.wms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.vector.module.wms.entity.WmsReceiveDetail;
import com.vector.module.wms.vo.WmsReceiveVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface WmsReceiveDetailMapper extends BaseMapper<WmsReceiveDetail> {

    List<WmsReceiveVo.Detail> selectVoByReceiveId(Long receiveId);
}
