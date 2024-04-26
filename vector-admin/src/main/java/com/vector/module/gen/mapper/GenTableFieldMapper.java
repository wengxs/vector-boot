package com.vector.module.gen.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.vector.module.gen.entity.GenTableField;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author wengxs
 */
@Mapper
public interface GenTableFieldMapper extends BaseMapper<GenTableField> {

    @Select("select column_name `name`, column_type `type`, column_comment `comment`, ordinal_position sort, " +
            "(case when (is_nullable = 'no' and column_key != 'PRI') then 1 else 0 end) isRequired, " +
            "(case when column_key = 'PRI' then 1 else 0 end) isPk, " +
            "(case when extra = 'auto_increment' then 1 else 0 end) isIncrement " +
            "from information_schema.columns where table_schema = #{dbName} and table_name = #{tableName} " +
            "order by ordinal_position")
    List<GenTableField> selectFromInformationSchema(@Param("dbName") String dbName, @Param("tableName") String tableName);

}
