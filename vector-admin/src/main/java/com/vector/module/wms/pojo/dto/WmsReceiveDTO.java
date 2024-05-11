package com.vector.module.wms.pojo.dto;

import com.vector.module.wms.enums.BizType;
import lombok.Data;

import java.util.List;

/**
 * 收货单表单
 */
@Data
public class WmsReceiveDTO {

    /** 业务类型 */
    private BizType bizType;

    /** 业务单号 */
    private String bizNo;

    /** 收货明细 */
    private List<Detail> details;

    @Data
    public static class Detail {

        /** 产品ID */
        private Long productId;

        /** 应收数量 */
        private Integer qty;
    }

}
