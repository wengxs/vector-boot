package com.vector.module.wms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.vector.module.wms.pojo.entity.WmsProductStock;
import com.vector.module.wms.pojo.query.WmsProductStockQuery;
import com.vector.module.wms.pojo.vo.WmsProductStockVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface WmsProductStockMapper extends BaseMapper<WmsProductStock> {

    WmsProductStockVO selectVOById(Long id);

    IPage<WmsProductStockVO> selectVOPage(@Param("page") IPage<?> page, @Param("q") WmsProductStockQuery query);

    @Update("update wms_product_stock set usable_stock=usable_stock-#{qty}, locked_stock=locked_stock+#{qty} " +
            "where product_id=#{productId} and usable_stock>=#{qty} ")
    int lock(@Param("productId") Long productId, @Param("qty") Integer qty);

    @Update("update wms_product_stock set usable_stock=usable_stock+#{qty}, locked_stock=locked_stock-#{qty} " +
            "where product_id=#{productId} and locked_stock>=#{qty} ")
    int unlock(@Param("productId") Long productId, @Param("qty") Integer qty);
}
