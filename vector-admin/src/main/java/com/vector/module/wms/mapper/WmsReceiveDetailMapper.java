package com.vector.module.wms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.vector.module.wms.pojo.entity.WmsReceiveDetail;
import com.vector.module.wms.pojo.vo.WmsReceiveVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface WmsReceiveDetailMapper extends BaseMapper<WmsReceiveDetail> {

    List<WmsReceiveVO.Detail> selectVOByReceiveId(Long receiveId);
}
