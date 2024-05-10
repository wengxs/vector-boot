package com.vector.module.pms.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.pms.dto.PmsSpuDto;
import com.vector.module.pms.entity.PmsSpu;
import com.vector.module.pms.vo.PmsSpuVo;

/**
 * 商品信息 Service
 * @author wengxs
 * @date 2024/05/05
 */
public interface PmsSpuService extends IService<PmsSpu> {

    PmsSpuVo getVoById(Long id);

    IPage<PmsSpuVo> pageVo(IPage<?> page, PmsSpuVo query);

    void saveSpu(PmsSpuDto spuDto);

    void updateSpu(PmsSpuDto spuDto);

    void removeDraftById(Long id);
}
