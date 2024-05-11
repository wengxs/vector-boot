package com.vector.module.wms.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.wms.pojo.entity.WmsReceive;
import com.vector.module.wms.pojo.dto.WmsCheckDTO;
import com.vector.module.wms.pojo.dto.WmsReceiveDTO;
import com.vector.module.wms.pojo.query.WmsReceiveQuery;
import com.vector.module.wms.pojo.vo.WmsReceiveVO;

public interface WmsReceiveService extends IService<WmsReceive> {

    WmsReceiveVO getVOById(Long id);

    IPage<WmsReceiveVO> pageVO(IPage<?> page, WmsReceiveQuery query);

    /**
     * 生成收货单
     * @param receiveForm
     */
    void create(WmsReceiveDTO receiveForm);

    /**
     * 收货单签收
     * @param id
     */
    void sign(Long id);

    /**
     * 收货验收
     * @param checkForm
     */
    void check(WmsCheckDTO checkForm);
}
