package com.vector.module.wms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.module.wms.entity.WmsProductStock;
import com.vector.module.wms.vo.WmsProductStockVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface WmsProductStockMapper extends BaseMapper<WmsProductStock> {

    WmsProductStockVo selectVoById(Long id);

    IPage<WmsProductStockVo> selectVoPage(@Param("page") IPage<?> page, @Param("q") WmsProductStockVo query);

    @Update("update wms_product_stock set usable_stock=usable_stock-#{qty}, locked_stock=locked_stock+#{qty} " +
            "where product_id=#{productId} and usable_stock>=#{qty} ")
    int lock(@Param("productId") Long productId, @Param("qty") Integer qty);

    @Update("update wms_product_stock set usable_stock=usable_stock+#{qty}, locked_stock=locked_stock-#{qty} " +
            "where product_id=#{productId} and locked_stock>=#{qty} ")
    int unlock(@Param("productId") Long productId, @Param("qty") Integer qty);
}
