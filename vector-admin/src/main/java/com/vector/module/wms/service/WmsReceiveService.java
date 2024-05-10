package com.vector.module.wms.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.wms.entity.WmsReceive;
import com.vector.module.wms.dto.WmsCheckDto;
import com.vector.module.wms.dto.WmsReceiveDto;
import com.vector.module.wms.vo.WmsReceiveVo;

public interface WmsReceiveService extends IService<WmsReceive> {

    WmsReceiveVo getVoById(Long id);

    IPage<WmsReceiveVo> pageVo(IPage<?> page, WmsReceiveVo query);

    /**
     * 生成收货单
     * @param receiveForm
     */
    void create(WmsReceiveDto receiveForm);

    /**
     * 收货单签收
     * @param id
     */
    void sign(Long id);

    /**
     * 收货验收
     * @param checkForm
     */
    void check(WmsCheckDto checkForm);
}
