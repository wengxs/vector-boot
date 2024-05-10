package com.vector.module.wms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.module.wms.entity.WmsReceive;
import com.vector.module.wms.vo.WmsReceiveVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface WmsReceiveMapper extends BaseMapper<WmsReceive> {

    WmsReceiveVo selectVoById(Long id);

    IPage<WmsReceiveVo> selectVoPage(@Param("page") IPage<?> page, @Param("q") WmsReceiveVo query);
}
