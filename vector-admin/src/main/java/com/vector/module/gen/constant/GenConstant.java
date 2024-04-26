package com.vector.module.gen.constant;

/**
 * @author wengxs
 */
public interface GenConstant {

    String JAVA_TYPE_STRING = "String";

    String JAVA_TYPE_INTEGER = "Integer";

    String JAVA_TYPE_LONG = "Long";

    String JAVA_TYPE_DOUBLE = "Double";

    String JAVA_TYPE_BIG_DECIMAL = "BigDecimal";

    String JAVA_TYPE_DATE = "Date";

    String JAVA_TYPE_BOOLEAN = "Boolean";

    String[] FIELD_TYPE_STRING = { "char", "varchar", "nvarchar", "varchar2", "tinytext", "text",
            "mediumtext", "longtext" };

    String[] FIELD_TYPE_TIME = { "datetime", "time", "date", "timestamp" };

    String[] FIELD_TYPE_NUMBER = { "tinyint", "smallint", "mediumint", "int", "number", "integer",
            "bigint", "float", "float", "double", "decimal" };

    String DEFAULT_PACKAGE_PREFIX = "com.vector.";
}
