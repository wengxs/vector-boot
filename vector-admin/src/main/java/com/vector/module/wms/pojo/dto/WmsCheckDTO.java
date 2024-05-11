package com.vector.module.wms.pojo.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * 收货验收表单
 */
@Data
public class WmsCheckDTO {

    /** 收货单ID */
    private Long id;

    /** 收货单号 */
    private String receiveNo;

    /** 验收明细 */
    private List<Detail> details;

    @Data
    public static class Detail {

        /** 产品ID */
        private Long productId;

        /** 产品批号 */
        private String lotNo;

        /** 生产日期 */
        @JsonFormat(pattern="yyyy-MM-dd")
        private Date prodDate;

        /** 有效日期 */
        @JsonFormat(pattern="yyyy-MM-dd")
        private Date expiredDate;

        /** 合格数量 */
        private Integer qualifiedQty;

        /** 不合格数量 */
        private Integer unqualifiedQty;
    }


}
