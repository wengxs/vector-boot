/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : vector

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 24/02/2025 19:16:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `db_name` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '数据库',
  `tb_name` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '表名',
  `tb_comment` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '表描述',
  `class_name` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '类名',
  `package_name` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '包名',
  `module_name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '模块名',
  `biz_name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '业务名',
  `author` varchar(32) COLLATE utf8mb4_bin DEFAULT '' COMMENT '作者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
BEGIN;
INSERT INTO `gen_table` VALUES (7, '2020-06-15 12:23:07', 1, '2020-06-15 12:23:07', 1, 'vector_system', 'sys_user', '系统用户', 'SysUser', 'com.wengxs.admin', 'sys', 'User', '');
INSERT INTO `gen_table` VALUES (9, '2023-04-15 08:47:39', 1, '2023-04-15 08:47:39', 1, 'vector_pms', 'pms_brand', '品牌表', 'PmsBrand', 'com.vector.module', 'pms', 'Brand', '');
INSERT INTO `gen_table` VALUES (10, '2023-04-17 23:58:46', 1, '2023-04-17 23:58:46', 1, 'vector_pms', 'pms_category', '分类表', 'PmsCategory', 'com.vector.pms', 'pms', 'Category', '');
INSERT INTO `gen_table` VALUES (11, '2023-04-18 01:39:08', 1, '2023-04-18 01:39:08', 1, 'vector_pms', 'pms_spu', '产品表', 'PmsSpu', 'com.vector.pms', 'pms', 'Spu', '');
INSERT INTO `gen_table` VALUES (12, '2023-04-18 03:18:34', 1, '2023-04-18 03:18:34', 1, 'vector_bms', 'bms_shop', '店铺表', 'BmsShop', 'com.vector.bms', 'bms', 'Shop', '');
INSERT INTO `gen_table` VALUES (13, '2023-04-18 03:18:37', 1, '2023-04-18 03:18:37', 1, 'vector_bms', 'bms_staff', '员工表', 'BmsStaff', 'com.vector.bms', 'bms', 'Staff', '');
INSERT INTO `gen_table` VALUES (35, '2024-05-03 22:37:08', 1, '2024-05-03 22:40:51', 1, 'vector', 'pms_category', '商品分类', 'PmsCategory', 'com.vector.module.pms', 'pms', 'Category', 'wengxs');
INSERT INTO `gen_table` VALUES (37, '2024-05-04 18:53:14', 1, '2024-05-04 18:56:15', 1, 'vector', 'pms_product', '产品信息', 'PmsProduct', 'com.vector.module.pms', 'pms', 'Product', 'wengxs');
INSERT INTO `gen_table` VALUES (38, '2024-05-05 00:17:52', 1, '2024-05-05 00:24:30', 1, 'vector', 'pms_spu', '商品信息', 'PmsSpu', 'com.vector.module.pms', 'pms', 'Spu', 'wengxs');
INSERT INTO `gen_table` VALUES (39, '2024-05-05 00:17:55', 1, '2024-05-05 00:22:10', 1, 'vector', 'pms_spu_description', '商品描述', 'PmsSpuDescription', 'com.vector.module.pms', 'pms', 'SpuDescription', 'wengxs');
INSERT INTO `gen_table` VALUES (40, '2024-05-05 00:17:58', 1, '2024-05-05 00:23:45', 1, 'vector', 'pms_spu_image', '商品描述', 'PmsSpuImage', 'com.vector.module.pms', 'pms', 'SpuImage', 'wengxs');
INSERT INTO `gen_table` VALUES (41, '2024-05-12 15:53:11', 1, '2024-05-12 15:56:10', 1, 'vector', 'scm_supplier', '供应商信息', 'ScmSupplier', 'com.vector.module.scm', 'scm', 'Supplier', 'wengxs');
INSERT INTO `gen_table` VALUES (42, '2024-05-12 15:53:18', 1, '2024-05-12 16:14:55', 1, 'vector', 'scm_purchase', '采购单', 'ScmPurchase', 'com.vector.module.scm', 'scm', 'Purchase', 'wengxs');
INSERT INTO `gen_table` VALUES (43, '2024-05-13 21:57:49', 1, '2024-05-13 22:06:04', 1, 'vector', 'wms_receive', '收货单', 'WmsReceive', 'com.vector.module.wms', 'wms', 'Receive', 'wengxs');
INSERT INTO `gen_table` VALUES (44, '2024-05-13 21:57:54', 1, '2024-05-13 21:58:30', 1, 'vector', 'wms_receive_detail', '收货明细', 'WmsReceiveDetail', 'com.vector.module.wms', 'wms', 'ReceiveDetail', 'wengxs');
INSERT INTO `gen_table` VALUES (45, '2024-06-02 13:52:27', 1, '2024-06-02 13:53:17', 1, 'vector', 'pms_attr', '商品属性', 'PmsAttr', 'com.vector.module.pms', 'pms', 'Attr', 'wengxs');
INSERT INTO `gen_table` VALUES (46, '2024-06-02 13:52:31', 1, '2024-06-02 13:53:31', 1, 'vector', 'pms_attr_val', '商品属性值', 'PmsAttrVal', 'com.vector.module.pms', 'pms', 'AttrVal', 'wengxs');
INSERT INTO `gen_table` VALUES (47, '2024-06-02 13:52:36', 1, '2024-06-02 13:53:43', 1, 'vector', 'pms_spu_sku_attr_relation', '商品属性关系', 'PmsSpuSkuAttrRelation', 'com.vector.module.pms', 'pms', 'SpuSkuAttrRelation', 'wengxs');
INSERT INTO `gen_table` VALUES (48, '2024-06-06 22:28:13', 1, '2024-06-06 22:30:00', 1, 'vector', 'pms_sku', 'SKU', 'PmsSku', 'com.vector.module.pms', 'pms', 'Sku', 'wengxs');
COMMIT;

-- ----------------------------
-- Table structure for gen_table_field
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_field`;
CREATE TABLE `gen_table_field` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `table_id` bigint(20) NOT NULL COMMENT '表ID',
  `name` varchar(64) NOT NULL COMMENT '字段名称',
  `comment` varchar(64) DEFAULT NULL COMMENT '字段描述',
  `type` varchar(64) NOT NULL COMMENT '字段类型',
  `java_type` varchar(64) NOT NULL COMMENT 'JAVA类型',
  `java_field` varchar(64) NOT NULL COMMENT 'JAVA字段名',
  `is_pk` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否主键',
  `is_increment` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否自增',
  `is_required` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否必填',
  `is_form` tinyint(4) NOT NULL COMMENT '是否表单填写',
  `form_component` varchar(32) DEFAULT NULL COMMENT '表单控件类型',
  `is_list` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否列表字段',
  `is_query` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否查询字段',
  `query_type` varchar(32) DEFAULT NULL COMMENT '查询方式（EQ等于、NE不等于、GT大于、LT小于、LIKE模糊、BETWEEN范围）',
  `query_component` varchar(32) DEFAULT NULL COMMENT '控件类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=440 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gen_table_field
-- ----------------------------
BEGIN;
INSERT INTO `gen_table_field` VALUES (41, '2020-06-15 12:23:07', 1, '2020-06-15 12:23:07', 1, 7, 'id', '', 'bigint(20)', 'Long', 'id', 1, 1, 0, 0, NULL, 0, 0, NULL, NULL, 1);
INSERT INTO `gen_table_field` VALUES (42, '2020-06-15 12:23:07', 1, '2020-06-15 12:23:07', 1, 7, 'create_time', '', 'datetime', 'Date', 'createTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 2);
INSERT INTO `gen_table_field` VALUES (43, '2020-06-15 12:23:07', 1, '2020-06-15 12:23:07', 1, 7, 'update_time', '', 'datetime', 'Date', 'updateTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 3);
INSERT INTO `gen_table_field` VALUES (44, '2020-06-15 12:23:07', 1, '2020-06-21 20:54:40', 1, 7, 'username', '用户名', 'varchar(30)', 'String', 'username', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 4);
INSERT INTO `gen_table_field` VALUES (45, '2020-06-15 12:23:07', 1, '2020-06-21 20:54:13', 1, 7, 'password', '密码', 'varchar(255)', 'String', 'password', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 5);
INSERT INTO `gen_table_field` VALUES (46, '2020-06-15 12:23:07', 1, '2020-06-21 20:54:17', 1, 7, 'create_by', '创建人', 'varchar(30)', 'String', 'createBy', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 6);
INSERT INTO `gen_table_field` VALUES (47, '2020-06-15 12:23:08', 1, '2020-06-21 20:54:20', 1, 7, 'avatar', '头像', 'varchar(128)', 'String', 'avatar', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 7);
INSERT INTO `gen_table_field` VALUES (48, '2020-06-15 12:23:08', 1, '2020-06-21 20:54:34', 1, 7, 'enabled', '启用状态', 'tinyint(4)', 'Integer', 'enabled', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 8);
INSERT INTO `gen_table_field` VALUES (60, '2023-04-15 08:47:39', 1, '2023-04-15 08:47:39', 1, 9, 'id', '品牌ID', 'bigint(20)', 'Long', 'id', 1, 1, 0, 0, NULL, 0, 0, NULL, NULL, 1);
INSERT INTO `gen_table_field` VALUES (61, '2023-04-15 08:47:39', 1, '2023-04-15 08:47:39', 1, 9, 'name', '品牌名称', 'varchar(32)', 'String', 'name', 0, 0, 1, 0, NULL, 0, 1, NULL, NULL, 2);
INSERT INTO `gen_table_field` VALUES (62, '2023-04-15 08:47:39', 1, '2023-04-15 08:47:39', 1, 9, 'logo', '品牌logo地址', 'varchar(255)', 'String', 'logo', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 3);
INSERT INTO `gen_table_field` VALUES (63, '2023-04-15 08:47:39', 1, '2023-04-15 08:47:39', 1, 9, 'description', '品牌描述', 'varchar(1000)', 'String', 'description', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 4);
INSERT INTO `gen_table_field` VALUES (64, '2023-04-15 08:47:39', 1, '2023-04-15 08:47:39', 1, 9, 'initial', '检索首字母', 'char(1)', 'String', 'initial', 0, 0, 0, 0, NULL, 0, 1, NULL, NULL, 5);
INSERT INTO `gen_table_field` VALUES (65, '2023-04-15 08:47:39', 1, '2023-04-15 08:47:39', 1, 9, 'sort', '排序', 'int(11)', 'Integer', 'sort', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 6);
INSERT INTO `gen_table_field` VALUES (66, '2023-04-15 08:47:39', 1, '2023-04-15 08:47:39', 1, 9, 'show_status', '展示状态(0=不展示,1=展示)', 'tinyint(1)', 'Integer', 'showStatus', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 7);
INSERT INTO `gen_table_field` VALUES (67, '2023-04-15 08:47:39', 1, '2023-04-15 08:47:39', 1, 9, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 8);
INSERT INTO `gen_table_field` VALUES (68, '2023-04-15 08:47:39', 1, '2023-04-15 08:47:39', 1, 9, 'create_by', '创建人', 'varchar(32)', 'String', 'createBy', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 9);
INSERT INTO `gen_table_field` VALUES (69, '2023-04-15 08:47:39', 1, '2023-04-15 08:47:39', 1, 9, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 10);
INSERT INTO `gen_table_field` VALUES (70, '2023-04-15 08:47:39', 1, '2023-04-15 08:47:39', 1, 9, 'update_by', '更新人', 'varchar(32)', 'String', 'updateBy', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 11);
INSERT INTO `gen_table_field` VALUES (71, '2023-04-17 23:58:46', 1, '2023-04-17 23:58:46', 1, 10, 'id', 'ID', 'bigint(20)', 'Long', 'id', 1, 1, 0, 0, NULL, 0, 0, NULL, NULL, 1);
INSERT INTO `gen_table_field` VALUES (72, '2023-04-17 23:58:46', 1, '2023-04-17 23:58:46', 1, 10, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 2);
INSERT INTO `gen_table_field` VALUES (73, '2023-04-17 23:58:46', 1, '2023-04-17 23:58:46', 1, 10, 'create_by', '创建人', 'varchar(32)', 'String', 'createBy', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 3);
INSERT INTO `gen_table_field` VALUES (74, '2023-04-17 23:58:46', 1, '2023-04-17 23:58:46', 1, 10, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 4);
INSERT INTO `gen_table_field` VALUES (75, '2023-04-17 23:58:46', 1, '2023-04-17 23:58:46', 1, 10, 'update_by', '更新人', 'varchar(32)', 'String', 'updateBy', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 5);
INSERT INTO `gen_table_field` VALUES (76, '2023-04-17 23:58:46', 1, '2023-04-17 23:58:46', 1, 10, 'name', '分类名称', 'varchar(32)', 'String', 'name', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 6);
INSERT INTO `gen_table_field` VALUES (77, '2023-04-17 23:58:46', 1, '2023-04-17 23:58:46', 1, 10, 'icon', '图标', 'varchar(255)', 'String', 'icon', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 7);
INSERT INTO `gen_table_field` VALUES (78, '2023-04-17 23:58:46', 1, '2023-04-17 23:58:46', 1, 10, 'parent_id', '父级ID', 'bigint(20)', 'Long', 'parentId', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 8);
INSERT INTO `gen_table_field` VALUES (79, '2023-04-17 23:58:46', 1, '2023-04-17 23:58:46', 1, 10, 'level', '层级', 'tinyint(1)', 'Integer', 'level', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 9);
INSERT INTO `gen_table_field` VALUES (80, '2023-04-17 23:58:46', 1, '2023-04-17 23:58:46', 1, 10, 'sort', '排序', 'int(11)', 'Integer', 'sort', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 10);
INSERT INTO `gen_table_field` VALUES (81, '2023-04-17 23:58:46', 1, '2023-04-17 23:58:46', 1, 10, 'show_status', '展示状态(0=不展示,1=展示)', 'tinyint(1)', 'Integer', 'showStatus', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 11);
INSERT INTO `gen_table_field` VALUES (82, '2023-04-18 01:39:08', 1, '2023-04-18 01:39:08', 1, 11, 'id', 'ID', 'bigint(20)', 'Long', 'id', 1, 1, 0, 0, NULL, 0, 0, NULL, NULL, 1);
INSERT INTO `gen_table_field` VALUES (83, '2023-04-18 01:39:08', 1, '2023-04-18 01:39:08', 1, 11, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 2);
INSERT INTO `gen_table_field` VALUES (84, '2023-04-18 01:39:08', 1, '2023-04-18 01:39:08', 1, 11, 'create_by', '创建人', 'varchar(32)', 'String', 'createBy', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 3);
INSERT INTO `gen_table_field` VALUES (85, '2023-04-18 01:39:08', 1, '2023-04-18 01:39:08', 1, 11, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 4);
INSERT INTO `gen_table_field` VALUES (86, '2023-04-18 01:39:08', 1, '2023-04-18 01:39:08', 1, 11, 'update_by', '更新人', 'varchar(32)', 'String', 'updateBy', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 5);
INSERT INTO `gen_table_field` VALUES (87, '2023-04-18 01:39:08', 1, '2023-04-18 01:39:08', 1, 11, 'spu_name', '产品名称', 'varchar(32)', 'String', 'spuName', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 6);
INSERT INTO `gen_table_field` VALUES (88, '2023-04-18 01:39:08', 1, '2023-04-18 01:39:08', 1, 11, 'spu_description', '产品描述', 'varchar(200)', 'String', 'spuDescription', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 7);
INSERT INTO `gen_table_field` VALUES (89, '2023-04-18 01:39:08', 1, '2023-04-18 01:39:08', 1, 11, 'brand_id', '品牌ID', 'bigint(20)', 'Long', 'brandId', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 8);
INSERT INTO `gen_table_field` VALUES (90, '2023-04-18 01:39:08', 1, '2023-04-18 01:39:08', 1, 11, 'category_id', '品牌ID', 'bigint(20)', 'Long', 'categoryId', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 9);
INSERT INTO `gen_table_field` VALUES (91, '2023-04-18 01:39:08', 1, '2023-04-18 01:39:08', 1, 11, 'seller_id', '所属商家ID', 'bigint(20)', 'Long', 'sellerId', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 10);
INSERT INTO `gen_table_field` VALUES (92, '2023-04-18 03:18:34', 1, '2023-04-18 03:18:34', 1, 12, 'id', 'ID', 'bigint(20)', 'Long', 'id', 1, 1, 0, 0, NULL, 0, 0, NULL, NULL, 1);
INSERT INTO `gen_table_field` VALUES (93, '2023-04-18 03:18:34', 1, '2023-04-18 03:18:34', 1, 12, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 2);
INSERT INTO `gen_table_field` VALUES (94, '2023-04-18 03:18:34', 1, '2023-04-18 03:18:34', 1, 12, 'create_by', '创建人', 'varchar(32)', 'String', 'createBy', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 3);
INSERT INTO `gen_table_field` VALUES (95, '2023-04-18 03:18:34', 1, '2023-04-18 03:18:34', 1, 12, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 4);
INSERT INTO `gen_table_field` VALUES (96, '2023-04-18 03:18:34', 1, '2023-04-18 03:18:34', 1, 12, 'update_by', '更新人', 'varchar(32)', 'String', 'updateBy', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 5);
INSERT INTO `gen_table_field` VALUES (97, '2023-04-18 03:18:34', 1, '2023-04-18 03:18:34', 1, 12, 'name', '店铺名称', 'varchar(32)', 'String', 'name', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 6);
INSERT INTO `gen_table_field` VALUES (98, '2023-04-18 03:18:34', 1, '2023-04-18 03:18:34', 1, 12, 'status', '店铺状态(0=待审核,1=已通过,2=已驳回,3=已禁用)', 'tinyint(1)', 'Integer', 'status', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 7);
INSERT INTO `gen_table_field` VALUES (99, '2023-04-18 03:18:34', 1, '2023-04-18 03:18:34', 1, 12, 'description', '店铺介绍', 'varchar(1000)', 'String', 'description', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 8);
INSERT INTO `gen_table_field` VALUES (100, '2023-04-18 03:18:37', 1, '2023-04-18 03:18:37', 1, 13, 'id', 'ID', 'bigint(20)', 'Long', 'id', 1, 1, 0, 0, NULL, 0, 0, NULL, NULL, 1);
INSERT INTO `gen_table_field` VALUES (101, '2023-04-18 03:18:37', 1, '2023-04-18 03:18:37', 1, 13, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 2);
INSERT INTO `gen_table_field` VALUES (102, '2023-04-18 03:18:37', 1, '2023-04-18 03:18:37', 1, 13, 'create_by', '创建人', 'varchar(32)', 'String', 'createBy', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 3);
INSERT INTO `gen_table_field` VALUES (103, '2023-04-18 03:18:37', 1, '2023-04-18 03:18:37', 1, 13, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 4);
INSERT INTO `gen_table_field` VALUES (104, '2023-04-18 03:18:37', 1, '2023-04-18 03:18:37', 1, 13, 'update_by', '更新人', 'varchar(32)', 'String', 'updateBy', 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 5);
INSERT INTO `gen_table_field` VALUES (105, '2023-04-18 03:18:37', 1, '2023-04-18 03:18:37', 1, 13, 'username', '用户名', 'varchar(32)', 'String', 'username', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 6);
INSERT INTO `gen_table_field` VALUES (106, '2023-04-18 03:18:37', 1, '2023-04-18 03:18:37', 1, 13, 'nickname', '用户昵称', 'varchar(32)', 'String', 'nickname', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 7);
INSERT INTO `gen_table_field` VALUES (107, '2023-04-18 03:18:37', 1, '2023-04-18 03:18:37', 1, 13, 'password', '密码', 'varchar(255)', 'String', 'password', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 8);
INSERT INTO `gen_table_field` VALUES (108, '2023-04-18 03:18:37', 1, '2023-04-18 03:18:37', 1, 13, 'avatar', '头像', 'varchar(255)', 'String', 'avatar', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 9);
INSERT INTO `gen_table_field` VALUES (109, '2023-04-18 03:18:37', 1, '2023-04-18 03:18:37', 1, 13, 'enabled', '启用状态(0=禁用,1=启用)', 'tinyint(1)', 'Integer', 'enabled', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 10);
INSERT INTO `gen_table_field` VALUES (110, '2023-04-18 03:18:37', 1, '2023-04-18 03:18:37', 1, 13, 'shop_id', '店铺ID', 'bigint(20)', 'Long', 'shopId', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 11);
INSERT INTO `gen_table_field` VALUES (313, '2024-05-03 22:37:08', 1, '2024-05-03 22:40:51', 1, 35, 'id', 'ID', 'bigint(20)', 'Long', 'id', 1, 1, 0, 0, NULL, 0, 0, NULL, NULL, 1);
INSERT INTO `gen_table_field` VALUES (314, '2024-05-03 22:37:08', 1, '2024-05-03 22:40:51', 1, 35, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 2);
INSERT INTO `gen_table_field` VALUES (315, '2024-05-03 22:37:08', 1, '2024-05-03 22:40:51', 1, 35, 'create_by', '创建人', 'varchar(32)', 'String', 'createBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 3);
INSERT INTO `gen_table_field` VALUES (316, '2024-05-03 22:37:08', 1, '2024-05-03 22:40:51', 1, 35, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 4);
INSERT INTO `gen_table_field` VALUES (317, '2024-05-03 22:37:08', 1, '2024-05-03 22:40:51', 1, 35, 'update_by', '更新人', 'varchar(32)', 'String', 'updateBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 5);
INSERT INTO `gen_table_field` VALUES (318, '2024-05-03 22:37:08', 1, '2024-05-03 22:40:51', 1, 35, 'category_name', '分类名称', 'varchar(32)', 'String', 'categoryName', 0, 0, 1, 1, 'INPUT', 1, 1, 'LIKE', 'INPUT', 6);
INSERT INTO `gen_table_field` VALUES (319, '2024-05-03 22:37:08', 1, '2024-05-03 22:40:51', 1, 35, 'icon', '图标', 'varchar(64)', 'String', 'icon', 0, 0, 1, 1, 'INPUT', 1, 0, 'EQ', 'INPUT', 7);
INSERT INTO `gen_table_field` VALUES (320, '2024-05-03 22:37:08', 1, '2024-05-03 22:40:51', 1, 35, 'parent_id', '父级ID', 'bigint(20)', 'Long', 'parentId', 0, 0, 1, 1, 'SELECT', 1, 0, 'EQ', 'INPUT', 8);
INSERT INTO `gen_table_field` VALUES (321, '2024-05-03 22:37:08', 1, '2024-05-03 22:40:51', 1, 35, 'level', '层级', 'int(11)', 'Integer', 'level', 0, 0, 1, 1, 'NUMBER', 1, 0, 'EQ', 'INPUT', 9);
INSERT INTO `gen_table_field` VALUES (322, '2024-05-03 22:37:08', 1, '2024-05-03 22:40:51', 1, 35, 'sort', '排序', 'int(11)', 'Integer', 'sort', 0, 0, 1, 1, 'NUMBER', 1, 0, 'EQ', 'INPUT', 10);
INSERT INTO `gen_table_field` VALUES (323, '2024-05-03 22:37:08', 1, '2024-05-03 22:40:51', 1, 35, 'displayed', '展示状态', 'tinyint(4)', 'Boolean', 'displayed', 0, 0, 1, 1, 'SWITCH', 1, 0, 'EQ', 'INPUT', 11);
INSERT INTO `gen_table_field` VALUES (331, '2024-05-04 18:53:14', 1, '2024-05-04 18:56:15', 1, 37, 'id', 'ID', 'bigint(20)', 'Long', 'id', 1, 1, 0, 0, NULL, 0, 0, NULL, NULL, 1);
INSERT INTO `gen_table_field` VALUES (332, '2024-05-04 18:53:14', 1, '2024-05-04 18:56:15', 1, 37, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 2);
INSERT INTO `gen_table_field` VALUES (333, '2024-05-04 18:53:14', 1, '2024-05-04 18:56:15', 1, 37, 'create_by', '创建人', 'varchar(32)', 'String', 'createBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 3);
INSERT INTO `gen_table_field` VALUES (334, '2024-05-04 18:53:14', 1, '2024-05-04 18:56:15', 1, 37, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 4);
INSERT INTO `gen_table_field` VALUES (335, '2024-05-04 18:53:14', 1, '2024-05-04 18:56:15', 1, 37, 'update_by', '更新人', 'varchar(32)', 'String', 'updateBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 5);
INSERT INTO `gen_table_field` VALUES (336, '2024-05-04 18:53:14', 1, '2024-05-04 18:56:15', 1, 37, 'product_name', '产品名称', 'varchar(64)', 'String', 'productName', 0, 0, 1, 1, 'INPUT', 1, 1, 'LIKE', 'INPUT', 6);
INSERT INTO `gen_table_field` VALUES (337, '2024-05-04 18:53:14', 1, '2024-05-04 18:56:15', 1, 37, 'factory', '生产厂家', 'varchar(64)', 'String', 'factory', 0, 0, 0, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 7);
INSERT INTO `gen_table_field` VALUES (338, '2024-05-05 00:17:52', 1, '2024-05-05 00:24:30', 1, 38, 'id', 'ID', 'bigint(20)', 'Long', 'id', 1, 1, 0, 0, NULL, 0, 0, NULL, NULL, 1);
INSERT INTO `gen_table_field` VALUES (339, '2024-05-05 00:17:52', 1, '2024-05-05 00:24:30', 1, 38, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 2);
INSERT INTO `gen_table_field` VALUES (340, '2024-05-05 00:17:52', 1, '2024-05-05 00:24:30', 1, 38, 'create_by', '创建人', 'varchar(32)', 'String', 'createBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 3);
INSERT INTO `gen_table_field` VALUES (341, '2024-05-05 00:17:52', 1, '2024-05-05 00:24:30', 1, 38, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 4);
INSERT INTO `gen_table_field` VALUES (342, '2024-05-05 00:17:52', 1, '2024-05-05 00:24:30', 1, 38, 'update_by', '更新人', 'varchar(32)', 'String', 'updateBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 5);
INSERT INTO `gen_table_field` VALUES (343, '2024-05-05 00:17:52', 1, '2024-05-05 00:24:30', 1, 38, 'spu_name', '商品标题', 'varchar(64)', 'String', 'spuName', 0, 0, 1, 1, 'INPUT', 1, 1, 'LIKE', 'INPUT', 6);
INSERT INTO `gen_table_field` VALUES (344, '2024-05-05 00:17:52', 1, '2024-05-05 00:24:30', 1, 38, 'spu_status', '商品状态', 'varchar(16)', 'PmsSpuStatus', 'spuStatus', 0, 0, 1, 0, 'INPUT', 1, 1, 'EQ', 'SELECT', 7);
INSERT INTO `gen_table_field` VALUES (345, '2024-05-05 00:17:52', 1, '2024-05-05 00:24:30', 1, 38, 'default_image', '默认图片', 'varchar(128)', 'String', 'defaultImage', 0, 0, 1, 1, 'INPUT', 1, 0, 'EQ', 'INPUT', 8);
INSERT INTO `gen_table_field` VALUES (346, '2024-05-05 00:17:52', 1, '2024-05-05 00:24:30', 1, 38, 'category_id', '分类ID', 'bigint(20)', 'Long', 'categoryId', 0, 0, 1, 1, 'SELECT', 1, 1, 'EQ', 'SELECT', 9);
INSERT INTO `gen_table_field` VALUES (347, '2024-05-05 00:17:52', 1, '2024-05-05 00:24:30', 1, 38, 'sale_count', '总销量', 'int(11)', 'Integer', 'saleCount', 0, 0, 1, 0, 'INPUT', 1, 0, 'EQ', 'INPUT', 10);
INSERT INTO `gen_table_field` VALUES (348, '2024-05-05 00:17:52', 1, '2024-05-05 00:24:30', 1, 38, 'approve_time', '审核时间', 'datetime', 'Date', 'approveTime', 0, 0, 0, 0, 'INPUT', 1, 0, 'EQ', 'INPUT', 11);
INSERT INTO `gen_table_field` VALUES (349, '2024-05-05 00:17:52', 1, '2024-05-05 00:24:30', 1, 38, 'on_time', '上架时间', 'datetime', 'Date', 'onTime', 0, 0, 0, 0, 'INPUT', 1, 0, 'EQ', 'INPUT', 12);
INSERT INTO `gen_table_field` VALUES (350, '2024-05-05 00:17:52', 1, '2024-05-05 00:24:30', 1, 38, 'off_time', '下架时间', 'datetime', 'Date', 'offTime', 0, 0, 0, 0, 'INPUT', 1, 0, 'EQ', 'INPUT', 13);
INSERT INTO `gen_table_field` VALUES (351, '2024-05-05 00:17:52', 1, '2024-05-05 00:24:30', 1, 38, 'reject_reason', '驳回原因', 'varchar(200)', 'String', 'rejectReason', 0, 0, 0, 0, 'INPUT', 1, 0, 'EQ', 'INPUT', 14);
INSERT INTO `gen_table_field` VALUES (352, '2024-05-05 00:17:55', 1, '2024-05-05 00:22:10', 1, 39, 'spu_id', '商品ID', 'bigint(20)', 'Long', 'spuId', 1, 0, 0, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 1);
INSERT INTO `gen_table_field` VALUES (353, '2024-05-05 00:17:56', 1, '2024-05-05 00:22:10', 1, 39, 'description', '商品描述', 'text', 'String', 'description', 0, 0, 0, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 2);
INSERT INTO `gen_table_field` VALUES (354, '2024-05-05 00:17:58', 1, '2024-05-05 00:23:45', 1, 40, 'spu_id', '商品ID', 'bigint(20)', 'Long', 'spuId', 1, 0, 0, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 1);
INSERT INTO `gen_table_field` VALUES (355, '2024-05-05 00:17:58', 1, '2024-05-05 00:23:45', 1, 40, 'url', '图片链接', 'varchar(128)', 'String', 'url', 0, 0, 1, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 2);
INSERT INTO `gen_table_field` VALUES (356, '2024-05-05 00:17:58', 1, '2024-05-05 00:23:45', 1, 40, 'default_img', '是否主图', 'tinyint(1)', 'Boolean', 'defaultImg', 0, 0, 1, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 3);
INSERT INTO `gen_table_field` VALUES (357, '2024-05-05 00:17:58', 1, '2024-05-05 00:23:45', 1, 40, 'sort', '排序', 'int(11)', 'Integer', 'sort', 0, 0, 1, 1, 'NUMBER', 1, 1, 'EQ', 'INPUT', 4);
INSERT INTO `gen_table_field` VALUES (358, '2024-05-12 15:53:11', 1, '2024-05-12 15:56:10', 1, 41, 'id', 'ID', 'bigint(20)', 'Long', 'id', 1, 1, 0, 0, NULL, 0, 0, NULL, NULL, 1);
INSERT INTO `gen_table_field` VALUES (359, '2024-05-12 15:53:11', 1, '2024-05-12 15:56:10', 1, 41, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 2);
INSERT INTO `gen_table_field` VALUES (360, '2024-05-12 15:53:11', 1, '2024-05-12 15:56:10', 1, 41, 'create_by', '创建人', 'bigint(20)', 'Long', 'createBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 3);
INSERT INTO `gen_table_field` VALUES (361, '2024-05-12 15:53:11', 1, '2024-05-12 15:56:10', 1, 41, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 4);
INSERT INTO `gen_table_field` VALUES (362, '2024-05-12 15:53:11', 1, '2024-05-12 15:56:10', 1, 41, 'update_by', '更新人', 'bigint(20)', 'Long', 'updateBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 5);
INSERT INTO `gen_table_field` VALUES (363, '2024-05-12 15:53:11', 1, '2024-05-12 15:56:10', 1, 41, 'supplier_name', '供应商', 'varchar(64)', 'String', 'supplierName', 0, 0, 1, 1, 'INPUT', 1, 1, 'LIKE', 'INPUT', 6);
INSERT INTO `gen_table_field` VALUES (364, '2024-05-12 15:53:11', 1, '2024-05-12 15:56:10', 1, 41, 'contacts', '联系人', 'varchar(32)', 'String', 'contacts', 0, 0, 0, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 7);
INSERT INTO `gen_table_field` VALUES (365, '2024-05-12 15:53:11', 1, '2024-05-12 15:56:10', 1, 41, 'mobile', '联系电话', 'varchar(32)', 'String', 'mobile', 0, 0, 0, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 8);
INSERT INTO `gen_table_field` VALUES (366, '2024-05-12 15:53:11', 1, '2024-05-12 15:56:10', 1, 41, 'province', '所在省份', 'varchar(32)', 'String', 'province', 0, 0, 0, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 9);
INSERT INTO `gen_table_field` VALUES (367, '2024-05-12 15:53:12', 1, '2024-05-12 15:56:10', 1, 41, 'address', '详细地址', 'varchar(64)', 'String', 'address', 0, 0, 0, 1, 'INPUT', 1, 1, 'LIKE', 'INPUT', 10);
INSERT INTO `gen_table_field` VALUES (368, '2024-05-12 15:53:18', 1, '2024-05-12 16:14:55', 1, 42, 'id', 'ID', 'bigint(20)', 'Long', 'id', 1, 1, 0, 0, NULL, 0, 0, NULL, NULL, 1);
INSERT INTO `gen_table_field` VALUES (369, '2024-05-12 15:53:18', 1, '2024-05-12 16:14:55', 1, 42, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 2);
INSERT INTO `gen_table_field` VALUES (370, '2024-05-12 15:53:18', 1, '2024-05-12 16:14:55', 1, 42, 'create_by', '创建人', 'bigint(20)', 'Long', 'createBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 3);
INSERT INTO `gen_table_field` VALUES (371, '2024-05-12 15:53:18', 1, '2024-05-12 16:14:55', 1, 42, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 4);
INSERT INTO `gen_table_field` VALUES (372, '2024-05-12 15:53:18', 1, '2024-05-12 16:14:55', 1, 42, 'update_by', '更新人', 'bigint(20)', 'Long', 'updateBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 5);
INSERT INTO `gen_table_field` VALUES (373, '2024-05-12 15:53:18', 1, '2024-05-12 16:14:55', 1, 42, 'purchase_no', '订单编号', 'varchar(32)', 'String', 'purchaseNo', 0, 0, 1, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 6);
INSERT INTO `gen_table_field` VALUES (374, '2024-05-12 15:53:18', 1, '2024-05-12 16:14:55', 1, 42, 'purchase_status', '订单状态', 'varchar(16)', 'String', 'purchaseStatus', 0, 0, 1, 0, 'SELECT', 1, 1, 'EQ', 'INPUT', 7);
INSERT INTO `gen_table_field` VALUES (375, '2024-05-12 15:53:18', 1, '2024-05-12 16:14:55', 1, 42, 'supplier_id', '供应商ID', 'bigint(20)', 'Long', 'supplierId', 0, 0, 1, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 8);
INSERT INTO `gen_table_field` VALUES (376, '2024-05-12 15:53:18', 1, '2024-05-12 16:14:55', 1, 42, 'purchase_remake', '采购备注', 'varchar(256)', 'String', 'purchaseRemake', 0, 0, 0, 1, 'INPUT', 1, 0, 'EQ', 'INPUT', 9);
INSERT INTO `gen_table_field` VALUES (377, '2024-05-12 15:53:18', 1, '2024-05-12 16:14:55', 1, 42, 'amount', '订单金额', 'decimal(10,4)', 'BigDecimal', 'amount', 0, 0, 0, 0, 'INPUT', 1, 0, 'EQ', 'INPUT', 10);
INSERT INTO `gen_table_field` VALUES (378, '2024-05-12 15:53:18', 1, '2024-05-12 16:14:55', 1, 42, 'signed_time', '签约时间', 'datetime', 'Date', 'signedTime', 0, 0, 0, 0, 'INPUT', 1, 0, 'EQ', 'INPUT', 11);
INSERT INTO `gen_table_field` VALUES (379, '2024-05-12 15:53:18', 1, '2024-05-12 16:14:55', 1, 42, 'finished_time', '完结时间', 'datetime', 'Date', 'finishedTime', 0, 0, 0, 0, 'INPUT', 1, 0, 'EQ', 'INPUT', 12);
INSERT INTO `gen_table_field` VALUES (380, '2024-05-12 15:53:18', 1, '2024-05-12 16:14:55', 1, 42, 'canceled_time', '取消时间', 'datetime', 'Date', 'canceledTime', 0, 0, 0, 0, 'INPUT', 1, 0, 'EQ', 'INPUT', 13);
INSERT INTO `gen_table_field` VALUES (381, '2024-05-13 21:57:49', 1, '2024-05-13 22:06:04', 1, 43, 'id', 'ID', 'bigint(20)', 'Long', 'id', 1, 1, 0, 0, NULL, 0, 0, NULL, NULL, 1);
INSERT INTO `gen_table_field` VALUES (382, '2024-05-13 21:57:49', 1, '2024-05-13 22:06:04', 1, 43, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 2);
INSERT INTO `gen_table_field` VALUES (383, '2024-05-13 21:57:49', 1, '2024-05-13 22:06:04', 1, 43, 'create_by', '创建人', 'bigint(20)', 'Long', 'createBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 3);
INSERT INTO `gen_table_field` VALUES (384, '2024-05-13 21:57:49', 1, '2024-05-13 22:06:04', 1, 43, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 4);
INSERT INTO `gen_table_field` VALUES (385, '2024-05-13 21:57:49', 1, '2024-05-13 22:06:04', 1, 43, 'update_by', '更新人', 'bigint(20)', 'Long', 'updateBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 5);
INSERT INTO `gen_table_field` VALUES (386, '2024-05-13 21:57:49', 1, '2024-05-13 22:06:04', 1, 43, 'receive_no', '收货单号', 'varchar(32)', 'String', 'receiveNo', 0, 0, 1, 0, 'INPUT', 1, 1, 'EQ', 'INPUT', 6);
INSERT INTO `gen_table_field` VALUES (387, '2024-05-13 21:57:49', 1, '2024-05-13 22:06:04', 1, 43, 'receive_status', '收货状态', 'varchar(16)', 'String', 'receiveStatus', 0, 0, 1, 0, 'INPUT', 1, 1, 'EQ', 'SELECT', 7);
INSERT INTO `gen_table_field` VALUES (388, '2024-05-13 21:57:49', 1, '2024-05-13 22:06:04', 1, 43, 'biz_type', '业务类型', 'varchar(16)', 'String', 'bizType', 0, 0, 1, 1, 'SELECT', 1, 1, 'EQ', 'SELECT', 8);
INSERT INTO `gen_table_field` VALUES (389, '2024-05-13 21:57:49', 1, '2024-05-13 22:06:04', 1, 43, 'biz_no', '业务单号', 'varchar(32)', 'String', 'bizNo', 0, 0, 0, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 9);
INSERT INTO `gen_table_field` VALUES (390, '2024-05-13 21:57:50', 1, '2024-05-13 22:06:04', 1, 43, 'logistics_name', '物流名称', 'varchar(16)', 'String', 'logisticsName', 0, 0, 0, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 10);
INSERT INTO `gen_table_field` VALUES (391, '2024-05-13 21:57:50', 1, '2024-05-13 22:06:04', 1, 43, 'logistics_no', '物流单号', 'varchar(32)', 'String', 'logisticsNo', 0, 0, 0, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 11);
INSERT INTO `gen_table_field` VALUES (392, '2024-05-13 21:57:50', 1, '2024-05-13 22:06:04', 1, 43, 'signed_time', '签收时间', 'datetime', 'Date', 'signedTime', 0, 0, 0, 0, 'INPUT', 1, 0, 'EQ', 'INPUT', 12);
INSERT INTO `gen_table_field` VALUES (393, '2024-05-13 21:57:50', 1, '2024-05-13 22:06:04', 1, 43, 'batch_no', '批次编号', 'varchar(32)', 'String', 'batchNo', 0, 0, 0, 0, 'INPUT', 1, 1, 'EQ', 'INPUT', 13);
INSERT INTO `gen_table_field` VALUES (394, '2024-05-13 21:57:54', 1, '2024-05-13 21:58:30', 1, 44, 'id', 'ID', 'bigint(20)', 'Long', 'id', 1, 1, 0, 0, NULL, 0, 0, NULL, NULL, 1);
INSERT INTO `gen_table_field` VALUES (395, '2024-05-13 21:57:54', 1, '2024-05-13 21:58:30', 1, 44, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 2);
INSERT INTO `gen_table_field` VALUES (396, '2024-05-13 21:57:54', 1, '2024-05-13 21:58:30', 1, 44, 'create_by', '创建人', 'bigint(20)', 'Long', 'createBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 3);
INSERT INTO `gen_table_field` VALUES (397, '2024-05-13 21:57:54', 1, '2024-05-13 21:58:30', 1, 44, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 4);
INSERT INTO `gen_table_field` VALUES (398, '2024-05-13 21:57:54', 1, '2024-05-13 21:58:30', 1, 44, 'update_by', '更新人', 'bigint(20)', 'Long', 'updateBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 5);
INSERT INTO `gen_table_field` VALUES (399, '2024-05-13 21:57:54', 1, '2024-05-13 21:58:30', 1, 44, 'receive_id', '收货单ID', 'bigint(20)', 'Long', 'receiveId', 0, 0, 1, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 6);
INSERT INTO `gen_table_field` VALUES (400, '2024-05-13 21:57:54', 1, '2024-05-13 21:58:30', 1, 44, 'product_id', '产品ID', 'bigint(20)', 'Long', 'productId', 0, 0, 1, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 7);
INSERT INTO `gen_table_field` VALUES (401, '2024-05-13 21:57:54', 1, '2024-05-13 21:58:30', 1, 44, 'qty', '应收数量', 'int(11)', 'Integer', 'qty', 0, 0, 1, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 8);
INSERT INTO `gen_table_field` VALUES (402, '2024-05-13 21:57:54', 1, '2024-05-13 21:58:30', 1, 44, 'received_qty', '实收数量', 'int(11)', 'Integer', 'receivedQty', 0, 0, 0, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 9);
INSERT INTO `gen_table_field` VALUES (403, '2024-05-13 21:57:54', 1, '2024-05-13 21:58:30', 1, 44, 'qualified_qty', '合格数量', 'int(11)', 'Integer', 'qualifiedQty', 0, 0, 0, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 10);
INSERT INTO `gen_table_field` VALUES (404, '2024-05-13 21:57:54', 1, '2024-05-13 21:58:30', 1, 44, 'unqualified_qty', '不合格数量', 'int(11)', 'Integer', 'unqualifiedQty', 0, 0, 0, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 11);
INSERT INTO `gen_table_field` VALUES (405, '2024-06-02 13:52:28', 1, '2024-06-02 13:53:17', 1, 45, 'id', 'ID', 'bigint(20)', 'Long', 'id', 1, 1, 0, 0, NULL, 0, 0, NULL, NULL, 1);
INSERT INTO `gen_table_field` VALUES (406, '2024-06-02 13:52:28', 1, '2024-06-02 13:53:17', 1, 45, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 2);
INSERT INTO `gen_table_field` VALUES (407, '2024-06-02 13:52:28', 1, '2024-06-02 13:53:17', 1, 45, 'create_by', '创建人', 'bigint(20)', 'Long', 'createBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 3);
INSERT INTO `gen_table_field` VALUES (408, '2024-06-02 13:52:28', 1, '2024-06-02 13:53:17', 1, 45, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 4);
INSERT INTO `gen_table_field` VALUES (409, '2024-06-02 13:52:28', 1, '2024-06-02 13:53:17', 1, 45, 'update_by', '更新人', 'bigint(20)', 'Long', 'updateBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 5);
INSERT INTO `gen_table_field` VALUES (410, '2024-06-02 13:52:28', 1, '2024-06-02 13:53:17', 1, 45, 'category_id', '分类ID', 'bigint(20)', 'Long', 'categoryId', 0, 0, 1, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 6);
INSERT INTO `gen_table_field` VALUES (411, '2024-06-02 13:52:28', 1, '2024-06-02 13:53:17', 1, 45, 'attr_name', '属性名称', 'varchar(32)', 'String', 'attrName', 0, 0, 1, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 7);
INSERT INTO `gen_table_field` VALUES (412, '2024-06-02 13:52:28', 1, '2024-06-02 13:53:17', 1, 45, 'sort', '排序', 'int(11)', 'Integer', 'sort', 0, 0, 1, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 8);
INSERT INTO `gen_table_field` VALUES (413, '2024-06-02 13:52:31', 1, '2024-06-02 13:53:31', 1, 46, 'id', 'ID', 'bigint(20)', 'Long', 'id', 1, 1, 0, 0, NULL, 0, 0, NULL, NULL, 1);
INSERT INTO `gen_table_field` VALUES (414, '2024-06-02 13:52:31', 1, '2024-06-02 13:53:31', 1, 46, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 2);
INSERT INTO `gen_table_field` VALUES (415, '2024-06-02 13:52:31', 1, '2024-06-02 13:53:31', 1, 46, 'create_by', '创建人', 'bigint(20)', 'Long', 'createBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 3);
INSERT INTO `gen_table_field` VALUES (416, '2024-06-02 13:52:31', 1, '2024-06-02 13:53:31', 1, 46, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 4);
INSERT INTO `gen_table_field` VALUES (417, '2024-06-02 13:52:31', 1, '2024-06-02 13:53:31', 1, 46, 'update_by', '更新人', 'bigint(20)', 'Long', 'updateBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 5);
INSERT INTO `gen_table_field` VALUES (418, '2024-06-02 13:52:31', 1, '2024-06-02 13:53:31', 1, 46, 'attr_id', '属性ID', 'bigint(20)', 'Long', 'attrId', 0, 0, 1, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 6);
INSERT INTO `gen_table_field` VALUES (419, '2024-06-02 13:52:31', 1, '2024-06-02 13:53:31', 1, 46, 'attr_value', '属性值', 'varchar(32)', 'String', 'attrValue', 0, 0, 1, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 7);
INSERT INTO `gen_table_field` VALUES (420, '2024-06-02 13:52:31', 1, '2024-06-02 13:53:31', 1, 46, 'sort', '排序', 'int(11)', 'Integer', 'sort', 0, 0, 1, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 8);
INSERT INTO `gen_table_field` VALUES (421, '2024-06-02 13:52:36', 1, '2024-06-02 13:53:43', 1, 47, 'id', 'ID', 'bigint(20)', 'Long', 'id', 1, 1, 0, 0, NULL, 0, 0, NULL, NULL, 1);
INSERT INTO `gen_table_field` VALUES (422, '2024-06-02 13:52:36', 1, '2024-06-02 13:53:43', 1, 47, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 2);
INSERT INTO `gen_table_field` VALUES (423, '2024-06-02 13:52:36', 1, '2024-06-02 13:53:43', 1, 47, 'create_by', '创建人', 'bigint(20)', 'Long', 'createBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 3);
INSERT INTO `gen_table_field` VALUES (424, '2024-06-02 13:52:36', 1, '2024-06-02 13:53:43', 1, 47, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 4);
INSERT INTO `gen_table_field` VALUES (425, '2024-06-02 13:52:36', 1, '2024-06-02 13:53:43', 1, 47, 'update_by', '更新人', 'bigint(20)', 'Long', 'updateBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 5);
INSERT INTO `gen_table_field` VALUES (426, '2024-06-02 13:52:36', 1, '2024-06-02 13:53:43', 1, 47, 'spu_id', 'SPU ID', 'bigint(20)', 'Long', 'spuId', 0, 0, 1, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 6);
INSERT INTO `gen_table_field` VALUES (427, '2024-06-02 13:52:36', 1, '2024-06-02 13:53:43', 1, 47, 'sku_id', 'SKU ID', 'bigint(20)', 'Long', 'skuId', 0, 0, 1, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 7);
INSERT INTO `gen_table_field` VALUES (428, '2024-06-02 13:52:36', 1, '2024-06-02 13:53:43', 1, 47, 'attr_id', '属性ID', 'bigint(20)', 'Long', 'attrId', 0, 0, 1, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 8);
INSERT INTO `gen_table_field` VALUES (429, '2024-06-02 13:52:36', 1, '2024-06-02 13:53:43', 1, 47, 'attr_value', '属性值', 'varchar(32)', 'String', 'attrValue', 0, 0, 1, 1, 'INPUT', 1, 1, 'EQ', 'INPUT', 9);
INSERT INTO `gen_table_field` VALUES (430, '2024-06-06 22:28:14', 1, '2024-06-06 22:30:00', 1, 48, 'id', 'ID', 'bigint(20)', 'Long', 'id', 1, 1, 0, 0, NULL, 0, 0, NULL, NULL, 1);
INSERT INTO `gen_table_field` VALUES (431, '2024-06-06 22:28:14', 1, '2024-06-06 22:30:00', 1, 48, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 2);
INSERT INTO `gen_table_field` VALUES (432, '2024-06-06 22:28:14', 1, '2024-06-06 22:30:00', 1, 48, 'create_by', '创建人', 'bigint(20)', 'Long', 'createBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 3);
INSERT INTO `gen_table_field` VALUES (433, '2024-06-06 22:28:14', 1, '2024-06-06 22:30:00', 1, 48, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 4);
INSERT INTO `gen_table_field` VALUES (434, '2024-06-06 22:28:14', 1, '2024-06-06 22:30:00', 1, 48, 'update_by', '更新人', 'bigint(20)', 'Long', 'updateBy', 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, 5);
INSERT INTO `gen_table_field` VALUES (435, '2024-06-06 22:28:14', 1, '2024-06-06 22:30:00', 1, 48, 'spu_id', 'spuID', 'bigint(20)', 'Long', 'spuId', 0, 0, 1, 0, 'INPUT', 0, 0, 'EQ', 'INPUT', 6);
INSERT INTO `gen_table_field` VALUES (436, '2024-06-06 22:28:14', 1, '2024-06-06 22:30:00', 1, 48, 'image', '图片', 'varchar(128)', 'String', 'image', 0, 0, 1, 0, 'INPUT', 0, 0, 'EQ', 'INPUT', 7);
INSERT INTO `gen_table_field` VALUES (437, '2024-06-06 22:28:14', 1, '2024-06-06 22:30:00', 1, 48, 'price', '价格', 'decimal(12,2)', 'BigDecimal', 'price', 0, 0, 1, 0, 'INPUT', 0, 0, 'EQ', 'INPUT', 8);
INSERT INTO `gen_table_field` VALUES (438, '2024-06-06 22:28:14', 1, '2024-06-06 22:30:00', 1, 48, 'stock', '库存', 'int(11)', 'Integer', 'stock', 0, 0, 1, 0, 'INPUT', 0, 0, 'EQ', 'INPUT', 9);
INSERT INTO `gen_table_field` VALUES (439, '2024-06-06 22:28:14', 1, '2024-06-06 22:30:00', 1, 48, 'on_sale', '上架状态', 'tinyint(4)', 'Boolean', 'onSale', 0, 0, 1, 0, 'INPUT', 0, 0, 'EQ', 'INPUT', 10);
COMMIT;

-- ----------------------------
-- Table structure for info_area
-- ----------------------------
DROP TABLE IF EXISTS `info_area`;
CREATE TABLE `info_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `code` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '地区编码',
  `name` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '地区名称',
  `full_name` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '地区全称',
  `level` int(11) NOT NULL COMMENT '地区等级',
  `parent_code` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '上级编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3430 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='地区信息';

-- ----------------------------
-- Records of info_area
-- ----------------------------
BEGIN;
INSERT INTO `info_area` VALUES (1, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '11', '北京市', '北京市', 1, '');
INSERT INTO `info_area` VALUES (2, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '1101', '市辖区', '北京市市辖区', 2, '11');
INSERT INTO `info_area` VALUES (3, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '110101', '东城区', '北京市市辖区东城区', 3, '1101');
INSERT INTO `info_area` VALUES (4, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '110102', '西城区', '北京市市辖区西城区', 3, '1101');
INSERT INTO `info_area` VALUES (5, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '110105', '朝阳区', '北京市市辖区朝阳区', 3, '1101');
INSERT INTO `info_area` VALUES (6, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '110106', '丰台区', '北京市市辖区丰台区', 3, '1101');
INSERT INTO `info_area` VALUES (7, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '110107', '石景山区', '北京市市辖区石景山区', 3, '1101');
INSERT INTO `info_area` VALUES (8, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '110108', '海淀区', '北京市市辖区海淀区', 3, '1101');
INSERT INTO `info_area` VALUES (9, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '110109', '门头沟区', '北京市市辖区门头沟区', 3, '1101');
INSERT INTO `info_area` VALUES (10, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '110111', '房山区', '北京市市辖区房山区', 3, '1101');
INSERT INTO `info_area` VALUES (11, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '110112', '通州区', '北京市市辖区通州区', 3, '1101');
INSERT INTO `info_area` VALUES (12, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '110113', '顺义区', '北京市市辖区顺义区', 3, '1101');
INSERT INTO `info_area` VALUES (13, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '110114', '昌平区', '北京市市辖区昌平区', 3, '1101');
INSERT INTO `info_area` VALUES (14, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '110115', '大兴区', '北京市市辖区大兴区', 3, '1101');
INSERT INTO `info_area` VALUES (15, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '110116', '怀柔区', '北京市市辖区怀柔区', 3, '1101');
INSERT INTO `info_area` VALUES (16, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '110117', '平谷区', '北京市市辖区平谷区', 3, '1101');
INSERT INTO `info_area` VALUES (17, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '110118', '密云区', '北京市市辖区密云区', 3, '1101');
INSERT INTO `info_area` VALUES (18, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '110119', '延庆区', '北京市市辖区延庆区', 3, '1101');
INSERT INTO `info_area` VALUES (19, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '12', '天津市', '天津市', 1, '');
INSERT INTO `info_area` VALUES (20, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '1201', '市辖区', '天津市市辖区', 2, '12');
INSERT INTO `info_area` VALUES (21, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '120101', '和平区', '天津市市辖区和平区', 3, '1201');
INSERT INTO `info_area` VALUES (22, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '120102', '河东区', '天津市市辖区河东区', 3, '1201');
INSERT INTO `info_area` VALUES (23, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '120103', '河西区', '天津市市辖区河西区', 3, '1201');
INSERT INTO `info_area` VALUES (24, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '120104', '南开区', '天津市市辖区南开区', 3, '1201');
INSERT INTO `info_area` VALUES (25, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '120105', '河北区', '天津市市辖区河北区', 3, '1201');
INSERT INTO `info_area` VALUES (26, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '120106', '红桥区', '天津市市辖区红桥区', 3, '1201');
INSERT INTO `info_area` VALUES (27, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '120110', '东丽区', '天津市市辖区东丽区', 3, '1201');
INSERT INTO `info_area` VALUES (28, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '120111', '西青区', '天津市市辖区西青区', 3, '1201');
INSERT INTO `info_area` VALUES (29, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '120112', '津南区', '天津市市辖区津南区', 3, '1201');
INSERT INTO `info_area` VALUES (30, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '120113', '北辰区', '天津市市辖区北辰区', 3, '1201');
INSERT INTO `info_area` VALUES (31, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '120114', '武清区', '天津市市辖区武清区', 3, '1201');
INSERT INTO `info_area` VALUES (32, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '120115', '宝坻区', '天津市市辖区宝坻区', 3, '1201');
INSERT INTO `info_area` VALUES (33, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '120116', '滨海新区', '天津市市辖区滨海新区', 3, '1201');
INSERT INTO `info_area` VALUES (34, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '120117', '宁河区', '天津市市辖区宁河区', 3, '1201');
INSERT INTO `info_area` VALUES (35, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '120118', '静海区', '天津市市辖区静海区', 3, '1201');
INSERT INTO `info_area` VALUES (36, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '120119', '蓟州区', '天津市市辖区蓟州区', 3, '1201');
INSERT INTO `info_area` VALUES (37, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '13', '河北省', '河北省', 1, '');
INSERT INTO `info_area` VALUES (38, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '1301', '石家庄市', '河北省石家庄市', 2, '13');
INSERT INTO `info_area` VALUES (39, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130102', '长安区', '河北省石家庄市长安区', 3, '1301');
INSERT INTO `info_area` VALUES (40, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130104', '桥西区', '河北省石家庄市桥西区', 3, '1301');
INSERT INTO `info_area` VALUES (41, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130105', '新华区', '河北省石家庄市新华区', 3, '1301');
INSERT INTO `info_area` VALUES (42, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130107', '井陉矿区', '河北省石家庄市井陉矿区', 3, '1301');
INSERT INTO `info_area` VALUES (43, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130108', '裕华区', '河北省石家庄市裕华区', 3, '1301');
INSERT INTO `info_area` VALUES (44, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130109', '藁城区', '河北省石家庄市藁城区', 3, '1301');
INSERT INTO `info_area` VALUES (45, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130110', '鹿泉区', '河北省石家庄市鹿泉区', 3, '1301');
INSERT INTO `info_area` VALUES (46, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130111', '栾城区', '河北省石家庄市栾城区', 3, '1301');
INSERT INTO `info_area` VALUES (47, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130121', '井陉县', '河北省石家庄市井陉县', 3, '1301');
INSERT INTO `info_area` VALUES (48, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130123', '正定县', '河北省石家庄市正定县', 3, '1301');
INSERT INTO `info_area` VALUES (49, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130125', '行唐县', '河北省石家庄市行唐县', 3, '1301');
INSERT INTO `info_area` VALUES (50, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130126', '灵寿县', '河北省石家庄市灵寿县', 3, '1301');
INSERT INTO `info_area` VALUES (51, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130127', '高邑县', '河北省石家庄市高邑县', 3, '1301');
INSERT INTO `info_area` VALUES (52, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130128', '深泽县', '河北省石家庄市深泽县', 3, '1301');
INSERT INTO `info_area` VALUES (53, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130129', '赞皇县', '河北省石家庄市赞皇县', 3, '1301');
INSERT INTO `info_area` VALUES (54, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130130', '无极县', '河北省石家庄市无极县', 3, '1301');
INSERT INTO `info_area` VALUES (55, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130131', '平山县', '河北省石家庄市平山县', 3, '1301');
INSERT INTO `info_area` VALUES (56, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130132', '元氏县', '河北省石家庄市元氏县', 3, '1301');
INSERT INTO `info_area` VALUES (57, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130133', '赵县', '河北省石家庄市赵县', 3, '1301');
INSERT INTO `info_area` VALUES (58, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130171', '石家庄高新技术产业开发区', '河北省石家庄市石家庄高新技术产业开发区', 3, '1301');
INSERT INTO `info_area` VALUES (59, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130172', '石家庄循环化工园区', '河北省石家庄市石家庄循环化工园区', 3, '1301');
INSERT INTO `info_area` VALUES (60, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130181', '辛集市', '河北省石家庄市辛集市', 3, '1301');
INSERT INTO `info_area` VALUES (61, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130183', '晋州市', '河北省石家庄市晋州市', 3, '1301');
INSERT INTO `info_area` VALUES (62, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130184', '新乐市', '河北省石家庄市新乐市', 3, '1301');
INSERT INTO `info_area` VALUES (63, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '1302', '唐山市', '河北省唐山市', 2, '13');
INSERT INTO `info_area` VALUES (64, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130202', '路南区', '河北省唐山市路南区', 3, '1302');
INSERT INTO `info_area` VALUES (65, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130203', '路北区', '河北省唐山市路北区', 3, '1302');
INSERT INTO `info_area` VALUES (66, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130204', '古冶区', '河北省唐山市古冶区', 3, '1302');
INSERT INTO `info_area` VALUES (67, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130205', '开平区', '河北省唐山市开平区', 3, '1302');
INSERT INTO `info_area` VALUES (68, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130207', '丰南区', '河北省唐山市丰南区', 3, '1302');
INSERT INTO `info_area` VALUES (69, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130208', '丰润区', '河北省唐山市丰润区', 3, '1302');
INSERT INTO `info_area` VALUES (70, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130209', '曹妃甸区', '河北省唐山市曹妃甸区', 3, '1302');
INSERT INTO `info_area` VALUES (71, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130224', '滦南县', '河北省唐山市滦南县', 3, '1302');
INSERT INTO `info_area` VALUES (72, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130225', '乐亭县', '河北省唐山市乐亭县', 3, '1302');
INSERT INTO `info_area` VALUES (73, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130227', '迁西县', '河北省唐山市迁西县', 3, '1302');
INSERT INTO `info_area` VALUES (74, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130229', '玉田县', '河北省唐山市玉田县', 3, '1302');
INSERT INTO `info_area` VALUES (75, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130271', '河北唐山芦台经济开发区', '河北省唐山市河北唐山芦台经济开发区', 3, '1302');
INSERT INTO `info_area` VALUES (76, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130272', '唐山市汉沽管理区', '河北省唐山市唐山市汉沽管理区', 3, '1302');
INSERT INTO `info_area` VALUES (77, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130273', '唐山高新技术产业开发区', '河北省唐山市唐山高新技术产业开发区', 3, '1302');
INSERT INTO `info_area` VALUES (78, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130274', '河北唐山海港经济开发区', '河北省唐山市河北唐山海港经济开发区', 3, '1302');
INSERT INTO `info_area` VALUES (79, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130281', '遵化市', '河北省唐山市遵化市', 3, '1302');
INSERT INTO `info_area` VALUES (80, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130283', '迁安市', '河北省唐山市迁安市', 3, '1302');
INSERT INTO `info_area` VALUES (81, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130284', '滦州市', '河北省唐山市滦州市', 3, '1302');
INSERT INTO `info_area` VALUES (82, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '1303', '秦皇岛市', '河北省秦皇岛市', 2, '13');
INSERT INTO `info_area` VALUES (83, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130302', '海港区', '河北省秦皇岛市海港区', 3, '1303');
INSERT INTO `info_area` VALUES (84, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130303', '山海关区', '河北省秦皇岛市山海关区', 3, '1303');
INSERT INTO `info_area` VALUES (85, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130304', '北戴河区', '河北省秦皇岛市北戴河区', 3, '1303');
INSERT INTO `info_area` VALUES (86, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130306', '抚宁区', '河北省秦皇岛市抚宁区', 3, '1303');
INSERT INTO `info_area` VALUES (87, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130321', '青龙满族自治县', '河北省秦皇岛市青龙满族自治县', 3, '1303');
INSERT INTO `info_area` VALUES (88, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130322', '昌黎县', '河北省秦皇岛市昌黎县', 3, '1303');
INSERT INTO `info_area` VALUES (89, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130324', '卢龙县', '河北省秦皇岛市卢龙县', 3, '1303');
INSERT INTO `info_area` VALUES (90, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130371', '秦皇岛市经济技术开发区', '河北省秦皇岛市秦皇岛市经济技术开发区', 3, '1303');
INSERT INTO `info_area` VALUES (91, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130372', '北戴河新区', '河北省秦皇岛市北戴河新区', 3, '1303');
INSERT INTO `info_area` VALUES (92, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '1304', '邯郸市', '河北省邯郸市', 2, '13');
INSERT INTO `info_area` VALUES (93, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130402', '邯山区', '河北省邯郸市邯山区', 3, '1304');
INSERT INTO `info_area` VALUES (94, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130403', '丛台区', '河北省邯郸市丛台区', 3, '1304');
INSERT INTO `info_area` VALUES (95, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130404', '复兴区', '河北省邯郸市复兴区', 3, '1304');
INSERT INTO `info_area` VALUES (96, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130406', '峰峰矿区', '河北省邯郸市峰峰矿区', 3, '1304');
INSERT INTO `info_area` VALUES (97, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130407', '肥乡区', '河北省邯郸市肥乡区', 3, '1304');
INSERT INTO `info_area` VALUES (98, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130408', '永年区', '河北省邯郸市永年区', 3, '1304');
INSERT INTO `info_area` VALUES (99, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130423', '临漳县', '河北省邯郸市临漳县', 3, '1304');
INSERT INTO `info_area` VALUES (100, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130424', '成安县', '河北省邯郸市成安县', 3, '1304');
INSERT INTO `info_area` VALUES (101, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130425', '大名县', '河北省邯郸市大名县', 3, '1304');
INSERT INTO `info_area` VALUES (102, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130426', '涉县', '河北省邯郸市涉县', 3, '1304');
INSERT INTO `info_area` VALUES (103, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130427', '磁县', '河北省邯郸市磁县', 3, '1304');
INSERT INTO `info_area` VALUES (104, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130430', '邱县', '河北省邯郸市邱县', 3, '1304');
INSERT INTO `info_area` VALUES (105, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130431', '鸡泽县', '河北省邯郸市鸡泽县', 3, '1304');
INSERT INTO `info_area` VALUES (106, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130432', '广平县', '河北省邯郸市广平县', 3, '1304');
INSERT INTO `info_area` VALUES (107, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130433', '馆陶县', '河北省邯郸市馆陶县', 3, '1304');
INSERT INTO `info_area` VALUES (108, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130434', '魏县', '河北省邯郸市魏县', 3, '1304');
INSERT INTO `info_area` VALUES (109, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130435', '曲周县', '河北省邯郸市曲周县', 3, '1304');
INSERT INTO `info_area` VALUES (110, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130471', '邯郸经济技术开发区', '河北省邯郸市邯郸经济技术开发区', 3, '1304');
INSERT INTO `info_area` VALUES (111, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130473', '邯郸冀南新区', '河北省邯郸市邯郸冀南新区', 3, '1304');
INSERT INTO `info_area` VALUES (112, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130481', '武安市', '河北省邯郸市武安市', 3, '1304');
INSERT INTO `info_area` VALUES (113, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '1305', '邢台市', '河北省邢台市', 2, '13');
INSERT INTO `info_area` VALUES (114, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130502', '襄都区', '河北省邢台市襄都区', 3, '1305');
INSERT INTO `info_area` VALUES (115, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130503', '信都区', '河北省邢台市信都区', 3, '1305');
INSERT INTO `info_area` VALUES (116, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130505', '任泽区', '河北省邢台市任泽区', 3, '1305');
INSERT INTO `info_area` VALUES (117, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130506', '南和区', '河北省邢台市南和区', 3, '1305');
INSERT INTO `info_area` VALUES (118, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130522', '临城县', '河北省邢台市临城县', 3, '1305');
INSERT INTO `info_area` VALUES (119, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130523', '内丘县', '河北省邢台市内丘县', 3, '1305');
INSERT INTO `info_area` VALUES (120, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130524', '柏乡县', '河北省邢台市柏乡县', 3, '1305');
INSERT INTO `info_area` VALUES (121, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130525', '隆尧县', '河北省邢台市隆尧县', 3, '1305');
INSERT INTO `info_area` VALUES (122, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130528', '宁晋县', '河北省邢台市宁晋县', 3, '1305');
INSERT INTO `info_area` VALUES (123, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130529', '巨鹿县', '河北省邢台市巨鹿县', 3, '1305');
INSERT INTO `info_area` VALUES (124, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130530', '新河县', '河北省邢台市新河县', 3, '1305');
INSERT INTO `info_area` VALUES (125, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130531', '广宗县', '河北省邢台市广宗县', 3, '1305');
INSERT INTO `info_area` VALUES (126, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130532', '平乡县', '河北省邢台市平乡县', 3, '1305');
INSERT INTO `info_area` VALUES (127, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130533', '威县', '河北省邢台市威县', 3, '1305');
INSERT INTO `info_area` VALUES (128, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130534', '清河县', '河北省邢台市清河县', 3, '1305');
INSERT INTO `info_area` VALUES (129, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130535', '临西县', '河北省邢台市临西县', 3, '1305');
INSERT INTO `info_area` VALUES (130, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130571', '河北邢台经济开发区', '河北省邢台市河北邢台经济开发区', 3, '1305');
INSERT INTO `info_area` VALUES (131, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130581', '南宫市', '河北省邢台市南宫市', 3, '1305');
INSERT INTO `info_area` VALUES (132, '2024-03-21 19:17:53', 1, '2024-03-21 19:17:53', 1, '130582', '沙河市', '河北省邢台市沙河市', 3, '1305');
INSERT INTO `info_area` VALUES (133, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1306', '保定市', '河北省保定市', 2, '13');
INSERT INTO `info_area` VALUES (134, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130602', '竞秀区', '河北省保定市竞秀区', 3, '1306');
INSERT INTO `info_area` VALUES (135, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130606', '莲池区', '河北省保定市莲池区', 3, '1306');
INSERT INTO `info_area` VALUES (136, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130607', '满城区', '河北省保定市满城区', 3, '1306');
INSERT INTO `info_area` VALUES (137, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130608', '清苑区', '河北省保定市清苑区', 3, '1306');
INSERT INTO `info_area` VALUES (138, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130609', '徐水区', '河北省保定市徐水区', 3, '1306');
INSERT INTO `info_area` VALUES (139, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130623', '涞水县', '河北省保定市涞水县', 3, '1306');
INSERT INTO `info_area` VALUES (140, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130624', '阜平县', '河北省保定市阜平县', 3, '1306');
INSERT INTO `info_area` VALUES (141, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130626', '定兴县', '河北省保定市定兴县', 3, '1306');
INSERT INTO `info_area` VALUES (142, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130627', '唐县', '河北省保定市唐县', 3, '1306');
INSERT INTO `info_area` VALUES (143, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130628', '高阳县', '河北省保定市高阳县', 3, '1306');
INSERT INTO `info_area` VALUES (144, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130629', '容城县', '河北省保定市容城县', 3, '1306');
INSERT INTO `info_area` VALUES (145, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130630', '涞源县', '河北省保定市涞源县', 3, '1306');
INSERT INTO `info_area` VALUES (146, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130631', '望都县', '河北省保定市望都县', 3, '1306');
INSERT INTO `info_area` VALUES (147, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130632', '安新县', '河北省保定市安新县', 3, '1306');
INSERT INTO `info_area` VALUES (148, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130633', '易县', '河北省保定市易县', 3, '1306');
INSERT INTO `info_area` VALUES (149, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130634', '曲阳县', '河北省保定市曲阳县', 3, '1306');
INSERT INTO `info_area` VALUES (150, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130635', '蠡县', '河北省保定市蠡县', 3, '1306');
INSERT INTO `info_area` VALUES (151, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130636', '顺平县', '河北省保定市顺平县', 3, '1306');
INSERT INTO `info_area` VALUES (152, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130637', '博野县', '河北省保定市博野县', 3, '1306');
INSERT INTO `info_area` VALUES (153, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130638', '雄县', '河北省保定市雄县', 3, '1306');
INSERT INTO `info_area` VALUES (154, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130671', '保定高新技术产业开发区', '河北省保定市保定高新技术产业开发区', 3, '1306');
INSERT INTO `info_area` VALUES (155, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130672', '保定白沟新城', '河北省保定市保定白沟新城', 3, '1306');
INSERT INTO `info_area` VALUES (156, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130681', '涿州市', '河北省保定市涿州市', 3, '1306');
INSERT INTO `info_area` VALUES (157, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130682', '定州市', '河北省保定市定州市', 3, '1306');
INSERT INTO `info_area` VALUES (158, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130683', '安国市', '河北省保定市安国市', 3, '1306');
INSERT INTO `info_area` VALUES (159, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130684', '高碑店市', '河北省保定市高碑店市', 3, '1306');
INSERT INTO `info_area` VALUES (160, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1307', '张家口市', '河北省张家口市', 2, '13');
INSERT INTO `info_area` VALUES (161, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130702', '桥东区', '河北省张家口市桥东区', 3, '1307');
INSERT INTO `info_area` VALUES (162, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130703', '桥西区', '河北省张家口市桥西区', 3, '1307');
INSERT INTO `info_area` VALUES (163, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130705', '宣化区', '河北省张家口市宣化区', 3, '1307');
INSERT INTO `info_area` VALUES (164, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130706', '下花园区', '河北省张家口市下花园区', 3, '1307');
INSERT INTO `info_area` VALUES (165, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130708', '万全区', '河北省张家口市万全区', 3, '1307');
INSERT INTO `info_area` VALUES (166, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130709', '崇礼区', '河北省张家口市崇礼区', 3, '1307');
INSERT INTO `info_area` VALUES (167, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130722', '张北县', '河北省张家口市张北县', 3, '1307');
INSERT INTO `info_area` VALUES (168, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130723', '康保县', '河北省张家口市康保县', 3, '1307');
INSERT INTO `info_area` VALUES (169, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130724', '沽源县', '河北省张家口市沽源县', 3, '1307');
INSERT INTO `info_area` VALUES (170, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130725', '尚义县', '河北省张家口市尚义县', 3, '1307');
INSERT INTO `info_area` VALUES (171, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130726', '蔚县', '河北省张家口市蔚县', 3, '1307');
INSERT INTO `info_area` VALUES (172, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130727', '阳原县', '河北省张家口市阳原县', 3, '1307');
INSERT INTO `info_area` VALUES (173, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130728', '怀安县', '河北省张家口市怀安县', 3, '1307');
INSERT INTO `info_area` VALUES (174, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130730', '怀来县', '河北省张家口市怀来县', 3, '1307');
INSERT INTO `info_area` VALUES (175, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130731', '涿鹿县', '河北省张家口市涿鹿县', 3, '1307');
INSERT INTO `info_area` VALUES (176, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130732', '赤城县', '河北省张家口市赤城县', 3, '1307');
INSERT INTO `info_area` VALUES (177, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130771', '张家口经济开发区', '河北省张家口市张家口经济开发区', 3, '1307');
INSERT INTO `info_area` VALUES (178, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130772', '张家口市察北管理区', '河北省张家口市张家口市察北管理区', 3, '1307');
INSERT INTO `info_area` VALUES (179, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130773', '张家口市塞北管理区', '河北省张家口市张家口市塞北管理区', 3, '1307');
INSERT INTO `info_area` VALUES (180, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1308', '承德市', '河北省承德市', 2, '13');
INSERT INTO `info_area` VALUES (181, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130802', '双桥区', '河北省承德市双桥区', 3, '1308');
INSERT INTO `info_area` VALUES (182, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130803', '双滦区', '河北省承德市双滦区', 3, '1308');
INSERT INTO `info_area` VALUES (183, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130804', '鹰手营子矿区', '河北省承德市鹰手营子矿区', 3, '1308');
INSERT INTO `info_area` VALUES (184, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130821', '承德县', '河北省承德市承德县', 3, '1308');
INSERT INTO `info_area` VALUES (185, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130822', '兴隆县', '河北省承德市兴隆县', 3, '1308');
INSERT INTO `info_area` VALUES (186, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130824', '滦平县', '河北省承德市滦平县', 3, '1308');
INSERT INTO `info_area` VALUES (187, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130825', '隆化县', '河北省承德市隆化县', 3, '1308');
INSERT INTO `info_area` VALUES (188, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130826', '丰宁满族自治县', '河北省承德市丰宁满族自治县', 3, '1308');
INSERT INTO `info_area` VALUES (189, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130827', '宽城满族自治县', '河北省承德市宽城满族自治县', 3, '1308');
INSERT INTO `info_area` VALUES (190, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130828', '围场满族蒙古族自治县', '河北省承德市围场满族蒙古族自治县', 3, '1308');
INSERT INTO `info_area` VALUES (191, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130871', '承德高新技术产业开发区', '河北省承德市承德高新技术产业开发区', 3, '1308');
INSERT INTO `info_area` VALUES (192, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130881', '平泉市', '河北省承德市平泉市', 3, '1308');
INSERT INTO `info_area` VALUES (193, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1309', '沧州市', '河北省沧州市', 2, '13');
INSERT INTO `info_area` VALUES (194, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130902', '新华区', '河北省沧州市新华区', 3, '1309');
INSERT INTO `info_area` VALUES (195, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130903', '运河区', '河北省沧州市运河区', 3, '1309');
INSERT INTO `info_area` VALUES (196, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130921', '沧县', '河北省沧州市沧县', 3, '1309');
INSERT INTO `info_area` VALUES (197, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130922', '青县', '河北省沧州市青县', 3, '1309');
INSERT INTO `info_area` VALUES (198, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130923', '东光县', '河北省沧州市东光县', 3, '1309');
INSERT INTO `info_area` VALUES (199, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130924', '海兴县', '河北省沧州市海兴县', 3, '1309');
INSERT INTO `info_area` VALUES (200, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130925', '盐山县', '河北省沧州市盐山县', 3, '1309');
INSERT INTO `info_area` VALUES (201, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130926', '肃宁县', '河北省沧州市肃宁县', 3, '1309');
INSERT INTO `info_area` VALUES (202, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130927', '南皮县', '河北省沧州市南皮县', 3, '1309');
INSERT INTO `info_area` VALUES (203, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130928', '吴桥县', '河北省沧州市吴桥县', 3, '1309');
INSERT INTO `info_area` VALUES (204, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130929', '献县', '河北省沧州市献县', 3, '1309');
INSERT INTO `info_area` VALUES (205, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130930', '孟村回族自治县', '河北省沧州市孟村回族自治县', 3, '1309');
INSERT INTO `info_area` VALUES (206, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130971', '河北沧州经济开发区', '河北省沧州市河北沧州经济开发区', 3, '1309');
INSERT INTO `info_area` VALUES (207, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130972', '沧州高新技术产业开发区', '河北省沧州市沧州高新技术产业开发区', 3, '1309');
INSERT INTO `info_area` VALUES (208, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130973', '沧州渤海新区', '河北省沧州市沧州渤海新区', 3, '1309');
INSERT INTO `info_area` VALUES (209, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130981', '泊头市', '河北省沧州市泊头市', 3, '1309');
INSERT INTO `info_area` VALUES (210, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130982', '任丘市', '河北省沧州市任丘市', 3, '1309');
INSERT INTO `info_area` VALUES (211, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130983', '黄骅市', '河北省沧州市黄骅市', 3, '1309');
INSERT INTO `info_area` VALUES (212, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '130984', '河间市', '河北省沧州市河间市', 3, '1309');
INSERT INTO `info_area` VALUES (213, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1310', '廊坊市', '河北省廊坊市', 2, '13');
INSERT INTO `info_area` VALUES (214, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131002', '安次区', '河北省廊坊市安次区', 3, '1310');
INSERT INTO `info_area` VALUES (215, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131003', '广阳区', '河北省廊坊市广阳区', 3, '1310');
INSERT INTO `info_area` VALUES (216, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131022', '固安县', '河北省廊坊市固安县', 3, '1310');
INSERT INTO `info_area` VALUES (217, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131023', '永清县', '河北省廊坊市永清县', 3, '1310');
INSERT INTO `info_area` VALUES (218, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131024', '香河县', '河北省廊坊市香河县', 3, '1310');
INSERT INTO `info_area` VALUES (219, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131025', '大城县', '河北省廊坊市大城县', 3, '1310');
INSERT INTO `info_area` VALUES (220, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131026', '文安县', '河北省廊坊市文安县', 3, '1310');
INSERT INTO `info_area` VALUES (221, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131028', '大厂回族自治县', '河北省廊坊市大厂回族自治县', 3, '1310');
INSERT INTO `info_area` VALUES (222, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131071', '廊坊经济技术开发区', '河北省廊坊市廊坊经济技术开发区', 3, '1310');
INSERT INTO `info_area` VALUES (223, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131081', '霸州市', '河北省廊坊市霸州市', 3, '1310');
INSERT INTO `info_area` VALUES (224, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131082', '三河市', '河北省廊坊市三河市', 3, '1310');
INSERT INTO `info_area` VALUES (225, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1311', '衡水市', '河北省衡水市', 2, '13');
INSERT INTO `info_area` VALUES (226, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131102', '桃城区', '河北省衡水市桃城区', 3, '1311');
INSERT INTO `info_area` VALUES (227, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131103', '冀州区', '河北省衡水市冀州区', 3, '1311');
INSERT INTO `info_area` VALUES (228, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131121', '枣强县', '河北省衡水市枣强县', 3, '1311');
INSERT INTO `info_area` VALUES (229, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131122', '武邑县', '河北省衡水市武邑县', 3, '1311');
INSERT INTO `info_area` VALUES (230, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131123', '武强县', '河北省衡水市武强县', 3, '1311');
INSERT INTO `info_area` VALUES (231, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131124', '饶阳县', '河北省衡水市饶阳县', 3, '1311');
INSERT INTO `info_area` VALUES (232, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131125', '安平县', '河北省衡水市安平县', 3, '1311');
INSERT INTO `info_area` VALUES (233, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131126', '故城县', '河北省衡水市故城县', 3, '1311');
INSERT INTO `info_area` VALUES (234, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131127', '景县', '河北省衡水市景县', 3, '1311');
INSERT INTO `info_area` VALUES (235, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131128', '阜城县', '河北省衡水市阜城县', 3, '1311');
INSERT INTO `info_area` VALUES (236, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131171', '河北衡水高新技术产业开发区', '河北省衡水市河北衡水高新技术产业开发区', 3, '1311');
INSERT INTO `info_area` VALUES (237, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131172', '衡水滨湖新区', '河北省衡水市衡水滨湖新区', 3, '1311');
INSERT INTO `info_area` VALUES (238, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '131182', '深州市', '河北省衡水市深州市', 3, '1311');
INSERT INTO `info_area` VALUES (239, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '14', '山西省', '山西省', 1, '');
INSERT INTO `info_area` VALUES (240, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1401', '太原市', '山西省太原市', 2, '14');
INSERT INTO `info_area` VALUES (241, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140105', '小店区', '山西省太原市小店区', 3, '1401');
INSERT INTO `info_area` VALUES (242, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140106', '迎泽区', '山西省太原市迎泽区', 3, '1401');
INSERT INTO `info_area` VALUES (243, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140107', '杏花岭区', '山西省太原市杏花岭区', 3, '1401');
INSERT INTO `info_area` VALUES (244, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140108', '尖草坪区', '山西省太原市尖草坪区', 3, '1401');
INSERT INTO `info_area` VALUES (245, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140109', '万柏林区', '山西省太原市万柏林区', 3, '1401');
INSERT INTO `info_area` VALUES (246, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140110', '晋源区', '山西省太原市晋源区', 3, '1401');
INSERT INTO `info_area` VALUES (247, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140121', '清徐县', '山西省太原市清徐县', 3, '1401');
INSERT INTO `info_area` VALUES (248, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140122', '阳曲县', '山西省太原市阳曲县', 3, '1401');
INSERT INTO `info_area` VALUES (249, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140123', '娄烦县', '山西省太原市娄烦县', 3, '1401');
INSERT INTO `info_area` VALUES (250, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140171', '山西转型综合改革示范区', '山西省太原市山西转型综合改革示范区', 3, '1401');
INSERT INTO `info_area` VALUES (251, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140181', '古交市', '山西省太原市古交市', 3, '1401');
INSERT INTO `info_area` VALUES (252, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1402', '大同市', '山西省大同市', 2, '14');
INSERT INTO `info_area` VALUES (253, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140212', '新荣区', '山西省大同市新荣区', 3, '1402');
INSERT INTO `info_area` VALUES (254, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140213', '平城区', '山西省大同市平城区', 3, '1402');
INSERT INTO `info_area` VALUES (255, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140214', '云冈区', '山西省大同市云冈区', 3, '1402');
INSERT INTO `info_area` VALUES (256, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140215', '云州区', '山西省大同市云州区', 3, '1402');
INSERT INTO `info_area` VALUES (257, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140221', '阳高县', '山西省大同市阳高县', 3, '1402');
INSERT INTO `info_area` VALUES (258, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140222', '天镇县', '山西省大同市天镇县', 3, '1402');
INSERT INTO `info_area` VALUES (259, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140223', '广灵县', '山西省大同市广灵县', 3, '1402');
INSERT INTO `info_area` VALUES (260, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140224', '灵丘县', '山西省大同市灵丘县', 3, '1402');
INSERT INTO `info_area` VALUES (261, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140225', '浑源县', '山西省大同市浑源县', 3, '1402');
INSERT INTO `info_area` VALUES (262, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140226', '左云县', '山西省大同市左云县', 3, '1402');
INSERT INTO `info_area` VALUES (263, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140271', '山西大同经济开发区', '山西省大同市山西大同经济开发区', 3, '1402');
INSERT INTO `info_area` VALUES (264, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1403', '阳泉市', '山西省阳泉市', 2, '14');
INSERT INTO `info_area` VALUES (265, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140302', '城区', '山西省阳泉市城区', 3, '1403');
INSERT INTO `info_area` VALUES (266, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140303', '矿区', '山西省阳泉市矿区', 3, '1403');
INSERT INTO `info_area` VALUES (267, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140311', '郊区', '山西省阳泉市郊区', 3, '1403');
INSERT INTO `info_area` VALUES (268, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140321', '平定县', '山西省阳泉市平定县', 3, '1403');
INSERT INTO `info_area` VALUES (269, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140322', '盂县', '山西省阳泉市盂县', 3, '1403');
INSERT INTO `info_area` VALUES (270, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1404', '长治市', '山西省长治市', 2, '14');
INSERT INTO `info_area` VALUES (271, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140403', '潞州区', '山西省长治市潞州区', 3, '1404');
INSERT INTO `info_area` VALUES (272, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140404', '上党区', '山西省长治市上党区', 3, '1404');
INSERT INTO `info_area` VALUES (273, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140405', '屯留区', '山西省长治市屯留区', 3, '1404');
INSERT INTO `info_area` VALUES (274, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140406', '潞城区', '山西省长治市潞城区', 3, '1404');
INSERT INTO `info_area` VALUES (275, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140423', '襄垣县', '山西省长治市襄垣县', 3, '1404');
INSERT INTO `info_area` VALUES (276, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140425', '平顺县', '山西省长治市平顺县', 3, '1404');
INSERT INTO `info_area` VALUES (277, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140426', '黎城县', '山西省长治市黎城县', 3, '1404');
INSERT INTO `info_area` VALUES (278, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140427', '壶关县', '山西省长治市壶关县', 3, '1404');
INSERT INTO `info_area` VALUES (279, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140428', '长子县', '山西省长治市长子县', 3, '1404');
INSERT INTO `info_area` VALUES (280, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140429', '武乡县', '山西省长治市武乡县', 3, '1404');
INSERT INTO `info_area` VALUES (281, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140430', '沁县', '山西省长治市沁县', 3, '1404');
INSERT INTO `info_area` VALUES (282, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140431', '沁源县', '山西省长治市沁源县', 3, '1404');
INSERT INTO `info_area` VALUES (283, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1405', '晋城市', '山西省晋城市', 2, '14');
INSERT INTO `info_area` VALUES (284, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140502', '城区', '山西省晋城市城区', 3, '1405');
INSERT INTO `info_area` VALUES (285, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140521', '沁水县', '山西省晋城市沁水县', 3, '1405');
INSERT INTO `info_area` VALUES (286, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140522', '阳城县', '山西省晋城市阳城县', 3, '1405');
INSERT INTO `info_area` VALUES (287, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140524', '陵川县', '山西省晋城市陵川县', 3, '1405');
INSERT INTO `info_area` VALUES (288, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140525', '泽州县', '山西省晋城市泽州县', 3, '1405');
INSERT INTO `info_area` VALUES (289, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140581', '高平市', '山西省晋城市高平市', 3, '1405');
INSERT INTO `info_area` VALUES (290, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1406', '朔州市', '山西省朔州市', 2, '14');
INSERT INTO `info_area` VALUES (291, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140602', '朔城区', '山西省朔州市朔城区', 3, '1406');
INSERT INTO `info_area` VALUES (292, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140603', '平鲁区', '山西省朔州市平鲁区', 3, '1406');
INSERT INTO `info_area` VALUES (293, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140621', '山阴县', '山西省朔州市山阴县', 3, '1406');
INSERT INTO `info_area` VALUES (294, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140622', '应县', '山西省朔州市应县', 3, '1406');
INSERT INTO `info_area` VALUES (295, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140623', '右玉县', '山西省朔州市右玉县', 3, '1406');
INSERT INTO `info_area` VALUES (296, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140671', '山西朔州经济开发区', '山西省朔州市山西朔州经济开发区', 3, '1406');
INSERT INTO `info_area` VALUES (297, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140681', '怀仁市', '山西省朔州市怀仁市', 3, '1406');
INSERT INTO `info_area` VALUES (298, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1407', '晋中市', '山西省晋中市', 2, '14');
INSERT INTO `info_area` VALUES (299, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140702', '榆次区', '山西省晋中市榆次区', 3, '1407');
INSERT INTO `info_area` VALUES (300, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140703', '太谷区', '山西省晋中市太谷区', 3, '1407');
INSERT INTO `info_area` VALUES (301, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140721', '榆社县', '山西省晋中市榆社县', 3, '1407');
INSERT INTO `info_area` VALUES (302, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140722', '左权县', '山西省晋中市左权县', 3, '1407');
INSERT INTO `info_area` VALUES (303, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140723', '和顺县', '山西省晋中市和顺县', 3, '1407');
INSERT INTO `info_area` VALUES (304, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140724', '昔阳县', '山西省晋中市昔阳县', 3, '1407');
INSERT INTO `info_area` VALUES (305, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140725', '寿阳县', '山西省晋中市寿阳县', 3, '1407');
INSERT INTO `info_area` VALUES (306, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140727', '祁县', '山西省晋中市祁县', 3, '1407');
INSERT INTO `info_area` VALUES (307, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140728', '平遥县', '山西省晋中市平遥县', 3, '1407');
INSERT INTO `info_area` VALUES (308, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140729', '灵石县', '山西省晋中市灵石县', 3, '1407');
INSERT INTO `info_area` VALUES (309, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140781', '介休市', '山西省晋中市介休市', 3, '1407');
INSERT INTO `info_area` VALUES (310, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1408', '运城市', '山西省运城市', 2, '14');
INSERT INTO `info_area` VALUES (311, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140802', '盐湖区', '山西省运城市盐湖区', 3, '1408');
INSERT INTO `info_area` VALUES (312, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140821', '临猗县', '山西省运城市临猗县', 3, '1408');
INSERT INTO `info_area` VALUES (313, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140822', '万荣县', '山西省运城市万荣县', 3, '1408');
INSERT INTO `info_area` VALUES (314, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140823', '闻喜县', '山西省运城市闻喜县', 3, '1408');
INSERT INTO `info_area` VALUES (315, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140824', '稷山县', '山西省运城市稷山县', 3, '1408');
INSERT INTO `info_area` VALUES (316, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140825', '新绛县', '山西省运城市新绛县', 3, '1408');
INSERT INTO `info_area` VALUES (317, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140826', '绛县', '山西省运城市绛县', 3, '1408');
INSERT INTO `info_area` VALUES (318, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140827', '垣曲县', '山西省运城市垣曲县', 3, '1408');
INSERT INTO `info_area` VALUES (319, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140828', '夏县', '山西省运城市夏县', 3, '1408');
INSERT INTO `info_area` VALUES (320, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140829', '平陆县', '山西省运城市平陆县', 3, '1408');
INSERT INTO `info_area` VALUES (321, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140830', '芮城县', '山西省运城市芮城县', 3, '1408');
INSERT INTO `info_area` VALUES (322, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140881', '永济市', '山西省运城市永济市', 3, '1408');
INSERT INTO `info_area` VALUES (323, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140882', '河津市', '山西省运城市河津市', 3, '1408');
INSERT INTO `info_area` VALUES (324, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1409', '忻州市', '山西省忻州市', 2, '14');
INSERT INTO `info_area` VALUES (325, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140902', '忻府区', '山西省忻州市忻府区', 3, '1409');
INSERT INTO `info_area` VALUES (326, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140921', '定襄县', '山西省忻州市定襄县', 3, '1409');
INSERT INTO `info_area` VALUES (327, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140922', '五台县', '山西省忻州市五台县', 3, '1409');
INSERT INTO `info_area` VALUES (328, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140923', '代县', '山西省忻州市代县', 3, '1409');
INSERT INTO `info_area` VALUES (329, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140924', '繁峙县', '山西省忻州市繁峙县', 3, '1409');
INSERT INTO `info_area` VALUES (330, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140925', '宁武县', '山西省忻州市宁武县', 3, '1409');
INSERT INTO `info_area` VALUES (331, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140926', '静乐县', '山西省忻州市静乐县', 3, '1409');
INSERT INTO `info_area` VALUES (332, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140927', '神池县', '山西省忻州市神池县', 3, '1409');
INSERT INTO `info_area` VALUES (333, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140928', '五寨县', '山西省忻州市五寨县', 3, '1409');
INSERT INTO `info_area` VALUES (334, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140929', '岢岚县', '山西省忻州市岢岚县', 3, '1409');
INSERT INTO `info_area` VALUES (335, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140930', '河曲县', '山西省忻州市河曲县', 3, '1409');
INSERT INTO `info_area` VALUES (336, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140931', '保德县', '山西省忻州市保德县', 3, '1409');
INSERT INTO `info_area` VALUES (337, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140932', '偏关县', '山西省忻州市偏关县', 3, '1409');
INSERT INTO `info_area` VALUES (338, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140971', '五台山风景名胜区', '山西省忻州市五台山风景名胜区', 3, '1409');
INSERT INTO `info_area` VALUES (339, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '140981', '原平市', '山西省忻州市原平市', 3, '1409');
INSERT INTO `info_area` VALUES (340, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1410', '临汾市', '山西省临汾市', 2, '14');
INSERT INTO `info_area` VALUES (341, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141002', '尧都区', '山西省临汾市尧都区', 3, '1410');
INSERT INTO `info_area` VALUES (342, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141021', '曲沃县', '山西省临汾市曲沃县', 3, '1410');
INSERT INTO `info_area` VALUES (343, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141022', '翼城县', '山西省临汾市翼城县', 3, '1410');
INSERT INTO `info_area` VALUES (344, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141023', '襄汾县', '山西省临汾市襄汾县', 3, '1410');
INSERT INTO `info_area` VALUES (345, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141024', '洪洞县', '山西省临汾市洪洞县', 3, '1410');
INSERT INTO `info_area` VALUES (346, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141025', '古县', '山西省临汾市古县', 3, '1410');
INSERT INTO `info_area` VALUES (347, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141026', '安泽县', '山西省临汾市安泽县', 3, '1410');
INSERT INTO `info_area` VALUES (348, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141027', '浮山县', '山西省临汾市浮山县', 3, '1410');
INSERT INTO `info_area` VALUES (349, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141028', '吉县', '山西省临汾市吉县', 3, '1410');
INSERT INTO `info_area` VALUES (350, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141029', '乡宁县', '山西省临汾市乡宁县', 3, '1410');
INSERT INTO `info_area` VALUES (351, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141030', '大宁县', '山西省临汾市大宁县', 3, '1410');
INSERT INTO `info_area` VALUES (352, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141031', '隰县', '山西省临汾市隰县', 3, '1410');
INSERT INTO `info_area` VALUES (353, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141032', '永和县', '山西省临汾市永和县', 3, '1410');
INSERT INTO `info_area` VALUES (354, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141033', '蒲县', '山西省临汾市蒲县', 3, '1410');
INSERT INTO `info_area` VALUES (355, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141034', '汾西县', '山西省临汾市汾西县', 3, '1410');
INSERT INTO `info_area` VALUES (356, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141081', '侯马市', '山西省临汾市侯马市', 3, '1410');
INSERT INTO `info_area` VALUES (357, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141082', '霍州市', '山西省临汾市霍州市', 3, '1410');
INSERT INTO `info_area` VALUES (358, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1411', '吕梁市', '山西省吕梁市', 2, '14');
INSERT INTO `info_area` VALUES (359, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141102', '离石区', '山西省吕梁市离石区', 3, '1411');
INSERT INTO `info_area` VALUES (360, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141121', '文水县', '山西省吕梁市文水县', 3, '1411');
INSERT INTO `info_area` VALUES (361, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141122', '交城县', '山西省吕梁市交城县', 3, '1411');
INSERT INTO `info_area` VALUES (362, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141123', '兴县', '山西省吕梁市兴县', 3, '1411');
INSERT INTO `info_area` VALUES (363, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141124', '临县', '山西省吕梁市临县', 3, '1411');
INSERT INTO `info_area` VALUES (364, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141125', '柳林县', '山西省吕梁市柳林县', 3, '1411');
INSERT INTO `info_area` VALUES (365, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141126', '石楼县', '山西省吕梁市石楼县', 3, '1411');
INSERT INTO `info_area` VALUES (366, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141127', '岚县', '山西省吕梁市岚县', 3, '1411');
INSERT INTO `info_area` VALUES (367, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141128', '方山县', '山西省吕梁市方山县', 3, '1411');
INSERT INTO `info_area` VALUES (368, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141129', '中阳县', '山西省吕梁市中阳县', 3, '1411');
INSERT INTO `info_area` VALUES (369, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141130', '交口县', '山西省吕梁市交口县', 3, '1411');
INSERT INTO `info_area` VALUES (370, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141181', '孝义市', '山西省吕梁市孝义市', 3, '1411');
INSERT INTO `info_area` VALUES (371, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '141182', '汾阳市', '山西省吕梁市汾阳市', 3, '1411');
INSERT INTO `info_area` VALUES (372, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '15', '内蒙古自治区', '内蒙古自治区', 1, '');
INSERT INTO `info_area` VALUES (373, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1501', '呼和浩特市', '内蒙古自治区呼和浩特市', 2, '15');
INSERT INTO `info_area` VALUES (374, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150102', '新城区', '内蒙古自治区呼和浩特市新城区', 3, '1501');
INSERT INTO `info_area` VALUES (375, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150103', '回民区', '内蒙古自治区呼和浩特市回民区', 3, '1501');
INSERT INTO `info_area` VALUES (376, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150104', '玉泉区', '内蒙古自治区呼和浩特市玉泉区', 3, '1501');
INSERT INTO `info_area` VALUES (377, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150105', '赛罕区', '内蒙古自治区呼和浩特市赛罕区', 3, '1501');
INSERT INTO `info_area` VALUES (378, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150121', '土默特左旗', '内蒙古自治区呼和浩特市土默特左旗', 3, '1501');
INSERT INTO `info_area` VALUES (379, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150122', '托克托县', '内蒙古自治区呼和浩特市托克托县', 3, '1501');
INSERT INTO `info_area` VALUES (380, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150123', '和林格尔县', '内蒙古自治区呼和浩特市和林格尔县', 3, '1501');
INSERT INTO `info_area` VALUES (381, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150124', '清水河县', '内蒙古自治区呼和浩特市清水河县', 3, '1501');
INSERT INTO `info_area` VALUES (382, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150125', '武川县', '内蒙古自治区呼和浩特市武川县', 3, '1501');
INSERT INTO `info_area` VALUES (383, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150172', '呼和浩特经济技术开发区', '内蒙古自治区呼和浩特市呼和浩特经济技术开发区', 3, '1501');
INSERT INTO `info_area` VALUES (384, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1502', '包头市', '内蒙古自治区包头市', 2, '15');
INSERT INTO `info_area` VALUES (385, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150202', '东河区', '内蒙古自治区包头市东河区', 3, '1502');
INSERT INTO `info_area` VALUES (386, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150203', '昆都仑区', '内蒙古自治区包头市昆都仑区', 3, '1502');
INSERT INTO `info_area` VALUES (387, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150204', '青山区', '内蒙古自治区包头市青山区', 3, '1502');
INSERT INTO `info_area` VALUES (388, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150205', '石拐区', '内蒙古自治区包头市石拐区', 3, '1502');
INSERT INTO `info_area` VALUES (389, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150206', '白云鄂博矿区', '内蒙古自治区包头市白云鄂博矿区', 3, '1502');
INSERT INTO `info_area` VALUES (390, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150207', '九原区', '内蒙古自治区包头市九原区', 3, '1502');
INSERT INTO `info_area` VALUES (391, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150221', '土默特右旗', '内蒙古自治区包头市土默特右旗', 3, '1502');
INSERT INTO `info_area` VALUES (392, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150222', '固阳县', '内蒙古自治区包头市固阳县', 3, '1502');
INSERT INTO `info_area` VALUES (393, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150223', '达尔罕茂明安联合旗', '内蒙古自治区包头市达尔罕茂明安联合旗', 3, '1502');
INSERT INTO `info_area` VALUES (394, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150271', '包头稀土高新技术产业开发区', '内蒙古自治区包头市包头稀土高新技术产业开发区', 3, '1502');
INSERT INTO `info_area` VALUES (395, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1503', '乌海市', '内蒙古自治区乌海市', 2, '15');
INSERT INTO `info_area` VALUES (396, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150302', '海勃湾区', '内蒙古自治区乌海市海勃湾区', 3, '1503');
INSERT INTO `info_area` VALUES (397, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150303', '海南区', '内蒙古自治区乌海市海南区', 3, '1503');
INSERT INTO `info_area` VALUES (398, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150304', '乌达区', '内蒙古自治区乌海市乌达区', 3, '1503');
INSERT INTO `info_area` VALUES (399, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1504', '赤峰市', '内蒙古自治区赤峰市', 2, '15');
INSERT INTO `info_area` VALUES (400, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150402', '红山区', '内蒙古自治区赤峰市红山区', 3, '1504');
INSERT INTO `info_area` VALUES (401, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150403', '元宝山区', '内蒙古自治区赤峰市元宝山区', 3, '1504');
INSERT INTO `info_area` VALUES (402, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150404', '松山区', '内蒙古自治区赤峰市松山区', 3, '1504');
INSERT INTO `info_area` VALUES (403, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150421', '阿鲁科尔沁旗', '内蒙古自治区赤峰市阿鲁科尔沁旗', 3, '1504');
INSERT INTO `info_area` VALUES (404, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150422', '巴林左旗', '内蒙古自治区赤峰市巴林左旗', 3, '1504');
INSERT INTO `info_area` VALUES (405, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150423', '巴林右旗', '内蒙古自治区赤峰市巴林右旗', 3, '1504');
INSERT INTO `info_area` VALUES (406, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150424', '林西县', '内蒙古自治区赤峰市林西县', 3, '1504');
INSERT INTO `info_area` VALUES (407, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150425', '克什克腾旗', '内蒙古自治区赤峰市克什克腾旗', 3, '1504');
INSERT INTO `info_area` VALUES (408, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150426', '翁牛特旗', '内蒙古自治区赤峰市翁牛特旗', 3, '1504');
INSERT INTO `info_area` VALUES (409, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150428', '喀喇沁旗', '内蒙古自治区赤峰市喀喇沁旗', 3, '1504');
INSERT INTO `info_area` VALUES (410, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150429', '宁城县', '内蒙古自治区赤峰市宁城县', 3, '1504');
INSERT INTO `info_area` VALUES (411, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150430', '敖汉旗', '内蒙古自治区赤峰市敖汉旗', 3, '1504');
INSERT INTO `info_area` VALUES (412, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1505', '通辽市', '内蒙古自治区通辽市', 2, '15');
INSERT INTO `info_area` VALUES (413, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150502', '科尔沁区', '内蒙古自治区通辽市科尔沁区', 3, '1505');
INSERT INTO `info_area` VALUES (414, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150521', '科尔沁左翼中旗', '内蒙古自治区通辽市科尔沁左翼中旗', 3, '1505');
INSERT INTO `info_area` VALUES (415, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150522', '科尔沁左翼后旗', '内蒙古自治区通辽市科尔沁左翼后旗', 3, '1505');
INSERT INTO `info_area` VALUES (416, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150523', '开鲁县', '内蒙古自治区通辽市开鲁县', 3, '1505');
INSERT INTO `info_area` VALUES (417, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150524', '库伦旗', '内蒙古自治区通辽市库伦旗', 3, '1505');
INSERT INTO `info_area` VALUES (418, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150525', '奈曼旗', '内蒙古自治区通辽市奈曼旗', 3, '1505');
INSERT INTO `info_area` VALUES (419, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150526', '扎鲁特旗', '内蒙古自治区通辽市扎鲁特旗', 3, '1505');
INSERT INTO `info_area` VALUES (420, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150571', '通辽经济技术开发区', '内蒙古自治区通辽市通辽经济技术开发区', 3, '1505');
INSERT INTO `info_area` VALUES (421, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150581', '霍林郭勒市', '内蒙古自治区通辽市霍林郭勒市', 3, '1505');
INSERT INTO `info_area` VALUES (422, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1506', '鄂尔多斯市', '内蒙古自治区鄂尔多斯市', 2, '15');
INSERT INTO `info_area` VALUES (423, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150602', '东胜区', '内蒙古自治区鄂尔多斯市东胜区', 3, '1506');
INSERT INTO `info_area` VALUES (424, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150603', '康巴什区', '内蒙古自治区鄂尔多斯市康巴什区', 3, '1506');
INSERT INTO `info_area` VALUES (425, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150621', '达拉特旗', '内蒙古自治区鄂尔多斯市达拉特旗', 3, '1506');
INSERT INTO `info_area` VALUES (426, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150622', '准格尔旗', '内蒙古自治区鄂尔多斯市准格尔旗', 3, '1506');
INSERT INTO `info_area` VALUES (427, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150623', '鄂托克前旗', '内蒙古自治区鄂尔多斯市鄂托克前旗', 3, '1506');
INSERT INTO `info_area` VALUES (428, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150624', '鄂托克旗', '内蒙古自治区鄂尔多斯市鄂托克旗', 3, '1506');
INSERT INTO `info_area` VALUES (429, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150625', '杭锦旗', '内蒙古自治区鄂尔多斯市杭锦旗', 3, '1506');
INSERT INTO `info_area` VALUES (430, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150626', '乌审旗', '内蒙古自治区鄂尔多斯市乌审旗', 3, '1506');
INSERT INTO `info_area` VALUES (431, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150627', '伊金霍洛旗', '内蒙古自治区鄂尔多斯市伊金霍洛旗', 3, '1506');
INSERT INTO `info_area` VALUES (432, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1507', '呼伦贝尔市', '内蒙古自治区呼伦贝尔市', 2, '15');
INSERT INTO `info_area` VALUES (433, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150702', '海拉尔区', '内蒙古自治区呼伦贝尔市海拉尔区', 3, '1507');
INSERT INTO `info_area` VALUES (434, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150703', '扎赉诺尔区', '内蒙古自治区呼伦贝尔市扎赉诺尔区', 3, '1507');
INSERT INTO `info_area` VALUES (435, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150721', '阿荣旗', '内蒙古自治区呼伦贝尔市阿荣旗', 3, '1507');
INSERT INTO `info_area` VALUES (436, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150722', '莫力达瓦达斡尔族自治旗', '内蒙古自治区呼伦贝尔市莫力达瓦达斡尔族自治旗', 3, '1507');
INSERT INTO `info_area` VALUES (437, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150723', '鄂伦春自治旗', '内蒙古自治区呼伦贝尔市鄂伦春自治旗', 3, '1507');
INSERT INTO `info_area` VALUES (438, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150724', '鄂温克族自治旗', '内蒙古自治区呼伦贝尔市鄂温克族自治旗', 3, '1507');
INSERT INTO `info_area` VALUES (439, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150725', '陈巴尔虎旗', '内蒙古自治区呼伦贝尔市陈巴尔虎旗', 3, '1507');
INSERT INTO `info_area` VALUES (440, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150726', '新巴尔虎左旗', '内蒙古自治区呼伦贝尔市新巴尔虎左旗', 3, '1507');
INSERT INTO `info_area` VALUES (441, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150727', '新巴尔虎右旗', '内蒙古自治区呼伦贝尔市新巴尔虎右旗', 3, '1507');
INSERT INTO `info_area` VALUES (442, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150781', '满洲里市', '内蒙古自治区呼伦贝尔市满洲里市', 3, '1507');
INSERT INTO `info_area` VALUES (443, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150782', '牙克石市', '内蒙古自治区呼伦贝尔市牙克石市', 3, '1507');
INSERT INTO `info_area` VALUES (444, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150783', '扎兰屯市', '内蒙古自治区呼伦贝尔市扎兰屯市', 3, '1507');
INSERT INTO `info_area` VALUES (445, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150784', '额尔古纳市', '内蒙古自治区呼伦贝尔市额尔古纳市', 3, '1507');
INSERT INTO `info_area` VALUES (446, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150785', '根河市', '内蒙古自治区呼伦贝尔市根河市', 3, '1507');
INSERT INTO `info_area` VALUES (447, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1508', '巴彦淖尔市', '内蒙古自治区巴彦淖尔市', 2, '15');
INSERT INTO `info_area` VALUES (448, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150802', '临河区', '内蒙古自治区巴彦淖尔市临河区', 3, '1508');
INSERT INTO `info_area` VALUES (449, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150821', '五原县', '内蒙古自治区巴彦淖尔市五原县', 3, '1508');
INSERT INTO `info_area` VALUES (450, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150822', '磴口县', '内蒙古自治区巴彦淖尔市磴口县', 3, '1508');
INSERT INTO `info_area` VALUES (451, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150823', '乌拉特前旗', '内蒙古自治区巴彦淖尔市乌拉特前旗', 3, '1508');
INSERT INTO `info_area` VALUES (452, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150824', '乌拉特中旗', '内蒙古自治区巴彦淖尔市乌拉特中旗', 3, '1508');
INSERT INTO `info_area` VALUES (453, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150825', '乌拉特后旗', '内蒙古自治区巴彦淖尔市乌拉特后旗', 3, '1508');
INSERT INTO `info_area` VALUES (454, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150826', '杭锦后旗', '内蒙古自治区巴彦淖尔市杭锦后旗', 3, '1508');
INSERT INTO `info_area` VALUES (455, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1509', '乌兰察布市', '内蒙古自治区乌兰察布市', 2, '15');
INSERT INTO `info_area` VALUES (456, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150902', '集宁区', '内蒙古自治区乌兰察布市集宁区', 3, '1509');
INSERT INTO `info_area` VALUES (457, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150921', '卓资县', '内蒙古自治区乌兰察布市卓资县', 3, '1509');
INSERT INTO `info_area` VALUES (458, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150922', '化德县', '内蒙古自治区乌兰察布市化德县', 3, '1509');
INSERT INTO `info_area` VALUES (459, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150923', '商都县', '内蒙古自治区乌兰察布市商都县', 3, '1509');
INSERT INTO `info_area` VALUES (460, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150924', '兴和县', '内蒙古自治区乌兰察布市兴和县', 3, '1509');
INSERT INTO `info_area` VALUES (461, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150925', '凉城县', '内蒙古自治区乌兰察布市凉城县', 3, '1509');
INSERT INTO `info_area` VALUES (462, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150926', '察哈尔右翼前旗', '内蒙古自治区乌兰察布市察哈尔右翼前旗', 3, '1509');
INSERT INTO `info_area` VALUES (463, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150927', '察哈尔右翼中旗', '内蒙古自治区乌兰察布市察哈尔右翼中旗', 3, '1509');
INSERT INTO `info_area` VALUES (464, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150928', '察哈尔右翼后旗', '内蒙古自治区乌兰察布市察哈尔右翼后旗', 3, '1509');
INSERT INTO `info_area` VALUES (465, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150929', '四子王旗', '内蒙古自治区乌兰察布市四子王旗', 3, '1509');
INSERT INTO `info_area` VALUES (466, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '150981', '丰镇市', '内蒙古自治区乌兰察布市丰镇市', 3, '1509');
INSERT INTO `info_area` VALUES (467, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1522', '兴安盟', '内蒙古自治区兴安盟', 2, '15');
INSERT INTO `info_area` VALUES (468, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152201', '乌兰浩特市', '内蒙古自治区兴安盟乌兰浩特市', 3, '1522');
INSERT INTO `info_area` VALUES (469, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152202', '阿尔山市', '内蒙古自治区兴安盟阿尔山市', 3, '1522');
INSERT INTO `info_area` VALUES (470, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152221', '科尔沁右翼前旗', '内蒙古自治区兴安盟科尔沁右翼前旗', 3, '1522');
INSERT INTO `info_area` VALUES (471, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152222', '科尔沁右翼中旗', '内蒙古自治区兴安盟科尔沁右翼中旗', 3, '1522');
INSERT INTO `info_area` VALUES (472, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152223', '扎赉特旗', '内蒙古自治区兴安盟扎赉特旗', 3, '1522');
INSERT INTO `info_area` VALUES (473, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152224', '突泉县', '内蒙古自治区兴安盟突泉县', 3, '1522');
INSERT INTO `info_area` VALUES (474, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1525', '锡林郭勒盟', '内蒙古自治区锡林郭勒盟', 2, '15');
INSERT INTO `info_area` VALUES (475, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152501', '二连浩特市', '内蒙古自治区锡林郭勒盟二连浩特市', 3, '1525');
INSERT INTO `info_area` VALUES (476, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152502', '锡林浩特市', '内蒙古自治区锡林郭勒盟锡林浩特市', 3, '1525');
INSERT INTO `info_area` VALUES (477, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152522', '阿巴嘎旗', '内蒙古自治区锡林郭勒盟阿巴嘎旗', 3, '1525');
INSERT INTO `info_area` VALUES (478, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152523', '苏尼特左旗', '内蒙古自治区锡林郭勒盟苏尼特左旗', 3, '1525');
INSERT INTO `info_area` VALUES (479, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152524', '苏尼特右旗', '内蒙古自治区锡林郭勒盟苏尼特右旗', 3, '1525');
INSERT INTO `info_area` VALUES (480, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152525', '东乌珠穆沁旗', '内蒙古自治区锡林郭勒盟东乌珠穆沁旗', 3, '1525');
INSERT INTO `info_area` VALUES (481, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152526', '西乌珠穆沁旗', '内蒙古自治区锡林郭勒盟西乌珠穆沁旗', 3, '1525');
INSERT INTO `info_area` VALUES (482, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152527', '太仆寺旗', '内蒙古自治区锡林郭勒盟太仆寺旗', 3, '1525');
INSERT INTO `info_area` VALUES (483, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152528', '镶黄旗', '内蒙古自治区锡林郭勒盟镶黄旗', 3, '1525');
INSERT INTO `info_area` VALUES (484, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152529', '正镶白旗', '内蒙古自治区锡林郭勒盟正镶白旗', 3, '1525');
INSERT INTO `info_area` VALUES (485, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152530', '正蓝旗', '内蒙古自治区锡林郭勒盟正蓝旗', 3, '1525');
INSERT INTO `info_area` VALUES (486, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152531', '多伦县', '内蒙古自治区锡林郭勒盟多伦县', 3, '1525');
INSERT INTO `info_area` VALUES (487, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152571', '乌拉盖管理区管委会', '内蒙古自治区锡林郭勒盟乌拉盖管理区管委会', 3, '1525');
INSERT INTO `info_area` VALUES (488, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '1529', '阿拉善盟', '内蒙古自治区阿拉善盟', 2, '15');
INSERT INTO `info_area` VALUES (489, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152921', '阿拉善左旗', '内蒙古自治区阿拉善盟阿拉善左旗', 3, '1529');
INSERT INTO `info_area` VALUES (490, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152922', '阿拉善右旗', '内蒙古自治区阿拉善盟阿拉善右旗', 3, '1529');
INSERT INTO `info_area` VALUES (491, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152923', '额济纳旗', '内蒙古自治区阿拉善盟额济纳旗', 3, '1529');
INSERT INTO `info_area` VALUES (492, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '152971', '内蒙古阿拉善高新技术产业开发区', '内蒙古自治区阿拉善盟内蒙古阿拉善高新技术产业开发区', 3, '1529');
INSERT INTO `info_area` VALUES (493, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '21', '辽宁省', '辽宁省', 1, '');
INSERT INTO `info_area` VALUES (494, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '2101', '沈阳市', '辽宁省沈阳市', 2, '21');
INSERT INTO `info_area` VALUES (495, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210102', '和平区', '辽宁省沈阳市和平区', 3, '2101');
INSERT INTO `info_area` VALUES (496, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210103', '沈河区', '辽宁省沈阳市沈河区', 3, '2101');
INSERT INTO `info_area` VALUES (497, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210104', '大东区', '辽宁省沈阳市大东区', 3, '2101');
INSERT INTO `info_area` VALUES (498, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210105', '皇姑区', '辽宁省沈阳市皇姑区', 3, '2101');
INSERT INTO `info_area` VALUES (499, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210106', '铁西区', '辽宁省沈阳市铁西区', 3, '2101');
INSERT INTO `info_area` VALUES (500, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210111', '苏家屯区', '辽宁省沈阳市苏家屯区', 3, '2101');
INSERT INTO `info_area` VALUES (501, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210112', '浑南区', '辽宁省沈阳市浑南区', 3, '2101');
INSERT INTO `info_area` VALUES (502, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210113', '沈北新区', '辽宁省沈阳市沈北新区', 3, '2101');
INSERT INTO `info_area` VALUES (503, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210114', '于洪区', '辽宁省沈阳市于洪区', 3, '2101');
INSERT INTO `info_area` VALUES (504, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210115', '辽中区', '辽宁省沈阳市辽中区', 3, '2101');
INSERT INTO `info_area` VALUES (505, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210123', '康平县', '辽宁省沈阳市康平县', 3, '2101');
INSERT INTO `info_area` VALUES (506, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210124', '法库县', '辽宁省沈阳市法库县', 3, '2101');
INSERT INTO `info_area` VALUES (507, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210181', '新民市', '辽宁省沈阳市新民市', 3, '2101');
INSERT INTO `info_area` VALUES (508, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '2102', '大连市', '辽宁省大连市', 2, '21');
INSERT INTO `info_area` VALUES (509, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210202', '中山区', '辽宁省大连市中山区', 3, '2102');
INSERT INTO `info_area` VALUES (510, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210203', '西岗区', '辽宁省大连市西岗区', 3, '2102');
INSERT INTO `info_area` VALUES (511, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210204', '沙河口区', '辽宁省大连市沙河口区', 3, '2102');
INSERT INTO `info_area` VALUES (512, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210211', '甘井子区', '辽宁省大连市甘井子区', 3, '2102');
INSERT INTO `info_area` VALUES (513, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210212', '旅顺口区', '辽宁省大连市旅顺口区', 3, '2102');
INSERT INTO `info_area` VALUES (514, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210213', '金州区', '辽宁省大连市金州区', 3, '2102');
INSERT INTO `info_area` VALUES (515, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210214', '普兰店区', '辽宁省大连市普兰店区', 3, '2102');
INSERT INTO `info_area` VALUES (516, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210224', '长海县', '辽宁省大连市长海县', 3, '2102');
INSERT INTO `info_area` VALUES (517, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210281', '瓦房店市', '辽宁省大连市瓦房店市', 3, '2102');
INSERT INTO `info_area` VALUES (518, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '210283', '庄河市', '辽宁省大连市庄河市', 3, '2102');
INSERT INTO `info_area` VALUES (519, '2024-03-21 19:17:54', 1, '2024-03-21 19:17:54', 1, '2103', '鞍山市', '辽宁省鞍山市', 2, '21');
INSERT INTO `info_area` VALUES (520, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210302', '铁东区', '辽宁省鞍山市铁东区', 3, '2103');
INSERT INTO `info_area` VALUES (521, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210303', '铁西区', '辽宁省鞍山市铁西区', 3, '2103');
INSERT INTO `info_area` VALUES (522, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210304', '立山区', '辽宁省鞍山市立山区', 3, '2103');
INSERT INTO `info_area` VALUES (523, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210311', '千山区', '辽宁省鞍山市千山区', 3, '2103');
INSERT INTO `info_area` VALUES (524, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210321', '台安县', '辽宁省鞍山市台安县', 3, '2103');
INSERT INTO `info_area` VALUES (525, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210323', '岫岩满族自治县', '辽宁省鞍山市岫岩满族自治县', 3, '2103');
INSERT INTO `info_area` VALUES (526, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210381', '海城市', '辽宁省鞍山市海城市', 3, '2103');
INSERT INTO `info_area` VALUES (527, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2104', '抚顺市', '辽宁省抚顺市', 2, '21');
INSERT INTO `info_area` VALUES (528, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210402', '新抚区', '辽宁省抚顺市新抚区', 3, '2104');
INSERT INTO `info_area` VALUES (529, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210403', '东洲区', '辽宁省抚顺市东洲区', 3, '2104');
INSERT INTO `info_area` VALUES (530, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210404', '望花区', '辽宁省抚顺市望花区', 3, '2104');
INSERT INTO `info_area` VALUES (531, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210411', '顺城区', '辽宁省抚顺市顺城区', 3, '2104');
INSERT INTO `info_area` VALUES (532, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210421', '抚顺县', '辽宁省抚顺市抚顺县', 3, '2104');
INSERT INTO `info_area` VALUES (533, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210422', '新宾满族自治县', '辽宁省抚顺市新宾满族自治县', 3, '2104');
INSERT INTO `info_area` VALUES (534, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210423', '清原满族自治县', '辽宁省抚顺市清原满族自治县', 3, '2104');
INSERT INTO `info_area` VALUES (535, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2105', '本溪市', '辽宁省本溪市', 2, '21');
INSERT INTO `info_area` VALUES (536, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210502', '平山区', '辽宁省本溪市平山区', 3, '2105');
INSERT INTO `info_area` VALUES (537, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210503', '溪湖区', '辽宁省本溪市溪湖区', 3, '2105');
INSERT INTO `info_area` VALUES (538, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210504', '明山区', '辽宁省本溪市明山区', 3, '2105');
INSERT INTO `info_area` VALUES (539, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210505', '南芬区', '辽宁省本溪市南芬区', 3, '2105');
INSERT INTO `info_area` VALUES (540, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210521', '本溪满族自治县', '辽宁省本溪市本溪满族自治县', 3, '2105');
INSERT INTO `info_area` VALUES (541, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210522', '桓仁满族自治县', '辽宁省本溪市桓仁满族自治县', 3, '2105');
INSERT INTO `info_area` VALUES (542, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2106', '丹东市', '辽宁省丹东市', 2, '21');
INSERT INTO `info_area` VALUES (543, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210602', '元宝区', '辽宁省丹东市元宝区', 3, '2106');
INSERT INTO `info_area` VALUES (544, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210603', '振兴区', '辽宁省丹东市振兴区', 3, '2106');
INSERT INTO `info_area` VALUES (545, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210604', '振安区', '辽宁省丹东市振安区', 3, '2106');
INSERT INTO `info_area` VALUES (546, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210624', '宽甸满族自治县', '辽宁省丹东市宽甸满族自治县', 3, '2106');
INSERT INTO `info_area` VALUES (547, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210681', '东港市', '辽宁省丹东市东港市', 3, '2106');
INSERT INTO `info_area` VALUES (548, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210682', '凤城市', '辽宁省丹东市凤城市', 3, '2106');
INSERT INTO `info_area` VALUES (549, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2107', '锦州市', '辽宁省锦州市', 2, '21');
INSERT INTO `info_area` VALUES (550, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210702', '古塔区', '辽宁省锦州市古塔区', 3, '2107');
INSERT INTO `info_area` VALUES (551, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210703', '凌河区', '辽宁省锦州市凌河区', 3, '2107');
INSERT INTO `info_area` VALUES (552, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210711', '太和区', '辽宁省锦州市太和区', 3, '2107');
INSERT INTO `info_area` VALUES (553, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210726', '黑山县', '辽宁省锦州市黑山县', 3, '2107');
INSERT INTO `info_area` VALUES (554, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210727', '义县', '辽宁省锦州市义县', 3, '2107');
INSERT INTO `info_area` VALUES (555, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210781', '凌海市', '辽宁省锦州市凌海市', 3, '2107');
INSERT INTO `info_area` VALUES (556, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210782', '北镇市', '辽宁省锦州市北镇市', 3, '2107');
INSERT INTO `info_area` VALUES (557, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2108', '营口市', '辽宁省营口市', 2, '21');
INSERT INTO `info_area` VALUES (558, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210802', '站前区', '辽宁省营口市站前区', 3, '2108');
INSERT INTO `info_area` VALUES (559, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210803', '西市区', '辽宁省营口市西市区', 3, '2108');
INSERT INTO `info_area` VALUES (560, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210804', '鲅鱼圈区', '辽宁省营口市鲅鱼圈区', 3, '2108');
INSERT INTO `info_area` VALUES (561, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210811', '老边区', '辽宁省营口市老边区', 3, '2108');
INSERT INTO `info_area` VALUES (562, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210881', '盖州市', '辽宁省营口市盖州市', 3, '2108');
INSERT INTO `info_area` VALUES (563, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210882', '大石桥市', '辽宁省营口市大石桥市', 3, '2108');
INSERT INTO `info_area` VALUES (564, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2109', '阜新市', '辽宁省阜新市', 2, '21');
INSERT INTO `info_area` VALUES (565, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210902', '海州区', '辽宁省阜新市海州区', 3, '2109');
INSERT INTO `info_area` VALUES (566, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210903', '新邱区', '辽宁省阜新市新邱区', 3, '2109');
INSERT INTO `info_area` VALUES (567, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210904', '太平区', '辽宁省阜新市太平区', 3, '2109');
INSERT INTO `info_area` VALUES (568, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210905', '清河门区', '辽宁省阜新市清河门区', 3, '2109');
INSERT INTO `info_area` VALUES (569, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210911', '细河区', '辽宁省阜新市细河区', 3, '2109');
INSERT INTO `info_area` VALUES (570, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210921', '阜新蒙古族自治县', '辽宁省阜新市阜新蒙古族自治县', 3, '2109');
INSERT INTO `info_area` VALUES (571, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '210922', '彰武县', '辽宁省阜新市彰武县', 3, '2109');
INSERT INTO `info_area` VALUES (572, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2110', '辽阳市', '辽宁省辽阳市', 2, '21');
INSERT INTO `info_area` VALUES (573, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211002', '白塔区', '辽宁省辽阳市白塔区', 3, '2110');
INSERT INTO `info_area` VALUES (574, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211003', '文圣区', '辽宁省辽阳市文圣区', 3, '2110');
INSERT INTO `info_area` VALUES (575, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211004', '宏伟区', '辽宁省辽阳市宏伟区', 3, '2110');
INSERT INTO `info_area` VALUES (576, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211005', '弓长岭区', '辽宁省辽阳市弓长岭区', 3, '2110');
INSERT INTO `info_area` VALUES (577, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211011', '太子河区', '辽宁省辽阳市太子河区', 3, '2110');
INSERT INTO `info_area` VALUES (578, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211021', '辽阳县', '辽宁省辽阳市辽阳县', 3, '2110');
INSERT INTO `info_area` VALUES (579, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211081', '灯塔市', '辽宁省辽阳市灯塔市', 3, '2110');
INSERT INTO `info_area` VALUES (580, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2111', '盘锦市', '辽宁省盘锦市', 2, '21');
INSERT INTO `info_area` VALUES (581, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211102', '双台子区', '辽宁省盘锦市双台子区', 3, '2111');
INSERT INTO `info_area` VALUES (582, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211103', '兴隆台区', '辽宁省盘锦市兴隆台区', 3, '2111');
INSERT INTO `info_area` VALUES (583, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211104', '大洼区', '辽宁省盘锦市大洼区', 3, '2111');
INSERT INTO `info_area` VALUES (584, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211122', '盘山县', '辽宁省盘锦市盘山县', 3, '2111');
INSERT INTO `info_area` VALUES (585, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2112', '铁岭市', '辽宁省铁岭市', 2, '21');
INSERT INTO `info_area` VALUES (586, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211202', '银州区', '辽宁省铁岭市银州区', 3, '2112');
INSERT INTO `info_area` VALUES (587, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211204', '清河区', '辽宁省铁岭市清河区', 3, '2112');
INSERT INTO `info_area` VALUES (588, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211221', '铁岭县', '辽宁省铁岭市铁岭县', 3, '2112');
INSERT INTO `info_area` VALUES (589, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211223', '西丰县', '辽宁省铁岭市西丰县', 3, '2112');
INSERT INTO `info_area` VALUES (590, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211224', '昌图县', '辽宁省铁岭市昌图县', 3, '2112');
INSERT INTO `info_area` VALUES (591, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211281', '调兵山市', '辽宁省铁岭市调兵山市', 3, '2112');
INSERT INTO `info_area` VALUES (592, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211282', '开原市', '辽宁省铁岭市开原市', 3, '2112');
INSERT INTO `info_area` VALUES (593, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2113', '朝阳市', '辽宁省朝阳市', 2, '21');
INSERT INTO `info_area` VALUES (594, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211302', '双塔区', '辽宁省朝阳市双塔区', 3, '2113');
INSERT INTO `info_area` VALUES (595, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211303', '龙城区', '辽宁省朝阳市龙城区', 3, '2113');
INSERT INTO `info_area` VALUES (596, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211321', '朝阳县', '辽宁省朝阳市朝阳县', 3, '2113');
INSERT INTO `info_area` VALUES (597, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211322', '建平县', '辽宁省朝阳市建平县', 3, '2113');
INSERT INTO `info_area` VALUES (598, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211324', '喀喇沁左翼蒙古族自治县', '辽宁省朝阳市喀喇沁左翼蒙古族自治县', 3, '2113');
INSERT INTO `info_area` VALUES (599, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211381', '北票市', '辽宁省朝阳市北票市', 3, '2113');
INSERT INTO `info_area` VALUES (600, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211382', '凌源市', '辽宁省朝阳市凌源市', 3, '2113');
INSERT INTO `info_area` VALUES (601, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2114', '葫芦岛市', '辽宁省葫芦岛市', 2, '21');
INSERT INTO `info_area` VALUES (602, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211402', '连山区', '辽宁省葫芦岛市连山区', 3, '2114');
INSERT INTO `info_area` VALUES (603, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211403', '龙港区', '辽宁省葫芦岛市龙港区', 3, '2114');
INSERT INTO `info_area` VALUES (604, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211404', '南票区', '辽宁省葫芦岛市南票区', 3, '2114');
INSERT INTO `info_area` VALUES (605, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211421', '绥中县', '辽宁省葫芦岛市绥中县', 3, '2114');
INSERT INTO `info_area` VALUES (606, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211422', '建昌县', '辽宁省葫芦岛市建昌县', 3, '2114');
INSERT INTO `info_area` VALUES (607, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '211481', '兴城市', '辽宁省葫芦岛市兴城市', 3, '2114');
INSERT INTO `info_area` VALUES (608, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '22', '吉林省', '吉林省', 1, '');
INSERT INTO `info_area` VALUES (609, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2201', '长春市', '吉林省长春市', 2, '22');
INSERT INTO `info_area` VALUES (610, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220102', '南关区', '吉林省长春市南关区', 3, '2201');
INSERT INTO `info_area` VALUES (611, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220103', '宽城区', '吉林省长春市宽城区', 3, '2201');
INSERT INTO `info_area` VALUES (612, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220104', '朝阳区', '吉林省长春市朝阳区', 3, '2201');
INSERT INTO `info_area` VALUES (613, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220105', '二道区', '吉林省长春市二道区', 3, '2201');
INSERT INTO `info_area` VALUES (614, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220106', '绿园区', '吉林省长春市绿园区', 3, '2201');
INSERT INTO `info_area` VALUES (615, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220112', '双阳区', '吉林省长春市双阳区', 3, '2201');
INSERT INTO `info_area` VALUES (616, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220113', '九台区', '吉林省长春市九台区', 3, '2201');
INSERT INTO `info_area` VALUES (617, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220122', '农安县', '吉林省长春市农安县', 3, '2201');
INSERT INTO `info_area` VALUES (618, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220171', '长春经济技术开发区', '吉林省长春市长春经济技术开发区', 3, '2201');
INSERT INTO `info_area` VALUES (619, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220172', '长春净月高新技术产业开发区', '吉林省长春市长春净月高新技术产业开发区', 3, '2201');
INSERT INTO `info_area` VALUES (620, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220173', '长春高新技术产业开发区', '吉林省长春市长春高新技术产业开发区', 3, '2201');
INSERT INTO `info_area` VALUES (621, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220174', '长春汽车经济技术开发区', '吉林省长春市长春汽车经济技术开发区', 3, '2201');
INSERT INTO `info_area` VALUES (622, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220182', '榆树市', '吉林省长春市榆树市', 3, '2201');
INSERT INTO `info_area` VALUES (623, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220183', '德惠市', '吉林省长春市德惠市', 3, '2201');
INSERT INTO `info_area` VALUES (624, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220184', '公主岭市', '吉林省长春市公主岭市', 3, '2201');
INSERT INTO `info_area` VALUES (625, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2202', '吉林市', '吉林省吉林市', 2, '22');
INSERT INTO `info_area` VALUES (626, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220202', '昌邑区', '吉林省吉林市昌邑区', 3, '2202');
INSERT INTO `info_area` VALUES (627, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220203', '龙潭区', '吉林省吉林市龙潭区', 3, '2202');
INSERT INTO `info_area` VALUES (628, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220204', '船营区', '吉林省吉林市船营区', 3, '2202');
INSERT INTO `info_area` VALUES (629, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220211', '丰满区', '吉林省吉林市丰满区', 3, '2202');
INSERT INTO `info_area` VALUES (630, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220221', '永吉县', '吉林省吉林市永吉县', 3, '2202');
INSERT INTO `info_area` VALUES (631, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220271', '吉林经济开发区', '吉林省吉林市吉林经济开发区', 3, '2202');
INSERT INTO `info_area` VALUES (632, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220272', '吉林高新技术产业开发区', '吉林省吉林市吉林高新技术产业开发区', 3, '2202');
INSERT INTO `info_area` VALUES (633, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220273', '吉林中国新加坡食品区', '吉林省吉林市吉林中国新加坡食品区', 3, '2202');
INSERT INTO `info_area` VALUES (634, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220281', '蛟河市', '吉林省吉林市蛟河市', 3, '2202');
INSERT INTO `info_area` VALUES (635, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220282', '桦甸市', '吉林省吉林市桦甸市', 3, '2202');
INSERT INTO `info_area` VALUES (636, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220283', '舒兰市', '吉林省吉林市舒兰市', 3, '2202');
INSERT INTO `info_area` VALUES (637, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220284', '磐石市', '吉林省吉林市磐石市', 3, '2202');
INSERT INTO `info_area` VALUES (638, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2203', '四平市', '吉林省四平市', 2, '22');
INSERT INTO `info_area` VALUES (639, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220302', '铁西区', '吉林省四平市铁西区', 3, '2203');
INSERT INTO `info_area` VALUES (640, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220303', '铁东区', '吉林省四平市铁东区', 3, '2203');
INSERT INTO `info_area` VALUES (641, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220322', '梨树县', '吉林省四平市梨树县', 3, '2203');
INSERT INTO `info_area` VALUES (642, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220323', '伊通满族自治县', '吉林省四平市伊通满族自治县', 3, '2203');
INSERT INTO `info_area` VALUES (643, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220382', '双辽市', '吉林省四平市双辽市', 3, '2203');
INSERT INTO `info_area` VALUES (644, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2204', '辽源市', '吉林省辽源市', 2, '22');
INSERT INTO `info_area` VALUES (645, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220402', '龙山区', '吉林省辽源市龙山区', 3, '2204');
INSERT INTO `info_area` VALUES (646, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220403', '西安区', '吉林省辽源市西安区', 3, '2204');
INSERT INTO `info_area` VALUES (647, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220421', '东丰县', '吉林省辽源市东丰县', 3, '2204');
INSERT INTO `info_area` VALUES (648, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220422', '东辽县', '吉林省辽源市东辽县', 3, '2204');
INSERT INTO `info_area` VALUES (649, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2205', '通化市', '吉林省通化市', 2, '22');
INSERT INTO `info_area` VALUES (650, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220502', '东昌区', '吉林省通化市东昌区', 3, '2205');
INSERT INTO `info_area` VALUES (651, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220503', '二道江区', '吉林省通化市二道江区', 3, '2205');
INSERT INTO `info_area` VALUES (652, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220521', '通化县', '吉林省通化市通化县', 3, '2205');
INSERT INTO `info_area` VALUES (653, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220523', '辉南县', '吉林省通化市辉南县', 3, '2205');
INSERT INTO `info_area` VALUES (654, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220524', '柳河县', '吉林省通化市柳河县', 3, '2205');
INSERT INTO `info_area` VALUES (655, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220581', '梅河口市', '吉林省通化市梅河口市', 3, '2205');
INSERT INTO `info_area` VALUES (656, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220582', '集安市', '吉林省通化市集安市', 3, '2205');
INSERT INTO `info_area` VALUES (657, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2206', '白山市', '吉林省白山市', 2, '22');
INSERT INTO `info_area` VALUES (658, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220602', '浑江区', '吉林省白山市浑江区', 3, '2206');
INSERT INTO `info_area` VALUES (659, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220605', '江源区', '吉林省白山市江源区', 3, '2206');
INSERT INTO `info_area` VALUES (660, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220621', '抚松县', '吉林省白山市抚松县', 3, '2206');
INSERT INTO `info_area` VALUES (661, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220622', '靖宇县', '吉林省白山市靖宇县', 3, '2206');
INSERT INTO `info_area` VALUES (662, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220623', '长白朝鲜族自治县', '吉林省白山市长白朝鲜族自治县', 3, '2206');
INSERT INTO `info_area` VALUES (663, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220681', '临江市', '吉林省白山市临江市', 3, '2206');
INSERT INTO `info_area` VALUES (664, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2207', '松原市', '吉林省松原市', 2, '22');
INSERT INTO `info_area` VALUES (665, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220702', '宁江区', '吉林省松原市宁江区', 3, '2207');
INSERT INTO `info_area` VALUES (666, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220721', '前郭尔罗斯蒙古族自治县', '吉林省松原市前郭尔罗斯蒙古族自治县', 3, '2207');
INSERT INTO `info_area` VALUES (667, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220722', '长岭县', '吉林省松原市长岭县', 3, '2207');
INSERT INTO `info_area` VALUES (668, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220723', '乾安县', '吉林省松原市乾安县', 3, '2207');
INSERT INTO `info_area` VALUES (669, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220771', '吉林松原经济开发区', '吉林省松原市吉林松原经济开发区', 3, '2207');
INSERT INTO `info_area` VALUES (670, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220781', '扶余市', '吉林省松原市扶余市', 3, '2207');
INSERT INTO `info_area` VALUES (671, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2208', '白城市', '吉林省白城市', 2, '22');
INSERT INTO `info_area` VALUES (672, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220802', '洮北区', '吉林省白城市洮北区', 3, '2208');
INSERT INTO `info_area` VALUES (673, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220821', '镇赉县', '吉林省白城市镇赉县', 3, '2208');
INSERT INTO `info_area` VALUES (674, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220822', '通榆县', '吉林省白城市通榆县', 3, '2208');
INSERT INTO `info_area` VALUES (675, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220871', '吉林白城经济开发区', '吉林省白城市吉林白城经济开发区', 3, '2208');
INSERT INTO `info_area` VALUES (676, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220881', '洮南市', '吉林省白城市洮南市', 3, '2208');
INSERT INTO `info_area` VALUES (677, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '220882', '大安市', '吉林省白城市大安市', 3, '2208');
INSERT INTO `info_area` VALUES (678, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2224', '延边朝鲜族自治州', '吉林省延边朝鲜族自治州', 2, '22');
INSERT INTO `info_area` VALUES (679, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '222401', '延吉市', '吉林省延边朝鲜族自治州延吉市', 3, '2224');
INSERT INTO `info_area` VALUES (680, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '222402', '图们市', '吉林省延边朝鲜族自治州图们市', 3, '2224');
INSERT INTO `info_area` VALUES (681, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '222403', '敦化市', '吉林省延边朝鲜族自治州敦化市', 3, '2224');
INSERT INTO `info_area` VALUES (682, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '222404', '珲春市', '吉林省延边朝鲜族自治州珲春市', 3, '2224');
INSERT INTO `info_area` VALUES (683, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '222405', '龙井市', '吉林省延边朝鲜族自治州龙井市', 3, '2224');
INSERT INTO `info_area` VALUES (684, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '222406', '和龙市', '吉林省延边朝鲜族自治州和龙市', 3, '2224');
INSERT INTO `info_area` VALUES (685, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '222424', '汪清县', '吉林省延边朝鲜族自治州汪清县', 3, '2224');
INSERT INTO `info_area` VALUES (686, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '222426', '安图县', '吉林省延边朝鲜族自治州安图县', 3, '2224');
INSERT INTO `info_area` VALUES (687, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '23', '黑龙江省', '黑龙江省', 1, '');
INSERT INTO `info_area` VALUES (688, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2301', '哈尔滨市', '黑龙江省哈尔滨市', 2, '23');
INSERT INTO `info_area` VALUES (689, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230102', '道里区', '黑龙江省哈尔滨市道里区', 3, '2301');
INSERT INTO `info_area` VALUES (690, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230103', '南岗区', '黑龙江省哈尔滨市南岗区', 3, '2301');
INSERT INTO `info_area` VALUES (691, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230104', '道外区', '黑龙江省哈尔滨市道外区', 3, '2301');
INSERT INTO `info_area` VALUES (692, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230108', '平房区', '黑龙江省哈尔滨市平房区', 3, '2301');
INSERT INTO `info_area` VALUES (693, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230109', '松北区', '黑龙江省哈尔滨市松北区', 3, '2301');
INSERT INTO `info_area` VALUES (694, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230110', '香坊区', '黑龙江省哈尔滨市香坊区', 3, '2301');
INSERT INTO `info_area` VALUES (695, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230111', '呼兰区', '黑龙江省哈尔滨市呼兰区', 3, '2301');
INSERT INTO `info_area` VALUES (696, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230112', '阿城区', '黑龙江省哈尔滨市阿城区', 3, '2301');
INSERT INTO `info_area` VALUES (697, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230113', '双城区', '黑龙江省哈尔滨市双城区', 3, '2301');
INSERT INTO `info_area` VALUES (698, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230123', '依兰县', '黑龙江省哈尔滨市依兰县', 3, '2301');
INSERT INTO `info_area` VALUES (699, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230124', '方正县', '黑龙江省哈尔滨市方正县', 3, '2301');
INSERT INTO `info_area` VALUES (700, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230125', '宾县', '黑龙江省哈尔滨市宾县', 3, '2301');
INSERT INTO `info_area` VALUES (701, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230126', '巴彦县', '黑龙江省哈尔滨市巴彦县', 3, '2301');
INSERT INTO `info_area` VALUES (702, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230127', '木兰县', '黑龙江省哈尔滨市木兰县', 3, '2301');
INSERT INTO `info_area` VALUES (703, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230128', '通河县', '黑龙江省哈尔滨市通河县', 3, '2301');
INSERT INTO `info_area` VALUES (704, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230129', '延寿县', '黑龙江省哈尔滨市延寿县', 3, '2301');
INSERT INTO `info_area` VALUES (705, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230183', '尚志市', '黑龙江省哈尔滨市尚志市', 3, '2301');
INSERT INTO `info_area` VALUES (706, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230184', '五常市', '黑龙江省哈尔滨市五常市', 3, '2301');
INSERT INTO `info_area` VALUES (707, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2302', '齐齐哈尔市', '黑龙江省齐齐哈尔市', 2, '23');
INSERT INTO `info_area` VALUES (708, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230202', '龙沙区', '黑龙江省齐齐哈尔市龙沙区', 3, '2302');
INSERT INTO `info_area` VALUES (709, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230203', '建华区', '黑龙江省齐齐哈尔市建华区', 3, '2302');
INSERT INTO `info_area` VALUES (710, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230204', '铁锋区', '黑龙江省齐齐哈尔市铁锋区', 3, '2302');
INSERT INTO `info_area` VALUES (711, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230205', '昂昂溪区', '黑龙江省齐齐哈尔市昂昂溪区', 3, '2302');
INSERT INTO `info_area` VALUES (712, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230206', '富拉尔基区', '黑龙江省齐齐哈尔市富拉尔基区', 3, '2302');
INSERT INTO `info_area` VALUES (713, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230207', '碾子山区', '黑龙江省齐齐哈尔市碾子山区', 3, '2302');
INSERT INTO `info_area` VALUES (714, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230208', '梅里斯达斡尔族区', '黑龙江省齐齐哈尔市梅里斯达斡尔族区', 3, '2302');
INSERT INTO `info_area` VALUES (715, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230221', '龙江县', '黑龙江省齐齐哈尔市龙江县', 3, '2302');
INSERT INTO `info_area` VALUES (716, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230223', '依安县', '黑龙江省齐齐哈尔市依安县', 3, '2302');
INSERT INTO `info_area` VALUES (717, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230224', '泰来县', '黑龙江省齐齐哈尔市泰来县', 3, '2302');
INSERT INTO `info_area` VALUES (718, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230225', '甘南县', '黑龙江省齐齐哈尔市甘南县', 3, '2302');
INSERT INTO `info_area` VALUES (719, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230227', '富裕县', '黑龙江省齐齐哈尔市富裕县', 3, '2302');
INSERT INTO `info_area` VALUES (720, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230229', '克山县', '黑龙江省齐齐哈尔市克山县', 3, '2302');
INSERT INTO `info_area` VALUES (721, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230230', '克东县', '黑龙江省齐齐哈尔市克东县', 3, '2302');
INSERT INTO `info_area` VALUES (722, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230231', '拜泉县', '黑龙江省齐齐哈尔市拜泉县', 3, '2302');
INSERT INTO `info_area` VALUES (723, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230281', '讷河市', '黑龙江省齐齐哈尔市讷河市', 3, '2302');
INSERT INTO `info_area` VALUES (724, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2303', '鸡西市', '黑龙江省鸡西市', 2, '23');
INSERT INTO `info_area` VALUES (725, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230302', '鸡冠区', '黑龙江省鸡西市鸡冠区', 3, '2303');
INSERT INTO `info_area` VALUES (726, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230303', '恒山区', '黑龙江省鸡西市恒山区', 3, '2303');
INSERT INTO `info_area` VALUES (727, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230304', '滴道区', '黑龙江省鸡西市滴道区', 3, '2303');
INSERT INTO `info_area` VALUES (728, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230305', '梨树区', '黑龙江省鸡西市梨树区', 3, '2303');
INSERT INTO `info_area` VALUES (729, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230306', '城子河区', '黑龙江省鸡西市城子河区', 3, '2303');
INSERT INTO `info_area` VALUES (730, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230307', '麻山区', '黑龙江省鸡西市麻山区', 3, '2303');
INSERT INTO `info_area` VALUES (731, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230321', '鸡东县', '黑龙江省鸡西市鸡东县', 3, '2303');
INSERT INTO `info_area` VALUES (732, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230381', '虎林市', '黑龙江省鸡西市虎林市', 3, '2303');
INSERT INTO `info_area` VALUES (733, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230382', '密山市', '黑龙江省鸡西市密山市', 3, '2303');
INSERT INTO `info_area` VALUES (734, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2304', '鹤岗市', '黑龙江省鹤岗市', 2, '23');
INSERT INTO `info_area` VALUES (735, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230402', '向阳区', '黑龙江省鹤岗市向阳区', 3, '2304');
INSERT INTO `info_area` VALUES (736, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230403', '工农区', '黑龙江省鹤岗市工农区', 3, '2304');
INSERT INTO `info_area` VALUES (737, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230404', '南山区', '黑龙江省鹤岗市南山区', 3, '2304');
INSERT INTO `info_area` VALUES (738, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230405', '兴安区', '黑龙江省鹤岗市兴安区', 3, '2304');
INSERT INTO `info_area` VALUES (739, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230406', '东山区', '黑龙江省鹤岗市东山区', 3, '2304');
INSERT INTO `info_area` VALUES (740, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230407', '兴山区', '黑龙江省鹤岗市兴山区', 3, '2304');
INSERT INTO `info_area` VALUES (741, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230421', '萝北县', '黑龙江省鹤岗市萝北县', 3, '2304');
INSERT INTO `info_area` VALUES (742, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230422', '绥滨县', '黑龙江省鹤岗市绥滨县', 3, '2304');
INSERT INTO `info_area` VALUES (743, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2305', '双鸭山市', '黑龙江省双鸭山市', 2, '23');
INSERT INTO `info_area` VALUES (744, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230502', '尖山区', '黑龙江省双鸭山市尖山区', 3, '2305');
INSERT INTO `info_area` VALUES (745, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230503', '岭东区', '黑龙江省双鸭山市岭东区', 3, '2305');
INSERT INTO `info_area` VALUES (746, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230505', '四方台区', '黑龙江省双鸭山市四方台区', 3, '2305');
INSERT INTO `info_area` VALUES (747, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230506', '宝山区', '黑龙江省双鸭山市宝山区', 3, '2305');
INSERT INTO `info_area` VALUES (748, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230521', '集贤县', '黑龙江省双鸭山市集贤县', 3, '2305');
INSERT INTO `info_area` VALUES (749, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230522', '友谊县', '黑龙江省双鸭山市友谊县', 3, '2305');
INSERT INTO `info_area` VALUES (750, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230523', '宝清县', '黑龙江省双鸭山市宝清县', 3, '2305');
INSERT INTO `info_area` VALUES (751, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230524', '饶河县', '黑龙江省双鸭山市饶河县', 3, '2305');
INSERT INTO `info_area` VALUES (752, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2306', '大庆市', '黑龙江省大庆市', 2, '23');
INSERT INTO `info_area` VALUES (753, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230602', '萨尔图区', '黑龙江省大庆市萨尔图区', 3, '2306');
INSERT INTO `info_area` VALUES (754, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230603', '龙凤区', '黑龙江省大庆市龙凤区', 3, '2306');
INSERT INTO `info_area` VALUES (755, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230604', '让胡路区', '黑龙江省大庆市让胡路区', 3, '2306');
INSERT INTO `info_area` VALUES (756, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230605', '红岗区', '黑龙江省大庆市红岗区', 3, '2306');
INSERT INTO `info_area` VALUES (757, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230606', '大同区', '黑龙江省大庆市大同区', 3, '2306');
INSERT INTO `info_area` VALUES (758, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230621', '肇州县', '黑龙江省大庆市肇州县', 3, '2306');
INSERT INTO `info_area` VALUES (759, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230622', '肇源县', '黑龙江省大庆市肇源县', 3, '2306');
INSERT INTO `info_area` VALUES (760, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230623', '林甸县', '黑龙江省大庆市林甸县', 3, '2306');
INSERT INTO `info_area` VALUES (761, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230624', '杜尔伯特蒙古族自治县', '黑龙江省大庆市杜尔伯特蒙古族自治县', 3, '2306');
INSERT INTO `info_area` VALUES (762, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230671', '大庆高新技术产业开发区', '黑龙江省大庆市大庆高新技术产业开发区', 3, '2306');
INSERT INTO `info_area` VALUES (763, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2307', '伊春市', '黑龙江省伊春市', 2, '23');
INSERT INTO `info_area` VALUES (764, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230717', '伊美区', '黑龙江省伊春市伊美区', 3, '2307');
INSERT INTO `info_area` VALUES (765, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230718', '乌翠区', '黑龙江省伊春市乌翠区', 3, '2307');
INSERT INTO `info_area` VALUES (766, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230719', '友好区', '黑龙江省伊春市友好区', 3, '2307');
INSERT INTO `info_area` VALUES (767, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230722', '嘉荫县', '黑龙江省伊春市嘉荫县', 3, '2307');
INSERT INTO `info_area` VALUES (768, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230723', '汤旺县', '黑龙江省伊春市汤旺县', 3, '2307');
INSERT INTO `info_area` VALUES (769, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230724', '丰林县', '黑龙江省伊春市丰林县', 3, '2307');
INSERT INTO `info_area` VALUES (770, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230725', '大箐山县', '黑龙江省伊春市大箐山县', 3, '2307');
INSERT INTO `info_area` VALUES (771, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230726', '南岔县', '黑龙江省伊春市南岔县', 3, '2307');
INSERT INTO `info_area` VALUES (772, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230751', '金林区', '黑龙江省伊春市金林区', 3, '2307');
INSERT INTO `info_area` VALUES (773, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230781', '铁力市', '黑龙江省伊春市铁力市', 3, '2307');
INSERT INTO `info_area` VALUES (774, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2308', '佳木斯市', '黑龙江省佳木斯市', 2, '23');
INSERT INTO `info_area` VALUES (775, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230803', '向阳区', '黑龙江省佳木斯市向阳区', 3, '2308');
INSERT INTO `info_area` VALUES (776, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230804', '前进区', '黑龙江省佳木斯市前进区', 3, '2308');
INSERT INTO `info_area` VALUES (777, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230805', '东风区', '黑龙江省佳木斯市东风区', 3, '2308');
INSERT INTO `info_area` VALUES (778, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230811', '郊区', '黑龙江省佳木斯市郊区', 3, '2308');
INSERT INTO `info_area` VALUES (779, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230822', '桦南县', '黑龙江省佳木斯市桦南县', 3, '2308');
INSERT INTO `info_area` VALUES (780, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230826', '桦川县', '黑龙江省佳木斯市桦川县', 3, '2308');
INSERT INTO `info_area` VALUES (781, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230828', '汤原县', '黑龙江省佳木斯市汤原县', 3, '2308');
INSERT INTO `info_area` VALUES (782, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230881', '同江市', '黑龙江省佳木斯市同江市', 3, '2308');
INSERT INTO `info_area` VALUES (783, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230882', '富锦市', '黑龙江省佳木斯市富锦市', 3, '2308');
INSERT INTO `info_area` VALUES (784, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230883', '抚远市', '黑龙江省佳木斯市抚远市', 3, '2308');
INSERT INTO `info_area` VALUES (785, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2309', '七台河市', '黑龙江省七台河市', 2, '23');
INSERT INTO `info_area` VALUES (786, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230902', '新兴区', '黑龙江省七台河市新兴区', 3, '2309');
INSERT INTO `info_area` VALUES (787, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230903', '桃山区', '黑龙江省七台河市桃山区', 3, '2309');
INSERT INTO `info_area` VALUES (788, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230904', '茄子河区', '黑龙江省七台河市茄子河区', 3, '2309');
INSERT INTO `info_area` VALUES (789, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '230921', '勃利县', '黑龙江省七台河市勃利县', 3, '2309');
INSERT INTO `info_area` VALUES (790, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2310', '牡丹江市', '黑龙江省牡丹江市', 2, '23');
INSERT INTO `info_area` VALUES (791, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231002', '东安区', '黑龙江省牡丹江市东安区', 3, '2310');
INSERT INTO `info_area` VALUES (792, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231003', '阳明区', '黑龙江省牡丹江市阳明区', 3, '2310');
INSERT INTO `info_area` VALUES (793, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231004', '爱民区', '黑龙江省牡丹江市爱民区', 3, '2310');
INSERT INTO `info_area` VALUES (794, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231005', '西安区', '黑龙江省牡丹江市西安区', 3, '2310');
INSERT INTO `info_area` VALUES (795, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231025', '林口县', '黑龙江省牡丹江市林口县', 3, '2310');
INSERT INTO `info_area` VALUES (796, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231081', '绥芬河市', '黑龙江省牡丹江市绥芬河市', 3, '2310');
INSERT INTO `info_area` VALUES (797, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231083', '海林市', '黑龙江省牡丹江市海林市', 3, '2310');
INSERT INTO `info_area` VALUES (798, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231084', '宁安市', '黑龙江省牡丹江市宁安市', 3, '2310');
INSERT INTO `info_area` VALUES (799, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231085', '穆棱市', '黑龙江省牡丹江市穆棱市', 3, '2310');
INSERT INTO `info_area` VALUES (800, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231086', '东宁市', '黑龙江省牡丹江市东宁市', 3, '2310');
INSERT INTO `info_area` VALUES (801, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2311', '黑河市', '黑龙江省黑河市', 2, '23');
INSERT INTO `info_area` VALUES (802, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231102', '爱辉区', '黑龙江省黑河市爱辉区', 3, '2311');
INSERT INTO `info_area` VALUES (803, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231123', '逊克县', '黑龙江省黑河市逊克县', 3, '2311');
INSERT INTO `info_area` VALUES (804, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231124', '孙吴县', '黑龙江省黑河市孙吴县', 3, '2311');
INSERT INTO `info_area` VALUES (805, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231181', '北安市', '黑龙江省黑河市北安市', 3, '2311');
INSERT INTO `info_area` VALUES (806, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231182', '五大连池市', '黑龙江省黑河市五大连池市', 3, '2311');
INSERT INTO `info_area` VALUES (807, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231183', '嫩江市', '黑龙江省黑河市嫩江市', 3, '2311');
INSERT INTO `info_area` VALUES (808, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2312', '绥化市', '黑龙江省绥化市', 2, '23');
INSERT INTO `info_area` VALUES (809, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231202', '北林区', '黑龙江省绥化市北林区', 3, '2312');
INSERT INTO `info_area` VALUES (810, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231221', '望奎县', '黑龙江省绥化市望奎县', 3, '2312');
INSERT INTO `info_area` VALUES (811, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231222', '兰西县', '黑龙江省绥化市兰西县', 3, '2312');
INSERT INTO `info_area` VALUES (812, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231223', '青冈县', '黑龙江省绥化市青冈县', 3, '2312');
INSERT INTO `info_area` VALUES (813, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231224', '庆安县', '黑龙江省绥化市庆安县', 3, '2312');
INSERT INTO `info_area` VALUES (814, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231225', '明水县', '黑龙江省绥化市明水县', 3, '2312');
INSERT INTO `info_area` VALUES (815, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231226', '绥棱县', '黑龙江省绥化市绥棱县', 3, '2312');
INSERT INTO `info_area` VALUES (816, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231281', '安达市', '黑龙江省绥化市安达市', 3, '2312');
INSERT INTO `info_area` VALUES (817, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231282', '肇东市', '黑龙江省绥化市肇东市', 3, '2312');
INSERT INTO `info_area` VALUES (818, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '231283', '海伦市', '黑龙江省绥化市海伦市', 3, '2312');
INSERT INTO `info_area` VALUES (819, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '2327', '大兴安岭地区', '黑龙江省大兴安岭地区', 2, '23');
INSERT INTO `info_area` VALUES (820, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '232701', '漠河市', '黑龙江省大兴安岭地区漠河市', 3, '2327');
INSERT INTO `info_area` VALUES (821, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '232721', '呼玛县', '黑龙江省大兴安岭地区呼玛县', 3, '2327');
INSERT INTO `info_area` VALUES (822, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '232722', '塔河县', '黑龙江省大兴安岭地区塔河县', 3, '2327');
INSERT INTO `info_area` VALUES (823, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '232761', '加格达奇区', '黑龙江省大兴安岭地区加格达奇区', 3, '2327');
INSERT INTO `info_area` VALUES (824, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '232762', '松岭区', '黑龙江省大兴安岭地区松岭区', 3, '2327');
INSERT INTO `info_area` VALUES (825, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '232763', '新林区', '黑龙江省大兴安岭地区新林区', 3, '2327');
INSERT INTO `info_area` VALUES (826, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '232764', '呼中区', '黑龙江省大兴安岭地区呼中区', 3, '2327');
INSERT INTO `info_area` VALUES (827, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '31', '上海市', '上海市', 1, '');
INSERT INTO `info_area` VALUES (828, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '3101', '市辖区', '上海市市辖区', 2, '31');
INSERT INTO `info_area` VALUES (829, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '310101', '黄浦区', '上海市市辖区黄浦区', 3, '3101');
INSERT INTO `info_area` VALUES (830, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '310104', '徐汇区', '上海市市辖区徐汇区', 3, '3101');
INSERT INTO `info_area` VALUES (831, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '310105', '长宁区', '上海市市辖区长宁区', 3, '3101');
INSERT INTO `info_area` VALUES (832, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '310106', '静安区', '上海市市辖区静安区', 3, '3101');
INSERT INTO `info_area` VALUES (833, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '310107', '普陀区', '上海市市辖区普陀区', 3, '3101');
INSERT INTO `info_area` VALUES (834, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '310109', '虹口区', '上海市市辖区虹口区', 3, '3101');
INSERT INTO `info_area` VALUES (835, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '310110', '杨浦区', '上海市市辖区杨浦区', 3, '3101');
INSERT INTO `info_area` VALUES (836, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '310112', '闵行区', '上海市市辖区闵行区', 3, '3101');
INSERT INTO `info_area` VALUES (837, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '310113', '宝山区', '上海市市辖区宝山区', 3, '3101');
INSERT INTO `info_area` VALUES (838, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '310114', '嘉定区', '上海市市辖区嘉定区', 3, '3101');
INSERT INTO `info_area` VALUES (839, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '310115', '浦东新区', '上海市市辖区浦东新区', 3, '3101');
INSERT INTO `info_area` VALUES (840, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '310116', '金山区', '上海市市辖区金山区', 3, '3101');
INSERT INTO `info_area` VALUES (841, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '310117', '松江区', '上海市市辖区松江区', 3, '3101');
INSERT INTO `info_area` VALUES (842, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '310118', '青浦区', '上海市市辖区青浦区', 3, '3101');
INSERT INTO `info_area` VALUES (843, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '310120', '奉贤区', '上海市市辖区奉贤区', 3, '3101');
INSERT INTO `info_area` VALUES (844, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '310151', '崇明区', '上海市市辖区崇明区', 3, '3101');
INSERT INTO `info_area` VALUES (845, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '32', '江苏省', '江苏省', 1, '');
INSERT INTO `info_area` VALUES (846, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '3201', '南京市', '江苏省南京市', 2, '32');
INSERT INTO `info_area` VALUES (847, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320102', '玄武区', '江苏省南京市玄武区', 3, '3201');
INSERT INTO `info_area` VALUES (848, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320104', '秦淮区', '江苏省南京市秦淮区', 3, '3201');
INSERT INTO `info_area` VALUES (849, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320105', '建邺区', '江苏省南京市建邺区', 3, '3201');
INSERT INTO `info_area` VALUES (850, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320106', '鼓楼区', '江苏省南京市鼓楼区', 3, '3201');
INSERT INTO `info_area` VALUES (851, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320111', '浦口区', '江苏省南京市浦口区', 3, '3201');
INSERT INTO `info_area` VALUES (852, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320113', '栖霞区', '江苏省南京市栖霞区', 3, '3201');
INSERT INTO `info_area` VALUES (853, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320114', '雨花台区', '江苏省南京市雨花台区', 3, '3201');
INSERT INTO `info_area` VALUES (854, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320115', '江宁区', '江苏省南京市江宁区', 3, '3201');
INSERT INTO `info_area` VALUES (855, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320116', '六合区', '江苏省南京市六合区', 3, '3201');
INSERT INTO `info_area` VALUES (856, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320117', '溧水区', '江苏省南京市溧水区', 3, '3201');
INSERT INTO `info_area` VALUES (857, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320118', '高淳区', '江苏省南京市高淳区', 3, '3201');
INSERT INTO `info_area` VALUES (858, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '3202', '无锡市', '江苏省无锡市', 2, '32');
INSERT INTO `info_area` VALUES (859, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320205', '锡山区', '江苏省无锡市锡山区', 3, '3202');
INSERT INTO `info_area` VALUES (860, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320206', '惠山区', '江苏省无锡市惠山区', 3, '3202');
INSERT INTO `info_area` VALUES (861, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320211', '滨湖区', '江苏省无锡市滨湖区', 3, '3202');
INSERT INTO `info_area` VALUES (862, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320213', '梁溪区', '江苏省无锡市梁溪区', 3, '3202');
INSERT INTO `info_area` VALUES (863, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320214', '新吴区', '江苏省无锡市新吴区', 3, '3202');
INSERT INTO `info_area` VALUES (864, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320281', '江阴市', '江苏省无锡市江阴市', 3, '3202');
INSERT INTO `info_area` VALUES (865, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320282', '宜兴市', '江苏省无锡市宜兴市', 3, '3202');
INSERT INTO `info_area` VALUES (866, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '3203', '徐州市', '江苏省徐州市', 2, '32');
INSERT INTO `info_area` VALUES (867, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320302', '鼓楼区', '江苏省徐州市鼓楼区', 3, '3203');
INSERT INTO `info_area` VALUES (868, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320303', '云龙区', '江苏省徐州市云龙区', 3, '3203');
INSERT INTO `info_area` VALUES (869, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320305', '贾汪区', '江苏省徐州市贾汪区', 3, '3203');
INSERT INTO `info_area` VALUES (870, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320311', '泉山区', '江苏省徐州市泉山区', 3, '3203');
INSERT INTO `info_area` VALUES (871, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320312', '铜山区', '江苏省徐州市铜山区', 3, '3203');
INSERT INTO `info_area` VALUES (872, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320321', '丰县', '江苏省徐州市丰县', 3, '3203');
INSERT INTO `info_area` VALUES (873, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320322', '沛县', '江苏省徐州市沛县', 3, '3203');
INSERT INTO `info_area` VALUES (874, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320324', '睢宁县', '江苏省徐州市睢宁县', 3, '3203');
INSERT INTO `info_area` VALUES (875, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320371', '徐州经济技术开发区', '江苏省徐州市徐州经济技术开发区', 3, '3203');
INSERT INTO `info_area` VALUES (876, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320381', '新沂市', '江苏省徐州市新沂市', 3, '3203');
INSERT INTO `info_area` VALUES (877, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320382', '邳州市', '江苏省徐州市邳州市', 3, '3203');
INSERT INTO `info_area` VALUES (878, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '3204', '常州市', '江苏省常州市', 2, '32');
INSERT INTO `info_area` VALUES (879, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320402', '天宁区', '江苏省常州市天宁区', 3, '3204');
INSERT INTO `info_area` VALUES (880, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320404', '钟楼区', '江苏省常州市钟楼区', 3, '3204');
INSERT INTO `info_area` VALUES (881, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320411', '新北区', '江苏省常州市新北区', 3, '3204');
INSERT INTO `info_area` VALUES (882, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320412', '武进区', '江苏省常州市武进区', 3, '3204');
INSERT INTO `info_area` VALUES (883, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320413', '金坛区', '江苏省常州市金坛区', 3, '3204');
INSERT INTO `info_area` VALUES (884, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320481', '溧阳市', '江苏省常州市溧阳市', 3, '3204');
INSERT INTO `info_area` VALUES (885, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '3205', '苏州市', '江苏省苏州市', 2, '32');
INSERT INTO `info_area` VALUES (886, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320505', '虎丘区', '江苏省苏州市虎丘区', 3, '3205');
INSERT INTO `info_area` VALUES (887, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320506', '吴中区', '江苏省苏州市吴中区', 3, '3205');
INSERT INTO `info_area` VALUES (888, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320507', '相城区', '江苏省苏州市相城区', 3, '3205');
INSERT INTO `info_area` VALUES (889, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320508', '姑苏区', '江苏省苏州市姑苏区', 3, '3205');
INSERT INTO `info_area` VALUES (890, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320509', '吴江区', '江苏省苏州市吴江区', 3, '3205');
INSERT INTO `info_area` VALUES (891, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320576', '苏州工业园区', '江苏省苏州市苏州工业园区', 3, '3205');
INSERT INTO `info_area` VALUES (892, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320581', '常熟市', '江苏省苏州市常熟市', 3, '3205');
INSERT INTO `info_area` VALUES (893, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320582', '张家港市', '江苏省苏州市张家港市', 3, '3205');
INSERT INTO `info_area` VALUES (894, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320583', '昆山市', '江苏省苏州市昆山市', 3, '3205');
INSERT INTO `info_area` VALUES (895, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320585', '太仓市', '江苏省苏州市太仓市', 3, '3205');
INSERT INTO `info_area` VALUES (896, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '3206', '南通市', '江苏省南通市', 2, '32');
INSERT INTO `info_area` VALUES (897, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320612', '通州区', '江苏省南通市通州区', 3, '3206');
INSERT INTO `info_area` VALUES (898, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320613', '崇川区', '江苏省南通市崇川区', 3, '3206');
INSERT INTO `info_area` VALUES (899, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320614', '海门区', '江苏省南通市海门区', 3, '3206');
INSERT INTO `info_area` VALUES (900, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320623', '如东县', '江苏省南通市如东县', 3, '3206');
INSERT INTO `info_area` VALUES (901, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320671', '南通经济技术开发区', '江苏省南通市南通经济技术开发区', 3, '3206');
INSERT INTO `info_area` VALUES (902, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320681', '启东市', '江苏省南通市启东市', 3, '3206');
INSERT INTO `info_area` VALUES (903, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320682', '如皋市', '江苏省南通市如皋市', 3, '3206');
INSERT INTO `info_area` VALUES (904, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320685', '海安市', '江苏省南通市海安市', 3, '3206');
INSERT INTO `info_area` VALUES (905, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '3207', '连云港市', '江苏省连云港市', 2, '32');
INSERT INTO `info_area` VALUES (906, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320703', '连云区', '江苏省连云港市连云区', 3, '3207');
INSERT INTO `info_area` VALUES (907, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320706', '海州区', '江苏省连云港市海州区', 3, '3207');
INSERT INTO `info_area` VALUES (908, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320707', '赣榆区', '江苏省连云港市赣榆区', 3, '3207');
INSERT INTO `info_area` VALUES (909, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320722', '东海县', '江苏省连云港市东海县', 3, '3207');
INSERT INTO `info_area` VALUES (910, '2024-03-21 19:17:55', 1, '2024-03-21 19:17:55', 1, '320723', '灌云县', '江苏省连云港市灌云县', 3, '3207');
INSERT INTO `info_area` VALUES (911, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320724', '灌南县', '江苏省连云港市灌南县', 3, '3207');
INSERT INTO `info_area` VALUES (912, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320771', '连云港经济技术开发区', '江苏省连云港市连云港经济技术开发区', 3, '3207');
INSERT INTO `info_area` VALUES (913, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3208', '淮安市', '江苏省淮安市', 2, '32');
INSERT INTO `info_area` VALUES (914, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320803', '淮安区', '江苏省淮安市淮安区', 3, '3208');
INSERT INTO `info_area` VALUES (915, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320804', '淮阴区', '江苏省淮安市淮阴区', 3, '3208');
INSERT INTO `info_area` VALUES (916, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320812', '清江浦区', '江苏省淮安市清江浦区', 3, '3208');
INSERT INTO `info_area` VALUES (917, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320813', '洪泽区', '江苏省淮安市洪泽区', 3, '3208');
INSERT INTO `info_area` VALUES (918, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320826', '涟水县', '江苏省淮安市涟水县', 3, '3208');
INSERT INTO `info_area` VALUES (919, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320830', '盱眙县', '江苏省淮安市盱眙县', 3, '3208');
INSERT INTO `info_area` VALUES (920, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320831', '金湖县', '江苏省淮安市金湖县', 3, '3208');
INSERT INTO `info_area` VALUES (921, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320871', '淮安经济技术开发区', '江苏省淮安市淮安经济技术开发区', 3, '3208');
INSERT INTO `info_area` VALUES (922, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3209', '盐城市', '江苏省盐城市', 2, '32');
INSERT INTO `info_area` VALUES (923, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320902', '亭湖区', '江苏省盐城市亭湖区', 3, '3209');
INSERT INTO `info_area` VALUES (924, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320903', '盐都区', '江苏省盐城市盐都区', 3, '3209');
INSERT INTO `info_area` VALUES (925, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320904', '大丰区', '江苏省盐城市大丰区', 3, '3209');
INSERT INTO `info_area` VALUES (926, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320921', '响水县', '江苏省盐城市响水县', 3, '3209');
INSERT INTO `info_area` VALUES (927, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320922', '滨海县', '江苏省盐城市滨海县', 3, '3209');
INSERT INTO `info_area` VALUES (928, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320923', '阜宁县', '江苏省盐城市阜宁县', 3, '3209');
INSERT INTO `info_area` VALUES (929, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320924', '射阳县', '江苏省盐城市射阳县', 3, '3209');
INSERT INTO `info_area` VALUES (930, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320925', '建湖县', '江苏省盐城市建湖县', 3, '3209');
INSERT INTO `info_area` VALUES (931, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320971', '盐城经济技术开发区', '江苏省盐城市盐城经济技术开发区', 3, '3209');
INSERT INTO `info_area` VALUES (932, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '320981', '东台市', '江苏省盐城市东台市', 3, '3209');
INSERT INTO `info_area` VALUES (933, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3210', '扬州市', '江苏省扬州市', 2, '32');
INSERT INTO `info_area` VALUES (934, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321002', '广陵区', '江苏省扬州市广陵区', 3, '3210');
INSERT INTO `info_area` VALUES (935, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321003', '邗江区', '江苏省扬州市邗江区', 3, '3210');
INSERT INTO `info_area` VALUES (936, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321012', '江都区', '江苏省扬州市江都区', 3, '3210');
INSERT INTO `info_area` VALUES (937, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321023', '宝应县', '江苏省扬州市宝应县', 3, '3210');
INSERT INTO `info_area` VALUES (938, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321071', '扬州经济技术开发区', '江苏省扬州市扬州经济技术开发区', 3, '3210');
INSERT INTO `info_area` VALUES (939, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321081', '仪征市', '江苏省扬州市仪征市', 3, '3210');
INSERT INTO `info_area` VALUES (940, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321084', '高邮市', '江苏省扬州市高邮市', 3, '3210');
INSERT INTO `info_area` VALUES (941, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3211', '镇江市', '江苏省镇江市', 2, '32');
INSERT INTO `info_area` VALUES (942, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321102', '京口区', '江苏省镇江市京口区', 3, '3211');
INSERT INTO `info_area` VALUES (943, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321111', '润州区', '江苏省镇江市润州区', 3, '3211');
INSERT INTO `info_area` VALUES (944, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321112', '丹徒区', '江苏省镇江市丹徒区', 3, '3211');
INSERT INTO `info_area` VALUES (945, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321171', '镇江新区', '江苏省镇江市镇江新区', 3, '3211');
INSERT INTO `info_area` VALUES (946, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321181', '丹阳市', '江苏省镇江市丹阳市', 3, '3211');
INSERT INTO `info_area` VALUES (947, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321182', '扬中市', '江苏省镇江市扬中市', 3, '3211');
INSERT INTO `info_area` VALUES (948, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321183', '句容市', '江苏省镇江市句容市', 3, '3211');
INSERT INTO `info_area` VALUES (949, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3212', '泰州市', '江苏省泰州市', 2, '32');
INSERT INTO `info_area` VALUES (950, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321202', '海陵区', '江苏省泰州市海陵区', 3, '3212');
INSERT INTO `info_area` VALUES (951, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321203', '高港区', '江苏省泰州市高港区', 3, '3212');
INSERT INTO `info_area` VALUES (952, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321204', '姜堰区', '江苏省泰州市姜堰区', 3, '3212');
INSERT INTO `info_area` VALUES (953, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321281', '兴化市', '江苏省泰州市兴化市', 3, '3212');
INSERT INTO `info_area` VALUES (954, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321282', '靖江市', '江苏省泰州市靖江市', 3, '3212');
INSERT INTO `info_area` VALUES (955, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321283', '泰兴市', '江苏省泰州市泰兴市', 3, '3212');
INSERT INTO `info_area` VALUES (956, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3213', '宿迁市', '江苏省宿迁市', 2, '32');
INSERT INTO `info_area` VALUES (957, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321302', '宿城区', '江苏省宿迁市宿城区', 3, '3213');
INSERT INTO `info_area` VALUES (958, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321311', '宿豫区', '江苏省宿迁市宿豫区', 3, '3213');
INSERT INTO `info_area` VALUES (959, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321322', '沭阳县', '江苏省宿迁市沭阳县', 3, '3213');
INSERT INTO `info_area` VALUES (960, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321323', '泗阳县', '江苏省宿迁市泗阳县', 3, '3213');
INSERT INTO `info_area` VALUES (961, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321324', '泗洪县', '江苏省宿迁市泗洪县', 3, '3213');
INSERT INTO `info_area` VALUES (962, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '321371', '宿迁经济技术开发区', '江苏省宿迁市宿迁经济技术开发区', 3, '3213');
INSERT INTO `info_area` VALUES (963, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '33', '浙江省', '浙江省', 1, '');
INSERT INTO `info_area` VALUES (964, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3301', '杭州市', '浙江省杭州市', 2, '33');
INSERT INTO `info_area` VALUES (965, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330102', '上城区', '浙江省杭州市上城区', 3, '3301');
INSERT INTO `info_area` VALUES (966, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330105', '拱墅区', '浙江省杭州市拱墅区', 3, '3301');
INSERT INTO `info_area` VALUES (967, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330106', '西湖区', '浙江省杭州市西湖区', 3, '3301');
INSERT INTO `info_area` VALUES (968, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330108', '滨江区', '浙江省杭州市滨江区', 3, '3301');
INSERT INTO `info_area` VALUES (969, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330109', '萧山区', '浙江省杭州市萧山区', 3, '3301');
INSERT INTO `info_area` VALUES (970, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330110', '余杭区', '浙江省杭州市余杭区', 3, '3301');
INSERT INTO `info_area` VALUES (971, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330111', '富阳区', '浙江省杭州市富阳区', 3, '3301');
INSERT INTO `info_area` VALUES (972, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330112', '临安区', '浙江省杭州市临安区', 3, '3301');
INSERT INTO `info_area` VALUES (973, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330113', '临平区', '浙江省杭州市临平区', 3, '3301');
INSERT INTO `info_area` VALUES (974, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330114', '钱塘区', '浙江省杭州市钱塘区', 3, '3301');
INSERT INTO `info_area` VALUES (975, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330122', '桐庐县', '浙江省杭州市桐庐县', 3, '3301');
INSERT INTO `info_area` VALUES (976, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330127', '淳安县', '浙江省杭州市淳安县', 3, '3301');
INSERT INTO `info_area` VALUES (977, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330182', '建德市', '浙江省杭州市建德市', 3, '3301');
INSERT INTO `info_area` VALUES (978, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3302', '宁波市', '浙江省宁波市', 2, '33');
INSERT INTO `info_area` VALUES (979, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330203', '海曙区', '浙江省宁波市海曙区', 3, '3302');
INSERT INTO `info_area` VALUES (980, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330205', '江北区', '浙江省宁波市江北区', 3, '3302');
INSERT INTO `info_area` VALUES (981, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330206', '北仑区', '浙江省宁波市北仑区', 3, '3302');
INSERT INTO `info_area` VALUES (982, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330211', '镇海区', '浙江省宁波市镇海区', 3, '3302');
INSERT INTO `info_area` VALUES (983, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330212', '鄞州区', '浙江省宁波市鄞州区', 3, '3302');
INSERT INTO `info_area` VALUES (984, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330213', '奉化区', '浙江省宁波市奉化区', 3, '3302');
INSERT INTO `info_area` VALUES (985, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330225', '象山县', '浙江省宁波市象山县', 3, '3302');
INSERT INTO `info_area` VALUES (986, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330226', '宁海县', '浙江省宁波市宁海县', 3, '3302');
INSERT INTO `info_area` VALUES (987, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330281', '余姚市', '浙江省宁波市余姚市', 3, '3302');
INSERT INTO `info_area` VALUES (988, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330282', '慈溪市', '浙江省宁波市慈溪市', 3, '3302');
INSERT INTO `info_area` VALUES (989, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3303', '温州市', '浙江省温州市', 2, '33');
INSERT INTO `info_area` VALUES (990, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330302', '鹿城区', '浙江省温州市鹿城区', 3, '3303');
INSERT INTO `info_area` VALUES (991, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330303', '龙湾区', '浙江省温州市龙湾区', 3, '3303');
INSERT INTO `info_area` VALUES (992, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330304', '瓯海区', '浙江省温州市瓯海区', 3, '3303');
INSERT INTO `info_area` VALUES (993, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330305', '洞头区', '浙江省温州市洞头区', 3, '3303');
INSERT INTO `info_area` VALUES (994, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330324', '永嘉县', '浙江省温州市永嘉县', 3, '3303');
INSERT INTO `info_area` VALUES (995, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330326', '平阳县', '浙江省温州市平阳县', 3, '3303');
INSERT INTO `info_area` VALUES (996, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330327', '苍南县', '浙江省温州市苍南县', 3, '3303');
INSERT INTO `info_area` VALUES (997, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330328', '文成县', '浙江省温州市文成县', 3, '3303');
INSERT INTO `info_area` VALUES (998, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330329', '泰顺县', '浙江省温州市泰顺县', 3, '3303');
INSERT INTO `info_area` VALUES (999, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330381', '瑞安市', '浙江省温州市瑞安市', 3, '3303');
INSERT INTO `info_area` VALUES (1000, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330382', '乐清市', '浙江省温州市乐清市', 3, '3303');
INSERT INTO `info_area` VALUES (1001, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330383', '龙港市', '浙江省温州市龙港市', 3, '3303');
INSERT INTO `info_area` VALUES (1002, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3304', '嘉兴市', '浙江省嘉兴市', 2, '33');
INSERT INTO `info_area` VALUES (1003, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330402', '南湖区', '浙江省嘉兴市南湖区', 3, '3304');
INSERT INTO `info_area` VALUES (1004, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330411', '秀洲区', '浙江省嘉兴市秀洲区', 3, '3304');
INSERT INTO `info_area` VALUES (1005, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330421', '嘉善县', '浙江省嘉兴市嘉善县', 3, '3304');
INSERT INTO `info_area` VALUES (1006, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330424', '海盐县', '浙江省嘉兴市海盐县', 3, '3304');
INSERT INTO `info_area` VALUES (1007, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330481', '海宁市', '浙江省嘉兴市海宁市', 3, '3304');
INSERT INTO `info_area` VALUES (1008, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330482', '平湖市', '浙江省嘉兴市平湖市', 3, '3304');
INSERT INTO `info_area` VALUES (1009, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330483', '桐乡市', '浙江省嘉兴市桐乡市', 3, '3304');
INSERT INTO `info_area` VALUES (1010, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3305', '湖州市', '浙江省湖州市', 2, '33');
INSERT INTO `info_area` VALUES (1011, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330502', '吴兴区', '浙江省湖州市吴兴区', 3, '3305');
INSERT INTO `info_area` VALUES (1012, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330503', '南浔区', '浙江省湖州市南浔区', 3, '3305');
INSERT INTO `info_area` VALUES (1013, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330521', '德清县', '浙江省湖州市德清县', 3, '3305');
INSERT INTO `info_area` VALUES (1014, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330522', '长兴县', '浙江省湖州市长兴县', 3, '3305');
INSERT INTO `info_area` VALUES (1015, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330523', '安吉县', '浙江省湖州市安吉县', 3, '3305');
INSERT INTO `info_area` VALUES (1016, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3306', '绍兴市', '浙江省绍兴市', 2, '33');
INSERT INTO `info_area` VALUES (1017, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330602', '越城区', '浙江省绍兴市越城区', 3, '3306');
INSERT INTO `info_area` VALUES (1018, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330603', '柯桥区', '浙江省绍兴市柯桥区', 3, '3306');
INSERT INTO `info_area` VALUES (1019, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330604', '上虞区', '浙江省绍兴市上虞区', 3, '3306');
INSERT INTO `info_area` VALUES (1020, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330624', '新昌县', '浙江省绍兴市新昌县', 3, '3306');
INSERT INTO `info_area` VALUES (1021, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330681', '诸暨市', '浙江省绍兴市诸暨市', 3, '3306');
INSERT INTO `info_area` VALUES (1022, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330683', '嵊州市', '浙江省绍兴市嵊州市', 3, '3306');
INSERT INTO `info_area` VALUES (1023, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3307', '金华市', '浙江省金华市', 2, '33');
INSERT INTO `info_area` VALUES (1024, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330702', '婺城区', '浙江省金华市婺城区', 3, '3307');
INSERT INTO `info_area` VALUES (1025, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330703', '金东区', '浙江省金华市金东区', 3, '3307');
INSERT INTO `info_area` VALUES (1026, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330723', '武义县', '浙江省金华市武义县', 3, '3307');
INSERT INTO `info_area` VALUES (1027, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330726', '浦江县', '浙江省金华市浦江县', 3, '3307');
INSERT INTO `info_area` VALUES (1028, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330727', '磐安县', '浙江省金华市磐安县', 3, '3307');
INSERT INTO `info_area` VALUES (1029, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330781', '兰溪市', '浙江省金华市兰溪市', 3, '3307');
INSERT INTO `info_area` VALUES (1030, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330782', '义乌市', '浙江省金华市义乌市', 3, '3307');
INSERT INTO `info_area` VALUES (1031, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330783', '东阳市', '浙江省金华市东阳市', 3, '3307');
INSERT INTO `info_area` VALUES (1032, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330784', '永康市', '浙江省金华市永康市', 3, '3307');
INSERT INTO `info_area` VALUES (1033, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3308', '衢州市', '浙江省衢州市', 2, '33');
INSERT INTO `info_area` VALUES (1034, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330802', '柯城区', '浙江省衢州市柯城区', 3, '3308');
INSERT INTO `info_area` VALUES (1035, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330803', '衢江区', '浙江省衢州市衢江区', 3, '3308');
INSERT INTO `info_area` VALUES (1036, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330822', '常山县', '浙江省衢州市常山县', 3, '3308');
INSERT INTO `info_area` VALUES (1037, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330824', '开化县', '浙江省衢州市开化县', 3, '3308');
INSERT INTO `info_area` VALUES (1038, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330825', '龙游县', '浙江省衢州市龙游县', 3, '3308');
INSERT INTO `info_area` VALUES (1039, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330881', '江山市', '浙江省衢州市江山市', 3, '3308');
INSERT INTO `info_area` VALUES (1040, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3309', '舟山市', '浙江省舟山市', 2, '33');
INSERT INTO `info_area` VALUES (1041, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330902', '定海区', '浙江省舟山市定海区', 3, '3309');
INSERT INTO `info_area` VALUES (1042, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330903', '普陀区', '浙江省舟山市普陀区', 3, '3309');
INSERT INTO `info_area` VALUES (1043, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330921', '岱山县', '浙江省舟山市岱山县', 3, '3309');
INSERT INTO `info_area` VALUES (1044, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '330922', '嵊泗县', '浙江省舟山市嵊泗县', 3, '3309');
INSERT INTO `info_area` VALUES (1045, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3310', '台州市', '浙江省台州市', 2, '33');
INSERT INTO `info_area` VALUES (1046, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331002', '椒江区', '浙江省台州市椒江区', 3, '3310');
INSERT INTO `info_area` VALUES (1047, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331003', '黄岩区', '浙江省台州市黄岩区', 3, '3310');
INSERT INTO `info_area` VALUES (1048, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331004', '路桥区', '浙江省台州市路桥区', 3, '3310');
INSERT INTO `info_area` VALUES (1049, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331022', '三门县', '浙江省台州市三门县', 3, '3310');
INSERT INTO `info_area` VALUES (1050, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331023', '天台县', '浙江省台州市天台县', 3, '3310');
INSERT INTO `info_area` VALUES (1051, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331024', '仙居县', '浙江省台州市仙居县', 3, '3310');
INSERT INTO `info_area` VALUES (1052, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331081', '温岭市', '浙江省台州市温岭市', 3, '3310');
INSERT INTO `info_area` VALUES (1053, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331082', '临海市', '浙江省台州市临海市', 3, '3310');
INSERT INTO `info_area` VALUES (1054, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331083', '玉环市', '浙江省台州市玉环市', 3, '3310');
INSERT INTO `info_area` VALUES (1055, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3311', '丽水市', '浙江省丽水市', 2, '33');
INSERT INTO `info_area` VALUES (1056, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331102', '莲都区', '浙江省丽水市莲都区', 3, '3311');
INSERT INTO `info_area` VALUES (1057, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331121', '青田县', '浙江省丽水市青田县', 3, '3311');
INSERT INTO `info_area` VALUES (1058, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331122', '缙云县', '浙江省丽水市缙云县', 3, '3311');
INSERT INTO `info_area` VALUES (1059, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331123', '遂昌县', '浙江省丽水市遂昌县', 3, '3311');
INSERT INTO `info_area` VALUES (1060, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331124', '松阳县', '浙江省丽水市松阳县', 3, '3311');
INSERT INTO `info_area` VALUES (1061, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331125', '云和县', '浙江省丽水市云和县', 3, '3311');
INSERT INTO `info_area` VALUES (1062, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331126', '庆元县', '浙江省丽水市庆元县', 3, '3311');
INSERT INTO `info_area` VALUES (1063, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331127', '景宁畲族自治县', '浙江省丽水市景宁畲族自治县', 3, '3311');
INSERT INTO `info_area` VALUES (1064, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '331181', '龙泉市', '浙江省丽水市龙泉市', 3, '3311');
INSERT INTO `info_area` VALUES (1065, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '34', '安徽省', '安徽省', 1, '');
INSERT INTO `info_area` VALUES (1066, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3401', '合肥市', '安徽省合肥市', 2, '34');
INSERT INTO `info_area` VALUES (1067, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340102', '瑶海区', '安徽省合肥市瑶海区', 3, '3401');
INSERT INTO `info_area` VALUES (1068, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340103', '庐阳区', '安徽省合肥市庐阳区', 3, '3401');
INSERT INTO `info_area` VALUES (1069, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340104', '蜀山区', '安徽省合肥市蜀山区', 3, '3401');
INSERT INTO `info_area` VALUES (1070, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340111', '包河区', '安徽省合肥市包河区', 3, '3401');
INSERT INTO `info_area` VALUES (1071, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340121', '长丰县', '安徽省合肥市长丰县', 3, '3401');
INSERT INTO `info_area` VALUES (1072, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340122', '肥东县', '安徽省合肥市肥东县', 3, '3401');
INSERT INTO `info_area` VALUES (1073, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340123', '肥西县', '安徽省合肥市肥西县', 3, '3401');
INSERT INTO `info_area` VALUES (1074, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340124', '庐江县', '安徽省合肥市庐江县', 3, '3401');
INSERT INTO `info_area` VALUES (1075, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340176', '合肥高新技术产业开发区', '安徽省合肥市合肥高新技术产业开发区', 3, '3401');
INSERT INTO `info_area` VALUES (1076, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340177', '合肥经济技术开发区', '安徽省合肥市合肥经济技术开发区', 3, '3401');
INSERT INTO `info_area` VALUES (1077, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340178', '合肥新站高新技术产业开发区', '安徽省合肥市合肥新站高新技术产业开发区', 3, '3401');
INSERT INTO `info_area` VALUES (1078, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340181', '巢湖市', '安徽省合肥市巢湖市', 3, '3401');
INSERT INTO `info_area` VALUES (1079, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3402', '芜湖市', '安徽省芜湖市', 2, '34');
INSERT INTO `info_area` VALUES (1080, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340202', '镜湖区', '安徽省芜湖市镜湖区', 3, '3402');
INSERT INTO `info_area` VALUES (1081, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340207', '鸠江区', '安徽省芜湖市鸠江区', 3, '3402');
INSERT INTO `info_area` VALUES (1082, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340209', '弋江区', '安徽省芜湖市弋江区', 3, '3402');
INSERT INTO `info_area` VALUES (1083, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340210', '湾沚区', '安徽省芜湖市湾沚区', 3, '3402');
INSERT INTO `info_area` VALUES (1084, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340212', '繁昌区', '安徽省芜湖市繁昌区', 3, '3402');
INSERT INTO `info_area` VALUES (1085, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340223', '南陵县', '安徽省芜湖市南陵县', 3, '3402');
INSERT INTO `info_area` VALUES (1086, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340271', '芜湖经济技术开发区', '安徽省芜湖市芜湖经济技术开发区', 3, '3402');
INSERT INTO `info_area` VALUES (1087, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340272', '安徽芜湖三山经济开发区', '安徽省芜湖市安徽芜湖三山经济开发区', 3, '3402');
INSERT INTO `info_area` VALUES (1088, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340281', '无为市', '安徽省芜湖市无为市', 3, '3402');
INSERT INTO `info_area` VALUES (1089, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3403', '蚌埠市', '安徽省蚌埠市', 2, '34');
INSERT INTO `info_area` VALUES (1090, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340302', '龙子湖区', '安徽省蚌埠市龙子湖区', 3, '3403');
INSERT INTO `info_area` VALUES (1091, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340303', '蚌山区', '安徽省蚌埠市蚌山区', 3, '3403');
INSERT INTO `info_area` VALUES (1092, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340304', '禹会区', '安徽省蚌埠市禹会区', 3, '3403');
INSERT INTO `info_area` VALUES (1093, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340311', '淮上区', '安徽省蚌埠市淮上区', 3, '3403');
INSERT INTO `info_area` VALUES (1094, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340321', '怀远县', '安徽省蚌埠市怀远县', 3, '3403');
INSERT INTO `info_area` VALUES (1095, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340322', '五河县', '安徽省蚌埠市五河县', 3, '3403');
INSERT INTO `info_area` VALUES (1096, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340323', '固镇县', '安徽省蚌埠市固镇县', 3, '3403');
INSERT INTO `info_area` VALUES (1097, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340371', '蚌埠市高新技术开发区', '安徽省蚌埠市蚌埠市高新技术开发区', 3, '3403');
INSERT INTO `info_area` VALUES (1098, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340372', '蚌埠市经济开发区', '安徽省蚌埠市蚌埠市经济开发区', 3, '3403');
INSERT INTO `info_area` VALUES (1099, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3404', '淮南市', '安徽省淮南市', 2, '34');
INSERT INTO `info_area` VALUES (1100, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340402', '大通区', '安徽省淮南市大通区', 3, '3404');
INSERT INTO `info_area` VALUES (1101, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340403', '田家庵区', '安徽省淮南市田家庵区', 3, '3404');
INSERT INTO `info_area` VALUES (1102, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340404', '谢家集区', '安徽省淮南市谢家集区', 3, '3404');
INSERT INTO `info_area` VALUES (1103, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340405', '八公山区', '安徽省淮南市八公山区', 3, '3404');
INSERT INTO `info_area` VALUES (1104, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340406', '潘集区', '安徽省淮南市潘集区', 3, '3404');
INSERT INTO `info_area` VALUES (1105, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340421', '凤台县', '安徽省淮南市凤台县', 3, '3404');
INSERT INTO `info_area` VALUES (1106, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340422', '寿县', '安徽省淮南市寿县', 3, '3404');
INSERT INTO `info_area` VALUES (1107, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3405', '马鞍山市', '安徽省马鞍山市', 2, '34');
INSERT INTO `info_area` VALUES (1108, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340503', '花山区', '安徽省马鞍山市花山区', 3, '3405');
INSERT INTO `info_area` VALUES (1109, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340504', '雨山区', '安徽省马鞍山市雨山区', 3, '3405');
INSERT INTO `info_area` VALUES (1110, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340506', '博望区', '安徽省马鞍山市博望区', 3, '3405');
INSERT INTO `info_area` VALUES (1111, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340521', '当涂县', '安徽省马鞍山市当涂县', 3, '3405');
INSERT INTO `info_area` VALUES (1112, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340522', '含山县', '安徽省马鞍山市含山县', 3, '3405');
INSERT INTO `info_area` VALUES (1113, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340523', '和县', '安徽省马鞍山市和县', 3, '3405');
INSERT INTO `info_area` VALUES (1114, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3406', '淮北市', '安徽省淮北市', 2, '34');
INSERT INTO `info_area` VALUES (1115, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340602', '杜集区', '安徽省淮北市杜集区', 3, '3406');
INSERT INTO `info_area` VALUES (1116, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340603', '相山区', '安徽省淮北市相山区', 3, '3406');
INSERT INTO `info_area` VALUES (1117, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340604', '烈山区', '安徽省淮北市烈山区', 3, '3406');
INSERT INTO `info_area` VALUES (1118, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340621', '濉溪县', '安徽省淮北市濉溪县', 3, '3406');
INSERT INTO `info_area` VALUES (1119, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3407', '铜陵市', '安徽省铜陵市', 2, '34');
INSERT INTO `info_area` VALUES (1120, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340705', '铜官区', '安徽省铜陵市铜官区', 3, '3407');
INSERT INTO `info_area` VALUES (1121, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340706', '义安区', '安徽省铜陵市义安区', 3, '3407');
INSERT INTO `info_area` VALUES (1122, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340711', '郊区', '安徽省铜陵市郊区', 3, '3407');
INSERT INTO `info_area` VALUES (1123, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340722', '枞阳县', '安徽省铜陵市枞阳县', 3, '3407');
INSERT INTO `info_area` VALUES (1124, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3408', '安庆市', '安徽省安庆市', 2, '34');
INSERT INTO `info_area` VALUES (1125, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340802', '迎江区', '安徽省安庆市迎江区', 3, '3408');
INSERT INTO `info_area` VALUES (1126, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340803', '大观区', '安徽省安庆市大观区', 3, '3408');
INSERT INTO `info_area` VALUES (1127, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340811', '宜秀区', '安徽省安庆市宜秀区', 3, '3408');
INSERT INTO `info_area` VALUES (1128, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340822', '怀宁县', '安徽省安庆市怀宁县', 3, '3408');
INSERT INTO `info_area` VALUES (1129, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340825', '太湖县', '安徽省安庆市太湖县', 3, '3408');
INSERT INTO `info_area` VALUES (1130, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340826', '宿松县', '安徽省安庆市宿松县', 3, '3408');
INSERT INTO `info_area` VALUES (1131, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340827', '望江县', '安徽省安庆市望江县', 3, '3408');
INSERT INTO `info_area` VALUES (1132, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340828', '岳西县', '安徽省安庆市岳西县', 3, '3408');
INSERT INTO `info_area` VALUES (1133, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340871', '安徽安庆经济开发区', '安徽省安庆市安徽安庆经济开发区', 3, '3408');
INSERT INTO `info_area` VALUES (1134, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340881', '桐城市', '安徽省安庆市桐城市', 3, '3408');
INSERT INTO `info_area` VALUES (1135, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '340882', '潜山市', '安徽省安庆市潜山市', 3, '3408');
INSERT INTO `info_area` VALUES (1136, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3410', '黄山市', '安徽省黄山市', 2, '34');
INSERT INTO `info_area` VALUES (1137, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341002', '屯溪区', '安徽省黄山市屯溪区', 3, '3410');
INSERT INTO `info_area` VALUES (1138, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341003', '黄山区', '安徽省黄山市黄山区', 3, '3410');
INSERT INTO `info_area` VALUES (1139, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341004', '徽州区', '安徽省黄山市徽州区', 3, '3410');
INSERT INTO `info_area` VALUES (1140, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341021', '歙县', '安徽省黄山市歙县', 3, '3410');
INSERT INTO `info_area` VALUES (1141, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341022', '休宁县', '安徽省黄山市休宁县', 3, '3410');
INSERT INTO `info_area` VALUES (1142, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341023', '黟县', '安徽省黄山市黟县', 3, '3410');
INSERT INTO `info_area` VALUES (1143, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341024', '祁门县', '安徽省黄山市祁门县', 3, '3410');
INSERT INTO `info_area` VALUES (1144, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3411', '滁州市', '安徽省滁州市', 2, '34');
INSERT INTO `info_area` VALUES (1145, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341102', '琅琊区', '安徽省滁州市琅琊区', 3, '3411');
INSERT INTO `info_area` VALUES (1146, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341103', '南谯区', '安徽省滁州市南谯区', 3, '3411');
INSERT INTO `info_area` VALUES (1147, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341122', '来安县', '安徽省滁州市来安县', 3, '3411');
INSERT INTO `info_area` VALUES (1148, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341124', '全椒县', '安徽省滁州市全椒县', 3, '3411');
INSERT INTO `info_area` VALUES (1149, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341125', '定远县', '安徽省滁州市定远县', 3, '3411');
INSERT INTO `info_area` VALUES (1150, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341126', '凤阳县', '安徽省滁州市凤阳县', 3, '3411');
INSERT INTO `info_area` VALUES (1151, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341171', '中新苏滁高新技术产业开发区', '安徽省滁州市中新苏滁高新技术产业开发区', 3, '3411');
INSERT INTO `info_area` VALUES (1152, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341172', '滁州经济技术开发区', '安徽省滁州市滁州经济技术开发区', 3, '3411');
INSERT INTO `info_area` VALUES (1153, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341181', '天长市', '安徽省滁州市天长市', 3, '3411');
INSERT INTO `info_area` VALUES (1154, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341182', '明光市', '安徽省滁州市明光市', 3, '3411');
INSERT INTO `info_area` VALUES (1155, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3412', '阜阳市', '安徽省阜阳市', 2, '34');
INSERT INTO `info_area` VALUES (1156, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341202', '颍州区', '安徽省阜阳市颍州区', 3, '3412');
INSERT INTO `info_area` VALUES (1157, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341203', '颍东区', '安徽省阜阳市颍东区', 3, '3412');
INSERT INTO `info_area` VALUES (1158, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341204', '颍泉区', '安徽省阜阳市颍泉区', 3, '3412');
INSERT INTO `info_area` VALUES (1159, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341221', '临泉县', '安徽省阜阳市临泉县', 3, '3412');
INSERT INTO `info_area` VALUES (1160, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341222', '太和县', '安徽省阜阳市太和县', 3, '3412');
INSERT INTO `info_area` VALUES (1161, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341225', '阜南县', '安徽省阜阳市阜南县', 3, '3412');
INSERT INTO `info_area` VALUES (1162, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341226', '颍上县', '安徽省阜阳市颍上县', 3, '3412');
INSERT INTO `info_area` VALUES (1163, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341271', '阜阳合肥现代产业园区', '安徽省阜阳市阜阳合肥现代产业园区', 3, '3412');
INSERT INTO `info_area` VALUES (1164, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341272', '阜阳经济技术开发区', '安徽省阜阳市阜阳经济技术开发区', 3, '3412');
INSERT INTO `info_area` VALUES (1165, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341282', '界首市', '安徽省阜阳市界首市', 3, '3412');
INSERT INTO `info_area` VALUES (1166, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3413', '宿州市', '安徽省宿州市', 2, '34');
INSERT INTO `info_area` VALUES (1167, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341302', '埇桥区', '安徽省宿州市埇桥区', 3, '3413');
INSERT INTO `info_area` VALUES (1168, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341321', '砀山县', '安徽省宿州市砀山县', 3, '3413');
INSERT INTO `info_area` VALUES (1169, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341322', '萧县', '安徽省宿州市萧县', 3, '3413');
INSERT INTO `info_area` VALUES (1170, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341323', '灵璧县', '安徽省宿州市灵璧县', 3, '3413');
INSERT INTO `info_area` VALUES (1171, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341324', '泗县', '安徽省宿州市泗县', 3, '3413');
INSERT INTO `info_area` VALUES (1172, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341371', '宿州马鞍山现代产业园区', '安徽省宿州市宿州马鞍山现代产业园区', 3, '3413');
INSERT INTO `info_area` VALUES (1173, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341372', '宿州经济技术开发区', '安徽省宿州市宿州经济技术开发区', 3, '3413');
INSERT INTO `info_area` VALUES (1174, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3415', '六安市', '安徽省六安市', 2, '34');
INSERT INTO `info_area` VALUES (1175, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341502', '金安区', '安徽省六安市金安区', 3, '3415');
INSERT INTO `info_area` VALUES (1176, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341503', '裕安区', '安徽省六安市裕安区', 3, '3415');
INSERT INTO `info_area` VALUES (1177, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341504', '叶集区', '安徽省六安市叶集区', 3, '3415');
INSERT INTO `info_area` VALUES (1178, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341522', '霍邱县', '安徽省六安市霍邱县', 3, '3415');
INSERT INTO `info_area` VALUES (1179, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341523', '舒城县', '安徽省六安市舒城县', 3, '3415');
INSERT INTO `info_area` VALUES (1180, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341524', '金寨县', '安徽省六安市金寨县', 3, '3415');
INSERT INTO `info_area` VALUES (1181, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341525', '霍山县', '安徽省六安市霍山县', 3, '3415');
INSERT INTO `info_area` VALUES (1182, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3416', '亳州市', '安徽省亳州市', 2, '34');
INSERT INTO `info_area` VALUES (1183, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341602', '谯城区', '安徽省亳州市谯城区', 3, '3416');
INSERT INTO `info_area` VALUES (1184, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341621', '涡阳县', '安徽省亳州市涡阳县', 3, '3416');
INSERT INTO `info_area` VALUES (1185, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341622', '蒙城县', '安徽省亳州市蒙城县', 3, '3416');
INSERT INTO `info_area` VALUES (1186, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341623', '利辛县', '安徽省亳州市利辛县', 3, '3416');
INSERT INTO `info_area` VALUES (1187, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3417', '池州市', '安徽省池州市', 2, '34');
INSERT INTO `info_area` VALUES (1188, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341702', '贵池区', '安徽省池州市贵池区', 3, '3417');
INSERT INTO `info_area` VALUES (1189, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341721', '东至县', '安徽省池州市东至县', 3, '3417');
INSERT INTO `info_area` VALUES (1190, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341722', '石台县', '安徽省池州市石台县', 3, '3417');
INSERT INTO `info_area` VALUES (1191, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341723', '青阳县', '安徽省池州市青阳县', 3, '3417');
INSERT INTO `info_area` VALUES (1192, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3418', '宣城市', '安徽省宣城市', 2, '34');
INSERT INTO `info_area` VALUES (1193, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341802', '宣州区', '安徽省宣城市宣州区', 3, '3418');
INSERT INTO `info_area` VALUES (1194, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341821', '郎溪县', '安徽省宣城市郎溪县', 3, '3418');
INSERT INTO `info_area` VALUES (1195, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341823', '泾县', '安徽省宣城市泾县', 3, '3418');
INSERT INTO `info_area` VALUES (1196, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341824', '绩溪县', '安徽省宣城市绩溪县', 3, '3418');
INSERT INTO `info_area` VALUES (1197, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341825', '旌德县', '安徽省宣城市旌德县', 3, '3418');
INSERT INTO `info_area` VALUES (1198, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341871', '宣城市经济开发区', '安徽省宣城市宣城市经济开发区', 3, '3418');
INSERT INTO `info_area` VALUES (1199, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341881', '宁国市', '安徽省宣城市宁国市', 3, '3418');
INSERT INTO `info_area` VALUES (1200, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '341882', '广德市', '安徽省宣城市广德市', 3, '3418');
INSERT INTO `info_area` VALUES (1201, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '35', '福建省', '福建省', 1, '');
INSERT INTO `info_area` VALUES (1202, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3501', '福州市', '福建省福州市', 2, '35');
INSERT INTO `info_area` VALUES (1203, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350102', '鼓楼区', '福建省福州市鼓楼区', 3, '3501');
INSERT INTO `info_area` VALUES (1204, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350103', '台江区', '福建省福州市台江区', 3, '3501');
INSERT INTO `info_area` VALUES (1205, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350104', '仓山区', '福建省福州市仓山区', 3, '3501');
INSERT INTO `info_area` VALUES (1206, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350105', '马尾区', '福建省福州市马尾区', 3, '3501');
INSERT INTO `info_area` VALUES (1207, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350111', '晋安区', '福建省福州市晋安区', 3, '3501');
INSERT INTO `info_area` VALUES (1208, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350112', '长乐区', '福建省福州市长乐区', 3, '3501');
INSERT INTO `info_area` VALUES (1209, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350121', '闽侯县', '福建省福州市闽侯县', 3, '3501');
INSERT INTO `info_area` VALUES (1210, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350122', '连江县', '福建省福州市连江县', 3, '3501');
INSERT INTO `info_area` VALUES (1211, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350123', '罗源县', '福建省福州市罗源县', 3, '3501');
INSERT INTO `info_area` VALUES (1212, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350124', '闽清县', '福建省福州市闽清县', 3, '3501');
INSERT INTO `info_area` VALUES (1213, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350125', '永泰县', '福建省福州市永泰县', 3, '3501');
INSERT INTO `info_area` VALUES (1214, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350128', '平潭县', '福建省福州市平潭县', 3, '3501');
INSERT INTO `info_area` VALUES (1215, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350181', '福清市', '福建省福州市福清市', 3, '3501');
INSERT INTO `info_area` VALUES (1216, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3502', '厦门市', '福建省厦门市', 2, '35');
INSERT INTO `info_area` VALUES (1217, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350203', '思明区', '福建省厦门市思明区', 3, '3502');
INSERT INTO `info_area` VALUES (1218, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350205', '海沧区', '福建省厦门市海沧区', 3, '3502');
INSERT INTO `info_area` VALUES (1219, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350206', '湖里区', '福建省厦门市湖里区', 3, '3502');
INSERT INTO `info_area` VALUES (1220, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350211', '集美区', '福建省厦门市集美区', 3, '3502');
INSERT INTO `info_area` VALUES (1221, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350212', '同安区', '福建省厦门市同安区', 3, '3502');
INSERT INTO `info_area` VALUES (1222, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350213', '翔安区', '福建省厦门市翔安区', 3, '3502');
INSERT INTO `info_area` VALUES (1223, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3503', '莆田市', '福建省莆田市', 2, '35');
INSERT INTO `info_area` VALUES (1224, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350302', '城厢区', '福建省莆田市城厢区', 3, '3503');
INSERT INTO `info_area` VALUES (1225, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350303', '涵江区', '福建省莆田市涵江区', 3, '3503');
INSERT INTO `info_area` VALUES (1226, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350304', '荔城区', '福建省莆田市荔城区', 3, '3503');
INSERT INTO `info_area` VALUES (1227, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350305', '秀屿区', '福建省莆田市秀屿区', 3, '3503');
INSERT INTO `info_area` VALUES (1228, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350322', '仙游县', '福建省莆田市仙游县', 3, '3503');
INSERT INTO `info_area` VALUES (1229, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3504', '三明市', '福建省三明市', 2, '35');
INSERT INTO `info_area` VALUES (1230, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350404', '三元区', '福建省三明市三元区', 3, '3504');
INSERT INTO `info_area` VALUES (1231, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350405', '沙县区', '福建省三明市沙县区', 3, '3504');
INSERT INTO `info_area` VALUES (1232, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350421', '明溪县', '福建省三明市明溪县', 3, '3504');
INSERT INTO `info_area` VALUES (1233, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350423', '清流县', '福建省三明市清流县', 3, '3504');
INSERT INTO `info_area` VALUES (1234, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350424', '宁化县', '福建省三明市宁化县', 3, '3504');
INSERT INTO `info_area` VALUES (1235, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350425', '大田县', '福建省三明市大田县', 3, '3504');
INSERT INTO `info_area` VALUES (1236, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350426', '尤溪县', '福建省三明市尤溪县', 3, '3504');
INSERT INTO `info_area` VALUES (1237, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350428', '将乐县', '福建省三明市将乐县', 3, '3504');
INSERT INTO `info_area` VALUES (1238, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350429', '泰宁县', '福建省三明市泰宁县', 3, '3504');
INSERT INTO `info_area` VALUES (1239, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350430', '建宁县', '福建省三明市建宁县', 3, '3504');
INSERT INTO `info_area` VALUES (1240, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350481', '永安市', '福建省三明市永安市', 3, '3504');
INSERT INTO `info_area` VALUES (1241, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3505', '泉州市', '福建省泉州市', 2, '35');
INSERT INTO `info_area` VALUES (1242, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350502', '鲤城区', '福建省泉州市鲤城区', 3, '3505');
INSERT INTO `info_area` VALUES (1243, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350503', '丰泽区', '福建省泉州市丰泽区', 3, '3505');
INSERT INTO `info_area` VALUES (1244, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350504', '洛江区', '福建省泉州市洛江区', 3, '3505');
INSERT INTO `info_area` VALUES (1245, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350505', '泉港区', '福建省泉州市泉港区', 3, '3505');
INSERT INTO `info_area` VALUES (1246, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350521', '惠安县', '福建省泉州市惠安县', 3, '3505');
INSERT INTO `info_area` VALUES (1247, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350524', '安溪县', '福建省泉州市安溪县', 3, '3505');
INSERT INTO `info_area` VALUES (1248, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350525', '永春县', '福建省泉州市永春县', 3, '3505');
INSERT INTO `info_area` VALUES (1249, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350526', '德化县', '福建省泉州市德化县', 3, '3505');
INSERT INTO `info_area` VALUES (1250, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350527', '金门县', '福建省泉州市金门县', 3, '3505');
INSERT INTO `info_area` VALUES (1251, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350581', '石狮市', '福建省泉州市石狮市', 3, '3505');
INSERT INTO `info_area` VALUES (1252, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350582', '晋江市', '福建省泉州市晋江市', 3, '3505');
INSERT INTO `info_area` VALUES (1253, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350583', '南安市', '福建省泉州市南安市', 3, '3505');
INSERT INTO `info_area` VALUES (1254, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3506', '漳州市', '福建省漳州市', 2, '35');
INSERT INTO `info_area` VALUES (1255, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350602', '芗城区', '福建省漳州市芗城区', 3, '3506');
INSERT INTO `info_area` VALUES (1256, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350603', '龙文区', '福建省漳州市龙文区', 3, '3506');
INSERT INTO `info_area` VALUES (1257, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350604', '龙海区', '福建省漳州市龙海区', 3, '3506');
INSERT INTO `info_area` VALUES (1258, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350605', '长泰区', '福建省漳州市长泰区', 3, '3506');
INSERT INTO `info_area` VALUES (1259, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350622', '云霄县', '福建省漳州市云霄县', 3, '3506');
INSERT INTO `info_area` VALUES (1260, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350623', '漳浦县', '福建省漳州市漳浦县', 3, '3506');
INSERT INTO `info_area` VALUES (1261, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350624', '诏安县', '福建省漳州市诏安县', 3, '3506');
INSERT INTO `info_area` VALUES (1262, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350626', '东山县', '福建省漳州市东山县', 3, '3506');
INSERT INTO `info_area` VALUES (1263, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350627', '南靖县', '福建省漳州市南靖县', 3, '3506');
INSERT INTO `info_area` VALUES (1264, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350628', '平和县', '福建省漳州市平和县', 3, '3506');
INSERT INTO `info_area` VALUES (1265, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350629', '华安县', '福建省漳州市华安县', 3, '3506');
INSERT INTO `info_area` VALUES (1266, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3507', '南平市', '福建省南平市', 2, '35');
INSERT INTO `info_area` VALUES (1267, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350702', '延平区', '福建省南平市延平区', 3, '3507');
INSERT INTO `info_area` VALUES (1268, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350703', '建阳区', '福建省南平市建阳区', 3, '3507');
INSERT INTO `info_area` VALUES (1269, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350721', '顺昌县', '福建省南平市顺昌县', 3, '3507');
INSERT INTO `info_area` VALUES (1270, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350722', '浦城县', '福建省南平市浦城县', 3, '3507');
INSERT INTO `info_area` VALUES (1271, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350723', '光泽县', '福建省南平市光泽县', 3, '3507');
INSERT INTO `info_area` VALUES (1272, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350724', '松溪县', '福建省南平市松溪县', 3, '3507');
INSERT INTO `info_area` VALUES (1273, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350725', '政和县', '福建省南平市政和县', 3, '3507');
INSERT INTO `info_area` VALUES (1274, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350781', '邵武市', '福建省南平市邵武市', 3, '3507');
INSERT INTO `info_area` VALUES (1275, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350782', '武夷山市', '福建省南平市武夷山市', 3, '3507');
INSERT INTO `info_area` VALUES (1276, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350783', '建瓯市', '福建省南平市建瓯市', 3, '3507');
INSERT INTO `info_area` VALUES (1277, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3508', '龙岩市', '福建省龙岩市', 2, '35');
INSERT INTO `info_area` VALUES (1278, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350802', '新罗区', '福建省龙岩市新罗区', 3, '3508');
INSERT INTO `info_area` VALUES (1279, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350803', '永定区', '福建省龙岩市永定区', 3, '3508');
INSERT INTO `info_area` VALUES (1280, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350821', '长汀县', '福建省龙岩市长汀县', 3, '3508');
INSERT INTO `info_area` VALUES (1281, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350823', '上杭县', '福建省龙岩市上杭县', 3, '3508');
INSERT INTO `info_area` VALUES (1282, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350824', '武平县', '福建省龙岩市武平县', 3, '3508');
INSERT INTO `info_area` VALUES (1283, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350825', '连城县', '福建省龙岩市连城县', 3, '3508');
INSERT INTO `info_area` VALUES (1284, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350881', '漳平市', '福建省龙岩市漳平市', 3, '3508');
INSERT INTO `info_area` VALUES (1285, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3509', '宁德市', '福建省宁德市', 2, '35');
INSERT INTO `info_area` VALUES (1286, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350902', '蕉城区', '福建省宁德市蕉城区', 3, '3509');
INSERT INTO `info_area` VALUES (1287, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350921', '霞浦县', '福建省宁德市霞浦县', 3, '3509');
INSERT INTO `info_area` VALUES (1288, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350922', '古田县', '福建省宁德市古田县', 3, '3509');
INSERT INTO `info_area` VALUES (1289, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350923', '屏南县', '福建省宁德市屏南县', 3, '3509');
INSERT INTO `info_area` VALUES (1290, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350924', '寿宁县', '福建省宁德市寿宁县', 3, '3509');
INSERT INTO `info_area` VALUES (1291, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350925', '周宁县', '福建省宁德市周宁县', 3, '3509');
INSERT INTO `info_area` VALUES (1292, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350926', '柘荣县', '福建省宁德市柘荣县', 3, '3509');
INSERT INTO `info_area` VALUES (1293, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350981', '福安市', '福建省宁德市福安市', 3, '3509');
INSERT INTO `info_area` VALUES (1294, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '350982', '福鼎市', '福建省宁德市福鼎市', 3, '3509');
INSERT INTO `info_area` VALUES (1295, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '36', '江西省', '江西省', 1, '');
INSERT INTO `info_area` VALUES (1296, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3601', '南昌市', '江西省南昌市', 2, '36');
INSERT INTO `info_area` VALUES (1297, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360102', '东湖区', '江西省南昌市东湖区', 3, '3601');
INSERT INTO `info_area` VALUES (1298, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360103', '西湖区', '江西省南昌市西湖区', 3, '3601');
INSERT INTO `info_area` VALUES (1299, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360104', '青云谱区', '江西省南昌市青云谱区', 3, '3601');
INSERT INTO `info_area` VALUES (1300, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360111', '青山湖区', '江西省南昌市青山湖区', 3, '3601');
INSERT INTO `info_area` VALUES (1301, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360112', '新建区', '江西省南昌市新建区', 3, '3601');
INSERT INTO `info_area` VALUES (1302, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360113', '红谷滩区', '江西省南昌市红谷滩区', 3, '3601');
INSERT INTO `info_area` VALUES (1303, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360121', '南昌县', '江西省南昌市南昌县', 3, '3601');
INSERT INTO `info_area` VALUES (1304, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360123', '安义县', '江西省南昌市安义县', 3, '3601');
INSERT INTO `info_area` VALUES (1305, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360124', '进贤县', '江西省南昌市进贤县', 3, '3601');
INSERT INTO `info_area` VALUES (1306, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3602', '景德镇市', '江西省景德镇市', 2, '36');
INSERT INTO `info_area` VALUES (1307, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360202', '昌江区', '江西省景德镇市昌江区', 3, '3602');
INSERT INTO `info_area` VALUES (1308, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360203', '珠山区', '江西省景德镇市珠山区', 3, '3602');
INSERT INTO `info_area` VALUES (1309, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360222', '浮梁县', '江西省景德镇市浮梁县', 3, '3602');
INSERT INTO `info_area` VALUES (1310, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360281', '乐平市', '江西省景德镇市乐平市', 3, '3602');
INSERT INTO `info_area` VALUES (1311, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3603', '萍乡市', '江西省萍乡市', 2, '36');
INSERT INTO `info_area` VALUES (1312, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360302', '安源区', '江西省萍乡市安源区', 3, '3603');
INSERT INTO `info_area` VALUES (1313, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360313', '湘东区', '江西省萍乡市湘东区', 3, '3603');
INSERT INTO `info_area` VALUES (1314, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360321', '莲花县', '江西省萍乡市莲花县', 3, '3603');
INSERT INTO `info_area` VALUES (1315, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360322', '上栗县', '江西省萍乡市上栗县', 3, '3603');
INSERT INTO `info_area` VALUES (1316, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360323', '芦溪县', '江西省萍乡市芦溪县', 3, '3603');
INSERT INTO `info_area` VALUES (1317, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '3604', '九江市', '江西省九江市', 2, '36');
INSERT INTO `info_area` VALUES (1318, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360402', '濂溪区', '江西省九江市濂溪区', 3, '3604');
INSERT INTO `info_area` VALUES (1319, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360403', '浔阳区', '江西省九江市浔阳区', 3, '3604');
INSERT INTO `info_area` VALUES (1320, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360404', '柴桑区', '江西省九江市柴桑区', 3, '3604');
INSERT INTO `info_area` VALUES (1321, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360423', '武宁县', '江西省九江市武宁县', 3, '3604');
INSERT INTO `info_area` VALUES (1322, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360424', '修水县', '江西省九江市修水县', 3, '3604');
INSERT INTO `info_area` VALUES (1323, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360425', '永修县', '江西省九江市永修县', 3, '3604');
INSERT INTO `info_area` VALUES (1324, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360426', '德安县', '江西省九江市德安县', 3, '3604');
INSERT INTO `info_area` VALUES (1325, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360428', '都昌县', '江西省九江市都昌县', 3, '3604');
INSERT INTO `info_area` VALUES (1326, '2024-03-21 19:17:56', 1, '2024-03-21 19:17:56', 1, '360429', '湖口县', '江西省九江市湖口县', 3, '3604');
INSERT INTO `info_area` VALUES (1327, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360430', '彭泽县', '江西省九江市彭泽县', 3, '3604');
INSERT INTO `info_area` VALUES (1328, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360481', '瑞昌市', '江西省九江市瑞昌市', 3, '3604');
INSERT INTO `info_area` VALUES (1329, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360482', '共青城市', '江西省九江市共青城市', 3, '3604');
INSERT INTO `info_area` VALUES (1330, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360483', '庐山市', '江西省九江市庐山市', 3, '3604');
INSERT INTO `info_area` VALUES (1331, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3605', '新余市', '江西省新余市', 2, '36');
INSERT INTO `info_area` VALUES (1332, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360502', '渝水区', '江西省新余市渝水区', 3, '3605');
INSERT INTO `info_area` VALUES (1333, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360521', '分宜县', '江西省新余市分宜县', 3, '3605');
INSERT INTO `info_area` VALUES (1334, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3606', '鹰潭市', '江西省鹰潭市', 2, '36');
INSERT INTO `info_area` VALUES (1335, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360602', '月湖区', '江西省鹰潭市月湖区', 3, '3606');
INSERT INTO `info_area` VALUES (1336, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360603', '余江区', '江西省鹰潭市余江区', 3, '3606');
INSERT INTO `info_area` VALUES (1337, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360681', '贵溪市', '江西省鹰潭市贵溪市', 3, '3606');
INSERT INTO `info_area` VALUES (1338, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3607', '赣州市', '江西省赣州市', 2, '36');
INSERT INTO `info_area` VALUES (1339, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360702', '章贡区', '江西省赣州市章贡区', 3, '3607');
INSERT INTO `info_area` VALUES (1340, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360703', '南康区', '江西省赣州市南康区', 3, '3607');
INSERT INTO `info_area` VALUES (1341, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360704', '赣县区', '江西省赣州市赣县区', 3, '3607');
INSERT INTO `info_area` VALUES (1342, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360722', '信丰县', '江西省赣州市信丰县', 3, '3607');
INSERT INTO `info_area` VALUES (1343, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360723', '大余县', '江西省赣州市大余县', 3, '3607');
INSERT INTO `info_area` VALUES (1344, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360724', '上犹县', '江西省赣州市上犹县', 3, '3607');
INSERT INTO `info_area` VALUES (1345, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360725', '崇义县', '江西省赣州市崇义县', 3, '3607');
INSERT INTO `info_area` VALUES (1346, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360726', '安远县', '江西省赣州市安远县', 3, '3607');
INSERT INTO `info_area` VALUES (1347, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360728', '定南县', '江西省赣州市定南县', 3, '3607');
INSERT INTO `info_area` VALUES (1348, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360729', '全南县', '江西省赣州市全南县', 3, '3607');
INSERT INTO `info_area` VALUES (1349, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360730', '宁都县', '江西省赣州市宁都县', 3, '3607');
INSERT INTO `info_area` VALUES (1350, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360731', '于都县', '江西省赣州市于都县', 3, '3607');
INSERT INTO `info_area` VALUES (1351, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360732', '兴国县', '江西省赣州市兴国县', 3, '3607');
INSERT INTO `info_area` VALUES (1352, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360733', '会昌县', '江西省赣州市会昌县', 3, '3607');
INSERT INTO `info_area` VALUES (1353, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360734', '寻乌县', '江西省赣州市寻乌县', 3, '3607');
INSERT INTO `info_area` VALUES (1354, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360735', '石城县', '江西省赣州市石城县', 3, '3607');
INSERT INTO `info_area` VALUES (1355, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360781', '瑞金市', '江西省赣州市瑞金市', 3, '3607');
INSERT INTO `info_area` VALUES (1356, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360783', '龙南市', '江西省赣州市龙南市', 3, '3607');
INSERT INTO `info_area` VALUES (1357, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3608', '吉安市', '江西省吉安市', 2, '36');
INSERT INTO `info_area` VALUES (1358, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360802', '吉州区', '江西省吉安市吉州区', 3, '3608');
INSERT INTO `info_area` VALUES (1359, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360803', '青原区', '江西省吉安市青原区', 3, '3608');
INSERT INTO `info_area` VALUES (1360, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360821', '吉安县', '江西省吉安市吉安县', 3, '3608');
INSERT INTO `info_area` VALUES (1361, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360822', '吉水县', '江西省吉安市吉水县', 3, '3608');
INSERT INTO `info_area` VALUES (1362, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360823', '峡江县', '江西省吉安市峡江县', 3, '3608');
INSERT INTO `info_area` VALUES (1363, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360824', '新干县', '江西省吉安市新干县', 3, '3608');
INSERT INTO `info_area` VALUES (1364, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360825', '永丰县', '江西省吉安市永丰县', 3, '3608');
INSERT INTO `info_area` VALUES (1365, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360826', '泰和县', '江西省吉安市泰和县', 3, '3608');
INSERT INTO `info_area` VALUES (1366, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360827', '遂川县', '江西省吉安市遂川县', 3, '3608');
INSERT INTO `info_area` VALUES (1367, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360828', '万安县', '江西省吉安市万安县', 3, '3608');
INSERT INTO `info_area` VALUES (1368, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360829', '安福县', '江西省吉安市安福县', 3, '3608');
INSERT INTO `info_area` VALUES (1369, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360830', '永新县', '江西省吉安市永新县', 3, '3608');
INSERT INTO `info_area` VALUES (1370, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360881', '井冈山市', '江西省吉安市井冈山市', 3, '3608');
INSERT INTO `info_area` VALUES (1371, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3609', '宜春市', '江西省宜春市', 2, '36');
INSERT INTO `info_area` VALUES (1372, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360902', '袁州区', '江西省宜春市袁州区', 3, '3609');
INSERT INTO `info_area` VALUES (1373, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360921', '奉新县', '江西省宜春市奉新县', 3, '3609');
INSERT INTO `info_area` VALUES (1374, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360922', '万载县', '江西省宜春市万载县', 3, '3609');
INSERT INTO `info_area` VALUES (1375, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360923', '上高县', '江西省宜春市上高县', 3, '3609');
INSERT INTO `info_area` VALUES (1376, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360924', '宜丰县', '江西省宜春市宜丰县', 3, '3609');
INSERT INTO `info_area` VALUES (1377, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360925', '靖安县', '江西省宜春市靖安县', 3, '3609');
INSERT INTO `info_area` VALUES (1378, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360926', '铜鼓县', '江西省宜春市铜鼓县', 3, '3609');
INSERT INTO `info_area` VALUES (1379, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360981', '丰城市', '江西省宜春市丰城市', 3, '3609');
INSERT INTO `info_area` VALUES (1380, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360982', '樟树市', '江西省宜春市樟树市', 3, '3609');
INSERT INTO `info_area` VALUES (1381, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '360983', '高安市', '江西省宜春市高安市', 3, '3609');
INSERT INTO `info_area` VALUES (1382, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3610', '抚州市', '江西省抚州市', 2, '36');
INSERT INTO `info_area` VALUES (1383, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361002', '临川区', '江西省抚州市临川区', 3, '3610');
INSERT INTO `info_area` VALUES (1384, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361003', '东乡区', '江西省抚州市东乡区', 3, '3610');
INSERT INTO `info_area` VALUES (1385, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361021', '南城县', '江西省抚州市南城县', 3, '3610');
INSERT INTO `info_area` VALUES (1386, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361022', '黎川县', '江西省抚州市黎川县', 3, '3610');
INSERT INTO `info_area` VALUES (1387, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361023', '南丰县', '江西省抚州市南丰县', 3, '3610');
INSERT INTO `info_area` VALUES (1388, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361024', '崇仁县', '江西省抚州市崇仁县', 3, '3610');
INSERT INTO `info_area` VALUES (1389, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361025', '乐安县', '江西省抚州市乐安县', 3, '3610');
INSERT INTO `info_area` VALUES (1390, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361026', '宜黄县', '江西省抚州市宜黄县', 3, '3610');
INSERT INTO `info_area` VALUES (1391, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361027', '金溪县', '江西省抚州市金溪县', 3, '3610');
INSERT INTO `info_area` VALUES (1392, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361028', '资溪县', '江西省抚州市资溪县', 3, '3610');
INSERT INTO `info_area` VALUES (1393, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361030', '广昌县', '江西省抚州市广昌县', 3, '3610');
INSERT INTO `info_area` VALUES (1394, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3611', '上饶市', '江西省上饶市', 2, '36');
INSERT INTO `info_area` VALUES (1395, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361102', '信州区', '江西省上饶市信州区', 3, '3611');
INSERT INTO `info_area` VALUES (1396, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361103', '广丰区', '江西省上饶市广丰区', 3, '3611');
INSERT INTO `info_area` VALUES (1397, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361104', '广信区', '江西省上饶市广信区', 3, '3611');
INSERT INTO `info_area` VALUES (1398, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361123', '玉山县', '江西省上饶市玉山县', 3, '3611');
INSERT INTO `info_area` VALUES (1399, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361124', '铅山县', '江西省上饶市铅山县', 3, '3611');
INSERT INTO `info_area` VALUES (1400, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361125', '横峰县', '江西省上饶市横峰县', 3, '3611');
INSERT INTO `info_area` VALUES (1401, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361126', '弋阳县', '江西省上饶市弋阳县', 3, '3611');
INSERT INTO `info_area` VALUES (1402, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361127', '余干县', '江西省上饶市余干县', 3, '3611');
INSERT INTO `info_area` VALUES (1403, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361128', '鄱阳县', '江西省上饶市鄱阳县', 3, '3611');
INSERT INTO `info_area` VALUES (1404, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361129', '万年县', '江西省上饶市万年县', 3, '3611');
INSERT INTO `info_area` VALUES (1405, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361130', '婺源县', '江西省上饶市婺源县', 3, '3611');
INSERT INTO `info_area` VALUES (1406, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '361181', '德兴市', '江西省上饶市德兴市', 3, '3611');
INSERT INTO `info_area` VALUES (1407, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '37', '山东省', '山东省', 1, '');
INSERT INTO `info_area` VALUES (1408, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3701', '济南市', '山东省济南市', 2, '37');
INSERT INTO `info_area` VALUES (1409, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370102', '历下区', '山东省济南市历下区', 3, '3701');
INSERT INTO `info_area` VALUES (1410, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370103', '市中区', '山东省济南市市中区', 3, '3701');
INSERT INTO `info_area` VALUES (1411, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370104', '槐荫区', '山东省济南市槐荫区', 3, '3701');
INSERT INTO `info_area` VALUES (1412, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370105', '天桥区', '山东省济南市天桥区', 3, '3701');
INSERT INTO `info_area` VALUES (1413, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370112', '历城区', '山东省济南市历城区', 3, '3701');
INSERT INTO `info_area` VALUES (1414, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370113', '长清区', '山东省济南市长清区', 3, '3701');
INSERT INTO `info_area` VALUES (1415, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370114', '章丘区', '山东省济南市章丘区', 3, '3701');
INSERT INTO `info_area` VALUES (1416, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370115', '济阳区', '山东省济南市济阳区', 3, '3701');
INSERT INTO `info_area` VALUES (1417, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370116', '莱芜区', '山东省济南市莱芜区', 3, '3701');
INSERT INTO `info_area` VALUES (1418, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370117', '钢城区', '山东省济南市钢城区', 3, '3701');
INSERT INTO `info_area` VALUES (1419, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370124', '平阴县', '山东省济南市平阴县', 3, '3701');
INSERT INTO `info_area` VALUES (1420, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370126', '商河县', '山东省济南市商河县', 3, '3701');
INSERT INTO `info_area` VALUES (1421, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370176', '济南高新技术产业开发区', '山东省济南市济南高新技术产业开发区', 3, '3701');
INSERT INTO `info_area` VALUES (1422, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3702', '青岛市', '山东省青岛市', 2, '37');
INSERT INTO `info_area` VALUES (1423, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370202', '市南区', '山东省青岛市市南区', 3, '3702');
INSERT INTO `info_area` VALUES (1424, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370203', '市北区', '山东省青岛市市北区', 3, '3702');
INSERT INTO `info_area` VALUES (1425, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370211', '黄岛区', '山东省青岛市黄岛区', 3, '3702');
INSERT INTO `info_area` VALUES (1426, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370212', '崂山区', '山东省青岛市崂山区', 3, '3702');
INSERT INTO `info_area` VALUES (1427, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370213', '李沧区', '山东省青岛市李沧区', 3, '3702');
INSERT INTO `info_area` VALUES (1428, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370214', '城阳区', '山东省青岛市城阳区', 3, '3702');
INSERT INTO `info_area` VALUES (1429, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370215', '即墨区', '山东省青岛市即墨区', 3, '3702');
INSERT INTO `info_area` VALUES (1430, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370281', '胶州市', '山东省青岛市胶州市', 3, '3702');
INSERT INTO `info_area` VALUES (1431, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370283', '平度市', '山东省青岛市平度市', 3, '3702');
INSERT INTO `info_area` VALUES (1432, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370285', '莱西市', '山东省青岛市莱西市', 3, '3702');
INSERT INTO `info_area` VALUES (1433, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3703', '淄博市', '山东省淄博市', 2, '37');
INSERT INTO `info_area` VALUES (1434, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370302', '淄川区', '山东省淄博市淄川区', 3, '3703');
INSERT INTO `info_area` VALUES (1435, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370303', '张店区', '山东省淄博市张店区', 3, '3703');
INSERT INTO `info_area` VALUES (1436, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370304', '博山区', '山东省淄博市博山区', 3, '3703');
INSERT INTO `info_area` VALUES (1437, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370305', '临淄区', '山东省淄博市临淄区', 3, '3703');
INSERT INTO `info_area` VALUES (1438, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370306', '周村区', '山东省淄博市周村区', 3, '3703');
INSERT INTO `info_area` VALUES (1439, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370321', '桓台县', '山东省淄博市桓台县', 3, '3703');
INSERT INTO `info_area` VALUES (1440, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370322', '高青县', '山东省淄博市高青县', 3, '3703');
INSERT INTO `info_area` VALUES (1441, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370323', '沂源县', '山东省淄博市沂源县', 3, '3703');
INSERT INTO `info_area` VALUES (1442, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3704', '枣庄市', '山东省枣庄市', 2, '37');
INSERT INTO `info_area` VALUES (1443, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370402', '市中区', '山东省枣庄市市中区', 3, '3704');
INSERT INTO `info_area` VALUES (1444, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370403', '薛城区', '山东省枣庄市薛城区', 3, '3704');
INSERT INTO `info_area` VALUES (1445, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370404', '峄城区', '山东省枣庄市峄城区', 3, '3704');
INSERT INTO `info_area` VALUES (1446, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370405', '台儿庄区', '山东省枣庄市台儿庄区', 3, '3704');
INSERT INTO `info_area` VALUES (1447, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370406', '山亭区', '山东省枣庄市山亭区', 3, '3704');
INSERT INTO `info_area` VALUES (1448, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370481', '滕州市', '山东省枣庄市滕州市', 3, '3704');
INSERT INTO `info_area` VALUES (1449, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3705', '东营市', '山东省东营市', 2, '37');
INSERT INTO `info_area` VALUES (1450, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370502', '东营区', '山东省东营市东营区', 3, '3705');
INSERT INTO `info_area` VALUES (1451, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370503', '河口区', '山东省东营市河口区', 3, '3705');
INSERT INTO `info_area` VALUES (1452, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370505', '垦利区', '山东省东营市垦利区', 3, '3705');
INSERT INTO `info_area` VALUES (1453, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370522', '利津县', '山东省东营市利津县', 3, '3705');
INSERT INTO `info_area` VALUES (1454, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370523', '广饶县', '山东省东营市广饶县', 3, '3705');
INSERT INTO `info_area` VALUES (1455, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370571', '东营经济技术开发区', '山东省东营市东营经济技术开发区', 3, '3705');
INSERT INTO `info_area` VALUES (1456, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370572', '东营港经济开发区', '山东省东营市东营港经济开发区', 3, '3705');
INSERT INTO `info_area` VALUES (1457, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3706', '烟台市', '山东省烟台市', 2, '37');
INSERT INTO `info_area` VALUES (1458, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370602', '芝罘区', '山东省烟台市芝罘区', 3, '3706');
INSERT INTO `info_area` VALUES (1459, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370611', '福山区', '山东省烟台市福山区', 3, '3706');
INSERT INTO `info_area` VALUES (1460, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370612', '牟平区', '山东省烟台市牟平区', 3, '3706');
INSERT INTO `info_area` VALUES (1461, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370613', '莱山区', '山东省烟台市莱山区', 3, '3706');
INSERT INTO `info_area` VALUES (1462, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370614', '蓬莱区', '山东省烟台市蓬莱区', 3, '3706');
INSERT INTO `info_area` VALUES (1463, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370671', '烟台高新技术产业开发区', '山东省烟台市烟台高新技术产业开发区', 3, '3706');
INSERT INTO `info_area` VALUES (1464, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370676', '烟台经济技术开发区', '山东省烟台市烟台经济技术开发区', 3, '3706');
INSERT INTO `info_area` VALUES (1465, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370681', '龙口市', '山东省烟台市龙口市', 3, '3706');
INSERT INTO `info_area` VALUES (1466, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370682', '莱阳市', '山东省烟台市莱阳市', 3, '3706');
INSERT INTO `info_area` VALUES (1467, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370683', '莱州市', '山东省烟台市莱州市', 3, '3706');
INSERT INTO `info_area` VALUES (1468, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370685', '招远市', '山东省烟台市招远市', 3, '3706');
INSERT INTO `info_area` VALUES (1469, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370686', '栖霞市', '山东省烟台市栖霞市', 3, '3706');
INSERT INTO `info_area` VALUES (1470, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370687', '海阳市', '山东省烟台市海阳市', 3, '3706');
INSERT INTO `info_area` VALUES (1471, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3707', '潍坊市', '山东省潍坊市', 2, '37');
INSERT INTO `info_area` VALUES (1472, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370702', '潍城区', '山东省潍坊市潍城区', 3, '3707');
INSERT INTO `info_area` VALUES (1473, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370703', '寒亭区', '山东省潍坊市寒亭区', 3, '3707');
INSERT INTO `info_area` VALUES (1474, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370704', '坊子区', '山东省潍坊市坊子区', 3, '3707');
INSERT INTO `info_area` VALUES (1475, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370705', '奎文区', '山东省潍坊市奎文区', 3, '3707');
INSERT INTO `info_area` VALUES (1476, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370724', '临朐县', '山东省潍坊市临朐县', 3, '3707');
INSERT INTO `info_area` VALUES (1477, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370725', '昌乐县', '山东省潍坊市昌乐县', 3, '3707');
INSERT INTO `info_area` VALUES (1478, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370772', '潍坊滨海经济技术开发区', '山东省潍坊市潍坊滨海经济技术开发区', 3, '3707');
INSERT INTO `info_area` VALUES (1479, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370781', '青州市', '山东省潍坊市青州市', 3, '3707');
INSERT INTO `info_area` VALUES (1480, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370782', '诸城市', '山东省潍坊市诸城市', 3, '3707');
INSERT INTO `info_area` VALUES (1481, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370783', '寿光市', '山东省潍坊市寿光市', 3, '3707');
INSERT INTO `info_area` VALUES (1482, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370784', '安丘市', '山东省潍坊市安丘市', 3, '3707');
INSERT INTO `info_area` VALUES (1483, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370785', '高密市', '山东省潍坊市高密市', 3, '3707');
INSERT INTO `info_area` VALUES (1484, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370786', '昌邑市', '山东省潍坊市昌邑市', 3, '3707');
INSERT INTO `info_area` VALUES (1485, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3708', '济宁市', '山东省济宁市', 2, '37');
INSERT INTO `info_area` VALUES (1486, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370811', '任城区', '山东省济宁市任城区', 3, '3708');
INSERT INTO `info_area` VALUES (1487, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370812', '兖州区', '山东省济宁市兖州区', 3, '3708');
INSERT INTO `info_area` VALUES (1488, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370826', '微山县', '山东省济宁市微山县', 3, '3708');
INSERT INTO `info_area` VALUES (1489, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370827', '鱼台县', '山东省济宁市鱼台县', 3, '3708');
INSERT INTO `info_area` VALUES (1490, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370828', '金乡县', '山东省济宁市金乡县', 3, '3708');
INSERT INTO `info_area` VALUES (1491, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370829', '嘉祥县', '山东省济宁市嘉祥县', 3, '3708');
INSERT INTO `info_area` VALUES (1492, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370830', '汶上县', '山东省济宁市汶上县', 3, '3708');
INSERT INTO `info_area` VALUES (1493, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370831', '泗水县', '山东省济宁市泗水县', 3, '3708');
INSERT INTO `info_area` VALUES (1494, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370832', '梁山县', '山东省济宁市梁山县', 3, '3708');
INSERT INTO `info_area` VALUES (1495, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370871', '济宁高新技术产业开发区', '山东省济宁市济宁高新技术产业开发区', 3, '3708');
INSERT INTO `info_area` VALUES (1496, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370881', '曲阜市', '山东省济宁市曲阜市', 3, '3708');
INSERT INTO `info_area` VALUES (1497, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370883', '邹城市', '山东省济宁市邹城市', 3, '3708');
INSERT INTO `info_area` VALUES (1498, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3709', '泰安市', '山东省泰安市', 2, '37');
INSERT INTO `info_area` VALUES (1499, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370902', '泰山区', '山东省泰安市泰山区', 3, '3709');
INSERT INTO `info_area` VALUES (1500, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370911', '岱岳区', '山东省泰安市岱岳区', 3, '3709');
INSERT INTO `info_area` VALUES (1501, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370921', '宁阳县', '山东省泰安市宁阳县', 3, '3709');
INSERT INTO `info_area` VALUES (1502, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370923', '东平县', '山东省泰安市东平县', 3, '3709');
INSERT INTO `info_area` VALUES (1503, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370982', '新泰市', '山东省泰安市新泰市', 3, '3709');
INSERT INTO `info_area` VALUES (1504, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '370983', '肥城市', '山东省泰安市肥城市', 3, '3709');
INSERT INTO `info_area` VALUES (1505, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3710', '威海市', '山东省威海市', 2, '37');
INSERT INTO `info_area` VALUES (1506, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371002', '环翠区', '山东省威海市环翠区', 3, '3710');
INSERT INTO `info_area` VALUES (1507, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371003', '文登区', '山东省威海市文登区', 3, '3710');
INSERT INTO `info_area` VALUES (1508, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371071', '威海火炬高技术产业开发区', '山东省威海市威海火炬高技术产业开发区', 3, '3710');
INSERT INTO `info_area` VALUES (1509, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371072', '威海经济技术开发区', '山东省威海市威海经济技术开发区', 3, '3710');
INSERT INTO `info_area` VALUES (1510, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371073', '威海临港经济技术开发区', '山东省威海市威海临港经济技术开发区', 3, '3710');
INSERT INTO `info_area` VALUES (1511, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371082', '荣成市', '山东省威海市荣成市', 3, '3710');
INSERT INTO `info_area` VALUES (1512, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371083', '乳山市', '山东省威海市乳山市', 3, '3710');
INSERT INTO `info_area` VALUES (1513, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3711', '日照市', '山东省日照市', 2, '37');
INSERT INTO `info_area` VALUES (1514, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371102', '东港区', '山东省日照市东港区', 3, '3711');
INSERT INTO `info_area` VALUES (1515, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371103', '岚山区', '山东省日照市岚山区', 3, '3711');
INSERT INTO `info_area` VALUES (1516, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371121', '五莲县', '山东省日照市五莲县', 3, '3711');
INSERT INTO `info_area` VALUES (1517, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371122', '莒县', '山东省日照市莒县', 3, '3711');
INSERT INTO `info_area` VALUES (1518, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371171', '日照经济技术开发区', '山东省日照市日照经济技术开发区', 3, '3711');
INSERT INTO `info_area` VALUES (1519, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3713', '临沂市', '山东省临沂市', 2, '37');
INSERT INTO `info_area` VALUES (1520, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371302', '兰山区', '山东省临沂市兰山区', 3, '3713');
INSERT INTO `info_area` VALUES (1521, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371311', '罗庄区', '山东省临沂市罗庄区', 3, '3713');
INSERT INTO `info_area` VALUES (1522, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371312', '河东区', '山东省临沂市河东区', 3, '3713');
INSERT INTO `info_area` VALUES (1523, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371321', '沂南县', '山东省临沂市沂南县', 3, '3713');
INSERT INTO `info_area` VALUES (1524, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371322', '郯城县', '山东省临沂市郯城县', 3, '3713');
INSERT INTO `info_area` VALUES (1525, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371323', '沂水县', '山东省临沂市沂水县', 3, '3713');
INSERT INTO `info_area` VALUES (1526, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371324', '兰陵县', '山东省临沂市兰陵县', 3, '3713');
INSERT INTO `info_area` VALUES (1527, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371325', '费县', '山东省临沂市费县', 3, '3713');
INSERT INTO `info_area` VALUES (1528, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371326', '平邑县', '山东省临沂市平邑县', 3, '3713');
INSERT INTO `info_area` VALUES (1529, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371327', '莒南县', '山东省临沂市莒南县', 3, '3713');
INSERT INTO `info_area` VALUES (1530, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371328', '蒙阴县', '山东省临沂市蒙阴县', 3, '3713');
INSERT INTO `info_area` VALUES (1531, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371329', '临沭县', '山东省临沂市临沭县', 3, '3713');
INSERT INTO `info_area` VALUES (1532, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371371', '临沂高新技术产业开发区', '山东省临沂市临沂高新技术产业开发区', 3, '3713');
INSERT INTO `info_area` VALUES (1533, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3714', '德州市', '山东省德州市', 2, '37');
INSERT INTO `info_area` VALUES (1534, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371402', '德城区', '山东省德州市德城区', 3, '3714');
INSERT INTO `info_area` VALUES (1535, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371403', '陵城区', '山东省德州市陵城区', 3, '3714');
INSERT INTO `info_area` VALUES (1536, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371422', '宁津县', '山东省德州市宁津县', 3, '3714');
INSERT INTO `info_area` VALUES (1537, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371423', '庆云县', '山东省德州市庆云县', 3, '3714');
INSERT INTO `info_area` VALUES (1538, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371424', '临邑县', '山东省德州市临邑县', 3, '3714');
INSERT INTO `info_area` VALUES (1539, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371425', '齐河县', '山东省德州市齐河县', 3, '3714');
INSERT INTO `info_area` VALUES (1540, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371426', '平原县', '山东省德州市平原县', 3, '3714');
INSERT INTO `info_area` VALUES (1541, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371427', '夏津县', '山东省德州市夏津县', 3, '3714');
INSERT INTO `info_area` VALUES (1542, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371428', '武城县', '山东省德州市武城县', 3, '3714');
INSERT INTO `info_area` VALUES (1543, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371471', '德州天衢新区', '山东省德州市德州天衢新区', 3, '3714');
INSERT INTO `info_area` VALUES (1544, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371481', '乐陵市', '山东省德州市乐陵市', 3, '3714');
INSERT INTO `info_area` VALUES (1545, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371482', '禹城市', '山东省德州市禹城市', 3, '3714');
INSERT INTO `info_area` VALUES (1546, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3715', '聊城市', '山东省聊城市', 2, '37');
INSERT INTO `info_area` VALUES (1547, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371502', '东昌府区', '山东省聊城市东昌府区', 3, '3715');
INSERT INTO `info_area` VALUES (1548, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371503', '茌平区', '山东省聊城市茌平区', 3, '3715');
INSERT INTO `info_area` VALUES (1549, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371521', '阳谷县', '山东省聊城市阳谷县', 3, '3715');
INSERT INTO `info_area` VALUES (1550, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371522', '莘县', '山东省聊城市莘县', 3, '3715');
INSERT INTO `info_area` VALUES (1551, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371524', '东阿县', '山东省聊城市东阿县', 3, '3715');
INSERT INTO `info_area` VALUES (1552, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371525', '冠县', '山东省聊城市冠县', 3, '3715');
INSERT INTO `info_area` VALUES (1553, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371526', '高唐县', '山东省聊城市高唐县', 3, '3715');
INSERT INTO `info_area` VALUES (1554, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371581', '临清市', '山东省聊城市临清市', 3, '3715');
INSERT INTO `info_area` VALUES (1555, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3716', '滨州市', '山东省滨州市', 2, '37');
INSERT INTO `info_area` VALUES (1556, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371602', '滨城区', '山东省滨州市滨城区', 3, '3716');
INSERT INTO `info_area` VALUES (1557, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371603', '沾化区', '山东省滨州市沾化区', 3, '3716');
INSERT INTO `info_area` VALUES (1558, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371621', '惠民县', '山东省滨州市惠民县', 3, '3716');
INSERT INTO `info_area` VALUES (1559, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371622', '阳信县', '山东省滨州市阳信县', 3, '3716');
INSERT INTO `info_area` VALUES (1560, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371623', '无棣县', '山东省滨州市无棣县', 3, '3716');
INSERT INTO `info_area` VALUES (1561, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371625', '博兴县', '山东省滨州市博兴县', 3, '3716');
INSERT INTO `info_area` VALUES (1562, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371681', '邹平市', '山东省滨州市邹平市', 3, '3716');
INSERT INTO `info_area` VALUES (1563, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '3717', '菏泽市', '山东省菏泽市', 2, '37');
INSERT INTO `info_area` VALUES (1564, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371702', '牡丹区', '山东省菏泽市牡丹区', 3, '3717');
INSERT INTO `info_area` VALUES (1565, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371703', '定陶区', '山东省菏泽市定陶区', 3, '3717');
INSERT INTO `info_area` VALUES (1566, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371721', '曹县', '山东省菏泽市曹县', 3, '3717');
INSERT INTO `info_area` VALUES (1567, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371722', '单县', '山东省菏泽市单县', 3, '3717');
INSERT INTO `info_area` VALUES (1568, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371723', '成武县', '山东省菏泽市成武县', 3, '3717');
INSERT INTO `info_area` VALUES (1569, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371724', '巨野县', '山东省菏泽市巨野县', 3, '3717');
INSERT INTO `info_area` VALUES (1570, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371725', '郓城县', '山东省菏泽市郓城县', 3, '3717');
INSERT INTO `info_area` VALUES (1571, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371726', '鄄城县', '山东省菏泽市鄄城县', 3, '3717');
INSERT INTO `info_area` VALUES (1572, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371728', '东明县', '山东省菏泽市东明县', 3, '3717');
INSERT INTO `info_area` VALUES (1573, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371771', '菏泽经济技术开发区', '山东省菏泽市菏泽经济技术开发区', 3, '3717');
INSERT INTO `info_area` VALUES (1574, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '371772', '菏泽高新技术开发区', '山东省菏泽市菏泽高新技术开发区', 3, '3717');
INSERT INTO `info_area` VALUES (1575, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '41', '河南省', '河南省', 1, '');
INSERT INTO `info_area` VALUES (1576, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4101', '郑州市', '河南省郑州市', 2, '41');
INSERT INTO `info_area` VALUES (1577, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410102', '中原区', '河南省郑州市中原区', 3, '4101');
INSERT INTO `info_area` VALUES (1578, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410103', '二七区', '河南省郑州市二七区', 3, '4101');
INSERT INTO `info_area` VALUES (1579, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410104', '管城回族区', '河南省郑州市管城回族区', 3, '4101');
INSERT INTO `info_area` VALUES (1580, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410105', '金水区', '河南省郑州市金水区', 3, '4101');
INSERT INTO `info_area` VALUES (1581, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410106', '上街区', '河南省郑州市上街区', 3, '4101');
INSERT INTO `info_area` VALUES (1582, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410108', '惠济区', '河南省郑州市惠济区', 3, '4101');
INSERT INTO `info_area` VALUES (1583, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410122', '中牟县', '河南省郑州市中牟县', 3, '4101');
INSERT INTO `info_area` VALUES (1584, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410171', '郑州经济技术开发区', '河南省郑州市郑州经济技术开发区', 3, '4101');
INSERT INTO `info_area` VALUES (1585, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410172', '郑州高新技术产业开发区', '河南省郑州市郑州高新技术产业开发区', 3, '4101');
INSERT INTO `info_area` VALUES (1586, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410173', '郑州航空港经济综合实验区', '河南省郑州市郑州航空港经济综合实验区', 3, '4101');
INSERT INTO `info_area` VALUES (1587, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410181', '巩义市', '河南省郑州市巩义市', 3, '4101');
INSERT INTO `info_area` VALUES (1588, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410182', '荥阳市', '河南省郑州市荥阳市', 3, '4101');
INSERT INTO `info_area` VALUES (1589, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410183', '新密市', '河南省郑州市新密市', 3, '4101');
INSERT INTO `info_area` VALUES (1590, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410184', '新郑市', '河南省郑州市新郑市', 3, '4101');
INSERT INTO `info_area` VALUES (1591, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410185', '登封市', '河南省郑州市登封市', 3, '4101');
INSERT INTO `info_area` VALUES (1592, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4102', '开封市', '河南省开封市', 2, '41');
INSERT INTO `info_area` VALUES (1593, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410202', '龙亭区', '河南省开封市龙亭区', 3, '4102');
INSERT INTO `info_area` VALUES (1594, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410203', '顺河回族区', '河南省开封市顺河回族区', 3, '4102');
INSERT INTO `info_area` VALUES (1595, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410204', '鼓楼区', '河南省开封市鼓楼区', 3, '4102');
INSERT INTO `info_area` VALUES (1596, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410205', '禹王台区', '河南省开封市禹王台区', 3, '4102');
INSERT INTO `info_area` VALUES (1597, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410212', '祥符区', '河南省开封市祥符区', 3, '4102');
INSERT INTO `info_area` VALUES (1598, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410221', '杞县', '河南省开封市杞县', 3, '4102');
INSERT INTO `info_area` VALUES (1599, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410222', '通许县', '河南省开封市通许县', 3, '4102');
INSERT INTO `info_area` VALUES (1600, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410223', '尉氏县', '河南省开封市尉氏县', 3, '4102');
INSERT INTO `info_area` VALUES (1601, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410225', '兰考县', '河南省开封市兰考县', 3, '4102');
INSERT INTO `info_area` VALUES (1602, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4103', '洛阳市', '河南省洛阳市', 2, '41');
INSERT INTO `info_area` VALUES (1603, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410302', '老城区', '河南省洛阳市老城区', 3, '4103');
INSERT INTO `info_area` VALUES (1604, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410303', '西工区', '河南省洛阳市西工区', 3, '4103');
INSERT INTO `info_area` VALUES (1605, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410304', '瀍河回族区', '河南省洛阳市瀍河回族区', 3, '4103');
INSERT INTO `info_area` VALUES (1606, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410305', '涧西区', '河南省洛阳市涧西区', 3, '4103');
INSERT INTO `info_area` VALUES (1607, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410307', '偃师区', '河南省洛阳市偃师区', 3, '4103');
INSERT INTO `info_area` VALUES (1608, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410308', '孟津区', '河南省洛阳市孟津区', 3, '4103');
INSERT INTO `info_area` VALUES (1609, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410311', '洛龙区', '河南省洛阳市洛龙区', 3, '4103');
INSERT INTO `info_area` VALUES (1610, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410323', '新安县', '河南省洛阳市新安县', 3, '4103');
INSERT INTO `info_area` VALUES (1611, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410324', '栾川县', '河南省洛阳市栾川县', 3, '4103');
INSERT INTO `info_area` VALUES (1612, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410325', '嵩县', '河南省洛阳市嵩县', 3, '4103');
INSERT INTO `info_area` VALUES (1613, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410326', '汝阳县', '河南省洛阳市汝阳县', 3, '4103');
INSERT INTO `info_area` VALUES (1614, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410327', '宜阳县', '河南省洛阳市宜阳县', 3, '4103');
INSERT INTO `info_area` VALUES (1615, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410328', '洛宁县', '河南省洛阳市洛宁县', 3, '4103');
INSERT INTO `info_area` VALUES (1616, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410329', '伊川县', '河南省洛阳市伊川县', 3, '4103');
INSERT INTO `info_area` VALUES (1617, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410371', '洛阳高新技术产业开发区', '河南省洛阳市洛阳高新技术产业开发区', 3, '4103');
INSERT INTO `info_area` VALUES (1618, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4104', '平顶山市', '河南省平顶山市', 2, '41');
INSERT INTO `info_area` VALUES (1619, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410402', '新华区', '河南省平顶山市新华区', 3, '4104');
INSERT INTO `info_area` VALUES (1620, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410403', '卫东区', '河南省平顶山市卫东区', 3, '4104');
INSERT INTO `info_area` VALUES (1621, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410404', '石龙区', '河南省平顶山市石龙区', 3, '4104');
INSERT INTO `info_area` VALUES (1622, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410411', '湛河区', '河南省平顶山市湛河区', 3, '4104');
INSERT INTO `info_area` VALUES (1623, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410421', '宝丰县', '河南省平顶山市宝丰县', 3, '4104');
INSERT INTO `info_area` VALUES (1624, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410422', '叶县', '河南省平顶山市叶县', 3, '4104');
INSERT INTO `info_area` VALUES (1625, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410423', '鲁山县', '河南省平顶山市鲁山县', 3, '4104');
INSERT INTO `info_area` VALUES (1626, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410425', '郏县', '河南省平顶山市郏县', 3, '4104');
INSERT INTO `info_area` VALUES (1627, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410471', '平顶山高新技术产业开发区', '河南省平顶山市平顶山高新技术产业开发区', 3, '4104');
INSERT INTO `info_area` VALUES (1628, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410472', '平顶山市城乡一体化示范区', '河南省平顶山市平顶山市城乡一体化示范区', 3, '4104');
INSERT INTO `info_area` VALUES (1629, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410481', '舞钢市', '河南省平顶山市舞钢市', 3, '4104');
INSERT INTO `info_area` VALUES (1630, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410482', '汝州市', '河南省平顶山市汝州市', 3, '4104');
INSERT INTO `info_area` VALUES (1631, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4105', '安阳市', '河南省安阳市', 2, '41');
INSERT INTO `info_area` VALUES (1632, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410502', '文峰区', '河南省安阳市文峰区', 3, '4105');
INSERT INTO `info_area` VALUES (1633, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410503', '北关区', '河南省安阳市北关区', 3, '4105');
INSERT INTO `info_area` VALUES (1634, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410505', '殷都区', '河南省安阳市殷都区', 3, '4105');
INSERT INTO `info_area` VALUES (1635, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410506', '龙安区', '河南省安阳市龙安区', 3, '4105');
INSERT INTO `info_area` VALUES (1636, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410522', '安阳县', '河南省安阳市安阳县', 3, '4105');
INSERT INTO `info_area` VALUES (1637, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410523', '汤阴县', '河南省安阳市汤阴县', 3, '4105');
INSERT INTO `info_area` VALUES (1638, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410526', '滑县', '河南省安阳市滑县', 3, '4105');
INSERT INTO `info_area` VALUES (1639, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410527', '内黄县', '河南省安阳市内黄县', 3, '4105');
INSERT INTO `info_area` VALUES (1640, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410571', '安阳高新技术产业开发区', '河南省安阳市安阳高新技术产业开发区', 3, '4105');
INSERT INTO `info_area` VALUES (1641, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410581', '林州市', '河南省安阳市林州市', 3, '4105');
INSERT INTO `info_area` VALUES (1642, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4106', '鹤壁市', '河南省鹤壁市', 2, '41');
INSERT INTO `info_area` VALUES (1643, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410602', '鹤山区', '河南省鹤壁市鹤山区', 3, '4106');
INSERT INTO `info_area` VALUES (1644, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410603', '山城区', '河南省鹤壁市山城区', 3, '4106');
INSERT INTO `info_area` VALUES (1645, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410611', '淇滨区', '河南省鹤壁市淇滨区', 3, '4106');
INSERT INTO `info_area` VALUES (1646, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410621', '浚县', '河南省鹤壁市浚县', 3, '4106');
INSERT INTO `info_area` VALUES (1647, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410622', '淇县', '河南省鹤壁市淇县', 3, '4106');
INSERT INTO `info_area` VALUES (1648, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410671', '鹤壁经济技术开发区', '河南省鹤壁市鹤壁经济技术开发区', 3, '4106');
INSERT INTO `info_area` VALUES (1649, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4107', '新乡市', '河南省新乡市', 2, '41');
INSERT INTO `info_area` VALUES (1650, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410702', '红旗区', '河南省新乡市红旗区', 3, '4107');
INSERT INTO `info_area` VALUES (1651, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410703', '卫滨区', '河南省新乡市卫滨区', 3, '4107');
INSERT INTO `info_area` VALUES (1652, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410704', '凤泉区', '河南省新乡市凤泉区', 3, '4107');
INSERT INTO `info_area` VALUES (1653, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410711', '牧野区', '河南省新乡市牧野区', 3, '4107');
INSERT INTO `info_area` VALUES (1654, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410721', '新乡县', '河南省新乡市新乡县', 3, '4107');
INSERT INTO `info_area` VALUES (1655, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410724', '获嘉县', '河南省新乡市获嘉县', 3, '4107');
INSERT INTO `info_area` VALUES (1656, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410725', '原阳县', '河南省新乡市原阳县', 3, '4107');
INSERT INTO `info_area` VALUES (1657, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410726', '延津县', '河南省新乡市延津县', 3, '4107');
INSERT INTO `info_area` VALUES (1658, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410727', '封丘县', '河南省新乡市封丘县', 3, '4107');
INSERT INTO `info_area` VALUES (1659, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410771', '新乡高新技术产业开发区', '河南省新乡市新乡高新技术产业开发区', 3, '4107');
INSERT INTO `info_area` VALUES (1660, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410772', '新乡经济技术开发区', '河南省新乡市新乡经济技术开发区', 3, '4107');
INSERT INTO `info_area` VALUES (1661, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410773', '新乡市平原城乡一体化示范区', '河南省新乡市新乡市平原城乡一体化示范区', 3, '4107');
INSERT INTO `info_area` VALUES (1662, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410781', '卫辉市', '河南省新乡市卫辉市', 3, '4107');
INSERT INTO `info_area` VALUES (1663, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410782', '辉县市', '河南省新乡市辉县市', 3, '4107');
INSERT INTO `info_area` VALUES (1664, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410783', '长垣市', '河南省新乡市长垣市', 3, '4107');
INSERT INTO `info_area` VALUES (1665, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4108', '焦作市', '河南省焦作市', 2, '41');
INSERT INTO `info_area` VALUES (1666, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410802', '解放区', '河南省焦作市解放区', 3, '4108');
INSERT INTO `info_area` VALUES (1667, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410803', '中站区', '河南省焦作市中站区', 3, '4108');
INSERT INTO `info_area` VALUES (1668, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410804', '马村区', '河南省焦作市马村区', 3, '4108');
INSERT INTO `info_area` VALUES (1669, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410811', '山阳区', '河南省焦作市山阳区', 3, '4108');
INSERT INTO `info_area` VALUES (1670, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410821', '修武县', '河南省焦作市修武县', 3, '4108');
INSERT INTO `info_area` VALUES (1671, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410822', '博爱县', '河南省焦作市博爱县', 3, '4108');
INSERT INTO `info_area` VALUES (1672, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410823', '武陟县', '河南省焦作市武陟县', 3, '4108');
INSERT INTO `info_area` VALUES (1673, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410825', '温县', '河南省焦作市温县', 3, '4108');
INSERT INTO `info_area` VALUES (1674, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410871', '焦作城乡一体化示范区', '河南省焦作市焦作城乡一体化示范区', 3, '4108');
INSERT INTO `info_area` VALUES (1675, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410882', '沁阳市', '河南省焦作市沁阳市', 3, '4108');
INSERT INTO `info_area` VALUES (1676, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410883', '孟州市', '河南省焦作市孟州市', 3, '4108');
INSERT INTO `info_area` VALUES (1677, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4109', '濮阳市', '河南省濮阳市', 2, '41');
INSERT INTO `info_area` VALUES (1678, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410902', '华龙区', '河南省濮阳市华龙区', 3, '4109');
INSERT INTO `info_area` VALUES (1679, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410922', '清丰县', '河南省濮阳市清丰县', 3, '4109');
INSERT INTO `info_area` VALUES (1680, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410923', '南乐县', '河南省濮阳市南乐县', 3, '4109');
INSERT INTO `info_area` VALUES (1681, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410926', '范县', '河南省濮阳市范县', 3, '4109');
INSERT INTO `info_area` VALUES (1682, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410927', '台前县', '河南省濮阳市台前县', 3, '4109');
INSERT INTO `info_area` VALUES (1683, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410928', '濮阳县', '河南省濮阳市濮阳县', 3, '4109');
INSERT INTO `info_area` VALUES (1684, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410971', '河南濮阳工业园区', '河南省濮阳市河南濮阳工业园区', 3, '4109');
INSERT INTO `info_area` VALUES (1685, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '410972', '濮阳经济技术开发区', '河南省濮阳市濮阳经济技术开发区', 3, '4109');
INSERT INTO `info_area` VALUES (1686, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4110', '许昌市', '河南省许昌市', 2, '41');
INSERT INTO `info_area` VALUES (1687, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411002', '魏都区', '河南省许昌市魏都区', 3, '4110');
INSERT INTO `info_area` VALUES (1688, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411003', '建安区', '河南省许昌市建安区', 3, '4110');
INSERT INTO `info_area` VALUES (1689, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411024', '鄢陵县', '河南省许昌市鄢陵县', 3, '4110');
INSERT INTO `info_area` VALUES (1690, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411025', '襄城县', '河南省许昌市襄城县', 3, '4110');
INSERT INTO `info_area` VALUES (1691, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411071', '许昌经济技术开发区', '河南省许昌市许昌经济技术开发区', 3, '4110');
INSERT INTO `info_area` VALUES (1692, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411081', '禹州市', '河南省许昌市禹州市', 3, '4110');
INSERT INTO `info_area` VALUES (1693, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411082', '长葛市', '河南省许昌市长葛市', 3, '4110');
INSERT INTO `info_area` VALUES (1694, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4111', '漯河市', '河南省漯河市', 2, '41');
INSERT INTO `info_area` VALUES (1695, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411102', '源汇区', '河南省漯河市源汇区', 3, '4111');
INSERT INTO `info_area` VALUES (1696, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411103', '郾城区', '河南省漯河市郾城区', 3, '4111');
INSERT INTO `info_area` VALUES (1697, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411104', '召陵区', '河南省漯河市召陵区', 3, '4111');
INSERT INTO `info_area` VALUES (1698, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411121', '舞阳县', '河南省漯河市舞阳县', 3, '4111');
INSERT INTO `info_area` VALUES (1699, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411122', '临颍县', '河南省漯河市临颍县', 3, '4111');
INSERT INTO `info_area` VALUES (1700, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411171', '漯河经济技术开发区', '河南省漯河市漯河经济技术开发区', 3, '4111');
INSERT INTO `info_area` VALUES (1701, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4112', '三门峡市', '河南省三门峡市', 2, '41');
INSERT INTO `info_area` VALUES (1702, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411202', '湖滨区', '河南省三门峡市湖滨区', 3, '4112');
INSERT INTO `info_area` VALUES (1703, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411203', '陕州区', '河南省三门峡市陕州区', 3, '4112');
INSERT INTO `info_area` VALUES (1704, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411221', '渑池县', '河南省三门峡市渑池县', 3, '4112');
INSERT INTO `info_area` VALUES (1705, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411224', '卢氏县', '河南省三门峡市卢氏县', 3, '4112');
INSERT INTO `info_area` VALUES (1706, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411271', '河南三门峡经济开发区', '河南省三门峡市河南三门峡经济开发区', 3, '4112');
INSERT INTO `info_area` VALUES (1707, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411281', '义马市', '河南省三门峡市义马市', 3, '4112');
INSERT INTO `info_area` VALUES (1708, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411282', '灵宝市', '河南省三门峡市灵宝市', 3, '4112');
INSERT INTO `info_area` VALUES (1709, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4113', '南阳市', '河南省南阳市', 2, '41');
INSERT INTO `info_area` VALUES (1710, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411302', '宛城区', '河南省南阳市宛城区', 3, '4113');
INSERT INTO `info_area` VALUES (1711, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411303', '卧龙区', '河南省南阳市卧龙区', 3, '4113');
INSERT INTO `info_area` VALUES (1712, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411321', '南召县', '河南省南阳市南召县', 3, '4113');
INSERT INTO `info_area` VALUES (1713, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411322', '方城县', '河南省南阳市方城县', 3, '4113');
INSERT INTO `info_area` VALUES (1714, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411323', '西峡县', '河南省南阳市西峡县', 3, '4113');
INSERT INTO `info_area` VALUES (1715, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411324', '镇平县', '河南省南阳市镇平县', 3, '4113');
INSERT INTO `info_area` VALUES (1716, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411325', '内乡县', '河南省南阳市内乡县', 3, '4113');
INSERT INTO `info_area` VALUES (1717, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411326', '淅川县', '河南省南阳市淅川县', 3, '4113');
INSERT INTO `info_area` VALUES (1718, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411327', '社旗县', '河南省南阳市社旗县', 3, '4113');
INSERT INTO `info_area` VALUES (1719, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411328', '唐河县', '河南省南阳市唐河县', 3, '4113');
INSERT INTO `info_area` VALUES (1720, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411329', '新野县', '河南省南阳市新野县', 3, '4113');
INSERT INTO `info_area` VALUES (1721, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411330', '桐柏县', '河南省南阳市桐柏县', 3, '4113');
INSERT INTO `info_area` VALUES (1722, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411371', '南阳高新技术产业开发区', '河南省南阳市南阳高新技术产业开发区', 3, '4113');
INSERT INTO `info_area` VALUES (1723, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411372', '南阳市城乡一体化示范区', '河南省南阳市南阳市城乡一体化示范区', 3, '4113');
INSERT INTO `info_area` VALUES (1724, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411381', '邓州市', '河南省南阳市邓州市', 3, '4113');
INSERT INTO `info_area` VALUES (1725, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4114', '商丘市', '河南省商丘市', 2, '41');
INSERT INTO `info_area` VALUES (1726, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411402', '梁园区', '河南省商丘市梁园区', 3, '4114');
INSERT INTO `info_area` VALUES (1727, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411403', '睢阳区', '河南省商丘市睢阳区', 3, '4114');
INSERT INTO `info_area` VALUES (1728, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411421', '民权县', '河南省商丘市民权县', 3, '4114');
INSERT INTO `info_area` VALUES (1729, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411422', '睢县', '河南省商丘市睢县', 3, '4114');
INSERT INTO `info_area` VALUES (1730, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411423', '宁陵县', '河南省商丘市宁陵县', 3, '4114');
INSERT INTO `info_area` VALUES (1731, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411424', '柘城县', '河南省商丘市柘城县', 3, '4114');
INSERT INTO `info_area` VALUES (1732, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411425', '虞城县', '河南省商丘市虞城县', 3, '4114');
INSERT INTO `info_area` VALUES (1733, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411426', '夏邑县', '河南省商丘市夏邑县', 3, '4114');
INSERT INTO `info_area` VALUES (1734, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411471', '豫东综合物流产业聚集区', '河南省商丘市豫东综合物流产业聚集区', 3, '4114');
INSERT INTO `info_area` VALUES (1735, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411472', '河南商丘经济开发区', '河南省商丘市河南商丘经济开发区', 3, '4114');
INSERT INTO `info_area` VALUES (1736, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411481', '永城市', '河南省商丘市永城市', 3, '4114');
INSERT INTO `info_area` VALUES (1737, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4115', '信阳市', '河南省信阳市', 2, '41');
INSERT INTO `info_area` VALUES (1738, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411502', '浉河区', '河南省信阳市浉河区', 3, '4115');
INSERT INTO `info_area` VALUES (1739, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411503', '平桥区', '河南省信阳市平桥区', 3, '4115');
INSERT INTO `info_area` VALUES (1740, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411521', '罗山县', '河南省信阳市罗山县', 3, '4115');
INSERT INTO `info_area` VALUES (1741, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411522', '光山县', '河南省信阳市光山县', 3, '4115');
INSERT INTO `info_area` VALUES (1742, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411523', '新县', '河南省信阳市新县', 3, '4115');
INSERT INTO `info_area` VALUES (1743, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411524', '商城县', '河南省信阳市商城县', 3, '4115');
INSERT INTO `info_area` VALUES (1744, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411525', '固始县', '河南省信阳市固始县', 3, '4115');
INSERT INTO `info_area` VALUES (1745, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411526', '潢川县', '河南省信阳市潢川县', 3, '4115');
INSERT INTO `info_area` VALUES (1746, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411527', '淮滨县', '河南省信阳市淮滨县', 3, '4115');
INSERT INTO `info_area` VALUES (1747, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411528', '息县', '河南省信阳市息县', 3, '4115');
INSERT INTO `info_area` VALUES (1748, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411571', '信阳高新技术产业开发区', '河南省信阳市信阳高新技术产业开发区', 3, '4115');
INSERT INTO `info_area` VALUES (1749, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4116', '周口市', '河南省周口市', 2, '41');
INSERT INTO `info_area` VALUES (1750, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411602', '川汇区', '河南省周口市川汇区', 3, '4116');
INSERT INTO `info_area` VALUES (1751, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411603', '淮阳区', '河南省周口市淮阳区', 3, '4116');
INSERT INTO `info_area` VALUES (1752, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411621', '扶沟县', '河南省周口市扶沟县', 3, '4116');
INSERT INTO `info_area` VALUES (1753, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411622', '西华县', '河南省周口市西华县', 3, '4116');
INSERT INTO `info_area` VALUES (1754, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411623', '商水县', '河南省周口市商水县', 3, '4116');
INSERT INTO `info_area` VALUES (1755, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411624', '沈丘县', '河南省周口市沈丘县', 3, '4116');
INSERT INTO `info_area` VALUES (1756, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411625', '郸城县', '河南省周口市郸城县', 3, '4116');
INSERT INTO `info_area` VALUES (1757, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411627', '太康县', '河南省周口市太康县', 3, '4116');
INSERT INTO `info_area` VALUES (1758, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411628', '鹿邑县', '河南省周口市鹿邑县', 3, '4116');
INSERT INTO `info_area` VALUES (1759, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411671', '周口临港开发区', '河南省周口市周口临港开发区', 3, '4116');
INSERT INTO `info_area` VALUES (1760, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411681', '项城市', '河南省周口市项城市', 3, '4116');
INSERT INTO `info_area` VALUES (1761, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4117', '驻马店市', '河南省驻马店市', 2, '41');
INSERT INTO `info_area` VALUES (1762, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411702', '驿城区', '河南省驻马店市驿城区', 3, '4117');
INSERT INTO `info_area` VALUES (1763, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411721', '西平县', '河南省驻马店市西平县', 3, '4117');
INSERT INTO `info_area` VALUES (1764, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411722', '上蔡县', '河南省驻马店市上蔡县', 3, '4117');
INSERT INTO `info_area` VALUES (1765, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411723', '平舆县', '河南省驻马店市平舆县', 3, '4117');
INSERT INTO `info_area` VALUES (1766, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411724', '正阳县', '河南省驻马店市正阳县', 3, '4117');
INSERT INTO `info_area` VALUES (1767, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411725', '确山县', '河南省驻马店市确山县', 3, '4117');
INSERT INTO `info_area` VALUES (1768, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411726', '泌阳县', '河南省驻马店市泌阳县', 3, '4117');
INSERT INTO `info_area` VALUES (1769, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411727', '汝南县', '河南省驻马店市汝南县', 3, '4117');
INSERT INTO `info_area` VALUES (1770, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411728', '遂平县', '河南省驻马店市遂平县', 3, '4117');
INSERT INTO `info_area` VALUES (1771, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411729', '新蔡县', '河南省驻马店市新蔡县', 3, '4117');
INSERT INTO `info_area` VALUES (1772, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '411771', '河南驻马店经济开发区', '河南省驻马店市河南驻马店经济开发区', 3, '4117');
INSERT INTO `info_area` VALUES (1773, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4190', '省直辖县级行政区划', '河南省省直辖县级行政区划', 2, '41');
INSERT INTO `info_area` VALUES (1774, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '419001', '济源市', '河南省省直辖县级行政区划济源市', 3, '4190');
INSERT INTO `info_area` VALUES (1775, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '42', '湖北省', '湖北省', 1, '');
INSERT INTO `info_area` VALUES (1776, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4201', '武汉市', '湖北省武汉市', 2, '42');
INSERT INTO `info_area` VALUES (1777, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420102', '江岸区', '湖北省武汉市江岸区', 3, '4201');
INSERT INTO `info_area` VALUES (1778, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420103', '江汉区', '湖北省武汉市江汉区', 3, '4201');
INSERT INTO `info_area` VALUES (1779, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420104', '硚口区', '湖北省武汉市硚口区', 3, '4201');
INSERT INTO `info_area` VALUES (1780, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420105', '汉阳区', '湖北省武汉市汉阳区', 3, '4201');
INSERT INTO `info_area` VALUES (1781, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420106', '武昌区', '湖北省武汉市武昌区', 3, '4201');
INSERT INTO `info_area` VALUES (1782, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420107', '青山区', '湖北省武汉市青山区', 3, '4201');
INSERT INTO `info_area` VALUES (1783, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420111', '洪山区', '湖北省武汉市洪山区', 3, '4201');
INSERT INTO `info_area` VALUES (1784, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420112', '东西湖区', '湖北省武汉市东西湖区', 3, '4201');
INSERT INTO `info_area` VALUES (1785, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420113', '汉南区', '湖北省武汉市汉南区', 3, '4201');
INSERT INTO `info_area` VALUES (1786, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420114', '蔡甸区', '湖北省武汉市蔡甸区', 3, '4201');
INSERT INTO `info_area` VALUES (1787, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420115', '江夏区', '湖北省武汉市江夏区', 3, '4201');
INSERT INTO `info_area` VALUES (1788, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420116', '黄陂区', '湖北省武汉市黄陂区', 3, '4201');
INSERT INTO `info_area` VALUES (1789, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420117', '新洲区', '湖北省武汉市新洲区', 3, '4201');
INSERT INTO `info_area` VALUES (1790, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4202', '黄石市', '湖北省黄石市', 2, '42');
INSERT INTO `info_area` VALUES (1791, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420202', '黄石港区', '湖北省黄石市黄石港区', 3, '4202');
INSERT INTO `info_area` VALUES (1792, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420203', '西塞山区', '湖北省黄石市西塞山区', 3, '4202');
INSERT INTO `info_area` VALUES (1793, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420204', '下陆区', '湖北省黄石市下陆区', 3, '4202');
INSERT INTO `info_area` VALUES (1794, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420205', '铁山区', '湖北省黄石市铁山区', 3, '4202');
INSERT INTO `info_area` VALUES (1795, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420222', '阳新县', '湖北省黄石市阳新县', 3, '4202');
INSERT INTO `info_area` VALUES (1796, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420281', '大冶市', '湖北省黄石市大冶市', 3, '4202');
INSERT INTO `info_area` VALUES (1797, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4203', '十堰市', '湖北省十堰市', 2, '42');
INSERT INTO `info_area` VALUES (1798, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420302', '茅箭区', '湖北省十堰市茅箭区', 3, '4203');
INSERT INTO `info_area` VALUES (1799, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420303', '张湾区', '湖北省十堰市张湾区', 3, '4203');
INSERT INTO `info_area` VALUES (1800, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420304', '郧阳区', '湖北省十堰市郧阳区', 3, '4203');
INSERT INTO `info_area` VALUES (1801, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420322', '郧西县', '湖北省十堰市郧西县', 3, '4203');
INSERT INTO `info_area` VALUES (1802, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420323', '竹山县', '湖北省十堰市竹山县', 3, '4203');
INSERT INTO `info_area` VALUES (1803, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420324', '竹溪县', '湖北省十堰市竹溪县', 3, '4203');
INSERT INTO `info_area` VALUES (1804, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420325', '房县', '湖北省十堰市房县', 3, '4203');
INSERT INTO `info_area` VALUES (1805, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420381', '丹江口市', '湖北省十堰市丹江口市', 3, '4203');
INSERT INTO `info_area` VALUES (1806, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '4205', '宜昌市', '湖北省宜昌市', 2, '42');
INSERT INTO `info_area` VALUES (1807, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420502', '西陵区', '湖北省宜昌市西陵区', 3, '4205');
INSERT INTO `info_area` VALUES (1808, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420503', '伍家岗区', '湖北省宜昌市伍家岗区', 3, '4205');
INSERT INTO `info_area` VALUES (1809, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420504', '点军区', '湖北省宜昌市点军区', 3, '4205');
INSERT INTO `info_area` VALUES (1810, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420505', '猇亭区', '湖北省宜昌市猇亭区', 3, '4205');
INSERT INTO `info_area` VALUES (1811, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420506', '夷陵区', '湖北省宜昌市夷陵区', 3, '4205');
INSERT INTO `info_area` VALUES (1812, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420525', '远安县', '湖北省宜昌市远安县', 3, '4205');
INSERT INTO `info_area` VALUES (1813, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420526', '兴山县', '湖北省宜昌市兴山县', 3, '4205');
INSERT INTO `info_area` VALUES (1814, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420527', '秭归县', '湖北省宜昌市秭归县', 3, '4205');
INSERT INTO `info_area` VALUES (1815, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420528', '长阳土家族自治县', '湖北省宜昌市长阳土家族自治县', 3, '4205');
INSERT INTO `info_area` VALUES (1816, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420529', '五峰土家族自治县', '湖北省宜昌市五峰土家族自治县', 3, '4205');
INSERT INTO `info_area` VALUES (1817, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420581', '宜都市', '湖北省宜昌市宜都市', 3, '4205');
INSERT INTO `info_area` VALUES (1818, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420582', '当阳市', '湖北省宜昌市当阳市', 3, '4205');
INSERT INTO `info_area` VALUES (1819, '2024-03-21 19:17:57', 1, '2024-03-21 19:17:57', 1, '420583', '枝江市', '湖北省宜昌市枝江市', 3, '4205');
INSERT INTO `info_area` VALUES (1820, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4206', '襄阳市', '湖北省襄阳市', 2, '42');
INSERT INTO `info_area` VALUES (1821, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420602', '襄城区', '湖北省襄阳市襄城区', 3, '4206');
INSERT INTO `info_area` VALUES (1822, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420606', '樊城区', '湖北省襄阳市樊城区', 3, '4206');
INSERT INTO `info_area` VALUES (1823, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420607', '襄州区', '湖北省襄阳市襄州区', 3, '4206');
INSERT INTO `info_area` VALUES (1824, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420624', '南漳县', '湖北省襄阳市南漳县', 3, '4206');
INSERT INTO `info_area` VALUES (1825, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420625', '谷城县', '湖北省襄阳市谷城县', 3, '4206');
INSERT INTO `info_area` VALUES (1826, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420626', '保康县', '湖北省襄阳市保康县', 3, '4206');
INSERT INTO `info_area` VALUES (1827, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420682', '老河口市', '湖北省襄阳市老河口市', 3, '4206');
INSERT INTO `info_area` VALUES (1828, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420683', '枣阳市', '湖北省襄阳市枣阳市', 3, '4206');
INSERT INTO `info_area` VALUES (1829, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420684', '宜城市', '湖北省襄阳市宜城市', 3, '4206');
INSERT INTO `info_area` VALUES (1830, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4207', '鄂州市', '湖北省鄂州市', 2, '42');
INSERT INTO `info_area` VALUES (1831, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420702', '梁子湖区', '湖北省鄂州市梁子湖区', 3, '4207');
INSERT INTO `info_area` VALUES (1832, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420703', '华容区', '湖北省鄂州市华容区', 3, '4207');
INSERT INTO `info_area` VALUES (1833, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420704', '鄂城区', '湖北省鄂州市鄂城区', 3, '4207');
INSERT INTO `info_area` VALUES (1834, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4208', '荆门市', '湖北省荆门市', 2, '42');
INSERT INTO `info_area` VALUES (1835, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420802', '东宝区', '湖北省荆门市东宝区', 3, '4208');
INSERT INTO `info_area` VALUES (1836, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420804', '掇刀区', '湖北省荆门市掇刀区', 3, '4208');
INSERT INTO `info_area` VALUES (1837, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420822', '沙洋县', '湖北省荆门市沙洋县', 3, '4208');
INSERT INTO `info_area` VALUES (1838, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420881', '钟祥市', '湖北省荆门市钟祥市', 3, '4208');
INSERT INTO `info_area` VALUES (1839, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420882', '京山市', '湖北省荆门市京山市', 3, '4208');
INSERT INTO `info_area` VALUES (1840, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4209', '孝感市', '湖北省孝感市', 2, '42');
INSERT INTO `info_area` VALUES (1841, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420902', '孝南区', '湖北省孝感市孝南区', 3, '4209');
INSERT INTO `info_area` VALUES (1842, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420921', '孝昌县', '湖北省孝感市孝昌县', 3, '4209');
INSERT INTO `info_area` VALUES (1843, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420922', '大悟县', '湖北省孝感市大悟县', 3, '4209');
INSERT INTO `info_area` VALUES (1844, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420923', '云梦县', '湖北省孝感市云梦县', 3, '4209');
INSERT INTO `info_area` VALUES (1845, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420981', '应城市', '湖北省孝感市应城市', 3, '4209');
INSERT INTO `info_area` VALUES (1846, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420982', '安陆市', '湖北省孝感市安陆市', 3, '4209');
INSERT INTO `info_area` VALUES (1847, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '420984', '汉川市', '湖北省孝感市汉川市', 3, '4209');
INSERT INTO `info_area` VALUES (1848, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4210', '荆州市', '湖北省荆州市', 2, '42');
INSERT INTO `info_area` VALUES (1849, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421002', '沙市区', '湖北省荆州市沙市区', 3, '4210');
INSERT INTO `info_area` VALUES (1850, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421003', '荆州区', '湖北省荆州市荆州区', 3, '4210');
INSERT INTO `info_area` VALUES (1851, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421022', '公安县', '湖北省荆州市公安县', 3, '4210');
INSERT INTO `info_area` VALUES (1852, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421024', '江陵县', '湖北省荆州市江陵县', 3, '4210');
INSERT INTO `info_area` VALUES (1853, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421071', '荆州经济技术开发区', '湖北省荆州市荆州经济技术开发区', 3, '4210');
INSERT INTO `info_area` VALUES (1854, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421081', '石首市', '湖北省荆州市石首市', 3, '4210');
INSERT INTO `info_area` VALUES (1855, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421083', '洪湖市', '湖北省荆州市洪湖市', 3, '4210');
INSERT INTO `info_area` VALUES (1856, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421087', '松滋市', '湖北省荆州市松滋市', 3, '4210');
INSERT INTO `info_area` VALUES (1857, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421088', '监利市', '湖北省荆州市监利市', 3, '4210');
INSERT INTO `info_area` VALUES (1858, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4211', '黄冈市', '湖北省黄冈市', 2, '42');
INSERT INTO `info_area` VALUES (1859, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421102', '黄州区', '湖北省黄冈市黄州区', 3, '4211');
INSERT INTO `info_area` VALUES (1860, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421121', '团风县', '湖北省黄冈市团风县', 3, '4211');
INSERT INTO `info_area` VALUES (1861, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421122', '红安县', '湖北省黄冈市红安县', 3, '4211');
INSERT INTO `info_area` VALUES (1862, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421123', '罗田县', '湖北省黄冈市罗田县', 3, '4211');
INSERT INTO `info_area` VALUES (1863, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421124', '英山县', '湖北省黄冈市英山县', 3, '4211');
INSERT INTO `info_area` VALUES (1864, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421125', '浠水县', '湖北省黄冈市浠水县', 3, '4211');
INSERT INTO `info_area` VALUES (1865, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421126', '蕲春县', '湖北省黄冈市蕲春县', 3, '4211');
INSERT INTO `info_area` VALUES (1866, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421127', '黄梅县', '湖北省黄冈市黄梅县', 3, '4211');
INSERT INTO `info_area` VALUES (1867, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421171', '龙感湖管理区', '湖北省黄冈市龙感湖管理区', 3, '4211');
INSERT INTO `info_area` VALUES (1868, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421181', '麻城市', '湖北省黄冈市麻城市', 3, '4211');
INSERT INTO `info_area` VALUES (1869, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421182', '武穴市', '湖北省黄冈市武穴市', 3, '4211');
INSERT INTO `info_area` VALUES (1870, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4212', '咸宁市', '湖北省咸宁市', 2, '42');
INSERT INTO `info_area` VALUES (1871, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421202', '咸安区', '湖北省咸宁市咸安区', 3, '4212');
INSERT INTO `info_area` VALUES (1872, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421221', '嘉鱼县', '湖北省咸宁市嘉鱼县', 3, '4212');
INSERT INTO `info_area` VALUES (1873, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421222', '通城县', '湖北省咸宁市通城县', 3, '4212');
INSERT INTO `info_area` VALUES (1874, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421223', '崇阳县', '湖北省咸宁市崇阳县', 3, '4212');
INSERT INTO `info_area` VALUES (1875, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421224', '通山县', '湖北省咸宁市通山县', 3, '4212');
INSERT INTO `info_area` VALUES (1876, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421281', '赤壁市', '湖北省咸宁市赤壁市', 3, '4212');
INSERT INTO `info_area` VALUES (1877, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4213', '随州市', '湖北省随州市', 2, '42');
INSERT INTO `info_area` VALUES (1878, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421303', '曾都区', '湖北省随州市曾都区', 3, '4213');
INSERT INTO `info_area` VALUES (1879, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421321', '随县', '湖北省随州市随县', 3, '4213');
INSERT INTO `info_area` VALUES (1880, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '421381', '广水市', '湖北省随州市广水市', 3, '4213');
INSERT INTO `info_area` VALUES (1881, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4228', '恩施土家族苗族自治州', '湖北省恩施土家族苗族自治州', 2, '42');
INSERT INTO `info_area` VALUES (1882, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '422801', '恩施市', '湖北省恩施土家族苗族自治州恩施市', 3, '4228');
INSERT INTO `info_area` VALUES (1883, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '422802', '利川市', '湖北省恩施土家族苗族自治州利川市', 3, '4228');
INSERT INTO `info_area` VALUES (1884, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '422822', '建始县', '湖北省恩施土家族苗族自治州建始县', 3, '4228');
INSERT INTO `info_area` VALUES (1885, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '422823', '巴东县', '湖北省恩施土家族苗族自治州巴东县', 3, '4228');
INSERT INTO `info_area` VALUES (1886, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '422825', '宣恩县', '湖北省恩施土家族苗族自治州宣恩县', 3, '4228');
INSERT INTO `info_area` VALUES (1887, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '422826', '咸丰县', '湖北省恩施土家族苗族自治州咸丰县', 3, '4228');
INSERT INTO `info_area` VALUES (1888, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '422827', '来凤县', '湖北省恩施土家族苗族自治州来凤县', 3, '4228');
INSERT INTO `info_area` VALUES (1889, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '422828', '鹤峰县', '湖北省恩施土家族苗族自治州鹤峰县', 3, '4228');
INSERT INTO `info_area` VALUES (1890, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4290', '省直辖县级行政区划', '湖北省省直辖县级行政区划', 2, '42');
INSERT INTO `info_area` VALUES (1891, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '429004', '仙桃市', '湖北省省直辖县级行政区划仙桃市', 3, '4290');
INSERT INTO `info_area` VALUES (1892, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '429005', '潜江市', '湖北省省直辖县级行政区划潜江市', 3, '4290');
INSERT INTO `info_area` VALUES (1893, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '429006', '天门市', '湖北省省直辖县级行政区划天门市', 3, '4290');
INSERT INTO `info_area` VALUES (1894, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '429021', '神农架林区', '湖北省省直辖县级行政区划神农架林区', 3, '4290');
INSERT INTO `info_area` VALUES (1895, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '43', '湖南省', '湖南省', 1, '');
INSERT INTO `info_area` VALUES (1896, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4301', '长沙市', '湖南省长沙市', 2, '43');
INSERT INTO `info_area` VALUES (1897, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430102', '芙蓉区', '湖南省长沙市芙蓉区', 3, '4301');
INSERT INTO `info_area` VALUES (1898, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430103', '天心区', '湖南省长沙市天心区', 3, '4301');
INSERT INTO `info_area` VALUES (1899, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430104', '岳麓区', '湖南省长沙市岳麓区', 3, '4301');
INSERT INTO `info_area` VALUES (1900, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430105', '开福区', '湖南省长沙市开福区', 3, '4301');
INSERT INTO `info_area` VALUES (1901, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430111', '雨花区', '湖南省长沙市雨花区', 3, '4301');
INSERT INTO `info_area` VALUES (1902, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430112', '望城区', '湖南省长沙市望城区', 3, '4301');
INSERT INTO `info_area` VALUES (1903, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430121', '长沙县', '湖南省长沙市长沙县', 3, '4301');
INSERT INTO `info_area` VALUES (1904, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430181', '浏阳市', '湖南省长沙市浏阳市', 3, '4301');
INSERT INTO `info_area` VALUES (1905, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430182', '宁乡市', '湖南省长沙市宁乡市', 3, '4301');
INSERT INTO `info_area` VALUES (1906, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4302', '株洲市', '湖南省株洲市', 2, '43');
INSERT INTO `info_area` VALUES (1907, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430202', '荷塘区', '湖南省株洲市荷塘区', 3, '4302');
INSERT INTO `info_area` VALUES (1908, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430203', '芦淞区', '湖南省株洲市芦淞区', 3, '4302');
INSERT INTO `info_area` VALUES (1909, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430204', '石峰区', '湖南省株洲市石峰区', 3, '4302');
INSERT INTO `info_area` VALUES (1910, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430211', '天元区', '湖南省株洲市天元区', 3, '4302');
INSERT INTO `info_area` VALUES (1911, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430212', '渌口区', '湖南省株洲市渌口区', 3, '4302');
INSERT INTO `info_area` VALUES (1912, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430223', '攸县', '湖南省株洲市攸县', 3, '4302');
INSERT INTO `info_area` VALUES (1913, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430224', '茶陵县', '湖南省株洲市茶陵县', 3, '4302');
INSERT INTO `info_area` VALUES (1914, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430225', '炎陵县', '湖南省株洲市炎陵县', 3, '4302');
INSERT INTO `info_area` VALUES (1915, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430281', '醴陵市', '湖南省株洲市醴陵市', 3, '4302');
INSERT INTO `info_area` VALUES (1916, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4303', '湘潭市', '湖南省湘潭市', 2, '43');
INSERT INTO `info_area` VALUES (1917, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430302', '雨湖区', '湖南省湘潭市雨湖区', 3, '4303');
INSERT INTO `info_area` VALUES (1918, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430304', '岳塘区', '湖南省湘潭市岳塘区', 3, '4303');
INSERT INTO `info_area` VALUES (1919, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430321', '湘潭县', '湖南省湘潭市湘潭县', 3, '4303');
INSERT INTO `info_area` VALUES (1920, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430371', '湖南湘潭高新技术产业园区', '湖南省湘潭市湖南湘潭高新技术产业园区', 3, '4303');
INSERT INTO `info_area` VALUES (1921, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430372', '湘潭昭山示范区', '湖南省湘潭市湘潭昭山示范区', 3, '4303');
INSERT INTO `info_area` VALUES (1922, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430373', '湘潭九华示范区', '湖南省湘潭市湘潭九华示范区', 3, '4303');
INSERT INTO `info_area` VALUES (1923, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430381', '湘乡市', '湖南省湘潭市湘乡市', 3, '4303');
INSERT INTO `info_area` VALUES (1924, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430382', '韶山市', '湖南省湘潭市韶山市', 3, '4303');
INSERT INTO `info_area` VALUES (1925, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4304', '衡阳市', '湖南省衡阳市', 2, '43');
INSERT INTO `info_area` VALUES (1926, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430405', '珠晖区', '湖南省衡阳市珠晖区', 3, '4304');
INSERT INTO `info_area` VALUES (1927, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430406', '雁峰区', '湖南省衡阳市雁峰区', 3, '4304');
INSERT INTO `info_area` VALUES (1928, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430407', '石鼓区', '湖南省衡阳市石鼓区', 3, '4304');
INSERT INTO `info_area` VALUES (1929, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430408', '蒸湘区', '湖南省衡阳市蒸湘区', 3, '4304');
INSERT INTO `info_area` VALUES (1930, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430412', '南岳区', '湖南省衡阳市南岳区', 3, '4304');
INSERT INTO `info_area` VALUES (1931, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430421', '衡阳县', '湖南省衡阳市衡阳县', 3, '4304');
INSERT INTO `info_area` VALUES (1932, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430422', '衡南县', '湖南省衡阳市衡南县', 3, '4304');
INSERT INTO `info_area` VALUES (1933, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430423', '衡山县', '湖南省衡阳市衡山县', 3, '4304');
INSERT INTO `info_area` VALUES (1934, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430424', '衡东县', '湖南省衡阳市衡东县', 3, '4304');
INSERT INTO `info_area` VALUES (1935, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430426', '祁东县', '湖南省衡阳市祁东县', 3, '4304');
INSERT INTO `info_area` VALUES (1936, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430473', '湖南衡阳松木经济开发区', '湖南省衡阳市湖南衡阳松木经济开发区', 3, '4304');
INSERT INTO `info_area` VALUES (1937, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430476', '湖南衡阳高新技术产业园区', '湖南省衡阳市湖南衡阳高新技术产业园区', 3, '4304');
INSERT INTO `info_area` VALUES (1938, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430481', '耒阳市', '湖南省衡阳市耒阳市', 3, '4304');
INSERT INTO `info_area` VALUES (1939, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430482', '常宁市', '湖南省衡阳市常宁市', 3, '4304');
INSERT INTO `info_area` VALUES (1940, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4305', '邵阳市', '湖南省邵阳市', 2, '43');
INSERT INTO `info_area` VALUES (1941, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430502', '双清区', '湖南省邵阳市双清区', 3, '4305');
INSERT INTO `info_area` VALUES (1942, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430503', '大祥区', '湖南省邵阳市大祥区', 3, '4305');
INSERT INTO `info_area` VALUES (1943, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430511', '北塔区', '湖南省邵阳市北塔区', 3, '4305');
INSERT INTO `info_area` VALUES (1944, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430522', '新邵县', '湖南省邵阳市新邵县', 3, '4305');
INSERT INTO `info_area` VALUES (1945, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430523', '邵阳县', '湖南省邵阳市邵阳县', 3, '4305');
INSERT INTO `info_area` VALUES (1946, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430524', '隆回县', '湖南省邵阳市隆回县', 3, '4305');
INSERT INTO `info_area` VALUES (1947, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430525', '洞口县', '湖南省邵阳市洞口县', 3, '4305');
INSERT INTO `info_area` VALUES (1948, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430527', '绥宁县', '湖南省邵阳市绥宁县', 3, '4305');
INSERT INTO `info_area` VALUES (1949, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430528', '新宁县', '湖南省邵阳市新宁县', 3, '4305');
INSERT INTO `info_area` VALUES (1950, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430529', '城步苗族自治县', '湖南省邵阳市城步苗族自治县', 3, '4305');
INSERT INTO `info_area` VALUES (1951, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430581', '武冈市', '湖南省邵阳市武冈市', 3, '4305');
INSERT INTO `info_area` VALUES (1952, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430582', '邵东市', '湖南省邵阳市邵东市', 3, '4305');
INSERT INTO `info_area` VALUES (1953, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4306', '岳阳市', '湖南省岳阳市', 2, '43');
INSERT INTO `info_area` VALUES (1954, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430602', '岳阳楼区', '湖南省岳阳市岳阳楼区', 3, '4306');
INSERT INTO `info_area` VALUES (1955, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430603', '云溪区', '湖南省岳阳市云溪区', 3, '4306');
INSERT INTO `info_area` VALUES (1956, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430611', '君山区', '湖南省岳阳市君山区', 3, '4306');
INSERT INTO `info_area` VALUES (1957, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430621', '岳阳县', '湖南省岳阳市岳阳县', 3, '4306');
INSERT INTO `info_area` VALUES (1958, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430623', '华容县', '湖南省岳阳市华容县', 3, '4306');
INSERT INTO `info_area` VALUES (1959, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430624', '湘阴县', '湖南省岳阳市湘阴县', 3, '4306');
INSERT INTO `info_area` VALUES (1960, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430626', '平江县', '湖南省岳阳市平江县', 3, '4306');
INSERT INTO `info_area` VALUES (1961, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430671', '岳阳市屈原管理区', '湖南省岳阳市岳阳市屈原管理区', 3, '4306');
INSERT INTO `info_area` VALUES (1962, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430681', '汨罗市', '湖南省岳阳市汨罗市', 3, '4306');
INSERT INTO `info_area` VALUES (1963, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430682', '临湘市', '湖南省岳阳市临湘市', 3, '4306');
INSERT INTO `info_area` VALUES (1964, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4307', '常德市', '湖南省常德市', 2, '43');
INSERT INTO `info_area` VALUES (1965, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430702', '武陵区', '湖南省常德市武陵区', 3, '4307');
INSERT INTO `info_area` VALUES (1966, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430703', '鼎城区', '湖南省常德市鼎城区', 3, '4307');
INSERT INTO `info_area` VALUES (1967, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430721', '安乡县', '湖南省常德市安乡县', 3, '4307');
INSERT INTO `info_area` VALUES (1968, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430722', '汉寿县', '湖南省常德市汉寿县', 3, '4307');
INSERT INTO `info_area` VALUES (1969, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430723', '澧县', '湖南省常德市澧县', 3, '4307');
INSERT INTO `info_area` VALUES (1970, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430724', '临澧县', '湖南省常德市临澧县', 3, '4307');
INSERT INTO `info_area` VALUES (1971, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430725', '桃源县', '湖南省常德市桃源县', 3, '4307');
INSERT INTO `info_area` VALUES (1972, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430726', '石门县', '湖南省常德市石门县', 3, '4307');
INSERT INTO `info_area` VALUES (1973, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430771', '常德市西洞庭管理区', '湖南省常德市常德市西洞庭管理区', 3, '4307');
INSERT INTO `info_area` VALUES (1974, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430781', '津市市', '湖南省常德市津市市', 3, '4307');
INSERT INTO `info_area` VALUES (1975, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4308', '张家界市', '湖南省张家界市', 2, '43');
INSERT INTO `info_area` VALUES (1976, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430802', '永定区', '湖南省张家界市永定区', 3, '4308');
INSERT INTO `info_area` VALUES (1977, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430811', '武陵源区', '湖南省张家界市武陵源区', 3, '4308');
INSERT INTO `info_area` VALUES (1978, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430821', '慈利县', '湖南省张家界市慈利县', 3, '4308');
INSERT INTO `info_area` VALUES (1979, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430822', '桑植县', '湖南省张家界市桑植县', 3, '4308');
INSERT INTO `info_area` VALUES (1980, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4309', '益阳市', '湖南省益阳市', 2, '43');
INSERT INTO `info_area` VALUES (1981, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430902', '资阳区', '湖南省益阳市资阳区', 3, '4309');
INSERT INTO `info_area` VALUES (1982, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430903', '赫山区', '湖南省益阳市赫山区', 3, '4309');
INSERT INTO `info_area` VALUES (1983, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430921', '南县', '湖南省益阳市南县', 3, '4309');
INSERT INTO `info_area` VALUES (1984, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430922', '桃江县', '湖南省益阳市桃江县', 3, '4309');
INSERT INTO `info_area` VALUES (1985, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430923', '安化县', '湖南省益阳市安化县', 3, '4309');
INSERT INTO `info_area` VALUES (1986, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430971', '益阳市大通湖管理区', '湖南省益阳市益阳市大通湖管理区', 3, '4309');
INSERT INTO `info_area` VALUES (1987, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430972', '湖南益阳高新技术产业园区', '湖南省益阳市湖南益阳高新技术产业园区', 3, '4309');
INSERT INTO `info_area` VALUES (1988, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '430981', '沅江市', '湖南省益阳市沅江市', 3, '4309');
INSERT INTO `info_area` VALUES (1989, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4310', '郴州市', '湖南省郴州市', 2, '43');
INSERT INTO `info_area` VALUES (1990, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431002', '北湖区', '湖南省郴州市北湖区', 3, '4310');
INSERT INTO `info_area` VALUES (1991, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431003', '苏仙区', '湖南省郴州市苏仙区', 3, '4310');
INSERT INTO `info_area` VALUES (1992, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431021', '桂阳县', '湖南省郴州市桂阳县', 3, '4310');
INSERT INTO `info_area` VALUES (1993, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431022', '宜章县', '湖南省郴州市宜章县', 3, '4310');
INSERT INTO `info_area` VALUES (1994, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431023', '永兴县', '湖南省郴州市永兴县', 3, '4310');
INSERT INTO `info_area` VALUES (1995, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431024', '嘉禾县', '湖南省郴州市嘉禾县', 3, '4310');
INSERT INTO `info_area` VALUES (1996, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431025', '临武县', '湖南省郴州市临武县', 3, '4310');
INSERT INTO `info_area` VALUES (1997, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431026', '汝城县', '湖南省郴州市汝城县', 3, '4310');
INSERT INTO `info_area` VALUES (1998, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431027', '桂东县', '湖南省郴州市桂东县', 3, '4310');
INSERT INTO `info_area` VALUES (1999, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431028', '安仁县', '湖南省郴州市安仁县', 3, '4310');
INSERT INTO `info_area` VALUES (2000, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431081', '资兴市', '湖南省郴州市资兴市', 3, '4310');
INSERT INTO `info_area` VALUES (2001, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4311', '永州市', '湖南省永州市', 2, '43');
INSERT INTO `info_area` VALUES (2002, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431102', '零陵区', '湖南省永州市零陵区', 3, '4311');
INSERT INTO `info_area` VALUES (2003, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431103', '冷水滩区', '湖南省永州市冷水滩区', 3, '4311');
INSERT INTO `info_area` VALUES (2004, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431122', '东安县', '湖南省永州市东安县', 3, '4311');
INSERT INTO `info_area` VALUES (2005, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431123', '双牌县', '湖南省永州市双牌县', 3, '4311');
INSERT INTO `info_area` VALUES (2006, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431124', '道县', '湖南省永州市道县', 3, '4311');
INSERT INTO `info_area` VALUES (2007, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431125', '江永县', '湖南省永州市江永县', 3, '4311');
INSERT INTO `info_area` VALUES (2008, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431126', '宁远县', '湖南省永州市宁远县', 3, '4311');
INSERT INTO `info_area` VALUES (2009, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431127', '蓝山县', '湖南省永州市蓝山县', 3, '4311');
INSERT INTO `info_area` VALUES (2010, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431128', '新田县', '湖南省永州市新田县', 3, '4311');
INSERT INTO `info_area` VALUES (2011, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431129', '江华瑶族自治县', '湖南省永州市江华瑶族自治县', 3, '4311');
INSERT INTO `info_area` VALUES (2012, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431171', '永州经济技术开发区', '湖南省永州市永州经济技术开发区', 3, '4311');
INSERT INTO `info_area` VALUES (2013, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431173', '永州市回龙圩管理区', '湖南省永州市永州市回龙圩管理区', 3, '4311');
INSERT INTO `info_area` VALUES (2014, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431181', '祁阳市', '湖南省永州市祁阳市', 3, '4311');
INSERT INTO `info_area` VALUES (2015, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4312', '怀化市', '湖南省怀化市', 2, '43');
INSERT INTO `info_area` VALUES (2016, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431202', '鹤城区', '湖南省怀化市鹤城区', 3, '4312');
INSERT INTO `info_area` VALUES (2017, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431221', '中方县', '湖南省怀化市中方县', 3, '4312');
INSERT INTO `info_area` VALUES (2018, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431222', '沅陵县', '湖南省怀化市沅陵县', 3, '4312');
INSERT INTO `info_area` VALUES (2019, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431223', '辰溪县', '湖南省怀化市辰溪县', 3, '4312');
INSERT INTO `info_area` VALUES (2020, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431224', '溆浦县', '湖南省怀化市溆浦县', 3, '4312');
INSERT INTO `info_area` VALUES (2021, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431225', '会同县', '湖南省怀化市会同县', 3, '4312');
INSERT INTO `info_area` VALUES (2022, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431226', '麻阳苗族自治县', '湖南省怀化市麻阳苗族自治县', 3, '4312');
INSERT INTO `info_area` VALUES (2023, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431227', '新晃侗族自治县', '湖南省怀化市新晃侗族自治县', 3, '4312');
INSERT INTO `info_area` VALUES (2024, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431228', '芷江侗族自治县', '湖南省怀化市芷江侗族自治县', 3, '4312');
INSERT INTO `info_area` VALUES (2025, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431229', '靖州苗族侗族自治县', '湖南省怀化市靖州苗族侗族自治县', 3, '4312');
INSERT INTO `info_area` VALUES (2026, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431230', '通道侗族自治县', '湖南省怀化市通道侗族自治县', 3, '4312');
INSERT INTO `info_area` VALUES (2027, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431271', '怀化市洪江管理区', '湖南省怀化市怀化市洪江管理区', 3, '4312');
INSERT INTO `info_area` VALUES (2028, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431281', '洪江市', '湖南省怀化市洪江市', 3, '4312');
INSERT INTO `info_area` VALUES (2029, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4313', '娄底市', '湖南省娄底市', 2, '43');
INSERT INTO `info_area` VALUES (2030, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431302', '娄星区', '湖南省娄底市娄星区', 3, '4313');
INSERT INTO `info_area` VALUES (2031, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431321', '双峰县', '湖南省娄底市双峰县', 3, '4313');
INSERT INTO `info_area` VALUES (2032, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431322', '新化县', '湖南省娄底市新化县', 3, '4313');
INSERT INTO `info_area` VALUES (2033, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431381', '冷水江市', '湖南省娄底市冷水江市', 3, '4313');
INSERT INTO `info_area` VALUES (2034, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '431382', '涟源市', '湖南省娄底市涟源市', 3, '4313');
INSERT INTO `info_area` VALUES (2035, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4331', '湘西土家族苗族自治州', '湖南省湘西土家族苗族自治州', 2, '43');
INSERT INTO `info_area` VALUES (2036, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '433101', '吉首市', '湖南省湘西土家族苗族自治州吉首市', 3, '4331');
INSERT INTO `info_area` VALUES (2037, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '433122', '泸溪县', '湖南省湘西土家族苗族自治州泸溪县', 3, '4331');
INSERT INTO `info_area` VALUES (2038, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '433123', '凤凰县', '湖南省湘西土家族苗族自治州凤凰县', 3, '4331');
INSERT INTO `info_area` VALUES (2039, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '433124', '花垣县', '湖南省湘西土家族苗族自治州花垣县', 3, '4331');
INSERT INTO `info_area` VALUES (2040, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '433125', '保靖县', '湖南省湘西土家族苗族自治州保靖县', 3, '4331');
INSERT INTO `info_area` VALUES (2041, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '433126', '古丈县', '湖南省湘西土家族苗族自治州古丈县', 3, '4331');
INSERT INTO `info_area` VALUES (2042, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '433127', '永顺县', '湖南省湘西土家族苗族自治州永顺县', 3, '4331');
INSERT INTO `info_area` VALUES (2043, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '433130', '龙山县', '湖南省湘西土家族苗族自治州龙山县', 3, '4331');
INSERT INTO `info_area` VALUES (2044, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '44', '广东省', '广东省', 1, '');
INSERT INTO `info_area` VALUES (2045, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4401', '广州市', '广东省广州市', 2, '44');
INSERT INTO `info_area` VALUES (2046, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440103', '荔湾区', '广东省广州市荔湾区', 3, '4401');
INSERT INTO `info_area` VALUES (2047, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440104', '越秀区', '广东省广州市越秀区', 3, '4401');
INSERT INTO `info_area` VALUES (2048, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440105', '海珠区', '广东省广州市海珠区', 3, '4401');
INSERT INTO `info_area` VALUES (2049, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440106', '天河区', '广东省广州市天河区', 3, '4401');
INSERT INTO `info_area` VALUES (2050, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440111', '白云区', '广东省广州市白云区', 3, '4401');
INSERT INTO `info_area` VALUES (2051, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440112', '黄埔区', '广东省广州市黄埔区', 3, '4401');
INSERT INTO `info_area` VALUES (2052, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440113', '番禺区', '广东省广州市番禺区', 3, '4401');
INSERT INTO `info_area` VALUES (2053, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440114', '花都区', '广东省广州市花都区', 3, '4401');
INSERT INTO `info_area` VALUES (2054, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440115', '南沙区', '广东省广州市南沙区', 3, '4401');
INSERT INTO `info_area` VALUES (2055, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440117', '从化区', '广东省广州市从化区', 3, '4401');
INSERT INTO `info_area` VALUES (2056, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440118', '增城区', '广东省广州市增城区', 3, '4401');
INSERT INTO `info_area` VALUES (2057, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4402', '韶关市', '广东省韶关市', 2, '44');
INSERT INTO `info_area` VALUES (2058, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440203', '武江区', '广东省韶关市武江区', 3, '4402');
INSERT INTO `info_area` VALUES (2059, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440204', '浈江区', '广东省韶关市浈江区', 3, '4402');
INSERT INTO `info_area` VALUES (2060, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440205', '曲江区', '广东省韶关市曲江区', 3, '4402');
INSERT INTO `info_area` VALUES (2061, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440222', '始兴县', '广东省韶关市始兴县', 3, '4402');
INSERT INTO `info_area` VALUES (2062, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440224', '仁化县', '广东省韶关市仁化县', 3, '4402');
INSERT INTO `info_area` VALUES (2063, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440229', '翁源县', '广东省韶关市翁源县', 3, '4402');
INSERT INTO `info_area` VALUES (2064, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440232', '乳源瑶族自治县', '广东省韶关市乳源瑶族自治县', 3, '4402');
INSERT INTO `info_area` VALUES (2065, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440233', '新丰县', '广东省韶关市新丰县', 3, '4402');
INSERT INTO `info_area` VALUES (2066, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440281', '乐昌市', '广东省韶关市乐昌市', 3, '4402');
INSERT INTO `info_area` VALUES (2067, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440282', '南雄市', '广东省韶关市南雄市', 3, '4402');
INSERT INTO `info_area` VALUES (2068, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4403', '深圳市', '广东省深圳市', 2, '44');
INSERT INTO `info_area` VALUES (2069, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440303', '罗湖区', '广东省深圳市罗湖区', 3, '4403');
INSERT INTO `info_area` VALUES (2070, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440304', '福田区', '广东省深圳市福田区', 3, '4403');
INSERT INTO `info_area` VALUES (2071, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440305', '南山区', '广东省深圳市南山区', 3, '4403');
INSERT INTO `info_area` VALUES (2072, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440306', '宝安区', '广东省深圳市宝安区', 3, '4403');
INSERT INTO `info_area` VALUES (2073, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440307', '龙岗区', '广东省深圳市龙岗区', 3, '4403');
INSERT INTO `info_area` VALUES (2074, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440308', '盐田区', '广东省深圳市盐田区', 3, '4403');
INSERT INTO `info_area` VALUES (2075, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440309', '龙华区', '广东省深圳市龙华区', 3, '4403');
INSERT INTO `info_area` VALUES (2076, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440310', '坪山区', '广东省深圳市坪山区', 3, '4403');
INSERT INTO `info_area` VALUES (2077, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440311', '光明区', '广东省深圳市光明区', 3, '4403');
INSERT INTO `info_area` VALUES (2078, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4404', '珠海市', '广东省珠海市', 2, '44');
INSERT INTO `info_area` VALUES (2079, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440402', '香洲区', '广东省珠海市香洲区', 3, '4404');
INSERT INTO `info_area` VALUES (2080, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440403', '斗门区', '广东省珠海市斗门区', 3, '4404');
INSERT INTO `info_area` VALUES (2081, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440404', '金湾区', '广东省珠海市金湾区', 3, '4404');
INSERT INTO `info_area` VALUES (2082, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4405', '汕头市', '广东省汕头市', 2, '44');
INSERT INTO `info_area` VALUES (2083, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440507', '龙湖区', '广东省汕头市龙湖区', 3, '4405');
INSERT INTO `info_area` VALUES (2084, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440511', '金平区', '广东省汕头市金平区', 3, '4405');
INSERT INTO `info_area` VALUES (2085, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440512', '濠江区', '广东省汕头市濠江区', 3, '4405');
INSERT INTO `info_area` VALUES (2086, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440513', '潮阳区', '广东省汕头市潮阳区', 3, '4405');
INSERT INTO `info_area` VALUES (2087, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440514', '潮南区', '广东省汕头市潮南区', 3, '4405');
INSERT INTO `info_area` VALUES (2088, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440515', '澄海区', '广东省汕头市澄海区', 3, '4405');
INSERT INTO `info_area` VALUES (2089, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440523', '南澳县', '广东省汕头市南澳县', 3, '4405');
INSERT INTO `info_area` VALUES (2090, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4406', '佛山市', '广东省佛山市', 2, '44');
INSERT INTO `info_area` VALUES (2091, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440604', '禅城区', '广东省佛山市禅城区', 3, '4406');
INSERT INTO `info_area` VALUES (2092, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440605', '南海区', '广东省佛山市南海区', 3, '4406');
INSERT INTO `info_area` VALUES (2093, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440606', '顺德区', '广东省佛山市顺德区', 3, '4406');
INSERT INTO `info_area` VALUES (2094, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440607', '三水区', '广东省佛山市三水区', 3, '4406');
INSERT INTO `info_area` VALUES (2095, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440608', '高明区', '广东省佛山市高明区', 3, '4406');
INSERT INTO `info_area` VALUES (2096, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4407', '江门市', '广东省江门市', 2, '44');
INSERT INTO `info_area` VALUES (2097, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440703', '蓬江区', '广东省江门市蓬江区', 3, '4407');
INSERT INTO `info_area` VALUES (2098, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440704', '江海区', '广东省江门市江海区', 3, '4407');
INSERT INTO `info_area` VALUES (2099, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440705', '新会区', '广东省江门市新会区', 3, '4407');
INSERT INTO `info_area` VALUES (2100, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440781', '台山市', '广东省江门市台山市', 3, '4407');
INSERT INTO `info_area` VALUES (2101, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440783', '开平市', '广东省江门市开平市', 3, '4407');
INSERT INTO `info_area` VALUES (2102, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440784', '鹤山市', '广东省江门市鹤山市', 3, '4407');
INSERT INTO `info_area` VALUES (2103, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440785', '恩平市', '广东省江门市恩平市', 3, '4407');
INSERT INTO `info_area` VALUES (2104, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4408', '湛江市', '广东省湛江市', 2, '44');
INSERT INTO `info_area` VALUES (2105, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440802', '赤坎区', '广东省湛江市赤坎区', 3, '4408');
INSERT INTO `info_area` VALUES (2106, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440803', '霞山区', '广东省湛江市霞山区', 3, '4408');
INSERT INTO `info_area` VALUES (2107, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440804', '坡头区', '广东省湛江市坡头区', 3, '4408');
INSERT INTO `info_area` VALUES (2108, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440811', '麻章区', '广东省湛江市麻章区', 3, '4408');
INSERT INTO `info_area` VALUES (2109, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440823', '遂溪县', '广东省湛江市遂溪县', 3, '4408');
INSERT INTO `info_area` VALUES (2110, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440825', '徐闻县', '广东省湛江市徐闻县', 3, '4408');
INSERT INTO `info_area` VALUES (2111, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440881', '廉江市', '广东省湛江市廉江市', 3, '4408');
INSERT INTO `info_area` VALUES (2112, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440882', '雷州市', '广东省湛江市雷州市', 3, '4408');
INSERT INTO `info_area` VALUES (2113, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440883', '吴川市', '广东省湛江市吴川市', 3, '4408');
INSERT INTO `info_area` VALUES (2114, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4409', '茂名市', '广东省茂名市', 2, '44');
INSERT INTO `info_area` VALUES (2115, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440902', '茂南区', '广东省茂名市茂南区', 3, '4409');
INSERT INTO `info_area` VALUES (2116, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440904', '电白区', '广东省茂名市电白区', 3, '4409');
INSERT INTO `info_area` VALUES (2117, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440981', '高州市', '广东省茂名市高州市', 3, '4409');
INSERT INTO `info_area` VALUES (2118, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440982', '化州市', '广东省茂名市化州市', 3, '4409');
INSERT INTO `info_area` VALUES (2119, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '440983', '信宜市', '广东省茂名市信宜市', 3, '4409');
INSERT INTO `info_area` VALUES (2120, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4412', '肇庆市', '广东省肇庆市', 2, '44');
INSERT INTO `info_area` VALUES (2121, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441202', '端州区', '广东省肇庆市端州区', 3, '4412');
INSERT INTO `info_area` VALUES (2122, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441203', '鼎湖区', '广东省肇庆市鼎湖区', 3, '4412');
INSERT INTO `info_area` VALUES (2123, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441204', '高要区', '广东省肇庆市高要区', 3, '4412');
INSERT INTO `info_area` VALUES (2124, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441223', '广宁县', '广东省肇庆市广宁县', 3, '4412');
INSERT INTO `info_area` VALUES (2125, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441224', '怀集县', '广东省肇庆市怀集县', 3, '4412');
INSERT INTO `info_area` VALUES (2126, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441225', '封开县', '广东省肇庆市封开县', 3, '4412');
INSERT INTO `info_area` VALUES (2127, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441226', '德庆县', '广东省肇庆市德庆县', 3, '4412');
INSERT INTO `info_area` VALUES (2128, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441284', '四会市', '广东省肇庆市四会市', 3, '4412');
INSERT INTO `info_area` VALUES (2129, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4413', '惠州市', '广东省惠州市', 2, '44');
INSERT INTO `info_area` VALUES (2130, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441302', '惠城区', '广东省惠州市惠城区', 3, '4413');
INSERT INTO `info_area` VALUES (2131, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441303', '惠阳区', '广东省惠州市惠阳区', 3, '4413');
INSERT INTO `info_area` VALUES (2132, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441322', '博罗县', '广东省惠州市博罗县', 3, '4413');
INSERT INTO `info_area` VALUES (2133, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441323', '惠东县', '广东省惠州市惠东县', 3, '4413');
INSERT INTO `info_area` VALUES (2134, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441324', '龙门县', '广东省惠州市龙门县', 3, '4413');
INSERT INTO `info_area` VALUES (2135, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4414', '梅州市', '广东省梅州市', 2, '44');
INSERT INTO `info_area` VALUES (2136, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441402', '梅江区', '广东省梅州市梅江区', 3, '4414');
INSERT INTO `info_area` VALUES (2137, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441403', '梅县区', '广东省梅州市梅县区', 3, '4414');
INSERT INTO `info_area` VALUES (2138, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441422', '大埔县', '广东省梅州市大埔县', 3, '4414');
INSERT INTO `info_area` VALUES (2139, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441423', '丰顺县', '广东省梅州市丰顺县', 3, '4414');
INSERT INTO `info_area` VALUES (2140, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441424', '五华县', '广东省梅州市五华县', 3, '4414');
INSERT INTO `info_area` VALUES (2141, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441426', '平远县', '广东省梅州市平远县', 3, '4414');
INSERT INTO `info_area` VALUES (2142, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441427', '蕉岭县', '广东省梅州市蕉岭县', 3, '4414');
INSERT INTO `info_area` VALUES (2143, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441481', '兴宁市', '广东省梅州市兴宁市', 3, '4414');
INSERT INTO `info_area` VALUES (2144, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4415', '汕尾市', '广东省汕尾市', 2, '44');
INSERT INTO `info_area` VALUES (2145, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441502', '城区', '广东省汕尾市城区', 3, '4415');
INSERT INTO `info_area` VALUES (2146, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441521', '海丰县', '广东省汕尾市海丰县', 3, '4415');
INSERT INTO `info_area` VALUES (2147, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441523', '陆河县', '广东省汕尾市陆河县', 3, '4415');
INSERT INTO `info_area` VALUES (2148, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441581', '陆丰市', '广东省汕尾市陆丰市', 3, '4415');
INSERT INTO `info_area` VALUES (2149, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4416', '河源市', '广东省河源市', 2, '44');
INSERT INTO `info_area` VALUES (2150, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441602', '源城区', '广东省河源市源城区', 3, '4416');
INSERT INTO `info_area` VALUES (2151, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441621', '紫金县', '广东省河源市紫金县', 3, '4416');
INSERT INTO `info_area` VALUES (2152, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441622', '龙川县', '广东省河源市龙川县', 3, '4416');
INSERT INTO `info_area` VALUES (2153, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441623', '连平县', '广东省河源市连平县', 3, '4416');
INSERT INTO `info_area` VALUES (2154, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441624', '和平县', '广东省河源市和平县', 3, '4416');
INSERT INTO `info_area` VALUES (2155, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441625', '东源县', '广东省河源市东源县', 3, '4416');
INSERT INTO `info_area` VALUES (2156, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4417', '阳江市', '广东省阳江市', 2, '44');
INSERT INTO `info_area` VALUES (2157, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441702', '江城区', '广东省阳江市江城区', 3, '4417');
INSERT INTO `info_area` VALUES (2158, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441704', '阳东区', '广东省阳江市阳东区', 3, '4417');
INSERT INTO `info_area` VALUES (2159, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441721', '阳西县', '广东省阳江市阳西县', 3, '4417');
INSERT INTO `info_area` VALUES (2160, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441781', '阳春市', '广东省阳江市阳春市', 3, '4417');
INSERT INTO `info_area` VALUES (2161, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4418', '清远市', '广东省清远市', 2, '44');
INSERT INTO `info_area` VALUES (2162, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441802', '清城区', '广东省清远市清城区', 3, '4418');
INSERT INTO `info_area` VALUES (2163, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441803', '清新区', '广东省清远市清新区', 3, '4418');
INSERT INTO `info_area` VALUES (2164, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441821', '佛冈县', '广东省清远市佛冈县', 3, '4418');
INSERT INTO `info_area` VALUES (2165, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441823', '阳山县', '广东省清远市阳山县', 3, '4418');
INSERT INTO `info_area` VALUES (2166, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441825', '连山壮族瑶族自治县', '广东省清远市连山壮族瑶族自治县', 3, '4418');
INSERT INTO `info_area` VALUES (2167, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441826', '连南瑶族自治县', '广东省清远市连南瑶族自治县', 3, '4418');
INSERT INTO `info_area` VALUES (2168, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441881', '英德市', '广东省清远市英德市', 3, '4418');
INSERT INTO `info_area` VALUES (2169, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441882', '连州市', '广东省清远市连州市', 3, '4418');
INSERT INTO `info_area` VALUES (2170, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4419', '东莞市', '广东省东莞市', 2, '44');
INSERT INTO `info_area` VALUES (2171, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900003', '东城街道', '广东省东莞市东城街道', 3, '4419');
INSERT INTO `info_area` VALUES (2172, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900004', '南城街道', '广东省东莞市南城街道', 3, '4419');
INSERT INTO `info_area` VALUES (2173, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900005', '万江街道', '广东省东莞市万江街道', 3, '4419');
INSERT INTO `info_area` VALUES (2174, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900006', '莞城街道', '广东省东莞市莞城街道', 3, '4419');
INSERT INTO `info_area` VALUES (2175, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900101', '石碣镇', '广东省东莞市石碣镇', 3, '4419');
INSERT INTO `info_area` VALUES (2176, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900102', '石龙镇', '广东省东莞市石龙镇', 3, '4419');
INSERT INTO `info_area` VALUES (2177, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900103', '茶山镇', '广东省东莞市茶山镇', 3, '4419');
INSERT INTO `info_area` VALUES (2178, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900104', '石排镇', '广东省东莞市石排镇', 3, '4419');
INSERT INTO `info_area` VALUES (2179, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900105', '企石镇', '广东省东莞市企石镇', 3, '4419');
INSERT INTO `info_area` VALUES (2180, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900106', '横沥镇', '广东省东莞市横沥镇', 3, '4419');
INSERT INTO `info_area` VALUES (2181, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900107', '桥头镇', '广东省东莞市桥头镇', 3, '4419');
INSERT INTO `info_area` VALUES (2182, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900108', '谢岗镇', '广东省东莞市谢岗镇', 3, '4419');
INSERT INTO `info_area` VALUES (2183, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900109', '东坑镇', '广东省东莞市东坑镇', 3, '4419');
INSERT INTO `info_area` VALUES (2184, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900110', '常平镇', '广东省东莞市常平镇', 3, '4419');
INSERT INTO `info_area` VALUES (2185, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900111', '寮步镇', '广东省东莞市寮步镇', 3, '4419');
INSERT INTO `info_area` VALUES (2186, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900112', '樟木头镇', '广东省东莞市樟木头镇', 3, '4419');
INSERT INTO `info_area` VALUES (2187, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900113', '大朗镇', '广东省东莞市大朗镇', 3, '4419');
INSERT INTO `info_area` VALUES (2188, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900114', '黄江镇', '广东省东莞市黄江镇', 3, '4419');
INSERT INTO `info_area` VALUES (2189, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900115', '清溪镇', '广东省东莞市清溪镇', 3, '4419');
INSERT INTO `info_area` VALUES (2190, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900116', '塘厦镇', '广东省东莞市塘厦镇', 3, '4419');
INSERT INTO `info_area` VALUES (2191, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900117', '凤岗镇', '广东省东莞市凤岗镇', 3, '4419');
INSERT INTO `info_area` VALUES (2192, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900118', '大岭山镇', '广东省东莞市大岭山镇', 3, '4419');
INSERT INTO `info_area` VALUES (2193, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900119', '长安镇', '广东省东莞市长安镇', 3, '4419');
INSERT INTO `info_area` VALUES (2194, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900121', '虎门镇', '广东省东莞市虎门镇', 3, '4419');
INSERT INTO `info_area` VALUES (2195, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900122', '厚街镇', '广东省东莞市厚街镇', 3, '4419');
INSERT INTO `info_area` VALUES (2196, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900123', '沙田镇', '广东省东莞市沙田镇', 3, '4419');
INSERT INTO `info_area` VALUES (2197, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900124', '道滘镇', '广东省东莞市道滘镇', 3, '4419');
INSERT INTO `info_area` VALUES (2198, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900125', '洪梅镇', '广东省东莞市洪梅镇', 3, '4419');
INSERT INTO `info_area` VALUES (2199, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900126', '麻涌镇', '广东省东莞市麻涌镇', 3, '4419');
INSERT INTO `info_area` VALUES (2200, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900127', '望牛墩镇', '广东省东莞市望牛墩镇', 3, '4419');
INSERT INTO `info_area` VALUES (2201, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900128', '中堂镇', '广东省东莞市中堂镇', 3, '4419');
INSERT INTO `info_area` VALUES (2202, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900129', '高埗镇', '广东省东莞市高埗镇', 3, '4419');
INSERT INTO `info_area` VALUES (2203, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900401', '松山湖', '广东省东莞市松山湖', 3, '4419');
INSERT INTO `info_area` VALUES (2204, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900402', '东莞港', '广东省东莞市东莞港', 3, '4419');
INSERT INTO `info_area` VALUES (2205, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900403', '东莞生态园', '广东省东莞市东莞生态园', 3, '4419');
INSERT INTO `info_area` VALUES (2206, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '441900404', '东莞滨海湾新区', '广东省东莞市东莞滨海湾新区', 3, '4419');
INSERT INTO `info_area` VALUES (2207, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4420', '中山市', '广东省中山市', 2, '44');
INSERT INTO `info_area` VALUES (2208, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000001', '石岐街道', '广东省中山市石岐街道', 3, '4420');
INSERT INTO `info_area` VALUES (2209, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000002', '东区街道', '广东省中山市东区街道', 3, '4420');
INSERT INTO `info_area` VALUES (2210, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000003', '中山港街道', '广东省中山市中山港街道', 3, '4420');
INSERT INTO `info_area` VALUES (2211, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000004', '西区街道', '广东省中山市西区街道', 3, '4420');
INSERT INTO `info_area` VALUES (2212, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000005', '南区街道', '广东省中山市南区街道', 3, '4420');
INSERT INTO `info_area` VALUES (2213, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000006', '五桂山街道', '广东省中山市五桂山街道', 3, '4420');
INSERT INTO `info_area` VALUES (2214, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000007', '民众街道', '广东省中山市民众街道', 3, '4420');
INSERT INTO `info_area` VALUES (2215, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000008', '南朗街道', '广东省中山市南朗街道', 3, '4420');
INSERT INTO `info_area` VALUES (2216, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000101', '黄圃镇', '广东省中山市黄圃镇', 3, '4420');
INSERT INTO `info_area` VALUES (2217, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000103', '东凤镇', '广东省中山市东凤镇', 3, '4420');
INSERT INTO `info_area` VALUES (2218, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000105', '古镇镇', '广东省中山市古镇镇', 3, '4420');
INSERT INTO `info_area` VALUES (2219, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000106', '沙溪镇', '广东省中山市沙溪镇', 3, '4420');
INSERT INTO `info_area` VALUES (2220, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000107', '坦洲镇', '广东省中山市坦洲镇', 3, '4420');
INSERT INTO `info_area` VALUES (2221, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000108', '港口镇', '广东省中山市港口镇', 3, '4420');
INSERT INTO `info_area` VALUES (2222, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000109', '三角镇', '广东省中山市三角镇', 3, '4420');
INSERT INTO `info_area` VALUES (2223, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000110', '横栏镇', '广东省中山市横栏镇', 3, '4420');
INSERT INTO `info_area` VALUES (2224, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000111', '南头镇', '广东省中山市南头镇', 3, '4420');
INSERT INTO `info_area` VALUES (2225, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000112', '阜沙镇', '广东省中山市阜沙镇', 3, '4420');
INSERT INTO `info_area` VALUES (2226, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000114', '三乡镇', '广东省中山市三乡镇', 3, '4420');
INSERT INTO `info_area` VALUES (2227, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000115', '板芙镇', '广东省中山市板芙镇', 3, '4420');
INSERT INTO `info_area` VALUES (2228, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000116', '大涌镇', '广东省中山市大涌镇', 3, '4420');
INSERT INTO `info_area` VALUES (2229, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000117', '神湾镇', '广东省中山市神湾镇', 3, '4420');
INSERT INTO `info_area` VALUES (2230, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '442000118', '小榄镇', '广东省中山市小榄镇', 3, '4420');
INSERT INTO `info_area` VALUES (2231, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4451', '潮州市', '广东省潮州市', 2, '44');
INSERT INTO `info_area` VALUES (2232, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '445102', '湘桥区', '广东省潮州市湘桥区', 3, '4451');
INSERT INTO `info_area` VALUES (2233, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '445103', '潮安区', '广东省潮州市潮安区', 3, '4451');
INSERT INTO `info_area` VALUES (2234, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '445122', '饶平县', '广东省潮州市饶平县', 3, '4451');
INSERT INTO `info_area` VALUES (2235, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4452', '揭阳市', '广东省揭阳市', 2, '44');
INSERT INTO `info_area` VALUES (2236, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '445202', '榕城区', '广东省揭阳市榕城区', 3, '4452');
INSERT INTO `info_area` VALUES (2237, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '445203', '揭东区', '广东省揭阳市揭东区', 3, '4452');
INSERT INTO `info_area` VALUES (2238, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '445222', '揭西县', '广东省揭阳市揭西县', 3, '4452');
INSERT INTO `info_area` VALUES (2239, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '445224', '惠来县', '广东省揭阳市惠来县', 3, '4452');
INSERT INTO `info_area` VALUES (2240, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '445281', '普宁市', '广东省揭阳市普宁市', 3, '4452');
INSERT INTO `info_area` VALUES (2241, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4453', '云浮市', '广东省云浮市', 2, '44');
INSERT INTO `info_area` VALUES (2242, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '445302', '云城区', '广东省云浮市云城区', 3, '4453');
INSERT INTO `info_area` VALUES (2243, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '445303', '云安区', '广东省云浮市云安区', 3, '4453');
INSERT INTO `info_area` VALUES (2244, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '445321', '新兴县', '广东省云浮市新兴县', 3, '4453');
INSERT INTO `info_area` VALUES (2245, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '445322', '郁南县', '广东省云浮市郁南县', 3, '4453');
INSERT INTO `info_area` VALUES (2246, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '445381', '罗定市', '广东省云浮市罗定市', 3, '4453');
INSERT INTO `info_area` VALUES (2247, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '45', '广西壮族自治区', '广西壮族自治区', 1, '');
INSERT INTO `info_area` VALUES (2248, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4501', '南宁市', '广西壮族自治区南宁市', 2, '45');
INSERT INTO `info_area` VALUES (2249, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450102', '兴宁区', '广西壮族自治区南宁市兴宁区', 3, '4501');
INSERT INTO `info_area` VALUES (2250, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450103', '青秀区', '广西壮族自治区南宁市青秀区', 3, '4501');
INSERT INTO `info_area` VALUES (2251, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450105', '江南区', '广西壮族自治区南宁市江南区', 3, '4501');
INSERT INTO `info_area` VALUES (2252, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450107', '西乡塘区', '广西壮族自治区南宁市西乡塘区', 3, '4501');
INSERT INTO `info_area` VALUES (2253, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450108', '良庆区', '广西壮族自治区南宁市良庆区', 3, '4501');
INSERT INTO `info_area` VALUES (2254, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450109', '邕宁区', '广西壮族自治区南宁市邕宁区', 3, '4501');
INSERT INTO `info_area` VALUES (2255, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450110', '武鸣区', '广西壮族自治区南宁市武鸣区', 3, '4501');
INSERT INTO `info_area` VALUES (2256, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450123', '隆安县', '广西壮族自治区南宁市隆安县', 3, '4501');
INSERT INTO `info_area` VALUES (2257, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450124', '马山县', '广西壮族自治区南宁市马山县', 3, '4501');
INSERT INTO `info_area` VALUES (2258, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450125', '上林县', '广西壮族自治区南宁市上林县', 3, '4501');
INSERT INTO `info_area` VALUES (2259, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450126', '宾阳县', '广西壮族自治区南宁市宾阳县', 3, '4501');
INSERT INTO `info_area` VALUES (2260, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450181', '横州市', '广西壮族自治区南宁市横州市', 3, '4501');
INSERT INTO `info_area` VALUES (2261, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4502', '柳州市', '广西壮族自治区柳州市', 2, '45');
INSERT INTO `info_area` VALUES (2262, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450202', '城中区', '广西壮族自治区柳州市城中区', 3, '4502');
INSERT INTO `info_area` VALUES (2263, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450203', '鱼峰区', '广西壮族自治区柳州市鱼峰区', 3, '4502');
INSERT INTO `info_area` VALUES (2264, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450204', '柳南区', '广西壮族自治区柳州市柳南区', 3, '4502');
INSERT INTO `info_area` VALUES (2265, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450205', '柳北区', '广西壮族自治区柳州市柳北区', 3, '4502');
INSERT INTO `info_area` VALUES (2266, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450206', '柳江区', '广西壮族自治区柳州市柳江区', 3, '4502');
INSERT INTO `info_area` VALUES (2267, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450222', '柳城县', '广西壮族自治区柳州市柳城县', 3, '4502');
INSERT INTO `info_area` VALUES (2268, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450223', '鹿寨县', '广西壮族自治区柳州市鹿寨县', 3, '4502');
INSERT INTO `info_area` VALUES (2269, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450224', '融安县', '广西壮族自治区柳州市融安县', 3, '4502');
INSERT INTO `info_area` VALUES (2270, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450225', '融水苗族自治县', '广西壮族自治区柳州市融水苗族自治县', 3, '4502');
INSERT INTO `info_area` VALUES (2271, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450226', '三江侗族自治县', '广西壮族自治区柳州市三江侗族自治县', 3, '4502');
INSERT INTO `info_area` VALUES (2272, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4503', '桂林市', '广西壮族自治区桂林市', 2, '45');
INSERT INTO `info_area` VALUES (2273, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450302', '秀峰区', '广西壮族自治区桂林市秀峰区', 3, '4503');
INSERT INTO `info_area` VALUES (2274, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450303', '叠彩区', '广西壮族自治区桂林市叠彩区', 3, '4503');
INSERT INTO `info_area` VALUES (2275, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450304', '象山区', '广西壮族自治区桂林市象山区', 3, '4503');
INSERT INTO `info_area` VALUES (2276, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450305', '七星区', '广西壮族自治区桂林市七星区', 3, '4503');
INSERT INTO `info_area` VALUES (2277, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450311', '雁山区', '广西壮族自治区桂林市雁山区', 3, '4503');
INSERT INTO `info_area` VALUES (2278, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450312', '临桂区', '广西壮族自治区桂林市临桂区', 3, '4503');
INSERT INTO `info_area` VALUES (2279, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450321', '阳朔县', '广西壮族自治区桂林市阳朔县', 3, '4503');
INSERT INTO `info_area` VALUES (2280, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450323', '灵川县', '广西壮族自治区桂林市灵川县', 3, '4503');
INSERT INTO `info_area` VALUES (2281, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450324', '全州县', '广西壮族自治区桂林市全州县', 3, '4503');
INSERT INTO `info_area` VALUES (2282, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450325', '兴安县', '广西壮族自治区桂林市兴安县', 3, '4503');
INSERT INTO `info_area` VALUES (2283, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450326', '永福县', '广西壮族自治区桂林市永福县', 3, '4503');
INSERT INTO `info_area` VALUES (2284, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450327', '灌阳县', '广西壮族自治区桂林市灌阳县', 3, '4503');
INSERT INTO `info_area` VALUES (2285, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450328', '龙胜各族自治县', '广西壮族自治区桂林市龙胜各族自治县', 3, '4503');
INSERT INTO `info_area` VALUES (2286, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450329', '资源县', '广西壮族自治区桂林市资源县', 3, '4503');
INSERT INTO `info_area` VALUES (2287, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450330', '平乐县', '广西壮族自治区桂林市平乐县', 3, '4503');
INSERT INTO `info_area` VALUES (2288, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450332', '恭城瑶族自治县', '广西壮族自治区桂林市恭城瑶族自治县', 3, '4503');
INSERT INTO `info_area` VALUES (2289, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450381', '荔浦市', '广西壮族自治区桂林市荔浦市', 3, '4503');
INSERT INTO `info_area` VALUES (2290, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '4504', '梧州市', '广西壮族自治区梧州市', 2, '45');
INSERT INTO `info_area` VALUES (2291, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450403', '万秀区', '广西壮族自治区梧州市万秀区', 3, '4504');
INSERT INTO `info_area` VALUES (2292, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450405', '长洲区', '广西壮族自治区梧州市长洲区', 3, '4504');
INSERT INTO `info_area` VALUES (2293, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450406', '龙圩区', '广西壮族自治区梧州市龙圩区', 3, '4504');
INSERT INTO `info_area` VALUES (2294, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450421', '苍梧县', '广西壮族自治区梧州市苍梧县', 3, '4504');
INSERT INTO `info_area` VALUES (2295, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450422', '藤县', '广西壮族自治区梧州市藤县', 3, '4504');
INSERT INTO `info_area` VALUES (2296, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450423', '蒙山县', '广西壮族自治区梧州市蒙山县', 3, '4504');
INSERT INTO `info_area` VALUES (2297, '2024-03-21 19:17:58', 1, '2024-03-21 19:17:58', 1, '450481', '岑溪市', '广西壮族自治区梧州市岑溪市', 3, '4504');
INSERT INTO `info_area` VALUES (2298, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '4505', '北海市', '广西壮族自治区北海市', 2, '45');
INSERT INTO `info_area` VALUES (2299, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450502', '海城区', '广西壮族自治区北海市海城区', 3, '4505');
INSERT INTO `info_area` VALUES (2300, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450503', '银海区', '广西壮族自治区北海市银海区', 3, '4505');
INSERT INTO `info_area` VALUES (2301, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450512', '铁山港区', '广西壮族自治区北海市铁山港区', 3, '4505');
INSERT INTO `info_area` VALUES (2302, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450521', '合浦县', '广西壮族自治区北海市合浦县', 3, '4505');
INSERT INTO `info_area` VALUES (2303, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '4506', '防城港市', '广西壮族自治区防城港市', 2, '45');
INSERT INTO `info_area` VALUES (2304, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450602', '港口区', '广西壮族自治区防城港市港口区', 3, '4506');
INSERT INTO `info_area` VALUES (2305, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450603', '防城区', '广西壮族自治区防城港市防城区', 3, '4506');
INSERT INTO `info_area` VALUES (2306, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450621', '上思县', '广西壮族自治区防城港市上思县', 3, '4506');
INSERT INTO `info_area` VALUES (2307, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450681', '东兴市', '广西壮族自治区防城港市东兴市', 3, '4506');
INSERT INTO `info_area` VALUES (2308, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '4507', '钦州市', '广西壮族自治区钦州市', 2, '45');
INSERT INTO `info_area` VALUES (2309, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450702', '钦南区', '广西壮族自治区钦州市钦南区', 3, '4507');
INSERT INTO `info_area` VALUES (2310, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450703', '钦北区', '广西壮族自治区钦州市钦北区', 3, '4507');
INSERT INTO `info_area` VALUES (2311, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450721', '灵山县', '广西壮族自治区钦州市灵山县', 3, '4507');
INSERT INTO `info_area` VALUES (2312, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450722', '浦北县', '广西壮族自治区钦州市浦北县', 3, '4507');
INSERT INTO `info_area` VALUES (2313, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '4508', '贵港市', '广西壮族自治区贵港市', 2, '45');
INSERT INTO `info_area` VALUES (2314, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450802', '港北区', '广西壮族自治区贵港市港北区', 3, '4508');
INSERT INTO `info_area` VALUES (2315, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450803', '港南区', '广西壮族自治区贵港市港南区', 3, '4508');
INSERT INTO `info_area` VALUES (2316, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450804', '覃塘区', '广西壮族自治区贵港市覃塘区', 3, '4508');
INSERT INTO `info_area` VALUES (2317, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450821', '平南县', '广西壮族自治区贵港市平南县', 3, '4508');
INSERT INTO `info_area` VALUES (2318, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450881', '桂平市', '广西壮族自治区贵港市桂平市', 3, '4508');
INSERT INTO `info_area` VALUES (2319, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '4509', '玉林市', '广西壮族自治区玉林市', 2, '45');
INSERT INTO `info_area` VALUES (2320, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450902', '玉州区', '广西壮族自治区玉林市玉州区', 3, '4509');
INSERT INTO `info_area` VALUES (2321, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450903', '福绵区', '广西壮族自治区玉林市福绵区', 3, '4509');
INSERT INTO `info_area` VALUES (2322, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450921', '容县', '广西壮族自治区玉林市容县', 3, '4509');
INSERT INTO `info_area` VALUES (2323, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450922', '陆川县', '广西壮族自治区玉林市陆川县', 3, '4509');
INSERT INTO `info_area` VALUES (2324, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450923', '博白县', '广西壮族自治区玉林市博白县', 3, '4509');
INSERT INTO `info_area` VALUES (2325, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450924', '兴业县', '广西壮族自治区玉林市兴业县', 3, '4509');
INSERT INTO `info_area` VALUES (2326, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '450981', '北流市', '广西壮族自治区玉林市北流市', 3, '4509');
INSERT INTO `info_area` VALUES (2327, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '4510', '百色市', '广西壮族自治区百色市', 2, '45');
INSERT INTO `info_area` VALUES (2328, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451002', '右江区', '广西壮族自治区百色市右江区', 3, '4510');
INSERT INTO `info_area` VALUES (2329, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451003', '田阳区', '广西壮族自治区百色市田阳区', 3, '4510');
INSERT INTO `info_area` VALUES (2330, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451022', '田东县', '广西壮族自治区百色市田东县', 3, '4510');
INSERT INTO `info_area` VALUES (2331, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451024', '德保县', '广西壮族自治区百色市德保县', 3, '4510');
INSERT INTO `info_area` VALUES (2332, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451026', '那坡县', '广西壮族自治区百色市那坡县', 3, '4510');
INSERT INTO `info_area` VALUES (2333, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451027', '凌云县', '广西壮族自治区百色市凌云县', 3, '4510');
INSERT INTO `info_area` VALUES (2334, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451028', '乐业县', '广西壮族自治区百色市乐业县', 3, '4510');
INSERT INTO `info_area` VALUES (2335, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451029', '田林县', '广西壮族自治区百色市田林县', 3, '4510');
INSERT INTO `info_area` VALUES (2336, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451030', '西林县', '广西壮族自治区百色市西林县', 3, '4510');
INSERT INTO `info_area` VALUES (2337, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451031', '隆林各族自治县', '广西壮族自治区百色市隆林各族自治县', 3, '4510');
INSERT INTO `info_area` VALUES (2338, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451081', '靖西市', '广西壮族自治区百色市靖西市', 3, '4510');
INSERT INTO `info_area` VALUES (2339, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451082', '平果市', '广西壮族自治区百色市平果市', 3, '4510');
INSERT INTO `info_area` VALUES (2340, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '4511', '贺州市', '广西壮族自治区贺州市', 2, '45');
INSERT INTO `info_area` VALUES (2341, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451102', '八步区', '广西壮族自治区贺州市八步区', 3, '4511');
INSERT INTO `info_area` VALUES (2342, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451103', '平桂区', '广西壮族自治区贺州市平桂区', 3, '4511');
INSERT INTO `info_area` VALUES (2343, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451121', '昭平县', '广西壮族自治区贺州市昭平县', 3, '4511');
INSERT INTO `info_area` VALUES (2344, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451122', '钟山县', '广西壮族自治区贺州市钟山县', 3, '4511');
INSERT INTO `info_area` VALUES (2345, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451123', '富川瑶族自治县', '广西壮族自治区贺州市富川瑶族自治县', 3, '4511');
INSERT INTO `info_area` VALUES (2346, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '4512', '河池市', '广西壮族自治区河池市', 2, '45');
INSERT INTO `info_area` VALUES (2347, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451202', '金城江区', '广西壮族自治区河池市金城江区', 3, '4512');
INSERT INTO `info_area` VALUES (2348, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451203', '宜州区', '广西壮族自治区河池市宜州区', 3, '4512');
INSERT INTO `info_area` VALUES (2349, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451221', '南丹县', '广西壮族自治区河池市南丹县', 3, '4512');
INSERT INTO `info_area` VALUES (2350, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451222', '天峨县', '广西壮族自治区河池市天峨县', 3, '4512');
INSERT INTO `info_area` VALUES (2351, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451223', '凤山县', '广西壮族自治区河池市凤山县', 3, '4512');
INSERT INTO `info_area` VALUES (2352, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451224', '东兰县', '广西壮族自治区河池市东兰县', 3, '4512');
INSERT INTO `info_area` VALUES (2353, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451225', '罗城仫佬族自治县', '广西壮族自治区河池市罗城仫佬族自治县', 3, '4512');
INSERT INTO `info_area` VALUES (2354, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451226', '环江毛南族自治县', '广西壮族自治区河池市环江毛南族自治县', 3, '4512');
INSERT INTO `info_area` VALUES (2355, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451227', '巴马瑶族自治县', '广西壮族自治区河池市巴马瑶族自治县', 3, '4512');
INSERT INTO `info_area` VALUES (2356, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451228', '都安瑶族自治县', '广西壮族自治区河池市都安瑶族自治县', 3, '4512');
INSERT INTO `info_area` VALUES (2357, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451229', '大化瑶族自治县', '广西壮族自治区河池市大化瑶族自治县', 3, '4512');
INSERT INTO `info_area` VALUES (2358, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '4513', '来宾市', '广西壮族自治区来宾市', 2, '45');
INSERT INTO `info_area` VALUES (2359, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451302', '兴宾区', '广西壮族自治区来宾市兴宾区', 3, '4513');
INSERT INTO `info_area` VALUES (2360, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451321', '忻城县', '广西壮族自治区来宾市忻城县', 3, '4513');
INSERT INTO `info_area` VALUES (2361, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451322', '象州县', '广西壮族自治区来宾市象州县', 3, '4513');
INSERT INTO `info_area` VALUES (2362, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451323', '武宣县', '广西壮族自治区来宾市武宣县', 3, '4513');
INSERT INTO `info_area` VALUES (2363, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451324', '金秀瑶族自治县', '广西壮族自治区来宾市金秀瑶族自治县', 3, '4513');
INSERT INTO `info_area` VALUES (2364, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451381', '合山市', '广西壮族自治区来宾市合山市', 3, '4513');
INSERT INTO `info_area` VALUES (2365, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '4514', '崇左市', '广西壮族自治区崇左市', 2, '45');
INSERT INTO `info_area` VALUES (2366, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451402', '江州区', '广西壮族自治区崇左市江州区', 3, '4514');
INSERT INTO `info_area` VALUES (2367, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451421', '扶绥县', '广西壮族自治区崇左市扶绥县', 3, '4514');
INSERT INTO `info_area` VALUES (2368, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451422', '宁明县', '广西壮族自治区崇左市宁明县', 3, '4514');
INSERT INTO `info_area` VALUES (2369, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451423', '龙州县', '广西壮族自治区崇左市龙州县', 3, '4514');
INSERT INTO `info_area` VALUES (2370, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451424', '大新县', '广西壮族自治区崇左市大新县', 3, '4514');
INSERT INTO `info_area` VALUES (2371, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451425', '天等县', '广西壮族自治区崇左市天等县', 3, '4514');
INSERT INTO `info_area` VALUES (2372, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '451481', '凭祥市', '广西壮族自治区崇左市凭祥市', 3, '4514');
INSERT INTO `info_area` VALUES (2373, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '46', '海南省', '海南省', 1, '');
INSERT INTO `info_area` VALUES (2374, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '4601', '海口市', '海南省海口市', 2, '46');
INSERT INTO `info_area` VALUES (2375, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460105', '秀英区', '海南省海口市秀英区', 3, '4601');
INSERT INTO `info_area` VALUES (2376, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460106', '龙华区', '海南省海口市龙华区', 3, '4601');
INSERT INTO `info_area` VALUES (2377, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460107', '琼山区', '海南省海口市琼山区', 3, '4601');
INSERT INTO `info_area` VALUES (2378, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460108', '美兰区', '海南省海口市美兰区', 3, '4601');
INSERT INTO `info_area` VALUES (2379, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '4602', '三亚市', '海南省三亚市', 2, '46');
INSERT INTO `info_area` VALUES (2380, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460202', '海棠区', '海南省三亚市海棠区', 3, '4602');
INSERT INTO `info_area` VALUES (2381, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460203', '吉阳区', '海南省三亚市吉阳区', 3, '4602');
INSERT INTO `info_area` VALUES (2382, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460204', '天涯区', '海南省三亚市天涯区', 3, '4602');
INSERT INTO `info_area` VALUES (2383, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460205', '崖州区', '海南省三亚市崖州区', 3, '4602');
INSERT INTO `info_area` VALUES (2384, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '4603', '三沙市', '海南省三沙市', 2, '46');
INSERT INTO `info_area` VALUES (2385, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460321', '西沙群岛', '海南省三沙市西沙群岛', 3, '4603');
INSERT INTO `info_area` VALUES (2386, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460322', '南沙群岛', '海南省三沙市南沙群岛', 3, '4603');
INSERT INTO `info_area` VALUES (2387, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460323', '中沙群岛的岛礁及其海域', '海南省三沙市中沙群岛的岛礁及其海域', 3, '4603');
INSERT INTO `info_area` VALUES (2388, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '4604', '儋州市', '海南省儋州市', 2, '46');
INSERT INTO `info_area` VALUES (2389, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400100', '那大镇', '海南省儋州市那大镇', 3, '4604');
INSERT INTO `info_area` VALUES (2390, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400101', '和庆镇', '海南省儋州市和庆镇', 3, '4604');
INSERT INTO `info_area` VALUES (2391, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400102', '南丰镇', '海南省儋州市南丰镇', 3, '4604');
INSERT INTO `info_area` VALUES (2392, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400103', '大成镇', '海南省儋州市大成镇', 3, '4604');
INSERT INTO `info_area` VALUES (2393, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400104', '雅星镇', '海南省儋州市雅星镇', 3, '4604');
INSERT INTO `info_area` VALUES (2394, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400105', '兰洋镇', '海南省儋州市兰洋镇', 3, '4604');
INSERT INTO `info_area` VALUES (2395, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400106', '光村镇', '海南省儋州市光村镇', 3, '4604');
INSERT INTO `info_area` VALUES (2396, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400107', '木棠镇', '海南省儋州市木棠镇', 3, '4604');
INSERT INTO `info_area` VALUES (2397, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400108', '海头镇', '海南省儋州市海头镇', 3, '4604');
INSERT INTO `info_area` VALUES (2398, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400109', '峨蔓镇', '海南省儋州市峨蔓镇', 3, '4604');
INSERT INTO `info_area` VALUES (2399, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400111', '王五镇', '海南省儋州市王五镇', 3, '4604');
INSERT INTO `info_area` VALUES (2400, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400112', '白马井镇', '海南省儋州市白马井镇', 3, '4604');
INSERT INTO `info_area` VALUES (2401, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400113', '中和镇', '海南省儋州市中和镇', 3, '4604');
INSERT INTO `info_area` VALUES (2402, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400114', '排浦镇', '海南省儋州市排浦镇', 3, '4604');
INSERT INTO `info_area` VALUES (2403, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400115', '东成镇', '海南省儋州市东成镇', 3, '4604');
INSERT INTO `info_area` VALUES (2404, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400116', '新州镇', '海南省儋州市新州镇', 3, '4604');
INSERT INTO `info_area` VALUES (2405, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400499', '洋浦经济开发区', '海南省儋州市洋浦经济开发区', 3, '4604');
INSERT INTO `info_area` VALUES (2406, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '460400500', '华南热作学院', '海南省儋州市华南热作学院', 3, '4604');
INSERT INTO `info_area` VALUES (2407, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '4690', '省直辖县级行政区划', '海南省省直辖县级行政区划', 2, '46');
INSERT INTO `info_area` VALUES (2408, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '469001', '五指山市', '海南省省直辖县级行政区划五指山市', 3, '4690');
INSERT INTO `info_area` VALUES (2409, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '469002', '琼海市', '海南省省直辖县级行政区划琼海市', 3, '4690');
INSERT INTO `info_area` VALUES (2410, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '469005', '文昌市', '海南省省直辖县级行政区划文昌市', 3, '4690');
INSERT INTO `info_area` VALUES (2411, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '469006', '万宁市', '海南省省直辖县级行政区划万宁市', 3, '4690');
INSERT INTO `info_area` VALUES (2412, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '469007', '东方市', '海南省省直辖县级行政区划东方市', 3, '4690');
INSERT INTO `info_area` VALUES (2413, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '469021', '定安县', '海南省省直辖县级行政区划定安县', 3, '4690');
INSERT INTO `info_area` VALUES (2414, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '469022', '屯昌县', '海南省省直辖县级行政区划屯昌县', 3, '4690');
INSERT INTO `info_area` VALUES (2415, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '469023', '澄迈县', '海南省省直辖县级行政区划澄迈县', 3, '4690');
INSERT INTO `info_area` VALUES (2416, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '469024', '临高县', '海南省省直辖县级行政区划临高县', 3, '4690');
INSERT INTO `info_area` VALUES (2417, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '469025', '白沙黎族自治县', '海南省省直辖县级行政区划白沙黎族自治县', 3, '4690');
INSERT INTO `info_area` VALUES (2418, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '469026', '昌江黎族自治县', '海南省省直辖县级行政区划昌江黎族自治县', 3, '4690');
INSERT INTO `info_area` VALUES (2419, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '469027', '乐东黎族自治县', '海南省省直辖县级行政区划乐东黎族自治县', 3, '4690');
INSERT INTO `info_area` VALUES (2420, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '469028', '陵水黎族自治县', '海南省省直辖县级行政区划陵水黎族自治县', 3, '4690');
INSERT INTO `info_area` VALUES (2421, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '469029', '保亭黎族苗族自治县', '海南省省直辖县级行政区划保亭黎族苗族自治县', 3, '4690');
INSERT INTO `info_area` VALUES (2422, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '469030', '琼中黎族苗族自治县', '海南省省直辖县级行政区划琼中黎族苗族自治县', 3, '4690');
INSERT INTO `info_area` VALUES (2423, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '50', '重庆市', '重庆市', 1, '');
INSERT INTO `info_area` VALUES (2424, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5001', '市辖区', '重庆市市辖区', 2, '50');
INSERT INTO `info_area` VALUES (2425, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500101', '万州区', '重庆市市辖区万州区', 3, '5001');
INSERT INTO `info_area` VALUES (2426, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500102', '涪陵区', '重庆市市辖区涪陵区', 3, '5001');
INSERT INTO `info_area` VALUES (2427, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500103', '渝中区', '重庆市市辖区渝中区', 3, '5001');
INSERT INTO `info_area` VALUES (2428, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500104', '大渡口区', '重庆市市辖区大渡口区', 3, '5001');
INSERT INTO `info_area` VALUES (2429, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500105', '江北区', '重庆市市辖区江北区', 3, '5001');
INSERT INTO `info_area` VALUES (2430, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500106', '沙坪坝区', '重庆市市辖区沙坪坝区', 3, '5001');
INSERT INTO `info_area` VALUES (2431, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500107', '九龙坡区', '重庆市市辖区九龙坡区', 3, '5001');
INSERT INTO `info_area` VALUES (2432, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500108', '南岸区', '重庆市市辖区南岸区', 3, '5001');
INSERT INTO `info_area` VALUES (2433, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500109', '北碚区', '重庆市市辖区北碚区', 3, '5001');
INSERT INTO `info_area` VALUES (2434, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500110', '綦江区', '重庆市市辖区綦江区', 3, '5001');
INSERT INTO `info_area` VALUES (2435, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500111', '大足区', '重庆市市辖区大足区', 3, '5001');
INSERT INTO `info_area` VALUES (2436, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500112', '渝北区', '重庆市市辖区渝北区', 3, '5001');
INSERT INTO `info_area` VALUES (2437, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500113', '巴南区', '重庆市市辖区巴南区', 3, '5001');
INSERT INTO `info_area` VALUES (2438, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500114', '黔江区', '重庆市市辖区黔江区', 3, '5001');
INSERT INTO `info_area` VALUES (2439, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500115', '长寿区', '重庆市市辖区长寿区', 3, '5001');
INSERT INTO `info_area` VALUES (2440, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500116', '江津区', '重庆市市辖区江津区', 3, '5001');
INSERT INTO `info_area` VALUES (2441, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500117', '合川区', '重庆市市辖区合川区', 3, '5001');
INSERT INTO `info_area` VALUES (2442, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500118', '永川区', '重庆市市辖区永川区', 3, '5001');
INSERT INTO `info_area` VALUES (2443, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500119', '南川区', '重庆市市辖区南川区', 3, '5001');
INSERT INTO `info_area` VALUES (2444, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500120', '璧山区', '重庆市市辖区璧山区', 3, '5001');
INSERT INTO `info_area` VALUES (2445, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500151', '铜梁区', '重庆市市辖区铜梁区', 3, '5001');
INSERT INTO `info_area` VALUES (2446, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500152', '潼南区', '重庆市市辖区潼南区', 3, '5001');
INSERT INTO `info_area` VALUES (2447, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500153', '荣昌区', '重庆市市辖区荣昌区', 3, '5001');
INSERT INTO `info_area` VALUES (2448, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500154', '开州区', '重庆市市辖区开州区', 3, '5001');
INSERT INTO `info_area` VALUES (2449, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500155', '梁平区', '重庆市市辖区梁平区', 3, '5001');
INSERT INTO `info_area` VALUES (2450, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500156', '武隆区', '重庆市市辖区武隆区', 3, '5001');
INSERT INTO `info_area` VALUES (2451, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5002', '县', '重庆市县', 2, '50');
INSERT INTO `info_area` VALUES (2452, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500229', '城口县', '重庆市县城口县', 3, '5002');
INSERT INTO `info_area` VALUES (2453, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500230', '丰都县', '重庆市县丰都县', 3, '5002');
INSERT INTO `info_area` VALUES (2454, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500231', '垫江县', '重庆市县垫江县', 3, '5002');
INSERT INTO `info_area` VALUES (2455, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500233', '忠县', '重庆市县忠县', 3, '5002');
INSERT INTO `info_area` VALUES (2456, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500235', '云阳县', '重庆市县云阳县', 3, '5002');
INSERT INTO `info_area` VALUES (2457, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500236', '奉节县', '重庆市县奉节县', 3, '5002');
INSERT INTO `info_area` VALUES (2458, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500237', '巫山县', '重庆市县巫山县', 3, '5002');
INSERT INTO `info_area` VALUES (2459, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500238', '巫溪县', '重庆市县巫溪县', 3, '5002');
INSERT INTO `info_area` VALUES (2460, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500240', '石柱土家族自治县', '重庆市县石柱土家族自治县', 3, '5002');
INSERT INTO `info_area` VALUES (2461, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500241', '秀山土家族苗族自治县', '重庆市县秀山土家族苗族自治县', 3, '5002');
INSERT INTO `info_area` VALUES (2462, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500242', '酉阳土家族苗族自治县', '重庆市县酉阳土家族苗族自治县', 3, '5002');
INSERT INTO `info_area` VALUES (2463, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '500243', '彭水苗族土家族自治县', '重庆市县彭水苗族土家族自治县', 3, '5002');
INSERT INTO `info_area` VALUES (2464, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '51', '四川省', '四川省', 1, '');
INSERT INTO `info_area` VALUES (2465, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5101', '成都市', '四川省成都市', 2, '51');
INSERT INTO `info_area` VALUES (2466, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510104', '锦江区', '四川省成都市锦江区', 3, '5101');
INSERT INTO `info_area` VALUES (2467, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510105', '青羊区', '四川省成都市青羊区', 3, '5101');
INSERT INTO `info_area` VALUES (2468, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510106', '金牛区', '四川省成都市金牛区', 3, '5101');
INSERT INTO `info_area` VALUES (2469, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510107', '武侯区', '四川省成都市武侯区', 3, '5101');
INSERT INTO `info_area` VALUES (2470, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510108', '成华区', '四川省成都市成华区', 3, '5101');
INSERT INTO `info_area` VALUES (2471, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510112', '龙泉驿区', '四川省成都市龙泉驿区', 3, '5101');
INSERT INTO `info_area` VALUES (2472, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510113', '青白江区', '四川省成都市青白江区', 3, '5101');
INSERT INTO `info_area` VALUES (2473, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510114', '新都区', '四川省成都市新都区', 3, '5101');
INSERT INTO `info_area` VALUES (2474, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510115', '温江区', '四川省成都市温江区', 3, '5101');
INSERT INTO `info_area` VALUES (2475, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510116', '双流区', '四川省成都市双流区', 3, '5101');
INSERT INTO `info_area` VALUES (2476, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510117', '郫都区', '四川省成都市郫都区', 3, '5101');
INSERT INTO `info_area` VALUES (2477, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510118', '新津区', '四川省成都市新津区', 3, '5101');
INSERT INTO `info_area` VALUES (2478, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510121', '金堂县', '四川省成都市金堂县', 3, '5101');
INSERT INTO `info_area` VALUES (2479, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510129', '大邑县', '四川省成都市大邑县', 3, '5101');
INSERT INTO `info_area` VALUES (2480, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510131', '蒲江县', '四川省成都市蒲江县', 3, '5101');
INSERT INTO `info_area` VALUES (2481, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510181', '都江堰市', '四川省成都市都江堰市', 3, '5101');
INSERT INTO `info_area` VALUES (2482, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510182', '彭州市', '四川省成都市彭州市', 3, '5101');
INSERT INTO `info_area` VALUES (2483, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510183', '邛崃市', '四川省成都市邛崃市', 3, '5101');
INSERT INTO `info_area` VALUES (2484, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510184', '崇州市', '四川省成都市崇州市', 3, '5101');
INSERT INTO `info_area` VALUES (2485, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510185', '简阳市', '四川省成都市简阳市', 3, '5101');
INSERT INTO `info_area` VALUES (2486, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5103', '自贡市', '四川省自贡市', 2, '51');
INSERT INTO `info_area` VALUES (2487, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510302', '自流井区', '四川省自贡市自流井区', 3, '5103');
INSERT INTO `info_area` VALUES (2488, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510303', '贡井区', '四川省自贡市贡井区', 3, '5103');
INSERT INTO `info_area` VALUES (2489, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510304', '大安区', '四川省自贡市大安区', 3, '5103');
INSERT INTO `info_area` VALUES (2490, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510311', '沿滩区', '四川省自贡市沿滩区', 3, '5103');
INSERT INTO `info_area` VALUES (2491, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510321', '荣县', '四川省自贡市荣县', 3, '5103');
INSERT INTO `info_area` VALUES (2492, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510322', '富顺县', '四川省自贡市富顺县', 3, '5103');
INSERT INTO `info_area` VALUES (2493, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5104', '攀枝花市', '四川省攀枝花市', 2, '51');
INSERT INTO `info_area` VALUES (2494, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510402', '东区', '四川省攀枝花市东区', 3, '5104');
INSERT INTO `info_area` VALUES (2495, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510403', '西区', '四川省攀枝花市西区', 3, '5104');
INSERT INTO `info_area` VALUES (2496, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510411', '仁和区', '四川省攀枝花市仁和区', 3, '5104');
INSERT INTO `info_area` VALUES (2497, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510421', '米易县', '四川省攀枝花市米易县', 3, '5104');
INSERT INTO `info_area` VALUES (2498, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510422', '盐边县', '四川省攀枝花市盐边县', 3, '5104');
INSERT INTO `info_area` VALUES (2499, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5105', '泸州市', '四川省泸州市', 2, '51');
INSERT INTO `info_area` VALUES (2500, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510502', '江阳区', '四川省泸州市江阳区', 3, '5105');
INSERT INTO `info_area` VALUES (2501, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510503', '纳溪区', '四川省泸州市纳溪区', 3, '5105');
INSERT INTO `info_area` VALUES (2502, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510504', '龙马潭区', '四川省泸州市龙马潭区', 3, '5105');
INSERT INTO `info_area` VALUES (2503, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510521', '泸县', '四川省泸州市泸县', 3, '5105');
INSERT INTO `info_area` VALUES (2504, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510522', '合江县', '四川省泸州市合江县', 3, '5105');
INSERT INTO `info_area` VALUES (2505, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510524', '叙永县', '四川省泸州市叙永县', 3, '5105');
INSERT INTO `info_area` VALUES (2506, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510525', '古蔺县', '四川省泸州市古蔺县', 3, '5105');
INSERT INTO `info_area` VALUES (2507, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5106', '德阳市', '四川省德阳市', 2, '51');
INSERT INTO `info_area` VALUES (2508, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510603', '旌阳区', '四川省德阳市旌阳区', 3, '5106');
INSERT INTO `info_area` VALUES (2509, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510604', '罗江区', '四川省德阳市罗江区', 3, '5106');
INSERT INTO `info_area` VALUES (2510, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510623', '中江县', '四川省德阳市中江县', 3, '5106');
INSERT INTO `info_area` VALUES (2511, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510681', '广汉市', '四川省德阳市广汉市', 3, '5106');
INSERT INTO `info_area` VALUES (2512, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510682', '什邡市', '四川省德阳市什邡市', 3, '5106');
INSERT INTO `info_area` VALUES (2513, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510683', '绵竹市', '四川省德阳市绵竹市', 3, '5106');
INSERT INTO `info_area` VALUES (2514, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5107', '绵阳市', '四川省绵阳市', 2, '51');
INSERT INTO `info_area` VALUES (2515, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510703', '涪城区', '四川省绵阳市涪城区', 3, '5107');
INSERT INTO `info_area` VALUES (2516, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510704', '游仙区', '四川省绵阳市游仙区', 3, '5107');
INSERT INTO `info_area` VALUES (2517, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510705', '安州区', '四川省绵阳市安州区', 3, '5107');
INSERT INTO `info_area` VALUES (2518, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510722', '三台县', '四川省绵阳市三台县', 3, '5107');
INSERT INTO `info_area` VALUES (2519, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510723', '盐亭县', '四川省绵阳市盐亭县', 3, '5107');
INSERT INTO `info_area` VALUES (2520, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510725', '梓潼县', '四川省绵阳市梓潼县', 3, '5107');
INSERT INTO `info_area` VALUES (2521, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510726', '北川羌族自治县', '四川省绵阳市北川羌族自治县', 3, '5107');
INSERT INTO `info_area` VALUES (2522, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510727', '平武县', '四川省绵阳市平武县', 3, '5107');
INSERT INTO `info_area` VALUES (2523, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510781', '江油市', '四川省绵阳市江油市', 3, '5107');
INSERT INTO `info_area` VALUES (2524, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5108', '广元市', '四川省广元市', 2, '51');
INSERT INTO `info_area` VALUES (2525, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510802', '利州区', '四川省广元市利州区', 3, '5108');
INSERT INTO `info_area` VALUES (2526, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510811', '昭化区', '四川省广元市昭化区', 3, '5108');
INSERT INTO `info_area` VALUES (2527, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510812', '朝天区', '四川省广元市朝天区', 3, '5108');
INSERT INTO `info_area` VALUES (2528, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510821', '旺苍县', '四川省广元市旺苍县', 3, '5108');
INSERT INTO `info_area` VALUES (2529, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510822', '青川县', '四川省广元市青川县', 3, '5108');
INSERT INTO `info_area` VALUES (2530, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510823', '剑阁县', '四川省广元市剑阁县', 3, '5108');
INSERT INTO `info_area` VALUES (2531, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510824', '苍溪县', '四川省广元市苍溪县', 3, '5108');
INSERT INTO `info_area` VALUES (2532, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5109', '遂宁市', '四川省遂宁市', 2, '51');
INSERT INTO `info_area` VALUES (2533, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510903', '船山区', '四川省遂宁市船山区', 3, '5109');
INSERT INTO `info_area` VALUES (2534, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510904', '安居区', '四川省遂宁市安居区', 3, '5109');
INSERT INTO `info_area` VALUES (2535, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510921', '蓬溪县', '四川省遂宁市蓬溪县', 3, '5109');
INSERT INTO `info_area` VALUES (2536, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510923', '大英县', '四川省遂宁市大英县', 3, '5109');
INSERT INTO `info_area` VALUES (2537, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '510981', '射洪市', '四川省遂宁市射洪市', 3, '5109');
INSERT INTO `info_area` VALUES (2538, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5110', '内江市', '四川省内江市', 2, '51');
INSERT INTO `info_area` VALUES (2539, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511002', '市中区', '四川省内江市市中区', 3, '5110');
INSERT INTO `info_area` VALUES (2540, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511011', '东兴区', '四川省内江市东兴区', 3, '5110');
INSERT INTO `info_area` VALUES (2541, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511024', '威远县', '四川省内江市威远县', 3, '5110');
INSERT INTO `info_area` VALUES (2542, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511025', '资中县', '四川省内江市资中县', 3, '5110');
INSERT INTO `info_area` VALUES (2543, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511083', '隆昌市', '四川省内江市隆昌市', 3, '5110');
INSERT INTO `info_area` VALUES (2544, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5111', '乐山市', '四川省乐山市', 2, '51');
INSERT INTO `info_area` VALUES (2545, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511102', '市中区', '四川省乐山市市中区', 3, '5111');
INSERT INTO `info_area` VALUES (2546, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511111', '沙湾区', '四川省乐山市沙湾区', 3, '5111');
INSERT INTO `info_area` VALUES (2547, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511112', '五通桥区', '四川省乐山市五通桥区', 3, '5111');
INSERT INTO `info_area` VALUES (2548, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511113', '金口河区', '四川省乐山市金口河区', 3, '5111');
INSERT INTO `info_area` VALUES (2549, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511123', '犍为县', '四川省乐山市犍为县', 3, '5111');
INSERT INTO `info_area` VALUES (2550, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511124', '井研县', '四川省乐山市井研县', 3, '5111');
INSERT INTO `info_area` VALUES (2551, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511126', '夹江县', '四川省乐山市夹江县', 3, '5111');
INSERT INTO `info_area` VALUES (2552, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511129', '沐川县', '四川省乐山市沐川县', 3, '5111');
INSERT INTO `info_area` VALUES (2553, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511132', '峨边彝族自治县', '四川省乐山市峨边彝族自治县', 3, '5111');
INSERT INTO `info_area` VALUES (2554, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511133', '马边彝族自治县', '四川省乐山市马边彝族自治县', 3, '5111');
INSERT INTO `info_area` VALUES (2555, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511181', '峨眉山市', '四川省乐山市峨眉山市', 3, '5111');
INSERT INTO `info_area` VALUES (2556, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5113', '南充市', '四川省南充市', 2, '51');
INSERT INTO `info_area` VALUES (2557, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511302', '顺庆区', '四川省南充市顺庆区', 3, '5113');
INSERT INTO `info_area` VALUES (2558, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511303', '高坪区', '四川省南充市高坪区', 3, '5113');
INSERT INTO `info_area` VALUES (2559, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511304', '嘉陵区', '四川省南充市嘉陵区', 3, '5113');
INSERT INTO `info_area` VALUES (2560, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511321', '南部县', '四川省南充市南部县', 3, '5113');
INSERT INTO `info_area` VALUES (2561, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511322', '营山县', '四川省南充市营山县', 3, '5113');
INSERT INTO `info_area` VALUES (2562, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511323', '蓬安县', '四川省南充市蓬安县', 3, '5113');
INSERT INTO `info_area` VALUES (2563, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511324', '仪陇县', '四川省南充市仪陇县', 3, '5113');
INSERT INTO `info_area` VALUES (2564, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511325', '西充县', '四川省南充市西充县', 3, '5113');
INSERT INTO `info_area` VALUES (2565, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511381', '阆中市', '四川省南充市阆中市', 3, '5113');
INSERT INTO `info_area` VALUES (2566, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5114', '眉山市', '四川省眉山市', 2, '51');
INSERT INTO `info_area` VALUES (2567, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511402', '东坡区', '四川省眉山市东坡区', 3, '5114');
INSERT INTO `info_area` VALUES (2568, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511403', '彭山区', '四川省眉山市彭山区', 3, '5114');
INSERT INTO `info_area` VALUES (2569, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511421', '仁寿县', '四川省眉山市仁寿县', 3, '5114');
INSERT INTO `info_area` VALUES (2570, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511423', '洪雅县', '四川省眉山市洪雅县', 3, '5114');
INSERT INTO `info_area` VALUES (2571, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511424', '丹棱县', '四川省眉山市丹棱县', 3, '5114');
INSERT INTO `info_area` VALUES (2572, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511425', '青神县', '四川省眉山市青神县', 3, '5114');
INSERT INTO `info_area` VALUES (2573, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5115', '宜宾市', '四川省宜宾市', 2, '51');
INSERT INTO `info_area` VALUES (2574, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511502', '翠屏区', '四川省宜宾市翠屏区', 3, '5115');
INSERT INTO `info_area` VALUES (2575, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511503', '南溪区', '四川省宜宾市南溪区', 3, '5115');
INSERT INTO `info_area` VALUES (2576, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511504', '叙州区', '四川省宜宾市叙州区', 3, '5115');
INSERT INTO `info_area` VALUES (2577, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511523', '江安县', '四川省宜宾市江安县', 3, '5115');
INSERT INTO `info_area` VALUES (2578, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511524', '长宁县', '四川省宜宾市长宁县', 3, '5115');
INSERT INTO `info_area` VALUES (2579, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511525', '高县', '四川省宜宾市高县', 3, '5115');
INSERT INTO `info_area` VALUES (2580, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511526', '珙县', '四川省宜宾市珙县', 3, '5115');
INSERT INTO `info_area` VALUES (2581, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511527', '筠连县', '四川省宜宾市筠连县', 3, '5115');
INSERT INTO `info_area` VALUES (2582, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511528', '兴文县', '四川省宜宾市兴文县', 3, '5115');
INSERT INTO `info_area` VALUES (2583, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511529', '屏山县', '四川省宜宾市屏山县', 3, '5115');
INSERT INTO `info_area` VALUES (2584, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5116', '广安市', '四川省广安市', 2, '51');
INSERT INTO `info_area` VALUES (2585, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511602', '广安区', '四川省广安市广安区', 3, '5116');
INSERT INTO `info_area` VALUES (2586, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511603', '前锋区', '四川省广安市前锋区', 3, '5116');
INSERT INTO `info_area` VALUES (2587, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511621', '岳池县', '四川省广安市岳池县', 3, '5116');
INSERT INTO `info_area` VALUES (2588, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511622', '武胜县', '四川省广安市武胜县', 3, '5116');
INSERT INTO `info_area` VALUES (2589, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511623', '邻水县', '四川省广安市邻水县', 3, '5116');
INSERT INTO `info_area` VALUES (2590, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511681', '华蓥市', '四川省广安市华蓥市', 3, '5116');
INSERT INTO `info_area` VALUES (2591, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5117', '达州市', '四川省达州市', 2, '51');
INSERT INTO `info_area` VALUES (2592, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511702', '通川区', '四川省达州市通川区', 3, '5117');
INSERT INTO `info_area` VALUES (2593, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511703', '达川区', '四川省达州市达川区', 3, '5117');
INSERT INTO `info_area` VALUES (2594, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511722', '宣汉县', '四川省达州市宣汉县', 3, '5117');
INSERT INTO `info_area` VALUES (2595, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511723', '开江县', '四川省达州市开江县', 3, '5117');
INSERT INTO `info_area` VALUES (2596, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511724', '大竹县', '四川省达州市大竹县', 3, '5117');
INSERT INTO `info_area` VALUES (2597, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511725', '渠县', '四川省达州市渠县', 3, '5117');
INSERT INTO `info_area` VALUES (2598, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511781', '万源市', '四川省达州市万源市', 3, '5117');
INSERT INTO `info_area` VALUES (2599, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5118', '雅安市', '四川省雅安市', 2, '51');
INSERT INTO `info_area` VALUES (2600, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511802', '雨城区', '四川省雅安市雨城区', 3, '5118');
INSERT INTO `info_area` VALUES (2601, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511803', '名山区', '四川省雅安市名山区', 3, '5118');
INSERT INTO `info_area` VALUES (2602, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511822', '荥经县', '四川省雅安市荥经县', 3, '5118');
INSERT INTO `info_area` VALUES (2603, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511823', '汉源县', '四川省雅安市汉源县', 3, '5118');
INSERT INTO `info_area` VALUES (2604, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511824', '石棉县', '四川省雅安市石棉县', 3, '5118');
INSERT INTO `info_area` VALUES (2605, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511825', '天全县', '四川省雅安市天全县', 3, '5118');
INSERT INTO `info_area` VALUES (2606, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511826', '芦山县', '四川省雅安市芦山县', 3, '5118');
INSERT INTO `info_area` VALUES (2607, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511827', '宝兴县', '四川省雅安市宝兴县', 3, '5118');
INSERT INTO `info_area` VALUES (2608, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5119', '巴中市', '四川省巴中市', 2, '51');
INSERT INTO `info_area` VALUES (2609, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511902', '巴州区', '四川省巴中市巴州区', 3, '5119');
INSERT INTO `info_area` VALUES (2610, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511903', '恩阳区', '四川省巴中市恩阳区', 3, '5119');
INSERT INTO `info_area` VALUES (2611, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511921', '通江县', '四川省巴中市通江县', 3, '5119');
INSERT INTO `info_area` VALUES (2612, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511922', '南江县', '四川省巴中市南江县', 3, '5119');
INSERT INTO `info_area` VALUES (2613, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '511923', '平昌县', '四川省巴中市平昌县', 3, '5119');
INSERT INTO `info_area` VALUES (2614, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5120', '资阳市', '四川省资阳市', 2, '51');
INSERT INTO `info_area` VALUES (2615, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '512002', '雁江区', '四川省资阳市雁江区', 3, '5120');
INSERT INTO `info_area` VALUES (2616, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '512021', '安岳县', '四川省资阳市安岳县', 3, '5120');
INSERT INTO `info_area` VALUES (2617, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '512022', '乐至县', '四川省资阳市乐至县', 3, '5120');
INSERT INTO `info_area` VALUES (2618, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5132', '阿坝藏族羌族自治州', '四川省阿坝藏族羌族自治州', 2, '51');
INSERT INTO `info_area` VALUES (2619, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513201', '马尔康市', '四川省阿坝藏族羌族自治州马尔康市', 3, '5132');
INSERT INTO `info_area` VALUES (2620, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513221', '汶川县', '四川省阿坝藏族羌族自治州汶川县', 3, '5132');
INSERT INTO `info_area` VALUES (2621, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513222', '理县', '四川省阿坝藏族羌族自治州理县', 3, '5132');
INSERT INTO `info_area` VALUES (2622, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513223', '茂县', '四川省阿坝藏族羌族自治州茂县', 3, '5132');
INSERT INTO `info_area` VALUES (2623, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513224', '松潘县', '四川省阿坝藏族羌族自治州松潘县', 3, '5132');
INSERT INTO `info_area` VALUES (2624, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513225', '九寨沟县', '四川省阿坝藏族羌族自治州九寨沟县', 3, '5132');
INSERT INTO `info_area` VALUES (2625, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513226', '金川县', '四川省阿坝藏族羌族自治州金川县', 3, '5132');
INSERT INTO `info_area` VALUES (2626, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513227', '小金县', '四川省阿坝藏族羌族自治州小金县', 3, '5132');
INSERT INTO `info_area` VALUES (2627, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513228', '黑水县', '四川省阿坝藏族羌族自治州黑水县', 3, '5132');
INSERT INTO `info_area` VALUES (2628, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513230', '壤塘县', '四川省阿坝藏族羌族自治州壤塘县', 3, '5132');
INSERT INTO `info_area` VALUES (2629, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513231', '阿坝县', '四川省阿坝藏族羌族自治州阿坝县', 3, '5132');
INSERT INTO `info_area` VALUES (2630, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513232', '若尔盖县', '四川省阿坝藏族羌族自治州若尔盖县', 3, '5132');
INSERT INTO `info_area` VALUES (2631, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513233', '红原县', '四川省阿坝藏族羌族自治州红原县', 3, '5132');
INSERT INTO `info_area` VALUES (2632, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5133', '甘孜藏族自治州', '四川省甘孜藏族自治州', 2, '51');
INSERT INTO `info_area` VALUES (2633, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513301', '康定市', '四川省甘孜藏族自治州康定市', 3, '5133');
INSERT INTO `info_area` VALUES (2634, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513322', '泸定县', '四川省甘孜藏族自治州泸定县', 3, '5133');
INSERT INTO `info_area` VALUES (2635, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513323', '丹巴县', '四川省甘孜藏族自治州丹巴县', 3, '5133');
INSERT INTO `info_area` VALUES (2636, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513324', '九龙县', '四川省甘孜藏族自治州九龙县', 3, '5133');
INSERT INTO `info_area` VALUES (2637, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513325', '雅江县', '四川省甘孜藏族自治州雅江县', 3, '5133');
INSERT INTO `info_area` VALUES (2638, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513326', '道孚县', '四川省甘孜藏族自治州道孚县', 3, '5133');
INSERT INTO `info_area` VALUES (2639, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513327', '炉霍县', '四川省甘孜藏族自治州炉霍县', 3, '5133');
INSERT INTO `info_area` VALUES (2640, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513328', '甘孜县', '四川省甘孜藏族自治州甘孜县', 3, '5133');
INSERT INTO `info_area` VALUES (2641, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513329', '新龙县', '四川省甘孜藏族自治州新龙县', 3, '5133');
INSERT INTO `info_area` VALUES (2642, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513330', '德格县', '四川省甘孜藏族自治州德格县', 3, '5133');
INSERT INTO `info_area` VALUES (2643, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513331', '白玉县', '四川省甘孜藏族自治州白玉县', 3, '5133');
INSERT INTO `info_area` VALUES (2644, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513332', '石渠县', '四川省甘孜藏族自治州石渠县', 3, '5133');
INSERT INTO `info_area` VALUES (2645, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513333', '色达县', '四川省甘孜藏族自治州色达县', 3, '5133');
INSERT INTO `info_area` VALUES (2646, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513334', '理塘县', '四川省甘孜藏族自治州理塘县', 3, '5133');
INSERT INTO `info_area` VALUES (2647, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513335', '巴塘县', '四川省甘孜藏族自治州巴塘县', 3, '5133');
INSERT INTO `info_area` VALUES (2648, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513336', '乡城县', '四川省甘孜藏族自治州乡城县', 3, '5133');
INSERT INTO `info_area` VALUES (2649, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513337', '稻城县', '四川省甘孜藏族自治州稻城县', 3, '5133');
INSERT INTO `info_area` VALUES (2650, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513338', '得荣县', '四川省甘孜藏族自治州得荣县', 3, '5133');
INSERT INTO `info_area` VALUES (2651, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5134', '凉山彝族自治州', '四川省凉山彝族自治州', 2, '51');
INSERT INTO `info_area` VALUES (2652, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513401', '西昌市', '四川省凉山彝族自治州西昌市', 3, '5134');
INSERT INTO `info_area` VALUES (2653, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513402', '会理市', '四川省凉山彝族自治州会理市', 3, '5134');
INSERT INTO `info_area` VALUES (2654, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513422', '木里藏族自治县', '四川省凉山彝族自治州木里藏族自治县', 3, '5134');
INSERT INTO `info_area` VALUES (2655, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513423', '盐源县', '四川省凉山彝族自治州盐源县', 3, '5134');
INSERT INTO `info_area` VALUES (2656, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513424', '德昌县', '四川省凉山彝族自治州德昌县', 3, '5134');
INSERT INTO `info_area` VALUES (2657, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513426', '会东县', '四川省凉山彝族自治州会东县', 3, '5134');
INSERT INTO `info_area` VALUES (2658, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513427', '宁南县', '四川省凉山彝族自治州宁南县', 3, '5134');
INSERT INTO `info_area` VALUES (2659, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513428', '普格县', '四川省凉山彝族自治州普格县', 3, '5134');
INSERT INTO `info_area` VALUES (2660, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513429', '布拖县', '四川省凉山彝族自治州布拖县', 3, '5134');
INSERT INTO `info_area` VALUES (2661, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513430', '金阳县', '四川省凉山彝族自治州金阳县', 3, '5134');
INSERT INTO `info_area` VALUES (2662, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513431', '昭觉县', '四川省凉山彝族自治州昭觉县', 3, '5134');
INSERT INTO `info_area` VALUES (2663, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513432', '喜德县', '四川省凉山彝族自治州喜德县', 3, '5134');
INSERT INTO `info_area` VALUES (2664, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513433', '冕宁县', '四川省凉山彝族自治州冕宁县', 3, '5134');
INSERT INTO `info_area` VALUES (2665, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513434', '越西县', '四川省凉山彝族自治州越西县', 3, '5134');
INSERT INTO `info_area` VALUES (2666, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513435', '甘洛县', '四川省凉山彝族自治州甘洛县', 3, '5134');
INSERT INTO `info_area` VALUES (2667, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513436', '美姑县', '四川省凉山彝族自治州美姑县', 3, '5134');
INSERT INTO `info_area` VALUES (2668, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '513437', '雷波县', '四川省凉山彝族自治州雷波县', 3, '5134');
INSERT INTO `info_area` VALUES (2669, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '52', '贵州省', '贵州省', 1, '');
INSERT INTO `info_area` VALUES (2670, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5201', '贵阳市', '贵州省贵阳市', 2, '52');
INSERT INTO `info_area` VALUES (2671, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520102', '南明区', '贵州省贵阳市南明区', 3, '5201');
INSERT INTO `info_area` VALUES (2672, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520103', '云岩区', '贵州省贵阳市云岩区', 3, '5201');
INSERT INTO `info_area` VALUES (2673, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520111', '花溪区', '贵州省贵阳市花溪区', 3, '5201');
INSERT INTO `info_area` VALUES (2674, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520112', '乌当区', '贵州省贵阳市乌当区', 3, '5201');
INSERT INTO `info_area` VALUES (2675, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520113', '白云区', '贵州省贵阳市白云区', 3, '5201');
INSERT INTO `info_area` VALUES (2676, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520115', '观山湖区', '贵州省贵阳市观山湖区', 3, '5201');
INSERT INTO `info_area` VALUES (2677, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520121', '开阳县', '贵州省贵阳市开阳县', 3, '5201');
INSERT INTO `info_area` VALUES (2678, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520122', '息烽县', '贵州省贵阳市息烽县', 3, '5201');
INSERT INTO `info_area` VALUES (2679, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520123', '修文县', '贵州省贵阳市修文县', 3, '5201');
INSERT INTO `info_area` VALUES (2680, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520181', '清镇市', '贵州省贵阳市清镇市', 3, '5201');
INSERT INTO `info_area` VALUES (2681, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5202', '六盘水市', '贵州省六盘水市', 2, '52');
INSERT INTO `info_area` VALUES (2682, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520201', '钟山区', '贵州省六盘水市钟山区', 3, '5202');
INSERT INTO `info_area` VALUES (2683, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520203', '六枝特区', '贵州省六盘水市六枝特区', 3, '5202');
INSERT INTO `info_area` VALUES (2684, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520204', '水城区', '贵州省六盘水市水城区', 3, '5202');
INSERT INTO `info_area` VALUES (2685, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520281', '盘州市', '贵州省六盘水市盘州市', 3, '5202');
INSERT INTO `info_area` VALUES (2686, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5203', '遵义市', '贵州省遵义市', 2, '52');
INSERT INTO `info_area` VALUES (2687, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520302', '红花岗区', '贵州省遵义市红花岗区', 3, '5203');
INSERT INTO `info_area` VALUES (2688, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520303', '汇川区', '贵州省遵义市汇川区', 3, '5203');
INSERT INTO `info_area` VALUES (2689, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520304', '播州区', '贵州省遵义市播州区', 3, '5203');
INSERT INTO `info_area` VALUES (2690, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520322', '桐梓县', '贵州省遵义市桐梓县', 3, '5203');
INSERT INTO `info_area` VALUES (2691, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520323', '绥阳县', '贵州省遵义市绥阳县', 3, '5203');
INSERT INTO `info_area` VALUES (2692, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520324', '正安县', '贵州省遵义市正安县', 3, '5203');
INSERT INTO `info_area` VALUES (2693, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520325', '道真仡佬族苗族自治县', '贵州省遵义市道真仡佬族苗族自治县', 3, '5203');
INSERT INTO `info_area` VALUES (2694, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520326', '务川仡佬族苗族自治县', '贵州省遵义市务川仡佬族苗族自治县', 3, '5203');
INSERT INTO `info_area` VALUES (2695, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520327', '凤冈县', '贵州省遵义市凤冈县', 3, '5203');
INSERT INTO `info_area` VALUES (2696, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520328', '湄潭县', '贵州省遵义市湄潭县', 3, '5203');
INSERT INTO `info_area` VALUES (2697, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520329', '余庆县', '贵州省遵义市余庆县', 3, '5203');
INSERT INTO `info_area` VALUES (2698, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520330', '习水县', '贵州省遵义市习水县', 3, '5203');
INSERT INTO `info_area` VALUES (2699, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520381', '赤水市', '贵州省遵义市赤水市', 3, '5203');
INSERT INTO `info_area` VALUES (2700, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520382', '仁怀市', '贵州省遵义市仁怀市', 3, '5203');
INSERT INTO `info_area` VALUES (2701, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5204', '安顺市', '贵州省安顺市', 2, '52');
INSERT INTO `info_area` VALUES (2702, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520402', '西秀区', '贵州省安顺市西秀区', 3, '5204');
INSERT INTO `info_area` VALUES (2703, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520403', '平坝区', '贵州省安顺市平坝区', 3, '5204');
INSERT INTO `info_area` VALUES (2704, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520422', '普定县', '贵州省安顺市普定县', 3, '5204');
INSERT INTO `info_area` VALUES (2705, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520423', '镇宁布依族苗族自治县', '贵州省安顺市镇宁布依族苗族自治县', 3, '5204');
INSERT INTO `info_area` VALUES (2706, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520424', '关岭布依族苗族自治县', '贵州省安顺市关岭布依族苗族自治县', 3, '5204');
INSERT INTO `info_area` VALUES (2707, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520425', '紫云苗族布依族自治县', '贵州省安顺市紫云苗族布依族自治县', 3, '5204');
INSERT INTO `info_area` VALUES (2708, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5205', '毕节市', '贵州省毕节市', 2, '52');
INSERT INTO `info_area` VALUES (2709, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520502', '七星关区', '贵州省毕节市七星关区', 3, '5205');
INSERT INTO `info_area` VALUES (2710, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520521', '大方县', '贵州省毕节市大方县', 3, '5205');
INSERT INTO `info_area` VALUES (2711, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520523', '金沙县', '贵州省毕节市金沙县', 3, '5205');
INSERT INTO `info_area` VALUES (2712, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520524', '织金县', '贵州省毕节市织金县', 3, '5205');
INSERT INTO `info_area` VALUES (2713, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520525', '纳雍县', '贵州省毕节市纳雍县', 3, '5205');
INSERT INTO `info_area` VALUES (2714, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520526', '威宁彝族回族苗族自治县', '贵州省毕节市威宁彝族回族苗族自治县', 3, '5205');
INSERT INTO `info_area` VALUES (2715, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520527', '赫章县', '贵州省毕节市赫章县', 3, '5205');
INSERT INTO `info_area` VALUES (2716, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520581', '黔西市', '贵州省毕节市黔西市', 3, '5205');
INSERT INTO `info_area` VALUES (2717, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5206', '铜仁市', '贵州省铜仁市', 2, '52');
INSERT INTO `info_area` VALUES (2718, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520602', '碧江区', '贵州省铜仁市碧江区', 3, '5206');
INSERT INTO `info_area` VALUES (2719, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520603', '万山区', '贵州省铜仁市万山区', 3, '5206');
INSERT INTO `info_area` VALUES (2720, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520621', '江口县', '贵州省铜仁市江口县', 3, '5206');
INSERT INTO `info_area` VALUES (2721, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520622', '玉屏侗族自治县', '贵州省铜仁市玉屏侗族自治县', 3, '5206');
INSERT INTO `info_area` VALUES (2722, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520623', '石阡县', '贵州省铜仁市石阡县', 3, '5206');
INSERT INTO `info_area` VALUES (2723, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520624', '思南县', '贵州省铜仁市思南县', 3, '5206');
INSERT INTO `info_area` VALUES (2724, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520625', '印江土家族苗族自治县', '贵州省铜仁市印江土家族苗族自治县', 3, '5206');
INSERT INTO `info_area` VALUES (2725, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520626', '德江县', '贵州省铜仁市德江县', 3, '5206');
INSERT INTO `info_area` VALUES (2726, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520627', '沿河土家族自治县', '贵州省铜仁市沿河土家族自治县', 3, '5206');
INSERT INTO `info_area` VALUES (2727, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '520628', '松桃苗族自治县', '贵州省铜仁市松桃苗族自治县', 3, '5206');
INSERT INTO `info_area` VALUES (2728, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5223', '黔西南布依族苗族自治州', '贵州省黔西南布依族苗族自治州', 2, '52');
INSERT INTO `info_area` VALUES (2729, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522301', '兴义市', '贵州省黔西南布依族苗族自治州兴义市', 3, '5223');
INSERT INTO `info_area` VALUES (2730, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522302', '兴仁市', '贵州省黔西南布依族苗族自治州兴仁市', 3, '5223');
INSERT INTO `info_area` VALUES (2731, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522323', '普安县', '贵州省黔西南布依族苗族自治州普安县', 3, '5223');
INSERT INTO `info_area` VALUES (2732, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522324', '晴隆县', '贵州省黔西南布依族苗族自治州晴隆县', 3, '5223');
INSERT INTO `info_area` VALUES (2733, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522325', '贞丰县', '贵州省黔西南布依族苗族自治州贞丰县', 3, '5223');
INSERT INTO `info_area` VALUES (2734, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522326', '望谟县', '贵州省黔西南布依族苗族自治州望谟县', 3, '5223');
INSERT INTO `info_area` VALUES (2735, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522327', '册亨县', '贵州省黔西南布依族苗族自治州册亨县', 3, '5223');
INSERT INTO `info_area` VALUES (2736, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522328', '安龙县', '贵州省黔西南布依族苗族自治州安龙县', 3, '5223');
INSERT INTO `info_area` VALUES (2737, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5226', '黔东南苗族侗族自治州', '贵州省黔东南苗族侗族自治州', 2, '52');
INSERT INTO `info_area` VALUES (2738, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522601', '凯里市', '贵州省黔东南苗族侗族自治州凯里市', 3, '5226');
INSERT INTO `info_area` VALUES (2739, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522622', '黄平县', '贵州省黔东南苗族侗族自治州黄平县', 3, '5226');
INSERT INTO `info_area` VALUES (2740, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522623', '施秉县', '贵州省黔东南苗族侗族自治州施秉县', 3, '5226');
INSERT INTO `info_area` VALUES (2741, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522624', '三穗县', '贵州省黔东南苗族侗族自治州三穗县', 3, '5226');
INSERT INTO `info_area` VALUES (2742, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522625', '镇远县', '贵州省黔东南苗族侗族自治州镇远县', 3, '5226');
INSERT INTO `info_area` VALUES (2743, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522626', '岑巩县', '贵州省黔东南苗族侗族自治州岑巩县', 3, '5226');
INSERT INTO `info_area` VALUES (2744, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522627', '天柱县', '贵州省黔东南苗族侗族自治州天柱县', 3, '5226');
INSERT INTO `info_area` VALUES (2745, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522628', '锦屏县', '贵州省黔东南苗族侗族自治州锦屏县', 3, '5226');
INSERT INTO `info_area` VALUES (2746, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522629', '剑河县', '贵州省黔东南苗族侗族自治州剑河县', 3, '5226');
INSERT INTO `info_area` VALUES (2747, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522630', '台江县', '贵州省黔东南苗族侗族自治州台江县', 3, '5226');
INSERT INTO `info_area` VALUES (2748, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522631', '黎平县', '贵州省黔东南苗族侗族自治州黎平县', 3, '5226');
INSERT INTO `info_area` VALUES (2749, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522632', '榕江县', '贵州省黔东南苗族侗族自治州榕江县', 3, '5226');
INSERT INTO `info_area` VALUES (2750, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522633', '从江县', '贵州省黔东南苗族侗族自治州从江县', 3, '5226');
INSERT INTO `info_area` VALUES (2751, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522634', '雷山县', '贵州省黔东南苗族侗族自治州雷山县', 3, '5226');
INSERT INTO `info_area` VALUES (2752, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522635', '麻江县', '贵州省黔东南苗族侗族自治州麻江县', 3, '5226');
INSERT INTO `info_area` VALUES (2753, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522636', '丹寨县', '贵州省黔东南苗族侗族自治州丹寨县', 3, '5226');
INSERT INTO `info_area` VALUES (2754, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5227', '黔南布依族苗族自治州', '贵州省黔南布依族苗族自治州', 2, '52');
INSERT INTO `info_area` VALUES (2755, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522701', '都匀市', '贵州省黔南布依族苗族自治州都匀市', 3, '5227');
INSERT INTO `info_area` VALUES (2756, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522702', '福泉市', '贵州省黔南布依族苗族自治州福泉市', 3, '5227');
INSERT INTO `info_area` VALUES (2757, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522722', '荔波县', '贵州省黔南布依族苗族自治州荔波县', 3, '5227');
INSERT INTO `info_area` VALUES (2758, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522723', '贵定县', '贵州省黔南布依族苗族自治州贵定县', 3, '5227');
INSERT INTO `info_area` VALUES (2759, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522725', '瓮安县', '贵州省黔南布依族苗族自治州瓮安县', 3, '5227');
INSERT INTO `info_area` VALUES (2760, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522726', '独山县', '贵州省黔南布依族苗族自治州独山县', 3, '5227');
INSERT INTO `info_area` VALUES (2761, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522727', '平塘县', '贵州省黔南布依族苗族自治州平塘县', 3, '5227');
INSERT INTO `info_area` VALUES (2762, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522728', '罗甸县', '贵州省黔南布依族苗族自治州罗甸县', 3, '5227');
INSERT INTO `info_area` VALUES (2763, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522729', '长顺县', '贵州省黔南布依族苗族自治州长顺县', 3, '5227');
INSERT INTO `info_area` VALUES (2764, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522730', '龙里县', '贵州省黔南布依族苗族自治州龙里县', 3, '5227');
INSERT INTO `info_area` VALUES (2765, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522731', '惠水县', '贵州省黔南布依族苗族自治州惠水县', 3, '5227');
INSERT INTO `info_area` VALUES (2766, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '522732', '三都水族自治县', '贵州省黔南布依族苗族自治州三都水族自治县', 3, '5227');
INSERT INTO `info_area` VALUES (2767, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '53', '云南省', '云南省', 1, '');
INSERT INTO `info_area` VALUES (2768, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5301', '昆明市', '云南省昆明市', 2, '53');
INSERT INTO `info_area` VALUES (2769, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '530102', '五华区', '云南省昆明市五华区', 3, '5301');
INSERT INTO `info_area` VALUES (2770, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '530103', '盘龙区', '云南省昆明市盘龙区', 3, '5301');
INSERT INTO `info_area` VALUES (2771, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '530111', '官渡区', '云南省昆明市官渡区', 3, '5301');
INSERT INTO `info_area` VALUES (2772, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '530112', '西山区', '云南省昆明市西山区', 3, '5301');
INSERT INTO `info_area` VALUES (2773, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '530113', '东川区', '云南省昆明市东川区', 3, '5301');
INSERT INTO `info_area` VALUES (2774, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '530114', '呈贡区', '云南省昆明市呈贡区', 3, '5301');
INSERT INTO `info_area` VALUES (2775, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '530115', '晋宁区', '云南省昆明市晋宁区', 3, '5301');
INSERT INTO `info_area` VALUES (2776, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '530124', '富民县', '云南省昆明市富民县', 3, '5301');
INSERT INTO `info_area` VALUES (2777, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '530125', '宜良县', '云南省昆明市宜良县', 3, '5301');
INSERT INTO `info_area` VALUES (2778, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '530126', '石林彝族自治县', '云南省昆明市石林彝族自治县', 3, '5301');
INSERT INTO `info_area` VALUES (2779, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '530127', '嵩明县', '云南省昆明市嵩明县', 3, '5301');
INSERT INTO `info_area` VALUES (2780, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '530128', '禄劝彝族苗族自治县', '云南省昆明市禄劝彝族苗族自治县', 3, '5301');
INSERT INTO `info_area` VALUES (2781, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '530129', '寻甸回族彝族自治县', '云南省昆明市寻甸回族彝族自治县', 3, '5301');
INSERT INTO `info_area` VALUES (2782, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '530181', '安宁市', '云南省昆明市安宁市', 3, '5301');
INSERT INTO `info_area` VALUES (2783, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '5303', '曲靖市', '云南省曲靖市', 2, '53');
INSERT INTO `info_area` VALUES (2784, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '530302', '麒麟区', '云南省曲靖市麒麟区', 3, '5303');
INSERT INTO `info_area` VALUES (2785, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '530303', '沾益区', '云南省曲靖市沾益区', 3, '5303');
INSERT INTO `info_area` VALUES (2786, '2024-03-21 19:17:59', 1, '2024-03-21 19:17:59', 1, '530304', '马龙区', '云南省曲靖市马龙区', 3, '5303');
INSERT INTO `info_area` VALUES (2787, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530322', '陆良县', '云南省曲靖市陆良县', 3, '5303');
INSERT INTO `info_area` VALUES (2788, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530323', '师宗县', '云南省曲靖市师宗县', 3, '5303');
INSERT INTO `info_area` VALUES (2789, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530324', '罗平县', '云南省曲靖市罗平县', 3, '5303');
INSERT INTO `info_area` VALUES (2790, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530325', '富源县', '云南省曲靖市富源县', 3, '5303');
INSERT INTO `info_area` VALUES (2791, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530326', '会泽县', '云南省曲靖市会泽县', 3, '5303');
INSERT INTO `info_area` VALUES (2792, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530381', '宣威市', '云南省曲靖市宣威市', 3, '5303');
INSERT INTO `info_area` VALUES (2793, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5304', '玉溪市', '云南省玉溪市', 2, '53');
INSERT INTO `info_area` VALUES (2794, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530402', '红塔区', '云南省玉溪市红塔区', 3, '5304');
INSERT INTO `info_area` VALUES (2795, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530403', '江川区', '云南省玉溪市江川区', 3, '5304');
INSERT INTO `info_area` VALUES (2796, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530423', '通海县', '云南省玉溪市通海县', 3, '5304');
INSERT INTO `info_area` VALUES (2797, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530424', '华宁县', '云南省玉溪市华宁县', 3, '5304');
INSERT INTO `info_area` VALUES (2798, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530425', '易门县', '云南省玉溪市易门县', 3, '5304');
INSERT INTO `info_area` VALUES (2799, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530426', '峨山彝族自治县', '云南省玉溪市峨山彝族自治县', 3, '5304');
INSERT INTO `info_area` VALUES (2800, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530427', '新平彝族傣族自治县', '云南省玉溪市新平彝族傣族自治县', 3, '5304');
INSERT INTO `info_area` VALUES (2801, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530428', '元江哈尼族彝族傣族自治县', '云南省玉溪市元江哈尼族彝族傣族自治县', 3, '5304');
INSERT INTO `info_area` VALUES (2802, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530481', '澄江市', '云南省玉溪市澄江市', 3, '5304');
INSERT INTO `info_area` VALUES (2803, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5305', '保山市', '云南省保山市', 2, '53');
INSERT INTO `info_area` VALUES (2804, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530502', '隆阳区', '云南省保山市隆阳区', 3, '5305');
INSERT INTO `info_area` VALUES (2805, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530521', '施甸县', '云南省保山市施甸县', 3, '5305');
INSERT INTO `info_area` VALUES (2806, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530523', '龙陵县', '云南省保山市龙陵县', 3, '5305');
INSERT INTO `info_area` VALUES (2807, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530524', '昌宁县', '云南省保山市昌宁县', 3, '5305');
INSERT INTO `info_area` VALUES (2808, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530581', '腾冲市', '云南省保山市腾冲市', 3, '5305');
INSERT INTO `info_area` VALUES (2809, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5306', '昭通市', '云南省昭通市', 2, '53');
INSERT INTO `info_area` VALUES (2810, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530602', '昭阳区', '云南省昭通市昭阳区', 3, '5306');
INSERT INTO `info_area` VALUES (2811, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530621', '鲁甸县', '云南省昭通市鲁甸县', 3, '5306');
INSERT INTO `info_area` VALUES (2812, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530622', '巧家县', '云南省昭通市巧家县', 3, '5306');
INSERT INTO `info_area` VALUES (2813, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530623', '盐津县', '云南省昭通市盐津县', 3, '5306');
INSERT INTO `info_area` VALUES (2814, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530624', '大关县', '云南省昭通市大关县', 3, '5306');
INSERT INTO `info_area` VALUES (2815, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530625', '永善县', '云南省昭通市永善县', 3, '5306');
INSERT INTO `info_area` VALUES (2816, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530626', '绥江县', '云南省昭通市绥江县', 3, '5306');
INSERT INTO `info_area` VALUES (2817, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530627', '镇雄县', '云南省昭通市镇雄县', 3, '5306');
INSERT INTO `info_area` VALUES (2818, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530628', '彝良县', '云南省昭通市彝良县', 3, '5306');
INSERT INTO `info_area` VALUES (2819, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530629', '威信县', '云南省昭通市威信县', 3, '5306');
INSERT INTO `info_area` VALUES (2820, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530681', '水富市', '云南省昭通市水富市', 3, '5306');
INSERT INTO `info_area` VALUES (2821, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5307', '丽江市', '云南省丽江市', 2, '53');
INSERT INTO `info_area` VALUES (2822, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530702', '古城区', '云南省丽江市古城区', 3, '5307');
INSERT INTO `info_area` VALUES (2823, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530721', '玉龙纳西族自治县', '云南省丽江市玉龙纳西族自治县', 3, '5307');
INSERT INTO `info_area` VALUES (2824, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530722', '永胜县', '云南省丽江市永胜县', 3, '5307');
INSERT INTO `info_area` VALUES (2825, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530723', '华坪县', '云南省丽江市华坪县', 3, '5307');
INSERT INTO `info_area` VALUES (2826, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530724', '宁蒗彝族自治县', '云南省丽江市宁蒗彝族自治县', 3, '5307');
INSERT INTO `info_area` VALUES (2827, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5308', '普洱市', '云南省普洱市', 2, '53');
INSERT INTO `info_area` VALUES (2828, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530802', '思茅区', '云南省普洱市思茅区', 3, '5308');
INSERT INTO `info_area` VALUES (2829, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530821', '宁洱哈尼族彝族自治县', '云南省普洱市宁洱哈尼族彝族自治县', 3, '5308');
INSERT INTO `info_area` VALUES (2830, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530822', '墨江哈尼族自治县', '云南省普洱市墨江哈尼族自治县', 3, '5308');
INSERT INTO `info_area` VALUES (2831, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530823', '景东彝族自治县', '云南省普洱市景东彝族自治县', 3, '5308');
INSERT INTO `info_area` VALUES (2832, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530824', '景谷傣族彝族自治县', '云南省普洱市景谷傣族彝族自治县', 3, '5308');
INSERT INTO `info_area` VALUES (2833, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530825', '镇沅彝族哈尼族拉祜族自治县', '云南省普洱市镇沅彝族哈尼族拉祜族自治县', 3, '5308');
INSERT INTO `info_area` VALUES (2834, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530826', '江城哈尼族彝族自治县', '云南省普洱市江城哈尼族彝族自治县', 3, '5308');
INSERT INTO `info_area` VALUES (2835, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530827', '孟连傣族拉祜族佤族自治县', '云南省普洱市孟连傣族拉祜族佤族自治县', 3, '5308');
INSERT INTO `info_area` VALUES (2836, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530828', '澜沧拉祜族自治县', '云南省普洱市澜沧拉祜族自治县', 3, '5308');
INSERT INTO `info_area` VALUES (2837, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530829', '西盟佤族自治县', '云南省普洱市西盟佤族自治县', 3, '5308');
INSERT INTO `info_area` VALUES (2838, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5309', '临沧市', '云南省临沧市', 2, '53');
INSERT INTO `info_area` VALUES (2839, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530902', '临翔区', '云南省临沧市临翔区', 3, '5309');
INSERT INTO `info_area` VALUES (2840, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530921', '凤庆县', '云南省临沧市凤庆县', 3, '5309');
INSERT INTO `info_area` VALUES (2841, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530922', '云县', '云南省临沧市云县', 3, '5309');
INSERT INTO `info_area` VALUES (2842, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530923', '永德县', '云南省临沧市永德县', 3, '5309');
INSERT INTO `info_area` VALUES (2843, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530924', '镇康县', '云南省临沧市镇康县', 3, '5309');
INSERT INTO `info_area` VALUES (2844, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530925', '双江拉祜族佤族布朗族傣族自治县', '云南省临沧市双江拉祜族佤族布朗族傣族自治县', 3, '5309');
INSERT INTO `info_area` VALUES (2845, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530926', '耿马傣族佤族自治县', '云南省临沧市耿马傣族佤族自治县', 3, '5309');
INSERT INTO `info_area` VALUES (2846, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '530927', '沧源佤族自治县', '云南省临沧市沧源佤族自治县', 3, '5309');
INSERT INTO `info_area` VALUES (2847, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5323', '楚雄彝族自治州', '云南省楚雄彝族自治州', 2, '53');
INSERT INTO `info_area` VALUES (2848, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532301', '楚雄市', '云南省楚雄彝族自治州楚雄市', 3, '5323');
INSERT INTO `info_area` VALUES (2849, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532302', '禄丰市', '云南省楚雄彝族自治州禄丰市', 3, '5323');
INSERT INTO `info_area` VALUES (2850, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532322', '双柏县', '云南省楚雄彝族自治州双柏县', 3, '5323');
INSERT INTO `info_area` VALUES (2851, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532323', '牟定县', '云南省楚雄彝族自治州牟定县', 3, '5323');
INSERT INTO `info_area` VALUES (2852, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532324', '南华县', '云南省楚雄彝族自治州南华县', 3, '5323');
INSERT INTO `info_area` VALUES (2853, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532325', '姚安县', '云南省楚雄彝族自治州姚安县', 3, '5323');
INSERT INTO `info_area` VALUES (2854, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532326', '大姚县', '云南省楚雄彝族自治州大姚县', 3, '5323');
INSERT INTO `info_area` VALUES (2855, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532327', '永仁县', '云南省楚雄彝族自治州永仁县', 3, '5323');
INSERT INTO `info_area` VALUES (2856, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532328', '元谋县', '云南省楚雄彝族自治州元谋县', 3, '5323');
INSERT INTO `info_area` VALUES (2857, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532329', '武定县', '云南省楚雄彝族自治州武定县', 3, '5323');
INSERT INTO `info_area` VALUES (2858, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5325', '红河哈尼族彝族自治州', '云南省红河哈尼族彝族自治州', 2, '53');
INSERT INTO `info_area` VALUES (2859, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532501', '个旧市', '云南省红河哈尼族彝族自治州个旧市', 3, '5325');
INSERT INTO `info_area` VALUES (2860, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532502', '开远市', '云南省红河哈尼族彝族自治州开远市', 3, '5325');
INSERT INTO `info_area` VALUES (2861, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532503', '蒙自市', '云南省红河哈尼族彝族自治州蒙自市', 3, '5325');
INSERT INTO `info_area` VALUES (2862, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532504', '弥勒市', '云南省红河哈尼族彝族自治州弥勒市', 3, '5325');
INSERT INTO `info_area` VALUES (2863, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532523', '屏边苗族自治县', '云南省红河哈尼族彝族自治州屏边苗族自治县', 3, '5325');
INSERT INTO `info_area` VALUES (2864, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532524', '建水县', '云南省红河哈尼族彝族自治州建水县', 3, '5325');
INSERT INTO `info_area` VALUES (2865, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532525', '石屏县', '云南省红河哈尼族彝族自治州石屏县', 3, '5325');
INSERT INTO `info_area` VALUES (2866, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532527', '泸西县', '云南省红河哈尼族彝族自治州泸西县', 3, '5325');
INSERT INTO `info_area` VALUES (2867, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532528', '元阳县', '云南省红河哈尼族彝族自治州元阳县', 3, '5325');
INSERT INTO `info_area` VALUES (2868, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532529', '红河县', '云南省红河哈尼族彝族自治州红河县', 3, '5325');
INSERT INTO `info_area` VALUES (2869, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532530', '金平苗族瑶族傣族自治县', '云南省红河哈尼族彝族自治州金平苗族瑶族傣族自治县', 3, '5325');
INSERT INTO `info_area` VALUES (2870, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532531', '绿春县', '云南省红河哈尼族彝族自治州绿春县', 3, '5325');
INSERT INTO `info_area` VALUES (2871, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532532', '河口瑶族自治县', '云南省红河哈尼族彝族自治州河口瑶族自治县', 3, '5325');
INSERT INTO `info_area` VALUES (2872, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5326', '文山壮族苗族自治州', '云南省文山壮族苗族自治州', 2, '53');
INSERT INTO `info_area` VALUES (2873, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532601', '文山市', '云南省文山壮族苗族自治州文山市', 3, '5326');
INSERT INTO `info_area` VALUES (2874, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532622', '砚山县', '云南省文山壮族苗族自治州砚山县', 3, '5326');
INSERT INTO `info_area` VALUES (2875, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532623', '西畴县', '云南省文山壮族苗族自治州西畴县', 3, '5326');
INSERT INTO `info_area` VALUES (2876, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532624', '麻栗坡县', '云南省文山壮族苗族自治州麻栗坡县', 3, '5326');
INSERT INTO `info_area` VALUES (2877, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532625', '马关县', '云南省文山壮族苗族自治州马关县', 3, '5326');
INSERT INTO `info_area` VALUES (2878, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532626', '丘北县', '云南省文山壮族苗族自治州丘北县', 3, '5326');
INSERT INTO `info_area` VALUES (2879, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532627', '广南县', '云南省文山壮族苗族自治州广南县', 3, '5326');
INSERT INTO `info_area` VALUES (2880, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532628', '富宁县', '云南省文山壮族苗族自治州富宁县', 3, '5326');
INSERT INTO `info_area` VALUES (2881, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5328', '西双版纳傣族自治州', '云南省西双版纳傣族自治州', 2, '53');
INSERT INTO `info_area` VALUES (2882, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532801', '景洪市', '云南省西双版纳傣族自治州景洪市', 3, '5328');
INSERT INTO `info_area` VALUES (2883, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532822', '勐海县', '云南省西双版纳傣族自治州勐海县', 3, '5328');
INSERT INTO `info_area` VALUES (2884, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532823', '勐腊县', '云南省西双版纳傣族自治州勐腊县', 3, '5328');
INSERT INTO `info_area` VALUES (2885, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5329', '大理白族自治州', '云南省大理白族自治州', 2, '53');
INSERT INTO `info_area` VALUES (2886, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532901', '大理市', '云南省大理白族自治州大理市', 3, '5329');
INSERT INTO `info_area` VALUES (2887, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532922', '漾濞彝族自治县', '云南省大理白族自治州漾濞彝族自治县', 3, '5329');
INSERT INTO `info_area` VALUES (2888, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532923', '祥云县', '云南省大理白族自治州祥云县', 3, '5329');
INSERT INTO `info_area` VALUES (2889, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532924', '宾川县', '云南省大理白族自治州宾川县', 3, '5329');
INSERT INTO `info_area` VALUES (2890, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532925', '弥渡县', '云南省大理白族自治州弥渡县', 3, '5329');
INSERT INTO `info_area` VALUES (2891, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532926', '南涧彝族自治县', '云南省大理白族自治州南涧彝族自治县', 3, '5329');
INSERT INTO `info_area` VALUES (2892, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532927', '巍山彝族回族自治县', '云南省大理白族自治州巍山彝族回族自治县', 3, '5329');
INSERT INTO `info_area` VALUES (2893, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532928', '永平县', '云南省大理白族自治州永平县', 3, '5329');
INSERT INTO `info_area` VALUES (2894, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532929', '云龙县', '云南省大理白族自治州云龙县', 3, '5329');
INSERT INTO `info_area` VALUES (2895, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532930', '洱源县', '云南省大理白族自治州洱源县', 3, '5329');
INSERT INTO `info_area` VALUES (2896, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532931', '剑川县', '云南省大理白族自治州剑川县', 3, '5329');
INSERT INTO `info_area` VALUES (2897, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '532932', '鹤庆县', '云南省大理白族自治州鹤庆县', 3, '5329');
INSERT INTO `info_area` VALUES (2898, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5331', '德宏傣族景颇族自治州', '云南省德宏傣族景颇族自治州', 2, '53');
INSERT INTO `info_area` VALUES (2899, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '533102', '瑞丽市', '云南省德宏傣族景颇族自治州瑞丽市', 3, '5331');
INSERT INTO `info_area` VALUES (2900, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '533103', '芒市', '云南省德宏傣族景颇族自治州芒市', 3, '5331');
INSERT INTO `info_area` VALUES (2901, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '533122', '梁河县', '云南省德宏傣族景颇族自治州梁河县', 3, '5331');
INSERT INTO `info_area` VALUES (2902, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '533123', '盈江县', '云南省德宏傣族景颇族自治州盈江县', 3, '5331');
INSERT INTO `info_area` VALUES (2903, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '533124', '陇川县', '云南省德宏傣族景颇族自治州陇川县', 3, '5331');
INSERT INTO `info_area` VALUES (2904, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5333', '怒江傈僳族自治州', '云南省怒江傈僳族自治州', 2, '53');
INSERT INTO `info_area` VALUES (2905, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '533301', '泸水市', '云南省怒江傈僳族自治州泸水市', 3, '5333');
INSERT INTO `info_area` VALUES (2906, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '533323', '福贡县', '云南省怒江傈僳族自治州福贡县', 3, '5333');
INSERT INTO `info_area` VALUES (2907, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '533324', '贡山独龙族怒族自治县', '云南省怒江傈僳族自治州贡山独龙族怒族自治县', 3, '5333');
INSERT INTO `info_area` VALUES (2908, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '533325', '兰坪白族普米族自治县', '云南省怒江傈僳族自治州兰坪白族普米族自治县', 3, '5333');
INSERT INTO `info_area` VALUES (2909, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5334', '迪庆藏族自治州', '云南省迪庆藏族自治州', 2, '53');
INSERT INTO `info_area` VALUES (2910, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '533401', '香格里拉市', '云南省迪庆藏族自治州香格里拉市', 3, '5334');
INSERT INTO `info_area` VALUES (2911, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '533422', '德钦县', '云南省迪庆藏族自治州德钦县', 3, '5334');
INSERT INTO `info_area` VALUES (2912, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '533423', '维西傈僳族自治县', '云南省迪庆藏族自治州维西傈僳族自治县', 3, '5334');
INSERT INTO `info_area` VALUES (2913, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '54', '西藏自治区', '西藏自治区', 1, '');
INSERT INTO `info_area` VALUES (2914, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5401', '拉萨市', '西藏自治区拉萨市', 2, '54');
INSERT INTO `info_area` VALUES (2915, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540102', '城关区', '西藏自治区拉萨市城关区', 3, '5401');
INSERT INTO `info_area` VALUES (2916, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540103', '堆龙德庆区', '西藏自治区拉萨市堆龙德庆区', 3, '5401');
INSERT INTO `info_area` VALUES (2917, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540104', '达孜区', '西藏自治区拉萨市达孜区', 3, '5401');
INSERT INTO `info_area` VALUES (2918, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540121', '林周县', '西藏自治区拉萨市林周县', 3, '5401');
INSERT INTO `info_area` VALUES (2919, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540122', '当雄县', '西藏自治区拉萨市当雄县', 3, '5401');
INSERT INTO `info_area` VALUES (2920, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540123', '尼木县', '西藏自治区拉萨市尼木县', 3, '5401');
INSERT INTO `info_area` VALUES (2921, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540124', '曲水县', '西藏自治区拉萨市曲水县', 3, '5401');
INSERT INTO `info_area` VALUES (2922, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540127', '墨竹工卡县', '西藏自治区拉萨市墨竹工卡县', 3, '5401');
INSERT INTO `info_area` VALUES (2923, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540171', '格尔木藏青工业园区', '西藏自治区拉萨市格尔木藏青工业园区', 3, '5401');
INSERT INTO `info_area` VALUES (2924, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540172', '拉萨经济技术开发区', '西藏自治区拉萨市拉萨经济技术开发区', 3, '5401');
INSERT INTO `info_area` VALUES (2925, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540173', '西藏文化旅游创意园区', '西藏自治区拉萨市西藏文化旅游创意园区', 3, '5401');
INSERT INTO `info_area` VALUES (2926, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540174', '达孜工业园区', '西藏自治区拉萨市达孜工业园区', 3, '5401');
INSERT INTO `info_area` VALUES (2927, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5402', '日喀则市', '西藏自治区日喀则市', 2, '54');
INSERT INTO `info_area` VALUES (2928, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540202', '桑珠孜区', '西藏自治区日喀则市桑珠孜区', 3, '5402');
INSERT INTO `info_area` VALUES (2929, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540221', '南木林县', '西藏自治区日喀则市南木林县', 3, '5402');
INSERT INTO `info_area` VALUES (2930, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540222', '江孜县', '西藏自治区日喀则市江孜县', 3, '5402');
INSERT INTO `info_area` VALUES (2931, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540223', '定日县', '西藏自治区日喀则市定日县', 3, '5402');
INSERT INTO `info_area` VALUES (2932, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540224', '萨迦县', '西藏自治区日喀则市萨迦县', 3, '5402');
INSERT INTO `info_area` VALUES (2933, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540225', '拉孜县', '西藏自治区日喀则市拉孜县', 3, '5402');
INSERT INTO `info_area` VALUES (2934, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540226', '昂仁县', '西藏自治区日喀则市昂仁县', 3, '5402');
INSERT INTO `info_area` VALUES (2935, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540227', '谢通门县', '西藏自治区日喀则市谢通门县', 3, '5402');
INSERT INTO `info_area` VALUES (2936, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540228', '白朗县', '西藏自治区日喀则市白朗县', 3, '5402');
INSERT INTO `info_area` VALUES (2937, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540229', '仁布县', '西藏自治区日喀则市仁布县', 3, '5402');
INSERT INTO `info_area` VALUES (2938, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540230', '康马县', '西藏自治区日喀则市康马县', 3, '5402');
INSERT INTO `info_area` VALUES (2939, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540231', '定结县', '西藏自治区日喀则市定结县', 3, '5402');
INSERT INTO `info_area` VALUES (2940, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540232', '仲巴县', '西藏自治区日喀则市仲巴县', 3, '5402');
INSERT INTO `info_area` VALUES (2941, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540233', '亚东县', '西藏自治区日喀则市亚东县', 3, '5402');
INSERT INTO `info_area` VALUES (2942, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540234', '吉隆县', '西藏自治区日喀则市吉隆县', 3, '5402');
INSERT INTO `info_area` VALUES (2943, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540235', '聂拉木县', '西藏自治区日喀则市聂拉木县', 3, '5402');
INSERT INTO `info_area` VALUES (2944, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540236', '萨嘎县', '西藏自治区日喀则市萨嘎县', 3, '5402');
INSERT INTO `info_area` VALUES (2945, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540237', '岗巴县', '西藏自治区日喀则市岗巴县', 3, '5402');
INSERT INTO `info_area` VALUES (2946, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5403', '昌都市', '西藏自治区昌都市', 2, '54');
INSERT INTO `info_area` VALUES (2947, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540302', '卡若区', '西藏自治区昌都市卡若区', 3, '5403');
INSERT INTO `info_area` VALUES (2948, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540321', '江达县', '西藏自治区昌都市江达县', 3, '5403');
INSERT INTO `info_area` VALUES (2949, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540322', '贡觉县', '西藏自治区昌都市贡觉县', 3, '5403');
INSERT INTO `info_area` VALUES (2950, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540323', '类乌齐县', '西藏自治区昌都市类乌齐县', 3, '5403');
INSERT INTO `info_area` VALUES (2951, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540324', '丁青县', '西藏自治区昌都市丁青县', 3, '5403');
INSERT INTO `info_area` VALUES (2952, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540325', '察雅县', '西藏自治区昌都市察雅县', 3, '5403');
INSERT INTO `info_area` VALUES (2953, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540326', '八宿县', '西藏自治区昌都市八宿县', 3, '5403');
INSERT INTO `info_area` VALUES (2954, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540327', '左贡县', '西藏自治区昌都市左贡县', 3, '5403');
INSERT INTO `info_area` VALUES (2955, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540328', '芒康县', '西藏自治区昌都市芒康县', 3, '5403');
INSERT INTO `info_area` VALUES (2956, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540329', '洛隆县', '西藏自治区昌都市洛隆县', 3, '5403');
INSERT INTO `info_area` VALUES (2957, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540330', '边坝县', '西藏自治区昌都市边坝县', 3, '5403');
INSERT INTO `info_area` VALUES (2958, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5404', '林芝市', '西藏自治区林芝市', 2, '54');
INSERT INTO `info_area` VALUES (2959, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540402', '巴宜区', '西藏自治区林芝市巴宜区', 3, '5404');
INSERT INTO `info_area` VALUES (2960, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540421', '工布江达县', '西藏自治区林芝市工布江达县', 3, '5404');
INSERT INTO `info_area` VALUES (2961, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540423', '墨脱县', '西藏自治区林芝市墨脱县', 3, '5404');
INSERT INTO `info_area` VALUES (2962, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540424', '波密县', '西藏自治区林芝市波密县', 3, '5404');
INSERT INTO `info_area` VALUES (2963, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540425', '察隅县', '西藏自治区林芝市察隅县', 3, '5404');
INSERT INTO `info_area` VALUES (2964, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540426', '朗县', '西藏自治区林芝市朗县', 3, '5404');
INSERT INTO `info_area` VALUES (2965, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540481', '米林市', '西藏自治区林芝市米林市', 3, '5404');
INSERT INTO `info_area` VALUES (2966, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5405', '山南市', '西藏自治区山南市', 2, '54');
INSERT INTO `info_area` VALUES (2967, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540502', '乃东区', '西藏自治区山南市乃东区', 3, '5405');
INSERT INTO `info_area` VALUES (2968, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540521', '扎囊县', '西藏自治区山南市扎囊县', 3, '5405');
INSERT INTO `info_area` VALUES (2969, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540522', '贡嘎县', '西藏自治区山南市贡嘎县', 3, '5405');
INSERT INTO `info_area` VALUES (2970, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540523', '桑日县', '西藏自治区山南市桑日县', 3, '5405');
INSERT INTO `info_area` VALUES (2971, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540524', '琼结县', '西藏自治区山南市琼结县', 3, '5405');
INSERT INTO `info_area` VALUES (2972, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540525', '曲松县', '西藏自治区山南市曲松县', 3, '5405');
INSERT INTO `info_area` VALUES (2973, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540526', '措美县', '西藏自治区山南市措美县', 3, '5405');
INSERT INTO `info_area` VALUES (2974, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540527', '洛扎县', '西藏自治区山南市洛扎县', 3, '5405');
INSERT INTO `info_area` VALUES (2975, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540528', '加查县', '西藏自治区山南市加查县', 3, '5405');
INSERT INTO `info_area` VALUES (2976, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540529', '隆子县', '西藏自治区山南市隆子县', 3, '5405');
INSERT INTO `info_area` VALUES (2977, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540531', '浪卡子县', '西藏自治区山南市浪卡子县', 3, '5405');
INSERT INTO `info_area` VALUES (2978, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540581', '错那市', '西藏自治区山南市错那市', 3, '5405');
INSERT INTO `info_area` VALUES (2979, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5406', '那曲市', '西藏自治区那曲市', 2, '54');
INSERT INTO `info_area` VALUES (2980, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540602', '色尼区', '西藏自治区那曲市色尼区', 3, '5406');
INSERT INTO `info_area` VALUES (2981, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540621', '嘉黎县', '西藏自治区那曲市嘉黎县', 3, '5406');
INSERT INTO `info_area` VALUES (2982, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540622', '比如县', '西藏自治区那曲市比如县', 3, '5406');
INSERT INTO `info_area` VALUES (2983, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540623', '聂荣县', '西藏自治区那曲市聂荣县', 3, '5406');
INSERT INTO `info_area` VALUES (2984, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540624', '安多县', '西藏自治区那曲市安多县', 3, '5406');
INSERT INTO `info_area` VALUES (2985, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540625', '申扎县', '西藏自治区那曲市申扎县', 3, '5406');
INSERT INTO `info_area` VALUES (2986, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540626', '索县', '西藏自治区那曲市索县', 3, '5406');
INSERT INTO `info_area` VALUES (2987, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540627', '班戈县', '西藏自治区那曲市班戈县', 3, '5406');
INSERT INTO `info_area` VALUES (2988, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540628', '巴青县', '西藏自治区那曲市巴青县', 3, '5406');
INSERT INTO `info_area` VALUES (2989, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540629', '尼玛县', '西藏自治区那曲市尼玛县', 3, '5406');
INSERT INTO `info_area` VALUES (2990, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '540630', '双湖县', '西藏自治区那曲市双湖县', 3, '5406');
INSERT INTO `info_area` VALUES (2991, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '5425', '阿里地区', '西藏自治区阿里地区', 2, '54');
INSERT INTO `info_area` VALUES (2992, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '542521', '普兰县', '西藏自治区阿里地区普兰县', 3, '5425');
INSERT INTO `info_area` VALUES (2993, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '542522', '札达县', '西藏自治区阿里地区札达县', 3, '5425');
INSERT INTO `info_area` VALUES (2994, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '542523', '噶尔县', '西藏自治区阿里地区噶尔县', 3, '5425');
INSERT INTO `info_area` VALUES (2995, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '542524', '日土县', '西藏自治区阿里地区日土县', 3, '5425');
INSERT INTO `info_area` VALUES (2996, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '542525', '革吉县', '西藏自治区阿里地区革吉县', 3, '5425');
INSERT INTO `info_area` VALUES (2997, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '542526', '改则县', '西藏自治区阿里地区改则县', 3, '5425');
INSERT INTO `info_area` VALUES (2998, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '542527', '措勤县', '西藏自治区阿里地区措勤县', 3, '5425');
INSERT INTO `info_area` VALUES (2999, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '61', '陕西省', '陕西省', 1, '');
INSERT INTO `info_area` VALUES (3000, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6101', '西安市', '陕西省西安市', 2, '61');
INSERT INTO `info_area` VALUES (3001, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610102', '新城区', '陕西省西安市新城区', 3, '6101');
INSERT INTO `info_area` VALUES (3002, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610103', '碑林区', '陕西省西安市碑林区', 3, '6101');
INSERT INTO `info_area` VALUES (3003, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610104', '莲湖区', '陕西省西安市莲湖区', 3, '6101');
INSERT INTO `info_area` VALUES (3004, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610111', '灞桥区', '陕西省西安市灞桥区', 3, '6101');
INSERT INTO `info_area` VALUES (3005, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610112', '未央区', '陕西省西安市未央区', 3, '6101');
INSERT INTO `info_area` VALUES (3006, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610113', '雁塔区', '陕西省西安市雁塔区', 3, '6101');
INSERT INTO `info_area` VALUES (3007, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610114', '阎良区', '陕西省西安市阎良区', 3, '6101');
INSERT INTO `info_area` VALUES (3008, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610115', '临潼区', '陕西省西安市临潼区', 3, '6101');
INSERT INTO `info_area` VALUES (3009, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610116', '长安区', '陕西省西安市长安区', 3, '6101');
INSERT INTO `info_area` VALUES (3010, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610117', '高陵区', '陕西省西安市高陵区', 3, '6101');
INSERT INTO `info_area` VALUES (3011, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610118', '鄠邑区', '陕西省西安市鄠邑区', 3, '6101');
INSERT INTO `info_area` VALUES (3012, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610122', '蓝田县', '陕西省西安市蓝田县', 3, '6101');
INSERT INTO `info_area` VALUES (3013, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610124', '周至县', '陕西省西安市周至县', 3, '6101');
INSERT INTO `info_area` VALUES (3014, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6102', '铜川市', '陕西省铜川市', 2, '61');
INSERT INTO `info_area` VALUES (3015, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610202', '王益区', '陕西省铜川市王益区', 3, '6102');
INSERT INTO `info_area` VALUES (3016, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610203', '印台区', '陕西省铜川市印台区', 3, '6102');
INSERT INTO `info_area` VALUES (3017, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610204', '耀州区', '陕西省铜川市耀州区', 3, '6102');
INSERT INTO `info_area` VALUES (3018, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610222', '宜君县', '陕西省铜川市宜君县', 3, '6102');
INSERT INTO `info_area` VALUES (3019, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6103', '宝鸡市', '陕西省宝鸡市', 2, '61');
INSERT INTO `info_area` VALUES (3020, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610302', '渭滨区', '陕西省宝鸡市渭滨区', 3, '6103');
INSERT INTO `info_area` VALUES (3021, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610303', '金台区', '陕西省宝鸡市金台区', 3, '6103');
INSERT INTO `info_area` VALUES (3022, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610304', '陈仓区', '陕西省宝鸡市陈仓区', 3, '6103');
INSERT INTO `info_area` VALUES (3023, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610305', '凤翔区', '陕西省宝鸡市凤翔区', 3, '6103');
INSERT INTO `info_area` VALUES (3024, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610323', '岐山县', '陕西省宝鸡市岐山县', 3, '6103');
INSERT INTO `info_area` VALUES (3025, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610324', '扶风县', '陕西省宝鸡市扶风县', 3, '6103');
INSERT INTO `info_area` VALUES (3026, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610326', '眉县', '陕西省宝鸡市眉县', 3, '6103');
INSERT INTO `info_area` VALUES (3027, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610327', '陇县', '陕西省宝鸡市陇县', 3, '6103');
INSERT INTO `info_area` VALUES (3028, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610328', '千阳县', '陕西省宝鸡市千阳县', 3, '6103');
INSERT INTO `info_area` VALUES (3029, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610329', '麟游县', '陕西省宝鸡市麟游县', 3, '6103');
INSERT INTO `info_area` VALUES (3030, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610330', '凤县', '陕西省宝鸡市凤县', 3, '6103');
INSERT INTO `info_area` VALUES (3031, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610331', '太白县', '陕西省宝鸡市太白县', 3, '6103');
INSERT INTO `info_area` VALUES (3032, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6104', '咸阳市', '陕西省咸阳市', 2, '61');
INSERT INTO `info_area` VALUES (3033, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610402', '秦都区', '陕西省咸阳市秦都区', 3, '6104');
INSERT INTO `info_area` VALUES (3034, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610403', '杨陵区', '陕西省咸阳市杨陵区', 3, '6104');
INSERT INTO `info_area` VALUES (3035, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610404', '渭城区', '陕西省咸阳市渭城区', 3, '6104');
INSERT INTO `info_area` VALUES (3036, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610422', '三原县', '陕西省咸阳市三原县', 3, '6104');
INSERT INTO `info_area` VALUES (3037, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610423', '泾阳县', '陕西省咸阳市泾阳县', 3, '6104');
INSERT INTO `info_area` VALUES (3038, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610424', '乾县', '陕西省咸阳市乾县', 3, '6104');
INSERT INTO `info_area` VALUES (3039, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610425', '礼泉县', '陕西省咸阳市礼泉县', 3, '6104');
INSERT INTO `info_area` VALUES (3040, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610426', '永寿县', '陕西省咸阳市永寿县', 3, '6104');
INSERT INTO `info_area` VALUES (3041, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610428', '长武县', '陕西省咸阳市长武县', 3, '6104');
INSERT INTO `info_area` VALUES (3042, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610429', '旬邑县', '陕西省咸阳市旬邑县', 3, '6104');
INSERT INTO `info_area` VALUES (3043, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610430', '淳化县', '陕西省咸阳市淳化县', 3, '6104');
INSERT INTO `info_area` VALUES (3044, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610431', '武功县', '陕西省咸阳市武功县', 3, '6104');
INSERT INTO `info_area` VALUES (3045, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610481', '兴平市', '陕西省咸阳市兴平市', 3, '6104');
INSERT INTO `info_area` VALUES (3046, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610482', '彬州市', '陕西省咸阳市彬州市', 3, '6104');
INSERT INTO `info_area` VALUES (3047, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6105', '渭南市', '陕西省渭南市', 2, '61');
INSERT INTO `info_area` VALUES (3048, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610502', '临渭区', '陕西省渭南市临渭区', 3, '6105');
INSERT INTO `info_area` VALUES (3049, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610503', '华州区', '陕西省渭南市华州区', 3, '6105');
INSERT INTO `info_area` VALUES (3050, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610522', '潼关县', '陕西省渭南市潼关县', 3, '6105');
INSERT INTO `info_area` VALUES (3051, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610523', '大荔县', '陕西省渭南市大荔县', 3, '6105');
INSERT INTO `info_area` VALUES (3052, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610524', '合阳县', '陕西省渭南市合阳县', 3, '6105');
INSERT INTO `info_area` VALUES (3053, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610525', '澄城县', '陕西省渭南市澄城县', 3, '6105');
INSERT INTO `info_area` VALUES (3054, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610526', '蒲城县', '陕西省渭南市蒲城县', 3, '6105');
INSERT INTO `info_area` VALUES (3055, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610527', '白水县', '陕西省渭南市白水县', 3, '6105');
INSERT INTO `info_area` VALUES (3056, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610528', '富平县', '陕西省渭南市富平县', 3, '6105');
INSERT INTO `info_area` VALUES (3057, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610581', '韩城市', '陕西省渭南市韩城市', 3, '6105');
INSERT INTO `info_area` VALUES (3058, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610582', '华阴市', '陕西省渭南市华阴市', 3, '6105');
INSERT INTO `info_area` VALUES (3059, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6106', '延安市', '陕西省延安市', 2, '61');
INSERT INTO `info_area` VALUES (3060, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610602', '宝塔区', '陕西省延安市宝塔区', 3, '6106');
INSERT INTO `info_area` VALUES (3061, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610603', '安塞区', '陕西省延安市安塞区', 3, '6106');
INSERT INTO `info_area` VALUES (3062, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610621', '延长县', '陕西省延安市延长县', 3, '6106');
INSERT INTO `info_area` VALUES (3063, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610622', '延川县', '陕西省延安市延川县', 3, '6106');
INSERT INTO `info_area` VALUES (3064, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610625', '志丹县', '陕西省延安市志丹县', 3, '6106');
INSERT INTO `info_area` VALUES (3065, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610626', '吴起县', '陕西省延安市吴起县', 3, '6106');
INSERT INTO `info_area` VALUES (3066, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610627', '甘泉县', '陕西省延安市甘泉县', 3, '6106');
INSERT INTO `info_area` VALUES (3067, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610628', '富县', '陕西省延安市富县', 3, '6106');
INSERT INTO `info_area` VALUES (3068, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610629', '洛川县', '陕西省延安市洛川县', 3, '6106');
INSERT INTO `info_area` VALUES (3069, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610630', '宜川县', '陕西省延安市宜川县', 3, '6106');
INSERT INTO `info_area` VALUES (3070, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610631', '黄龙县', '陕西省延安市黄龙县', 3, '6106');
INSERT INTO `info_area` VALUES (3071, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610632', '黄陵县', '陕西省延安市黄陵县', 3, '6106');
INSERT INTO `info_area` VALUES (3072, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610681', '子长市', '陕西省延安市子长市', 3, '6106');
INSERT INTO `info_area` VALUES (3073, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6107', '汉中市', '陕西省汉中市', 2, '61');
INSERT INTO `info_area` VALUES (3074, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610702', '汉台区', '陕西省汉中市汉台区', 3, '6107');
INSERT INTO `info_area` VALUES (3075, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610703', '南郑区', '陕西省汉中市南郑区', 3, '6107');
INSERT INTO `info_area` VALUES (3076, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610722', '城固县', '陕西省汉中市城固县', 3, '6107');
INSERT INTO `info_area` VALUES (3077, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610723', '洋县', '陕西省汉中市洋县', 3, '6107');
INSERT INTO `info_area` VALUES (3078, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610724', '西乡县', '陕西省汉中市西乡县', 3, '6107');
INSERT INTO `info_area` VALUES (3079, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610725', '勉县', '陕西省汉中市勉县', 3, '6107');
INSERT INTO `info_area` VALUES (3080, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610726', '宁强县', '陕西省汉中市宁强县', 3, '6107');
INSERT INTO `info_area` VALUES (3081, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610727', '略阳县', '陕西省汉中市略阳县', 3, '6107');
INSERT INTO `info_area` VALUES (3082, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610728', '镇巴县', '陕西省汉中市镇巴县', 3, '6107');
INSERT INTO `info_area` VALUES (3083, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610729', '留坝县', '陕西省汉中市留坝县', 3, '6107');
INSERT INTO `info_area` VALUES (3084, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610730', '佛坪县', '陕西省汉中市佛坪县', 3, '6107');
INSERT INTO `info_area` VALUES (3085, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6108', '榆林市', '陕西省榆林市', 2, '61');
INSERT INTO `info_area` VALUES (3086, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610802', '榆阳区', '陕西省榆林市榆阳区', 3, '6108');
INSERT INTO `info_area` VALUES (3087, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610803', '横山区', '陕西省榆林市横山区', 3, '6108');
INSERT INTO `info_area` VALUES (3088, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610822', '府谷县', '陕西省榆林市府谷县', 3, '6108');
INSERT INTO `info_area` VALUES (3089, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610824', '靖边县', '陕西省榆林市靖边县', 3, '6108');
INSERT INTO `info_area` VALUES (3090, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610825', '定边县', '陕西省榆林市定边县', 3, '6108');
INSERT INTO `info_area` VALUES (3091, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610826', '绥德县', '陕西省榆林市绥德县', 3, '6108');
INSERT INTO `info_area` VALUES (3092, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610827', '米脂县', '陕西省榆林市米脂县', 3, '6108');
INSERT INTO `info_area` VALUES (3093, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610828', '佳县', '陕西省榆林市佳县', 3, '6108');
INSERT INTO `info_area` VALUES (3094, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610829', '吴堡县', '陕西省榆林市吴堡县', 3, '6108');
INSERT INTO `info_area` VALUES (3095, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610830', '清涧县', '陕西省榆林市清涧县', 3, '6108');
INSERT INTO `info_area` VALUES (3096, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610831', '子洲县', '陕西省榆林市子洲县', 3, '6108');
INSERT INTO `info_area` VALUES (3097, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610881', '神木市', '陕西省榆林市神木市', 3, '6108');
INSERT INTO `info_area` VALUES (3098, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6109', '安康市', '陕西省安康市', 2, '61');
INSERT INTO `info_area` VALUES (3099, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610902', '汉滨区', '陕西省安康市汉滨区', 3, '6109');
INSERT INTO `info_area` VALUES (3100, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610921', '汉阴县', '陕西省安康市汉阴县', 3, '6109');
INSERT INTO `info_area` VALUES (3101, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610922', '石泉县', '陕西省安康市石泉县', 3, '6109');
INSERT INTO `info_area` VALUES (3102, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610923', '宁陕县', '陕西省安康市宁陕县', 3, '6109');
INSERT INTO `info_area` VALUES (3103, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610924', '紫阳县', '陕西省安康市紫阳县', 3, '6109');
INSERT INTO `info_area` VALUES (3104, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610925', '岚皋县', '陕西省安康市岚皋县', 3, '6109');
INSERT INTO `info_area` VALUES (3105, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610926', '平利县', '陕西省安康市平利县', 3, '6109');
INSERT INTO `info_area` VALUES (3106, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610927', '镇坪县', '陕西省安康市镇坪县', 3, '6109');
INSERT INTO `info_area` VALUES (3107, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610929', '白河县', '陕西省安康市白河县', 3, '6109');
INSERT INTO `info_area` VALUES (3108, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '610981', '旬阳市', '陕西省安康市旬阳市', 3, '6109');
INSERT INTO `info_area` VALUES (3109, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6110', '商洛市', '陕西省商洛市', 2, '61');
INSERT INTO `info_area` VALUES (3110, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '611002', '商州区', '陕西省商洛市商州区', 3, '6110');
INSERT INTO `info_area` VALUES (3111, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '611021', '洛南县', '陕西省商洛市洛南县', 3, '6110');
INSERT INTO `info_area` VALUES (3112, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '611022', '丹凤县', '陕西省商洛市丹凤县', 3, '6110');
INSERT INTO `info_area` VALUES (3113, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '611023', '商南县', '陕西省商洛市商南县', 3, '6110');
INSERT INTO `info_area` VALUES (3114, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '611024', '山阳县', '陕西省商洛市山阳县', 3, '6110');
INSERT INTO `info_area` VALUES (3115, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '611025', '镇安县', '陕西省商洛市镇安县', 3, '6110');
INSERT INTO `info_area` VALUES (3116, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '611026', '柞水县', '陕西省商洛市柞水县', 3, '6110');
INSERT INTO `info_area` VALUES (3117, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '62', '甘肃省', '甘肃省', 1, '');
INSERT INTO `info_area` VALUES (3118, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6201', '兰州市', '甘肃省兰州市', 2, '62');
INSERT INTO `info_area` VALUES (3119, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620102', '城关区', '甘肃省兰州市城关区', 3, '6201');
INSERT INTO `info_area` VALUES (3120, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620103', '七里河区', '甘肃省兰州市七里河区', 3, '6201');
INSERT INTO `info_area` VALUES (3121, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620104', '西固区', '甘肃省兰州市西固区', 3, '6201');
INSERT INTO `info_area` VALUES (3122, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620105', '安宁区', '甘肃省兰州市安宁区', 3, '6201');
INSERT INTO `info_area` VALUES (3123, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620111', '红古区', '甘肃省兰州市红古区', 3, '6201');
INSERT INTO `info_area` VALUES (3124, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620121', '永登县', '甘肃省兰州市永登县', 3, '6201');
INSERT INTO `info_area` VALUES (3125, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620122', '皋兰县', '甘肃省兰州市皋兰县', 3, '6201');
INSERT INTO `info_area` VALUES (3126, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620123', '榆中县', '甘肃省兰州市榆中县', 3, '6201');
INSERT INTO `info_area` VALUES (3127, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620171', '兰州新区', '甘肃省兰州市兰州新区', 3, '6201');
INSERT INTO `info_area` VALUES (3128, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6202', '嘉峪关市', '甘肃省嘉峪关市', 2, '62');
INSERT INTO `info_area` VALUES (3129, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620201001', '雄关街道', '甘肃省嘉峪关市雄关街道', 3, '6202');
INSERT INTO `info_area` VALUES (3130, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620201002', '钢城街道', '甘肃省嘉峪关市钢城街道', 3, '6202');
INSERT INTO `info_area` VALUES (3131, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620201100', '新城镇', '甘肃省嘉峪关市新城镇', 3, '6202');
INSERT INTO `info_area` VALUES (3132, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620201101', '峪泉镇', '甘肃省嘉峪关市峪泉镇', 3, '6202');
INSERT INTO `info_area` VALUES (3133, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620201102', '文殊镇', '甘肃省嘉峪关市文殊镇', 3, '6202');
INSERT INTO `info_area` VALUES (3134, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6203', '金昌市', '甘肃省金昌市', 2, '62');
INSERT INTO `info_area` VALUES (3135, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620302', '金川区', '甘肃省金昌市金川区', 3, '6203');
INSERT INTO `info_area` VALUES (3136, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620321', '永昌县', '甘肃省金昌市永昌县', 3, '6203');
INSERT INTO `info_area` VALUES (3137, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6204', '白银市', '甘肃省白银市', 2, '62');
INSERT INTO `info_area` VALUES (3138, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620402', '白银区', '甘肃省白银市白银区', 3, '6204');
INSERT INTO `info_area` VALUES (3139, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620403', '平川区', '甘肃省白银市平川区', 3, '6204');
INSERT INTO `info_area` VALUES (3140, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620421', '靖远县', '甘肃省白银市靖远县', 3, '6204');
INSERT INTO `info_area` VALUES (3141, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620422', '会宁县', '甘肃省白银市会宁县', 3, '6204');
INSERT INTO `info_area` VALUES (3142, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620423', '景泰县', '甘肃省白银市景泰县', 3, '6204');
INSERT INTO `info_area` VALUES (3143, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6205', '天水市', '甘肃省天水市', 2, '62');
INSERT INTO `info_area` VALUES (3144, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620502', '秦州区', '甘肃省天水市秦州区', 3, '6205');
INSERT INTO `info_area` VALUES (3145, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620503', '麦积区', '甘肃省天水市麦积区', 3, '6205');
INSERT INTO `info_area` VALUES (3146, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620521', '清水县', '甘肃省天水市清水县', 3, '6205');
INSERT INTO `info_area` VALUES (3147, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620522', '秦安县', '甘肃省天水市秦安县', 3, '6205');
INSERT INTO `info_area` VALUES (3148, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620523', '甘谷县', '甘肃省天水市甘谷县', 3, '6205');
INSERT INTO `info_area` VALUES (3149, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620524', '武山县', '甘肃省天水市武山县', 3, '6205');
INSERT INTO `info_area` VALUES (3150, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620525', '张家川回族自治县', '甘肃省天水市张家川回族自治县', 3, '6205');
INSERT INTO `info_area` VALUES (3151, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6206', '武威市', '甘肃省武威市', 2, '62');
INSERT INTO `info_area` VALUES (3152, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620602', '凉州区', '甘肃省武威市凉州区', 3, '6206');
INSERT INTO `info_area` VALUES (3153, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620621', '民勤县', '甘肃省武威市民勤县', 3, '6206');
INSERT INTO `info_area` VALUES (3154, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620622', '古浪县', '甘肃省武威市古浪县', 3, '6206');
INSERT INTO `info_area` VALUES (3155, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620623', '天祝藏族自治县', '甘肃省武威市天祝藏族自治县', 3, '6206');
INSERT INTO `info_area` VALUES (3156, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6207', '张掖市', '甘肃省张掖市', 2, '62');
INSERT INTO `info_area` VALUES (3157, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620702', '甘州区', '甘肃省张掖市甘州区', 3, '6207');
INSERT INTO `info_area` VALUES (3158, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620721', '肃南裕固族自治县', '甘肃省张掖市肃南裕固族自治县', 3, '6207');
INSERT INTO `info_area` VALUES (3159, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620722', '民乐县', '甘肃省张掖市民乐县', 3, '6207');
INSERT INTO `info_area` VALUES (3160, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620723', '临泽县', '甘肃省张掖市临泽县', 3, '6207');
INSERT INTO `info_area` VALUES (3161, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620724', '高台县', '甘肃省张掖市高台县', 3, '6207');
INSERT INTO `info_area` VALUES (3162, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620725', '山丹县', '甘肃省张掖市山丹县', 3, '6207');
INSERT INTO `info_area` VALUES (3163, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6208', '平凉市', '甘肃省平凉市', 2, '62');
INSERT INTO `info_area` VALUES (3164, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620802', '崆峒区', '甘肃省平凉市崆峒区', 3, '6208');
INSERT INTO `info_area` VALUES (3165, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620821', '泾川县', '甘肃省平凉市泾川县', 3, '6208');
INSERT INTO `info_area` VALUES (3166, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620822', '灵台县', '甘肃省平凉市灵台县', 3, '6208');
INSERT INTO `info_area` VALUES (3167, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620823', '崇信县', '甘肃省平凉市崇信县', 3, '6208');
INSERT INTO `info_area` VALUES (3168, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620825', '庄浪县', '甘肃省平凉市庄浪县', 3, '6208');
INSERT INTO `info_area` VALUES (3169, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620826', '静宁县', '甘肃省平凉市静宁县', 3, '6208');
INSERT INTO `info_area` VALUES (3170, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620881', '华亭市', '甘肃省平凉市华亭市', 3, '6208');
INSERT INTO `info_area` VALUES (3171, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6209', '酒泉市', '甘肃省酒泉市', 2, '62');
INSERT INTO `info_area` VALUES (3172, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620902', '肃州区', '甘肃省酒泉市肃州区', 3, '6209');
INSERT INTO `info_area` VALUES (3173, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620921', '金塔县', '甘肃省酒泉市金塔县', 3, '6209');
INSERT INTO `info_area` VALUES (3174, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620922', '瓜州县', '甘肃省酒泉市瓜州县', 3, '6209');
INSERT INTO `info_area` VALUES (3175, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620923', '肃北蒙古族自治县', '甘肃省酒泉市肃北蒙古族自治县', 3, '6209');
INSERT INTO `info_area` VALUES (3176, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620924', '阿克塞哈萨克族自治县', '甘肃省酒泉市阿克塞哈萨克族自治县', 3, '6209');
INSERT INTO `info_area` VALUES (3177, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620981', '玉门市', '甘肃省酒泉市玉门市', 3, '6209');
INSERT INTO `info_area` VALUES (3178, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '620982', '敦煌市', '甘肃省酒泉市敦煌市', 3, '6209');
INSERT INTO `info_area` VALUES (3179, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6210', '庆阳市', '甘肃省庆阳市', 2, '62');
INSERT INTO `info_area` VALUES (3180, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621002', '西峰区', '甘肃省庆阳市西峰区', 3, '6210');
INSERT INTO `info_area` VALUES (3181, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621021', '庆城县', '甘肃省庆阳市庆城县', 3, '6210');
INSERT INTO `info_area` VALUES (3182, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621022', '环县', '甘肃省庆阳市环县', 3, '6210');
INSERT INTO `info_area` VALUES (3183, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621023', '华池县', '甘肃省庆阳市华池县', 3, '6210');
INSERT INTO `info_area` VALUES (3184, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621024', '合水县', '甘肃省庆阳市合水县', 3, '6210');
INSERT INTO `info_area` VALUES (3185, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621025', '正宁县', '甘肃省庆阳市正宁县', 3, '6210');
INSERT INTO `info_area` VALUES (3186, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621026', '宁县', '甘肃省庆阳市宁县', 3, '6210');
INSERT INTO `info_area` VALUES (3187, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621027', '镇原县', '甘肃省庆阳市镇原县', 3, '6210');
INSERT INTO `info_area` VALUES (3188, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6211', '定西市', '甘肃省定西市', 2, '62');
INSERT INTO `info_area` VALUES (3189, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621102', '安定区', '甘肃省定西市安定区', 3, '6211');
INSERT INTO `info_area` VALUES (3190, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621121', '通渭县', '甘肃省定西市通渭县', 3, '6211');
INSERT INTO `info_area` VALUES (3191, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621122', '陇西县', '甘肃省定西市陇西县', 3, '6211');
INSERT INTO `info_area` VALUES (3192, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621123', '渭源县', '甘肃省定西市渭源县', 3, '6211');
INSERT INTO `info_area` VALUES (3193, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621124', '临洮县', '甘肃省定西市临洮县', 3, '6211');
INSERT INTO `info_area` VALUES (3194, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621125', '漳县', '甘肃省定西市漳县', 3, '6211');
INSERT INTO `info_area` VALUES (3195, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621126', '岷县', '甘肃省定西市岷县', 3, '6211');
INSERT INTO `info_area` VALUES (3196, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6212', '陇南市', '甘肃省陇南市', 2, '62');
INSERT INTO `info_area` VALUES (3197, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621202', '武都区', '甘肃省陇南市武都区', 3, '6212');
INSERT INTO `info_area` VALUES (3198, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621221', '成县', '甘肃省陇南市成县', 3, '6212');
INSERT INTO `info_area` VALUES (3199, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621222', '文县', '甘肃省陇南市文县', 3, '6212');
INSERT INTO `info_area` VALUES (3200, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621223', '宕昌县', '甘肃省陇南市宕昌县', 3, '6212');
INSERT INTO `info_area` VALUES (3201, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621224', '康县', '甘肃省陇南市康县', 3, '6212');
INSERT INTO `info_area` VALUES (3202, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621225', '西和县', '甘肃省陇南市西和县', 3, '6212');
INSERT INTO `info_area` VALUES (3203, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621226', '礼县', '甘肃省陇南市礼县', 3, '6212');
INSERT INTO `info_area` VALUES (3204, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621227', '徽县', '甘肃省陇南市徽县', 3, '6212');
INSERT INTO `info_area` VALUES (3205, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '621228', '两当县', '甘肃省陇南市两当县', 3, '6212');
INSERT INTO `info_area` VALUES (3206, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6229', '临夏回族自治州', '甘肃省临夏回族自治州', 2, '62');
INSERT INTO `info_area` VALUES (3207, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '622901', '临夏市', '甘肃省临夏回族自治州临夏市', 3, '6229');
INSERT INTO `info_area` VALUES (3208, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '622921', '临夏县', '甘肃省临夏回族自治州临夏县', 3, '6229');
INSERT INTO `info_area` VALUES (3209, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '622922', '康乐县', '甘肃省临夏回族自治州康乐县', 3, '6229');
INSERT INTO `info_area` VALUES (3210, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '622923', '永靖县', '甘肃省临夏回族自治州永靖县', 3, '6229');
INSERT INTO `info_area` VALUES (3211, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '622924', '广河县', '甘肃省临夏回族自治州广河县', 3, '6229');
INSERT INTO `info_area` VALUES (3212, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '622925', '和政县', '甘肃省临夏回族自治州和政县', 3, '6229');
INSERT INTO `info_area` VALUES (3213, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '622926', '东乡族自治县', '甘肃省临夏回族自治州东乡族自治县', 3, '6229');
INSERT INTO `info_area` VALUES (3214, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '622927', '积石山保安族东乡族撒拉族自治县', '甘肃省临夏回族自治州积石山保安族东乡族撒拉族自治县', 3, '6229');
INSERT INTO `info_area` VALUES (3215, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6230', '甘南藏族自治州', '甘肃省甘南藏族自治州', 2, '62');
INSERT INTO `info_area` VALUES (3216, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '623001', '合作市', '甘肃省甘南藏族自治州合作市', 3, '6230');
INSERT INTO `info_area` VALUES (3217, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '623021', '临潭县', '甘肃省甘南藏族自治州临潭县', 3, '6230');
INSERT INTO `info_area` VALUES (3218, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '623022', '卓尼县', '甘肃省甘南藏族自治州卓尼县', 3, '6230');
INSERT INTO `info_area` VALUES (3219, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '623023', '舟曲县', '甘肃省甘南藏族自治州舟曲县', 3, '6230');
INSERT INTO `info_area` VALUES (3220, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '623024', '迭部县', '甘肃省甘南藏族自治州迭部县', 3, '6230');
INSERT INTO `info_area` VALUES (3221, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '623025', '玛曲县', '甘肃省甘南藏族自治州玛曲县', 3, '6230');
INSERT INTO `info_area` VALUES (3222, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '623026', '碌曲县', '甘肃省甘南藏族自治州碌曲县', 3, '6230');
INSERT INTO `info_area` VALUES (3223, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '623027', '夏河县', '甘肃省甘南藏族自治州夏河县', 3, '6230');
INSERT INTO `info_area` VALUES (3224, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '63', '青海省', '青海省', 1, '');
INSERT INTO `info_area` VALUES (3225, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6301', '西宁市', '青海省西宁市', 2, '63');
INSERT INTO `info_area` VALUES (3226, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '630102', '城东区', '青海省西宁市城东区', 3, '6301');
INSERT INTO `info_area` VALUES (3227, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '630103', '城中区', '青海省西宁市城中区', 3, '6301');
INSERT INTO `info_area` VALUES (3228, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '630104', '城西区', '青海省西宁市城西区', 3, '6301');
INSERT INTO `info_area` VALUES (3229, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '630105', '城北区', '青海省西宁市城北区', 3, '6301');
INSERT INTO `info_area` VALUES (3230, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '630106', '湟中区', '青海省西宁市湟中区', 3, '6301');
INSERT INTO `info_area` VALUES (3231, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '630121', '大通回族土族自治县', '青海省西宁市大通回族土族自治县', 3, '6301');
INSERT INTO `info_area` VALUES (3232, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '630123', '湟源县', '青海省西宁市湟源县', 3, '6301');
INSERT INTO `info_area` VALUES (3233, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6302', '海东市', '青海省海东市', 2, '63');
INSERT INTO `info_area` VALUES (3234, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '630202', '乐都区', '青海省海东市乐都区', 3, '6302');
INSERT INTO `info_area` VALUES (3235, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '630203', '平安区', '青海省海东市平安区', 3, '6302');
INSERT INTO `info_area` VALUES (3236, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '630222', '民和回族土族自治县', '青海省海东市民和回族土族自治县', 3, '6302');
INSERT INTO `info_area` VALUES (3237, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '630223', '互助土族自治县', '青海省海东市互助土族自治县', 3, '6302');
INSERT INTO `info_area` VALUES (3238, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '630224', '化隆回族自治县', '青海省海东市化隆回族自治县', 3, '6302');
INSERT INTO `info_area` VALUES (3239, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '630225', '循化撒拉族自治县', '青海省海东市循化撒拉族自治县', 3, '6302');
INSERT INTO `info_area` VALUES (3240, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6322', '海北藏族自治州', '青海省海北藏族自治州', 2, '63');
INSERT INTO `info_area` VALUES (3241, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632221', '门源回族自治县', '青海省海北藏族自治州门源回族自治县', 3, '6322');
INSERT INTO `info_area` VALUES (3242, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632222', '祁连县', '青海省海北藏族自治州祁连县', 3, '6322');
INSERT INTO `info_area` VALUES (3243, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632223', '海晏县', '青海省海北藏族自治州海晏县', 3, '6322');
INSERT INTO `info_area` VALUES (3244, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632224', '刚察县', '青海省海北藏族自治州刚察县', 3, '6322');
INSERT INTO `info_area` VALUES (3245, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6323', '黄南藏族自治州', '青海省黄南藏族自治州', 2, '63');
INSERT INTO `info_area` VALUES (3246, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632301', '同仁市', '青海省黄南藏族自治州同仁市', 3, '6323');
INSERT INTO `info_area` VALUES (3247, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632322', '尖扎县', '青海省黄南藏族自治州尖扎县', 3, '6323');
INSERT INTO `info_area` VALUES (3248, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632323', '泽库县', '青海省黄南藏族自治州泽库县', 3, '6323');
INSERT INTO `info_area` VALUES (3249, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632324', '河南蒙古族自治县', '青海省黄南藏族自治州河南蒙古族自治县', 3, '6323');
INSERT INTO `info_area` VALUES (3250, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6325', '海南藏族自治州', '青海省海南藏族自治州', 2, '63');
INSERT INTO `info_area` VALUES (3251, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632521', '共和县', '青海省海南藏族自治州共和县', 3, '6325');
INSERT INTO `info_area` VALUES (3252, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632522', '同德县', '青海省海南藏族自治州同德县', 3, '6325');
INSERT INTO `info_area` VALUES (3253, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632523', '贵德县', '青海省海南藏族自治州贵德县', 3, '6325');
INSERT INTO `info_area` VALUES (3254, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632524', '兴海县', '青海省海南藏族自治州兴海县', 3, '6325');
INSERT INTO `info_area` VALUES (3255, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632525', '贵南县', '青海省海南藏族自治州贵南县', 3, '6325');
INSERT INTO `info_area` VALUES (3256, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6326', '果洛藏族自治州', '青海省果洛藏族自治州', 2, '63');
INSERT INTO `info_area` VALUES (3257, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632621', '玛沁县', '青海省果洛藏族自治州玛沁县', 3, '6326');
INSERT INTO `info_area` VALUES (3258, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632622', '班玛县', '青海省果洛藏族自治州班玛县', 3, '6326');
INSERT INTO `info_area` VALUES (3259, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632623', '甘德县', '青海省果洛藏族自治州甘德县', 3, '6326');
INSERT INTO `info_area` VALUES (3260, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632624', '达日县', '青海省果洛藏族自治州达日县', 3, '6326');
INSERT INTO `info_area` VALUES (3261, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632625', '久治县', '青海省果洛藏族自治州久治县', 3, '6326');
INSERT INTO `info_area` VALUES (3262, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632626', '玛多县', '青海省果洛藏族自治州玛多县', 3, '6326');
INSERT INTO `info_area` VALUES (3263, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6327', '玉树藏族自治州', '青海省玉树藏族自治州', 2, '63');
INSERT INTO `info_area` VALUES (3264, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632701', '玉树市', '青海省玉树藏族自治州玉树市', 3, '6327');
INSERT INTO `info_area` VALUES (3265, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632722', '杂多县', '青海省玉树藏族自治州杂多县', 3, '6327');
INSERT INTO `info_area` VALUES (3266, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632723', '称多县', '青海省玉树藏族自治州称多县', 3, '6327');
INSERT INTO `info_area` VALUES (3267, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632724', '治多县', '青海省玉树藏族自治州治多县', 3, '6327');
INSERT INTO `info_area` VALUES (3268, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632725', '囊谦县', '青海省玉树藏族自治州囊谦县', 3, '6327');
INSERT INTO `info_area` VALUES (3269, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632726', '曲麻莱县', '青海省玉树藏族自治州曲麻莱县', 3, '6327');
INSERT INTO `info_area` VALUES (3270, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6328', '海西蒙古族藏族自治州', '青海省海西蒙古族藏族自治州', 2, '63');
INSERT INTO `info_area` VALUES (3271, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632801', '格尔木市', '青海省海西蒙古族藏族自治州格尔木市', 3, '6328');
INSERT INTO `info_area` VALUES (3272, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632802', '德令哈市', '青海省海西蒙古族藏族自治州德令哈市', 3, '6328');
INSERT INTO `info_area` VALUES (3273, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632803', '茫崖市', '青海省海西蒙古族藏族自治州茫崖市', 3, '6328');
INSERT INTO `info_area` VALUES (3274, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632821', '乌兰县', '青海省海西蒙古族藏族自治州乌兰县', 3, '6328');
INSERT INTO `info_area` VALUES (3275, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632822', '都兰县', '青海省海西蒙古族藏族自治州都兰县', 3, '6328');
INSERT INTO `info_area` VALUES (3276, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632823', '天峻县', '青海省海西蒙古族藏族自治州天峻县', 3, '6328');
INSERT INTO `info_area` VALUES (3277, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '632857', '大柴旦行政委员会', '青海省海西蒙古族藏族自治州大柴旦行政委员会', 3, '6328');
INSERT INTO `info_area` VALUES (3278, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '64', '宁夏回族自治区', '宁夏回族自治区', 1, '');
INSERT INTO `info_area` VALUES (3279, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6401', '银川市', '宁夏回族自治区银川市', 2, '64');
INSERT INTO `info_area` VALUES (3280, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640104', '兴庆区', '宁夏回族自治区银川市兴庆区', 3, '6401');
INSERT INTO `info_area` VALUES (3281, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640105', '西夏区', '宁夏回族自治区银川市西夏区', 3, '6401');
INSERT INTO `info_area` VALUES (3282, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640106', '金凤区', '宁夏回族自治区银川市金凤区', 3, '6401');
INSERT INTO `info_area` VALUES (3283, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640121', '永宁县', '宁夏回族自治区银川市永宁县', 3, '6401');
INSERT INTO `info_area` VALUES (3284, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640122', '贺兰县', '宁夏回族自治区银川市贺兰县', 3, '6401');
INSERT INTO `info_area` VALUES (3285, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640181', '灵武市', '宁夏回族自治区银川市灵武市', 3, '6401');
INSERT INTO `info_area` VALUES (3286, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6402', '石嘴山市', '宁夏回族自治区石嘴山市', 2, '64');
INSERT INTO `info_area` VALUES (3287, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640202', '大武口区', '宁夏回族自治区石嘴山市大武口区', 3, '6402');
INSERT INTO `info_area` VALUES (3288, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640205', '惠农区', '宁夏回族自治区石嘴山市惠农区', 3, '6402');
INSERT INTO `info_area` VALUES (3289, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640221', '平罗县', '宁夏回族自治区石嘴山市平罗县', 3, '6402');
INSERT INTO `info_area` VALUES (3290, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6403', '吴忠市', '宁夏回族自治区吴忠市', 2, '64');
INSERT INTO `info_area` VALUES (3291, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640302', '利通区', '宁夏回族自治区吴忠市利通区', 3, '6403');
INSERT INTO `info_area` VALUES (3292, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640303', '红寺堡区', '宁夏回族自治区吴忠市红寺堡区', 3, '6403');
INSERT INTO `info_area` VALUES (3293, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640323', '盐池县', '宁夏回族自治区吴忠市盐池县', 3, '6403');
INSERT INTO `info_area` VALUES (3294, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640324', '同心县', '宁夏回族自治区吴忠市同心县', 3, '6403');
INSERT INTO `info_area` VALUES (3295, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640381', '青铜峡市', '宁夏回族自治区吴忠市青铜峡市', 3, '6403');
INSERT INTO `info_area` VALUES (3296, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6404', '固原市', '宁夏回族自治区固原市', 2, '64');
INSERT INTO `info_area` VALUES (3297, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640402', '原州区', '宁夏回族自治区固原市原州区', 3, '6404');
INSERT INTO `info_area` VALUES (3298, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640422', '西吉县', '宁夏回族自治区固原市西吉县', 3, '6404');
INSERT INTO `info_area` VALUES (3299, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640423', '隆德县', '宁夏回族自治区固原市隆德县', 3, '6404');
INSERT INTO `info_area` VALUES (3300, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640424', '泾源县', '宁夏回族自治区固原市泾源县', 3, '6404');
INSERT INTO `info_area` VALUES (3301, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640425', '彭阳县', '宁夏回族自治区固原市彭阳县', 3, '6404');
INSERT INTO `info_area` VALUES (3302, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '6405', '中卫市', '宁夏回族自治区中卫市', 2, '64');
INSERT INTO `info_area` VALUES (3303, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640502', '沙坡头区', '宁夏回族自治区中卫市沙坡头区', 3, '6405');
INSERT INTO `info_area` VALUES (3304, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640521', '中宁县', '宁夏回族自治区中卫市中宁县', 3, '6405');
INSERT INTO `info_area` VALUES (3305, '2024-03-21 19:18:00', 1, '2024-03-21 19:18:00', 1, '640522', '海原县', '宁夏回族自治区中卫市海原县', 3, '6405');
INSERT INTO `info_area` VALUES (3306, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '65', '新疆维吾尔自治区', '新疆维吾尔自治区', 1, '');
INSERT INTO `info_area` VALUES (3307, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '6501', '乌鲁木齐市', '新疆维吾尔自治区乌鲁木齐市', 2, '65');
INSERT INTO `info_area` VALUES (3308, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650102', '天山区', '新疆维吾尔自治区乌鲁木齐市天山区', 3, '6501');
INSERT INTO `info_area` VALUES (3309, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650103', '沙依巴克区', '新疆维吾尔自治区乌鲁木齐市沙依巴克区', 3, '6501');
INSERT INTO `info_area` VALUES (3310, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650104', '新市区', '新疆维吾尔自治区乌鲁木齐市新市区', 3, '6501');
INSERT INTO `info_area` VALUES (3311, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650105', '水磨沟区', '新疆维吾尔自治区乌鲁木齐市水磨沟区', 3, '6501');
INSERT INTO `info_area` VALUES (3312, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650106', '头屯河区', '新疆维吾尔自治区乌鲁木齐市头屯河区', 3, '6501');
INSERT INTO `info_area` VALUES (3313, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650107', '达坂城区', '新疆维吾尔自治区乌鲁木齐市达坂城区', 3, '6501');
INSERT INTO `info_area` VALUES (3314, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650109', '米东区', '新疆维吾尔自治区乌鲁木齐市米东区', 3, '6501');
INSERT INTO `info_area` VALUES (3315, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650121', '乌鲁木齐县', '新疆维吾尔自治区乌鲁木齐市乌鲁木齐县', 3, '6501');
INSERT INTO `info_area` VALUES (3316, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '6502', '克拉玛依市', '新疆维吾尔自治区克拉玛依市', 2, '65');
INSERT INTO `info_area` VALUES (3317, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650202', '独山子区', '新疆维吾尔自治区克拉玛依市独山子区', 3, '6502');
INSERT INTO `info_area` VALUES (3318, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650203', '克拉玛依区', '新疆维吾尔自治区克拉玛依市克拉玛依区', 3, '6502');
INSERT INTO `info_area` VALUES (3319, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650204', '白碱滩区', '新疆维吾尔自治区克拉玛依市白碱滩区', 3, '6502');
INSERT INTO `info_area` VALUES (3320, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650205', '乌尔禾区', '新疆维吾尔自治区克拉玛依市乌尔禾区', 3, '6502');
INSERT INTO `info_area` VALUES (3321, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '6504', '吐鲁番市', '新疆维吾尔自治区吐鲁番市', 2, '65');
INSERT INTO `info_area` VALUES (3322, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650402', '高昌区', '新疆维吾尔自治区吐鲁番市高昌区', 3, '6504');
INSERT INTO `info_area` VALUES (3323, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650421', '鄯善县', '新疆维吾尔自治区吐鲁番市鄯善县', 3, '6504');
INSERT INTO `info_area` VALUES (3324, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650422', '托克逊县', '新疆维吾尔自治区吐鲁番市托克逊县', 3, '6504');
INSERT INTO `info_area` VALUES (3325, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '6505', '哈密市', '新疆维吾尔自治区哈密市', 2, '65');
INSERT INTO `info_area` VALUES (3326, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650502', '伊州区', '新疆维吾尔自治区哈密市伊州区', 3, '6505');
INSERT INTO `info_area` VALUES (3327, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650521', '巴里坤哈萨克自治县', '新疆维吾尔自治区哈密市巴里坤哈萨克自治县', 3, '6505');
INSERT INTO `info_area` VALUES (3328, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '650522', '伊吾县', '新疆维吾尔自治区哈密市伊吾县', 3, '6505');
INSERT INTO `info_area` VALUES (3329, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '6523', '昌吉回族自治州', '新疆维吾尔自治区昌吉回族自治州', 2, '65');
INSERT INTO `info_area` VALUES (3330, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652301', '昌吉市', '新疆维吾尔自治区昌吉回族自治州昌吉市', 3, '6523');
INSERT INTO `info_area` VALUES (3331, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652302', '阜康市', '新疆维吾尔自治区昌吉回族自治州阜康市', 3, '6523');
INSERT INTO `info_area` VALUES (3332, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652323', '呼图壁县', '新疆维吾尔自治区昌吉回族自治州呼图壁县', 3, '6523');
INSERT INTO `info_area` VALUES (3333, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652324', '玛纳斯县', '新疆维吾尔自治区昌吉回族自治州玛纳斯县', 3, '6523');
INSERT INTO `info_area` VALUES (3334, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652325', '奇台县', '新疆维吾尔自治区昌吉回族自治州奇台县', 3, '6523');
INSERT INTO `info_area` VALUES (3335, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652327', '吉木萨尔县', '新疆维吾尔自治区昌吉回族自治州吉木萨尔县', 3, '6523');
INSERT INTO `info_area` VALUES (3336, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652328', '木垒哈萨克自治县', '新疆维吾尔自治区昌吉回族自治州木垒哈萨克自治县', 3, '6523');
INSERT INTO `info_area` VALUES (3337, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '6527', '博尔塔拉蒙古自治州', '新疆维吾尔自治区博尔塔拉蒙古自治州', 2, '65');
INSERT INTO `info_area` VALUES (3338, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652701', '博乐市', '新疆维吾尔自治区博尔塔拉蒙古自治州博乐市', 3, '6527');
INSERT INTO `info_area` VALUES (3339, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652702', '阿拉山口市', '新疆维吾尔自治区博尔塔拉蒙古自治州阿拉山口市', 3, '6527');
INSERT INTO `info_area` VALUES (3340, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652722', '精河县', '新疆维吾尔自治区博尔塔拉蒙古自治州精河县', 3, '6527');
INSERT INTO `info_area` VALUES (3341, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652723', '温泉县', '新疆维吾尔自治区博尔塔拉蒙古自治州温泉县', 3, '6527');
INSERT INTO `info_area` VALUES (3342, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '6528', '巴音郭楞蒙古自治州', '新疆维吾尔自治区巴音郭楞蒙古自治州', 2, '65');
INSERT INTO `info_area` VALUES (3343, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652801', '库尔勒市', '新疆维吾尔自治区巴音郭楞蒙古自治州库尔勒市', 3, '6528');
INSERT INTO `info_area` VALUES (3344, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652822', '轮台县', '新疆维吾尔自治区巴音郭楞蒙古自治州轮台县', 3, '6528');
INSERT INTO `info_area` VALUES (3345, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652823', '尉犁县', '新疆维吾尔自治区巴音郭楞蒙古自治州尉犁县', 3, '6528');
INSERT INTO `info_area` VALUES (3346, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652824', '若羌县', '新疆维吾尔自治区巴音郭楞蒙古自治州若羌县', 3, '6528');
INSERT INTO `info_area` VALUES (3347, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652825', '且末县', '新疆维吾尔自治区巴音郭楞蒙古自治州且末县', 3, '6528');
INSERT INTO `info_area` VALUES (3348, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652826', '焉耆回族自治县', '新疆维吾尔自治区巴音郭楞蒙古自治州焉耆回族自治县', 3, '6528');
INSERT INTO `info_area` VALUES (3349, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652827', '和静县', '新疆维吾尔自治区巴音郭楞蒙古自治州和静县', 3, '6528');
INSERT INTO `info_area` VALUES (3350, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652828', '和硕县', '新疆维吾尔自治区巴音郭楞蒙古自治州和硕县', 3, '6528');
INSERT INTO `info_area` VALUES (3351, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652829', '博湖县', '新疆维吾尔自治区巴音郭楞蒙古自治州博湖县', 3, '6528');
INSERT INTO `info_area` VALUES (3352, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '6529', '阿克苏地区', '新疆维吾尔自治区阿克苏地区', 2, '65');
INSERT INTO `info_area` VALUES (3353, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652901', '阿克苏市', '新疆维吾尔自治区阿克苏地区阿克苏市', 3, '6529');
INSERT INTO `info_area` VALUES (3354, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652902', '库车市', '新疆维吾尔自治区阿克苏地区库车市', 3, '6529');
INSERT INTO `info_area` VALUES (3355, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652922', '温宿县', '新疆维吾尔自治区阿克苏地区温宿县', 3, '6529');
INSERT INTO `info_area` VALUES (3356, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652924', '沙雅县', '新疆维吾尔自治区阿克苏地区沙雅县', 3, '6529');
INSERT INTO `info_area` VALUES (3357, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652925', '新和县', '新疆维吾尔自治区阿克苏地区新和县', 3, '6529');
INSERT INTO `info_area` VALUES (3358, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652926', '拜城县', '新疆维吾尔自治区阿克苏地区拜城县', 3, '6529');
INSERT INTO `info_area` VALUES (3359, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652927', '乌什县', '新疆维吾尔自治区阿克苏地区乌什县', 3, '6529');
INSERT INTO `info_area` VALUES (3360, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652928', '阿瓦提县', '新疆维吾尔自治区阿克苏地区阿瓦提县', 3, '6529');
INSERT INTO `info_area` VALUES (3361, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '652929', '柯坪县', '新疆维吾尔自治区阿克苏地区柯坪县', 3, '6529');
INSERT INTO `info_area` VALUES (3362, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '6530', '克孜勒苏柯尔克孜自治州', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州', 2, '65');
INSERT INTO `info_area` VALUES (3363, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653001', '阿图什市', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州阿图什市', 3, '6530');
INSERT INTO `info_area` VALUES (3364, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653022', '阿克陶县', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州阿克陶县', 3, '6530');
INSERT INTO `info_area` VALUES (3365, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653023', '阿合奇县', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州阿合奇县', 3, '6530');
INSERT INTO `info_area` VALUES (3366, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653024', '乌恰县', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州乌恰县', 3, '6530');
INSERT INTO `info_area` VALUES (3367, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '6531', '喀什地区', '新疆维吾尔自治区喀什地区', 2, '65');
INSERT INTO `info_area` VALUES (3368, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653101', '喀什市', '新疆维吾尔自治区喀什地区喀什市', 3, '6531');
INSERT INTO `info_area` VALUES (3369, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653121', '疏附县', '新疆维吾尔自治区喀什地区疏附县', 3, '6531');
INSERT INTO `info_area` VALUES (3370, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653122', '疏勒县', '新疆维吾尔自治区喀什地区疏勒县', 3, '6531');
INSERT INTO `info_area` VALUES (3371, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653123', '英吉沙县', '新疆维吾尔自治区喀什地区英吉沙县', 3, '6531');
INSERT INTO `info_area` VALUES (3372, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653124', '泽普县', '新疆维吾尔自治区喀什地区泽普县', 3, '6531');
INSERT INTO `info_area` VALUES (3373, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653125', '莎车县', '新疆维吾尔自治区喀什地区莎车县', 3, '6531');
INSERT INTO `info_area` VALUES (3374, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653126', '叶城县', '新疆维吾尔自治区喀什地区叶城县', 3, '6531');
INSERT INTO `info_area` VALUES (3375, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653127', '麦盖提县', '新疆维吾尔自治区喀什地区麦盖提县', 3, '6531');
INSERT INTO `info_area` VALUES (3376, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653128', '岳普湖县', '新疆维吾尔自治区喀什地区岳普湖县', 3, '6531');
INSERT INTO `info_area` VALUES (3377, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653129', '伽师县', '新疆维吾尔自治区喀什地区伽师县', 3, '6531');
INSERT INTO `info_area` VALUES (3378, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653130', '巴楚县', '新疆维吾尔自治区喀什地区巴楚县', 3, '6531');
INSERT INTO `info_area` VALUES (3379, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653131', '塔什库尔干塔吉克自治县', '新疆维吾尔自治区喀什地区塔什库尔干塔吉克自治县', 3, '6531');
INSERT INTO `info_area` VALUES (3380, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '6532', '和田地区', '新疆维吾尔自治区和田地区', 2, '65');
INSERT INTO `info_area` VALUES (3381, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653201', '和田市', '新疆维吾尔自治区和田地区和田市', 3, '6532');
INSERT INTO `info_area` VALUES (3382, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653221', '和田县', '新疆维吾尔自治区和田地区和田县', 3, '6532');
INSERT INTO `info_area` VALUES (3383, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653222', '墨玉县', '新疆维吾尔自治区和田地区墨玉县', 3, '6532');
INSERT INTO `info_area` VALUES (3384, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653223', '皮山县', '新疆维吾尔自治区和田地区皮山县', 3, '6532');
INSERT INTO `info_area` VALUES (3385, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653224', '洛浦县', '新疆维吾尔自治区和田地区洛浦县', 3, '6532');
INSERT INTO `info_area` VALUES (3386, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653225', '策勒县', '新疆维吾尔自治区和田地区策勒县', 3, '6532');
INSERT INTO `info_area` VALUES (3387, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653226', '于田县', '新疆维吾尔自治区和田地区于田县', 3, '6532');
INSERT INTO `info_area` VALUES (3388, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '653227', '民丰县', '新疆维吾尔自治区和田地区民丰县', 3, '6532');
INSERT INTO `info_area` VALUES (3389, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '6540', '伊犁哈萨克自治州', '新疆维吾尔自治区伊犁哈萨克自治州', 2, '65');
INSERT INTO `info_area` VALUES (3390, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654002', '伊宁市', '新疆维吾尔自治区伊犁哈萨克自治州伊宁市', 3, '6540');
INSERT INTO `info_area` VALUES (3391, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654003', '奎屯市', '新疆维吾尔自治区伊犁哈萨克自治州奎屯市', 3, '6540');
INSERT INTO `info_area` VALUES (3392, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654004', '霍尔果斯市', '新疆维吾尔自治区伊犁哈萨克自治州霍尔果斯市', 3, '6540');
INSERT INTO `info_area` VALUES (3393, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654021', '伊宁县', '新疆维吾尔自治区伊犁哈萨克自治州伊宁县', 3, '6540');
INSERT INTO `info_area` VALUES (3394, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654022', '察布查尔锡伯自治县', '新疆维吾尔自治区伊犁哈萨克自治州察布查尔锡伯自治县', 3, '6540');
INSERT INTO `info_area` VALUES (3395, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654023', '霍城县', '新疆维吾尔自治区伊犁哈萨克自治州霍城县', 3, '6540');
INSERT INTO `info_area` VALUES (3396, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654024', '巩留县', '新疆维吾尔自治区伊犁哈萨克自治州巩留县', 3, '6540');
INSERT INTO `info_area` VALUES (3397, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654025', '新源县', '新疆维吾尔自治区伊犁哈萨克自治州新源县', 3, '6540');
INSERT INTO `info_area` VALUES (3398, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654026', '昭苏县', '新疆维吾尔自治区伊犁哈萨克自治州昭苏县', 3, '6540');
INSERT INTO `info_area` VALUES (3399, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654027', '特克斯县', '新疆维吾尔自治区伊犁哈萨克自治州特克斯县', 3, '6540');
INSERT INTO `info_area` VALUES (3400, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654028', '尼勒克县', '新疆维吾尔自治区伊犁哈萨克自治州尼勒克县', 3, '6540');
INSERT INTO `info_area` VALUES (3401, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '6542', '塔城地区', '新疆维吾尔自治区塔城地区', 2, '65');
INSERT INTO `info_area` VALUES (3402, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654201', '塔城市', '新疆维吾尔自治区塔城地区塔城市', 3, '6542');
INSERT INTO `info_area` VALUES (3403, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654202', '乌苏市', '新疆维吾尔自治区塔城地区乌苏市', 3, '6542');
INSERT INTO `info_area` VALUES (3404, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654203', '沙湾市', '新疆维吾尔自治区塔城地区沙湾市', 3, '6542');
INSERT INTO `info_area` VALUES (3405, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654221', '额敏县', '新疆维吾尔自治区塔城地区额敏县', 3, '6542');
INSERT INTO `info_area` VALUES (3406, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654224', '托里县', '新疆维吾尔自治区塔城地区托里县', 3, '6542');
INSERT INTO `info_area` VALUES (3407, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654225', '裕民县', '新疆维吾尔自治区塔城地区裕民县', 3, '6542');
INSERT INTO `info_area` VALUES (3408, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654226', '和布克赛尔蒙古自治县', '新疆维吾尔自治区塔城地区和布克赛尔蒙古自治县', 3, '6542');
INSERT INTO `info_area` VALUES (3409, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '6543', '阿勒泰地区', '新疆维吾尔自治区阿勒泰地区', 2, '65');
INSERT INTO `info_area` VALUES (3410, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654301', '阿勒泰市', '新疆维吾尔自治区阿勒泰地区阿勒泰市', 3, '6543');
INSERT INTO `info_area` VALUES (3411, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654321', '布尔津县', '新疆维吾尔自治区阿勒泰地区布尔津县', 3, '6543');
INSERT INTO `info_area` VALUES (3412, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654322', '富蕴县', '新疆维吾尔自治区阿勒泰地区富蕴县', 3, '6543');
INSERT INTO `info_area` VALUES (3413, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654323', '福海县', '新疆维吾尔自治区阿勒泰地区福海县', 3, '6543');
INSERT INTO `info_area` VALUES (3414, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654324', '哈巴河县', '新疆维吾尔自治区阿勒泰地区哈巴河县', 3, '6543');
INSERT INTO `info_area` VALUES (3415, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654325', '青河县', '新疆维吾尔自治区阿勒泰地区青河县', 3, '6543');
INSERT INTO `info_area` VALUES (3416, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '654326', '吉木乃县', '新疆维吾尔自治区阿勒泰地区吉木乃县', 3, '6543');
INSERT INTO `info_area` VALUES (3417, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '6590', '自治区直辖县级行政区划', '新疆维吾尔自治区自治区直辖县级行政区划', 2, '65');
INSERT INTO `info_area` VALUES (3418, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '659001', '石河子市', '新疆维吾尔自治区自治区直辖县级行政区划石河子市', 3, '6590');
INSERT INTO `info_area` VALUES (3419, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '659002', '阿拉尔市', '新疆维吾尔自治区自治区直辖县级行政区划阿拉尔市', 3, '6590');
INSERT INTO `info_area` VALUES (3420, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '659003', '图木舒克市', '新疆维吾尔自治区自治区直辖县级行政区划图木舒克市', 3, '6590');
INSERT INTO `info_area` VALUES (3421, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '659004', '五家渠市', '新疆维吾尔自治区自治区直辖县级行政区划五家渠市', 3, '6590');
INSERT INTO `info_area` VALUES (3422, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '659005', '北屯市', '新疆维吾尔自治区自治区直辖县级行政区划北屯市', 3, '6590');
INSERT INTO `info_area` VALUES (3423, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '659006', '铁门关市', '新疆维吾尔自治区自治区直辖县级行政区划铁门关市', 3, '6590');
INSERT INTO `info_area` VALUES (3424, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '659007', '双河市', '新疆维吾尔自治区自治区直辖县级行政区划双河市', 3, '6590');
INSERT INTO `info_area` VALUES (3425, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '659008', '可克达拉市', '新疆维吾尔自治区自治区直辖县级行政区划可克达拉市', 3, '6590');
INSERT INTO `info_area` VALUES (3426, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '659009', '昆玉市', '新疆维吾尔自治区自治区直辖县级行政区划昆玉市', 3, '6590');
INSERT INTO `info_area` VALUES (3427, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '659010', '胡杨河市', '新疆维吾尔自治区自治区直辖县级行政区划胡杨河市', 3, '6590');
INSERT INTO `info_area` VALUES (3428, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '659011', '新星市', '新疆维吾尔自治区自治区直辖县级行政区划新星市', 3, '6590');
INSERT INTO `info_area` VALUES (3429, '2024-03-21 19:18:01', 1, '2024-03-21 19:18:01', 1, '659012', '白杨市', '新疆维吾尔自治区自治区直辖县级行政区划白杨市', 3, '6590');
COMMIT;

-- ----------------------------
-- Table structure for oauth2_registered_client
-- ----------------------------
DROP TABLE IF EXISTS `oauth2_registered_client`;
CREATE TABLE `oauth2_registered_client` (
  `id` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `client_id` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `client_id_issued_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `client_secret` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `client_secret_expires_at` timestamp NULL DEFAULT NULL,
  `client_name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `client_authentication_methods` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `authorization_grant_types` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `redirect_uris` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `post_logout_redirect_uris` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `scopes` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `client_settings` varchar(2000) COLLATE utf8mb4_bin NOT NULL,
  `token_settings` varchar(2000) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(48) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
BEGIN;
INSERT INTO `oauth_client_details` VALUES ('wengxs', '', '$2a$10$u0bZmE3ncLZmbQnCshq1kOEp7nuu3fRQNkTHoSpfD1FnJIpOWHwz.', 'server', 'password,refresh_token', NULL, '', NULL, NULL, '{}', '');
INSERT INTO `oauth_client_details` VALUES ('wengxs1', '', '$2a$10$u0bZmE3ncLZmbQnCshq1kOEp7nuu3fRQNkTHoSpfD1FnJIpOWHwz.', 'server', 'password,refresh_token', NULL, '', NULL, NULL, '{}', '');
COMMIT;

-- ----------------------------
-- Table structure for pms_attr
-- ----------------------------
DROP TABLE IF EXISTS `pms_attr`;
CREATE TABLE `pms_attr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `category_id` bigint(20) NOT NULL COMMENT '分类ID',
  `attr_name` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '属性名称',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='商品属性';

-- ----------------------------
-- Records of pms_attr
-- ----------------------------
BEGIN;
INSERT INTO `pms_attr` VALUES (1, '2024-06-06 23:30:24', 1, '2024-06-06 23:30:24', 1, 0, '颜色', 0);
INSERT INTO `pms_attr` VALUES (2, '2024-06-06 23:30:24', 1, '2024-06-06 23:30:24', 1, 0, '尺寸', 0);
COMMIT;

-- ----------------------------
-- Table structure for pms_attr_val
-- ----------------------------
DROP TABLE IF EXISTS `pms_attr_val`;
CREATE TABLE `pms_attr_val` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `attr_id` bigint(20) NOT NULL COMMENT '属性ID',
  `attr_value` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '属性值',
  `sort` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='商品属性值';

-- ----------------------------
-- Table structure for pms_category
-- ----------------------------
DROP TABLE IF EXISTS `pms_category`;
CREATE TABLE `pms_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `category_name` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '分类名称',
  `icon` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '图标',
  `parent_id` bigint(20) NOT NULL COMMENT '父级ID',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '层级',
  `sort` int(11) NOT NULL COMMENT '排序',
  `displayed` tinyint(4) NOT NULL DEFAULT '0' COMMENT '展示状态(0=不展示,1=展示)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='商品分类';

-- ----------------------------
-- Records of pms_category
-- ----------------------------
BEGIN;
INSERT INTO `pms_category` VALUES (1, '2024-05-03 23:00:22', 1, '2024-05-04 00:00:11', 1, '分类1', '111', 0, 1, 1, 1);
INSERT INTO `pms_category` VALUES (2, '2024-05-04 00:00:05', 1, '2024-05-04 00:13:27', 1, '分类2', '1222', 1, 2, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for pms_product
-- ----------------------------
DROP TABLE IF EXISTS `pms_product`;
CREATE TABLE `pms_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `product_name` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '产品名称',
  `factory` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '生产厂家',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='产品信息';

-- ----------------------------
-- Records of pms_product
-- ----------------------------
BEGIN;
INSERT INTO `pms_product` VALUES (1, '2024-03-15 20:53:56', 1, '2024-03-15 20:53:56', 1, '测试产品', '测试工厂');
INSERT INTO `pms_product` VALUES (3, '2024-05-04 16:09:31', 1, '2024-05-04 16:11:45', 1, '小米吹风筒1', '米家');
COMMIT;

-- ----------------------------
-- Table structure for pms_sku
-- ----------------------------
DROP TABLE IF EXISTS `pms_sku`;
CREATE TABLE `pms_sku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `spu_id` bigint(20) NOT NULL COMMENT 'spuID',
  `image` varchar(128) COLLATE utf8mb4_bin NOT NULL COMMENT '图片',
  `price` decimal(12,2) NOT NULL COMMENT '价格',
  `stock` int(11) NOT NULL COMMENT '库存',
  `on_sale` tinyint(4) NOT NULL DEFAULT '0' COMMENT '上架状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='商品分类';

-- ----------------------------
-- Records of pms_sku
-- ----------------------------
BEGIN;
INSERT INTO `pms_sku` VALUES (2, '2024-06-06 23:30:24', 1, '2024-06-06 23:30:24', 1, 3, 'https://wengxs.oss-cn-shenzhen.aliyuncs.com/20240606/a3cb56ff-5afb-405d-8088-9533d8bc7748.jpeg', 1.00, 3, 0);
INSERT INTO `pms_sku` VALUES (3, '2024-06-06 23:30:24', 1, '2024-06-06 23:30:24', 1, 3, 'https://wengxs.oss-cn-shenzhen.aliyuncs.com/20240606/a3cb56ff-5afb-405d-8088-9533d8bc7748.jpeg', 2.00, 4, 0);
INSERT INTO `pms_sku` VALUES (4, '2024-06-06 23:30:24', 1, '2024-06-06 23:30:24', 1, 3, 'https://wengxs.oss-cn-shenzhen.aliyuncs.com/20240606/a3cb56ff-5afb-405d-8088-9533d8bc7748.jpeg', 3.00, 6, 0);
INSERT INTO `pms_sku` VALUES (5, '2024-06-06 23:30:24', 1, '2024-06-06 23:30:24', 1, 3, 'https://wengxs.oss-cn-shenzhen.aliyuncs.com/20240606/a3cb56ff-5afb-405d-8088-9533d8bc7748.jpeg', 4.00, 5, 0);
COMMIT;

-- ----------------------------
-- Table structure for pms_spu
-- ----------------------------
DROP TABLE IF EXISTS `pms_spu`;
CREATE TABLE `pms_spu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `spu_name` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '商品标题',
  `spu_status` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '商品状态',
  `default_image` varchar(128) COLLATE utf8mb4_bin NOT NULL COMMENT '默认图片',
  `category_id` bigint(20) NOT NULL COMMENT '分类ID',
  `sale_count` int(11) NOT NULL DEFAULT '0' COMMENT '总销量',
  `approve_time` datetime DEFAULT NULL COMMENT '审核时间',
  `on_time` datetime DEFAULT NULL COMMENT '上架时间',
  `off_time` datetime DEFAULT NULL COMMENT '下架时间',
  `reject_reason` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '驳回原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='商品信息';

-- ----------------------------
-- Records of pms_spu
-- ----------------------------
BEGIN;
INSERT INTO `pms_spu` VALUES (3, '2024-06-06 23:30:24', 1, '2024-06-06 23:30:24', 1, 'qqq', 'DRAFT', 'https://wengxs.oss-cn-shenzhen.aliyuncs.com/20240606/a3cb56ff-5afb-405d-8088-9533d8bc7748.jpeg', 0, 0, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for pms_spu_description
-- ----------------------------
DROP TABLE IF EXISTS `pms_spu_description`;
CREATE TABLE `pms_spu_description` (
  `spu_id` bigint(20) NOT NULL COMMENT '商品ID',
  `description` text COLLATE utf8mb4_bin COMMENT '商品描述',
  PRIMARY KEY (`spu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='商品描述';

-- ----------------------------
-- Records of pms_spu_description
-- ----------------------------
BEGIN;
INSERT INTO `pms_spu_description` VALUES (3, '');
COMMIT;

-- ----------------------------
-- Table structure for pms_spu_image
-- ----------------------------
DROP TABLE IF EXISTS `pms_spu_image`;
CREATE TABLE `pms_spu_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `spu_id` bigint(20) NOT NULL COMMENT '商品ID',
  `url` varchar(128) COLLATE utf8mb4_bin NOT NULL COMMENT '图片链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='商品图片';

-- ----------------------------
-- Records of pms_spu_image
-- ----------------------------
BEGIN;
INSERT INTO `pms_spu_image` VALUES (13, 3, 'https://wengxs.oss-cn-shenzhen.aliyuncs.com/20240606/a3cb56ff-5afb-405d-8088-9533d8bc7748.jpeg');
INSERT INTO `pms_spu_image` VALUES (14, 3, 'https://wengxs.oss-cn-shenzhen.aliyuncs.com/20240606/0178b934-04be-418e-9c81-e1add703a284.jpg');
INSERT INTO `pms_spu_image` VALUES (15, 3, 'https://wengxs.oss-cn-shenzhen.aliyuncs.com/20240606/0d83c27f-049c-46e1-a115-3124a25772ca.jpg');
INSERT INTO `pms_spu_image` VALUES (16, 3, 'https://wengxs.oss-cn-shenzhen.aliyuncs.com/20240606/dfb19012-7efe-4ecf-a204-df8e4cead8d9.jpg');
INSERT INTO `pms_spu_image` VALUES (17, 3, 'https://wengxs.oss-cn-shenzhen.aliyuncs.com/20240606/2746429a-94ec-4c9f-a0b6-4e9adb21a699.jpg');
INSERT INTO `pms_spu_image` VALUES (18, 3, 'https://wengxs.oss-cn-shenzhen.aliyuncs.com/20240606/db08967d-ee85-44cd-a64f-1e16ff80b832.jpeg');
COMMIT;

-- ----------------------------
-- Table structure for pms_spu_sku_attr_relation
-- ----------------------------
DROP TABLE IF EXISTS `pms_spu_sku_attr_relation`;
CREATE TABLE `pms_spu_sku_attr_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `spu_id` bigint(20) NOT NULL COMMENT 'SPU ID',
  `sku_id` bigint(20) NOT NULL COMMENT 'SKU ID',
  `attr_id` bigint(20) NOT NULL COMMENT '属性ID',
  `attr_value` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '属性值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='商品属性关系';

-- ----------------------------
-- Records of pms_spu_sku_attr_relation
-- ----------------------------
BEGIN;
INSERT INTO `pms_spu_sku_attr_relation` VALUES (1, '2024-06-06 23:30:24', 1, '2024-06-06 23:30:24', 1, 3, 2, 1, '白色');
INSERT INTO `pms_spu_sku_attr_relation` VALUES (2, '2024-06-06 23:30:24', 1, '2024-06-06 23:30:24', 1, 3, 2, 2, '大');
INSERT INTO `pms_spu_sku_attr_relation` VALUES (3, '2024-06-06 23:30:24', 1, '2024-06-06 23:30:24', 1, 3, 3, 1, '白色');
INSERT INTO `pms_spu_sku_attr_relation` VALUES (4, '2024-06-06 23:30:24', 1, '2024-06-06 23:30:24', 1, 3, 3, 2, '小');
INSERT INTO `pms_spu_sku_attr_relation` VALUES (5, '2024-06-06 23:30:24', 1, '2024-06-06 23:30:24', 1, 3, 4, 1, '黑色');
INSERT INTO `pms_spu_sku_attr_relation` VALUES (6, '2024-06-06 23:30:24', 1, '2024-06-06 23:30:24', 1, 3, 4, 2, '大');
INSERT INTO `pms_spu_sku_attr_relation` VALUES (7, '2024-06-06 23:30:24', 1, '2024-06-06 23:30:24', 1, 3, 5, 1, '黑色');
INSERT INTO `pms_spu_sku_attr_relation` VALUES (8, '2024-06-06 23:30:24', 1, '2024-06-06 23:30:24', 1, 3, 5, 2, '小');
COMMIT;

-- ----------------------------
-- Table structure for sale_order
-- ----------------------------
DROP TABLE IF EXISTS `sale_order`;
CREATE TABLE `sale_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `order_no` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '订单编号',
  `order_status` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '订单状态',
  `platform` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '销售平台',
  `shop_name` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '店铺名称',
  `buyer` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '买家名称',
  `mobile` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '买家电话',
  `area_code` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '买家地区编码',
  `area` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '买家地区',
  `address` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '买家地址',
  `order_remake` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '订单备注',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '总金额',
  `pay_time` datetime DEFAULT NULL COMMENT '付款时间',
  `ship_time` datetime DEFAULT NULL COMMENT '发货时间',
  `sign_time` datetime DEFAULT NULL COMMENT '签收时间',
  `finish_time` datetime DEFAULT NULL COMMENT '完结时间',
  `cancel_time` datetime DEFAULT NULL COMMENT '取消时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='销售单';

-- ----------------------------
-- Table structure for sale_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `sale_order_detail`;
CREATE TABLE `sale_order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `order_id` bigint(20) NOT NULL COMMENT '销售单ID',
  `product_id` bigint(20) NOT NULL COMMENT '产品ID',
  `price` decimal(10,4) NOT NULL COMMENT '单价',
  `qty` int(11) NOT NULL COMMENT '购买数量',
  `amount` decimal(10,4) NOT NULL COMMENT '总金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='销售明细';

-- ----------------------------
-- Table structure for scm_purchase
-- ----------------------------
DROP TABLE IF EXISTS `scm_purchase`;
CREATE TABLE `scm_purchase` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `purchase_no` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '订单编号',
  `purchase_status` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '订单状态',
  `supplier_id` bigint(20) NOT NULL COMMENT '供应商ID',
  `purchase_remake` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '采购备注',
  `amount` decimal(10,4) DEFAULT NULL COMMENT '订单金额',
  `signed_time` datetime DEFAULT NULL COMMENT '签约时间',
  `finished_time` datetime DEFAULT NULL COMMENT '完结时间',
  `canceled_time` datetime DEFAULT NULL COMMENT '取消时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='采购单';

-- ----------------------------
-- Records of scm_purchase
-- ----------------------------
BEGIN;
INSERT INTO `scm_purchase` VALUES (2, '2024-03-17 01:08:12', 1, '2024-03-20 02:19:44', 1, 'P2024031700002', 'FINISHED', 1, '采购备注采购备注采购备注采购备注采购备注采购备注采购备注', NULL, '2024-03-18 16:28:15', '2024-03-20 02:19:45', NULL);
INSERT INTO `scm_purchase` VALUES (3, '2024-03-19 23:25:52', 1, '2024-03-20 02:19:32', 1, 'P2024031900001', 'FINISHED', 1, '采购备注', 183.3315, '2024-03-19 23:27:49', '2024-03-20 02:19:32', NULL);
INSERT INTO `scm_purchase` VALUES (4, '2024-05-13 00:26:44', 1, '2024-05-13 00:28:26', 1, 'SP2024051300001', 'CANCELED', 1, '测试供应商测试供应商测试供应商测试供应商测试供应商测试供应商测试供应商测试供应商', 6.0000, NULL, NULL, '2024-05-13 00:28:26');
INSERT INTO `scm_purchase` VALUES (5, '2024-05-13 19:55:58', 1, '2024-05-13 21:21:22', 1, 'SP2024051300002', 'SENT', 1, NULL, 2.0000, '2024-05-13 20:39:58', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for scm_purchase_detail
-- ----------------------------
DROP TABLE IF EXISTS `scm_purchase_detail`;
CREATE TABLE `scm_purchase_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `purchase_id` bigint(20) NOT NULL COMMENT '采购单ID',
  `product_id` bigint(20) NOT NULL COMMENT '产品ID',
  `price` decimal(10,4) NOT NULL COMMENT '单价',
  `qty` int(11) NOT NULL COMMENT '采购数量',
  `amount` decimal(10,4) NOT NULL COMMENT '总金额',
  `received_qty` int(11) DEFAULT NULL COMMENT '收货数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='采购明细';

-- ----------------------------
-- Records of scm_purchase_detail
-- ----------------------------
BEGIN;
INSERT INTO `scm_purchase_detail` VALUES (1, '2024-03-17 01:08:12', 1, '2024-03-17 01:08:12', 1, 2, 1, 2.2000, 13, 28.6000, NULL);
INSERT INTO `scm_purchase_detail` VALUES (2, '2024-03-17 01:08:12', 1, '2024-03-17 01:08:12', 1, 2, 2, 12.2221, 15, 183.3315, NULL);
INSERT INTO `scm_purchase_detail` VALUES (3, '2024-03-19 23:25:52', 1, '2024-03-19 23:25:52', 1, 3, 2, 12.2221, 15, 183.3315, NULL);
INSERT INTO `scm_purchase_detail` VALUES (6, '2024-05-13 00:27:27', 1, '2024-05-13 00:27:27', 1, 4, 3, 2.0000, 3, 6.0000, NULL);
INSERT INTO `scm_purchase_detail` VALUES (7, '2024-05-13 19:55:58', 1, '2024-05-13 19:55:58', 1, 5, 3, 1.0000, 2, 2.0000, NULL);
COMMIT;

-- ----------------------------
-- Table structure for scm_supplier
-- ----------------------------
DROP TABLE IF EXISTS `scm_supplier`;
CREATE TABLE `scm_supplier` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `supplier_name` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '供应商',
  `contacts` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '联系人',
  `mobile` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '联系电话',
  `province` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '所在省份',
  `address` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='供应商信息';

-- ----------------------------
-- Records of scm_supplier
-- ----------------------------
BEGIN;
INSERT INTO `scm_supplier` VALUES (1, '2024-03-16 23:15:59', 1, '2024-03-16 23:15:59', 1, '测试供应商', '测试员', '13800138000', '广东省', '广东省');
INSERT INTO `scm_supplier` VALUES (2, '2024-05-12 16:40:58', 1, '2024-05-12 16:40:58', 1, '广东XXX有限公司', 'qwe', '11111111111', '广东省', '广州');
COMMIT;

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='部门';

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '上级ID',
  `menu_name` varchar(32) NOT NULL COMMENT '菜单权限名称',
  `icon` varchar(64) DEFAULT NULL COMMENT '图标',
  `type` varchar(8) NOT NULL COMMENT '类型（MENU=菜单,BUTTON=按钮）',
  `permission` varchar(64) DEFAULT NULL COMMENT '权限标识',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `path` varchar(64) DEFAULT NULL COMMENT '路径URL',
  `component` varchar(64) DEFAULT NULL COMMENT 'VUE页面组件',
  `hidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '隐藏菜单',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_parent_id` (`parent_id`) USING BTREE,
  KEY `idx_type` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='菜单';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, '2020-05-31 23:44:45', 1, '2024-05-12 16:33:38', 1, 0, '系统管理', 'system', 'MENU', '', 99, '/sys', '', 0);
INSERT INTO `sys_menu` VALUES (2, '2020-06-05 01:53:41', 1, '2024-05-01 13:46:28', 1, 1, '用户管理', 'user', 'MENU', '', 1, '/sys/user', 'sys/user/index', 0);
INSERT INTO `sys_menu` VALUES (3, '2020-06-05 01:55:28', 1, '2024-05-01 13:46:12', 1, 1, '角色管理', 'role', 'MENU', '', 2, '/sys/role', 'sys/role/index', 0);
INSERT INTO `sys_menu` VALUES (4, '2020-06-05 01:55:29', 1, '2024-05-01 13:47:22', 1, 1, '菜单管理', 'menu', 'MENU', '', 3, '/sys/menu', 'sys/menu/index', 0);
INSERT INTO `sys_menu` VALUES (5, '2020-06-05 01:55:29', 1, '2024-05-01 13:47:37', 1, 1, '系统配置', 'setting', 'MENU', '', 4, '/sys/setting', 'sys/setting/index', 0);
INSERT INTO `sys_menu` VALUES (6, '2020-06-05 01:55:29', 1, '2024-05-04 21:28:51', 1, 0, '系统监控', 'monitor', 'MENU', '', 100, '/monitor', '', 0);
INSERT INTO `sys_menu` VALUES (7, '2020-06-05 01:56:00', 1, '2024-05-04 21:28:22', 1, 6, '系统信息', 'client', 'MENU', '', 1, '/monitor/sysInfo', '', 0);
INSERT INTO `sys_menu` VALUES (8, '2020-06-07 20:46:27', 1, '2020-06-07 20:46:27', 1, 2, '查询', NULL, 'BUTTON', 'sys:user:query', 1, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (9, '2020-06-07 20:52:11', 1, '2020-06-07 20:52:11', 1, 2, '新增', NULL, 'BUTTON', 'sys:user:add', 2, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (10, '2020-06-07 20:52:56', 1, '2020-06-07 21:14:00', 1, 2, '修改', '', 'BUTTON', 'sys:user:edit', 3, '', '', 0);
INSERT INTO `sys_menu` VALUES (12, '2020-06-07 21:15:47', 1, '2020-06-07 21:15:47', 1, 2, '删除', NULL, 'BUTTON', 'sys:user:del', 4, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (13, '2020-06-21 20:18:43', 1, '2024-05-01 22:35:35', 1, 65, '代码生成', 'api', 'MENU', NULL, 1, '/gen/code', 'gen/code/index', 0);
INSERT INTO `sys_menu` VALUES (14, '2023-04-05 06:50:25', 1, '2024-05-01 13:24:32', 1, 0, '产品管理', 'document', 'MENU', NULL, 1, '/pms', NULL, 0);
INSERT INTO `sys_menu` VALUES (15, '2023-04-05 06:52:30', 1, '2024-05-04 21:31:16', 1, 14, '品牌列表', 'publish', 'MENU', 'pms:brand:list', 1, '/pms/brand', 'pms/brand/index', 0);
INSERT INTO `sys_menu` VALUES (19, '2023-04-15 12:01:19', 1, '2024-05-04 21:29:58', 1, 14, '分类管理', 'tree', 'MENU', 'pms:category:list', 1, '/pms/category', 'pms/category/index', 0);
INSERT INTO `sys_menu` VALUES (20, '2023-04-15 12:01:19', 1, '2023-04-15 12:01:19', 1, 19, '分类管理查询', NULL, 'BUTTON', 'pms:category:query', 0, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (21, '2023-04-15 12:01:19', 1, '2023-04-15 12:01:19', 1, 19, '分类管理新增', NULL, 'BUTTON', 'pms:category:add', 1, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (22, '2023-04-15 12:01:19', 1, '2023-04-15 12:01:19', 1, 19, '分类管理修改', NULL, 'BUTTON', 'pms:category:edit', 2, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (23, '2023-04-15 12:01:19', 1, '2023-04-15 12:02:22', 1, 19, '分类管理删除', NULL, 'BUTTON', 'pms:category:del', 3, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (24, '2023-04-15 12:01:19', 1, '2023-04-15 12:01:19', 1, 19, '分类管理导出', NULL, 'BUTTON', 'pms:category:export', 4, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (25, '2023-04-15 12:01:19', 1, '2023-04-15 12:01:19', 1, 19, '分类管理导入', NULL, 'BUTTON', 'pms:category:import', 5, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (26, '2023-04-18 01:51:46', 1, '2024-05-04 15:58:15', 1, 14, '产品信息', 'document', 'MENU', NULL, 3, '/pms/product', 'pms/product/index', 0);
INSERT INTO `sys_menu` VALUES (27, '2023-04-18 01:51:46', 1, '2024-05-04 16:00:36', 1, 26, '产品信息-查询', NULL, 'BUTTON', 'pms:product:query', 1, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (28, '2023-04-18 01:51:46', 1, '2024-05-04 16:00:53', 1, 26, '产品信息-新增', NULL, 'BUTTON', 'pms:product:add', 2, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (29, '2023-04-18 01:51:46', 1, '2024-05-04 16:01:21', 1, 26, '产品信息-删除', NULL, 'BUTTON', 'pms:product:del', 4, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (30, '2023-04-18 01:52:53', 1, '2023-04-18 01:54:14', 1, 15, '品牌查询', NULL, 'BUTTON', 'pms:brand:query', 0, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (31, '2023-04-18 01:53:26', 1, '2023-04-18 01:54:25', 1, 15, '品牌新增', NULL, 'BUTTON', 'pms:brand:add', 1, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (32, '2023-04-18 01:53:59', 1, '2023-04-18 01:54:30', 1, 15, '品牌修改', NULL, 'BUTTON', 'pms:brand:edit', 2, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (33, '2023-04-18 01:54:54', 1, '2023-04-18 01:54:54', 1, 15, '品牌删除', NULL, 'BUTTON', 'pms:brand:del', 3, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (34, '2023-04-18 01:56:38', 1, '2024-05-04 16:01:06', 1, 26, '产品信息-修改', NULL, 'BUTTON', 'pms:product:edit', 3, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (35, '2023-04-18 03:40:20', 1, '2024-05-04 21:17:49', 1, 0, '经营管理', 'eye-open', 'MENU', NULL, 2, '/bms', NULL, 0);
INSERT INTO `sys_menu` VALUES (36, '2023-04-18 03:41:53', 1, '2024-05-04 21:24:57', 1, 35, '店铺列表', 'fullscreen-exit', 'MENU', 'bms:shop:list', 1, '/bms/shop', 'bms/shop/index', 0);
INSERT INTO `sys_menu` VALUES (37, '2023-04-18 03:41:53', 1, '2024-05-04 21:25:08', 1, 36, '店铺列表-查询', NULL, 'BUTTON', 'bms:shop:query', 1, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (38, '2023-04-18 03:41:53', 1, '2024-05-04 21:25:39', 1, 36, '店铺列表-新增', NULL, 'BUTTON', 'bms:shop:add', 2, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (39, '2023-04-18 03:41:53', 1, '2024-05-04 21:25:35', 1, 36, '店铺列表-修改', NULL, 'BUTTON', 'bms:shop:edit', 3, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (40, '2023-04-18 03:41:53', 1, '2024-05-04 21:25:29', 1, 36, '店铺列表-删除', NULL, 'BUTTON', 'bms:shop:del', 4, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (41, '2024-05-01 13:50:33', 1, '2024-05-01 13:51:09', 1, 3, '角色管理-查询', NULL, 'BUTTON', 'sys:role:query', 1, '', NULL, 0);
INSERT INTO `sys_menu` VALUES (42, '2024-05-01 13:51:57', 1, '2024-05-01 13:51:57', 1, 3, '角色管理-新增', NULL, 'BUTTON', 'sys:role:add', 2, '', NULL, 0);
INSERT INTO `sys_menu` VALUES (43, '2024-05-01 13:52:48', 1, '2024-05-01 13:52:48', 1, 3, '角色管理-修改', NULL, 'BUTTON', 'sys:role:edit', 3, '', NULL, 0);
INSERT INTO `sys_menu` VALUES (44, '2024-05-01 13:53:23', 1, '2024-05-01 13:53:23', 1, 3, '角色管理-删除', NULL, 'BUTTON', 'sys:role:del', 4, '', NULL, 0);
INSERT INTO `sys_menu` VALUES (45, '2024-05-01 13:54:00', 1, '2024-05-01 13:54:00', 1, 4, '菜单管理-查询', NULL, 'BUTTON', 'sys:menu:query', 1, '', NULL, 0);
INSERT INTO `sys_menu` VALUES (46, '2024-05-01 13:54:19', 1, '2024-05-01 13:54:19', 1, 4, '菜单管理-新增', NULL, 'BUTTON', 'sys:menu:add', 2, '', NULL, 0);
INSERT INTO `sys_menu` VALUES (47, '2024-05-01 13:54:40', 1, '2024-05-01 13:54:40', 1, 4, '菜单管理-修改', NULL, 'BUTTON', 'sys:menu:update', 3, '', NULL, 0);
INSERT INTO `sys_menu` VALUES (48, '2024-05-01 13:55:02', 1, '2024-05-01 13:55:02', 1, 4, '菜单管理-删除', NULL, 'BUTTON', 'sys:menu:del', 4, '', NULL, 0);
INSERT INTO `sys_menu` VALUES (49, '2024-05-01 13:55:59', 1, '2024-05-01 13:55:59', 1, 5, '系统配置-修改', NULL, 'BUTTON', 'sys:setting:update', 1, '', NULL, 0);
INSERT INTO `sys_menu` VALUES (65, '2024-05-01 22:34:58', 1, '2024-05-01 22:34:58', 1, 0, '生成工具', 'api', 'MENU', NULL, 101, '/gen', NULL, 0);
INSERT INTO `sys_menu` VALUES (66, '2024-05-05 01:05:46', 1, '2024-05-05 01:06:19', 1, 14, '商品信息', 'moon', 'MENU', NULL, 4, '/pms/spu', 'pms/spu/index', 0);
INSERT INTO `sys_menu` VALUES (67, '2024-05-05 01:05:46', 1, '2024-05-05 01:06:28', 1, 66, '商品信息-查询', NULL, 'BUTTON', 'pms:spu:query', 1, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (68, '2024-05-05 01:05:46', 1, '2024-05-05 01:06:36', 1, 66, '商品信息-修改', NULL, 'BUTTON', 'pms:spu:edit', 1, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (69, '2024-05-05 01:05:46', 1, '2024-05-05 01:06:43', 1, 66, '商品信息-新增', NULL, 'BUTTON', 'pms:spu:add', 2, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (70, '2024-05-05 01:05:46', 1, '2024-05-05 01:06:49', 1, 66, '商品信息-删除', NULL, 'BUTTON', 'pms:spu:del', 3, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (71, '2024-05-12 16:34:43', 1, '2024-05-12 16:34:43', 1, 0, '供应链管理', 'link', 'MENU', NULL, 3, '/scm', NULL, 0);
INSERT INTO `sys_menu` VALUES (72, '2024-05-12 16:36:35', 1, '2024-05-12 16:36:35', 1, 71, '供应商', 'peoples', 'MENU', NULL, 1, '/scm/supplier', 'scm/supplier/index', 0);
INSERT INTO `sys_menu` VALUES (73, '2024-05-12 16:36:35', 1, '2024-05-12 16:36:35', 1, 72, '供应商-查询', NULL, 'BUTTON', 'scm:supplier:query', 0, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (74, '2024-05-12 16:36:35', 1, '2024-05-12 16:36:35', 1, 72, '供应商-新增', NULL, 'BUTTON', 'scm:supplier:add', 1, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (75, '2024-05-12 16:36:35', 1, '2024-05-12 16:36:35', 1, 72, '供应商-修改', NULL, 'BUTTON', 'scm:supplier:edit', 2, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (76, '2024-05-12 16:36:35', 1, '2024-05-12 16:36:35', 1, 72, '供应商-删除', NULL, 'BUTTON', 'scm:supplier:del', 3, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (77, '2024-05-12 16:37:33', 1, '2024-05-12 16:37:33', 1, 71, '采购订单', 'edit', 'MENU', NULL, 1, '/scm/purchase', 'scm/purchase/index', 0);
INSERT INTO `sys_menu` VALUES (78, '2024-05-12 16:37:33', 1, '2024-05-12 16:37:33', 1, 77, '采购订单-查询', NULL, 'BUTTON', 'scm:purchase:query', 0, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (79, '2024-05-12 16:37:33', 1, '2024-05-12 16:37:33', 1, 77, '采购订单-新增', NULL, 'BUTTON', 'scm:purchase:add', 1, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (80, '2024-05-12 16:37:33', 1, '2024-05-12 16:37:33', 1, 77, '采购订单-修改', NULL, 'BUTTON', 'scm:purchase:edit', 2, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (81, '2024-05-12 16:37:33', 1, '2024-05-12 19:14:00', 1, 77, '采购订单-取消', NULL, 'BUTTON', 'scm:purchase:cancel', 3, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (82, '2024-05-13 23:02:22', 1, '2024-05-13 23:02:22', 1, 0, '仓储系统', 'close_other', 'MENU', NULL, 4, '/wms', NULL, 0);
INSERT INTO `sys_menu` VALUES (83, '2024-05-13 23:03:21', 1, '2024-05-13 23:03:21', 1, 82, '收货单', 'monitor', 'MENU', NULL, 1, '/wms/receive', 'wms/receive/index', 0);
INSERT INTO `sys_menu` VALUES (84, '2024-05-13 23:03:21', 1, '2024-05-13 23:03:21', 1, 83, '收货单-查询', NULL, 'BUTTON', 'wms:receive:query', 0, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (85, '2024-05-13 23:03:21', 1, '2024-05-13 23:03:21', 1, 83, '收货单-新增', NULL, 'BUTTON', 'wms:receive:add', 1, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (86, '2024-05-13 23:03:21', 1, '2024-05-13 23:03:21', 1, 83, '收货单-修改', NULL, 'BUTTON', 'wms:receive:edit', 2, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (87, '2024-05-13 23:03:21', 1, '2024-05-13 23:03:21', 1, 83, '收货单-删除', NULL, 'BUTTON', 'wms:receive:del', 3, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (88, '2024-06-02 15:46:10', 1, '2024-06-03 22:19:44', 1, 14, '新增商品', 'close', 'MENU', NULL, 11, '/pms/spu/add', 'pms/spu/add', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `name` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '权限名称',
  `uri` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT 'URI',
  `method` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '请求方式',
  `role_ids` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '角色',
  `permissions` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '权限标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='权限';

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `role_name` varchar(32) NOT NULL COMMENT '角色名称',
  `role_key` varchar(32) NOT NULL COMMENT '角色标识',
  `description` varchar(255) DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_name` (`role_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '2023-03-12 02:03:22', 1, '2023-03-12 02:03:22', 1, '超级管理员', 'admin', '拥有最高级权限');
INSERT INTO `sys_role` VALUES (2, '2023-04-03 21:19:47', 1, '2023-04-03 21:19:47', 1, '测试', 'test', 'ggg ');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(11) NOT NULL,
  `menu_id` bigint(11) NOT NULL,
  KEY `idx_role_id` (`role_id`) USING BTREE,
  KEY `idx_menu_id` (`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 5);
INSERT INTO `sys_role_menu` VALUES (2, 30);
INSERT INTO `sys_role_menu` VALUES (2, 31);
INSERT INTO `sys_role_menu` VALUES (2, 32);
INSERT INTO `sys_role_menu` VALUES (2, 33);
INSERT INTO `sys_role_menu` VALUES (2, 27);
INSERT INTO `sys_role_menu` VALUES (2, 37);
INSERT INTO `sys_role_menu` VALUES (2, 38);
INSERT INTO `sys_role_menu` VALUES (2, 39);
INSERT INTO `sys_role_menu` VALUES (2, 40);
COMMIT;

-- ----------------------------
-- Table structure for sys_setting
-- ----------------------------
DROP TABLE IF EXISTS `sys_setting`;
CREATE TABLE `sys_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `key` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '键',
  `label` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '标签',
  `value` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='系统设置';

-- ----------------------------
-- Records of sys_setting
-- ----------------------------
BEGIN;
INSERT INTO `sys_setting` VALUES (1, '2023-03-12 02:12:29', 1, '2023-03-12 02:12:29', 1, 'system_name', '系统名称', 'XXX管理系统');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `mobile` varchar(11) NOT NULL COMMENT '手机号',
  `user_status` varchar(16) NOT NULL DEFAULT 'ENABLED' COMMENT '状态',
  `avatar` varchar(128) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_username` (`username`) USING BTREE,
  UNIQUE KEY `uk_mobile` (`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, '2020-02-09 23:11:17', 0, '2024-05-07 21:18:46', 1, 'admin', '$2a$10$Ja/x.8cWHKQ/6kaZLZWu6uj2lD9PBVcPUsIjHpdCluvts0tjwa5je', '13800138000', 'ENABLED', 'https://wengxs.oss-cn-shenzhen.aliyuncs.com/20240507/474faa2d-99e4-4600-9cf9-b52726348be2.jpg');
INSERT INTO `sys_user` VALUES (2, '2023-03-28 01:41:04', 1, '2023-03-28 01:41:04', 1, 'test', '$2a$10$hLBCifz/DRP3Rel/a2Uy.eIOeUTQ2kKPDZX84grHUqThtv.mQVr2i', '13800138001', 'ENABLED', NULL);
INSERT INTO `sys_user` VALUES (3, '2024-04-30 00:10:55', 1, '2024-04-30 00:10:55', 1, 'test01', '$2a$10$8g5EM7S8Zq4dUABZUXCVaex2LoQqZK.A5McZDnvMZcmiCpYaUkcHm', '13800138002', 'ENABLED', 'https://wengxs.oss-cn-shenzhen.aliyuncs.com/20240507/f5f05d76-5ae7-4ac5-bf9e-97f48f23266b.jpg');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `idx_user_id` (`role_id`) USING BTREE,
  KEY `idx_role_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (1, 2);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (3, 2);
INSERT INTO `sys_user_role` VALUES (3, 1);
COMMIT;

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `branch_id` bigint(20) NOT NULL,
  `xid` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `context` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `rollback_info` longblob NOT NULL,
  `log_status` int(11) NOT NULL,
  `log_created` datetime NOT NULL,
  `log_modified` datetime NOT NULL,
  `ext` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for wms_product_batch
-- ----------------------------
DROP TABLE IF EXISTS `wms_product_batch`;
CREATE TABLE `wms_product_batch` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `product_lot_id` bigint(20) NOT NULL COMMENT '产品批号ID',
  `batch_no` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '批次编号',
  `qualified` int(11) NOT NULL COMMENT '合格状态(0=不合格,1=合格)',
  `received_qty` int(11) NOT NULL COMMENT '收货数量',
  `usable_qty` int(11) NOT NULL COMMENT '可用数量',
  `receive_id` bigint(20) DEFAULT NULL COMMENT '收货单ID',
  `receive_detail_id` bigint(20) DEFAULT NULL COMMENT '收货单明细ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='产品批次';

-- ----------------------------
-- Records of wms_product_batch
-- ----------------------------
BEGIN;
INSERT INTO `wms_product_batch` VALUES (1, '2024-03-20 02:01:21', 1, '2024-03-20 02:01:21', 1, 1, 'PB2024032000002', 1, 5, 5, 2, 3);
INSERT INTO `wms_product_batch` VALUES (2, '2024-03-20 02:01:21', 1, '2024-03-20 02:01:21', 1, 2, 'PB2024032000002', 1, 5, 5, 2, 3);
INSERT INTO `wms_product_batch` VALUES (3, '2024-03-20 02:01:21', 1, '2024-03-20 02:01:21', 1, 2, 'PB2024032000002', 0, 2, 2, 2, 3);
INSERT INTO `wms_product_batch` VALUES (4, '2024-03-20 02:01:21', 1, '2024-03-20 02:01:21', 1, 3, 'PB2024032000002', 1, 15, 15, 2, 4);
INSERT INTO `wms_product_batch` VALUES (5, '2024-03-20 02:04:14', 1, '2024-03-20 02:04:14', 1, 3, 'PB2024032000003', 1, 15, 15, 3, 5);
COMMIT;

-- ----------------------------
-- Table structure for wms_product_lot
-- ----------------------------
DROP TABLE IF EXISTS `wms_product_lot`;
CREATE TABLE `wms_product_lot` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `product_id` bigint(20) NOT NULL COMMENT '产品ID',
  `lot_no` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '生产批号',
  `prod_date` date NOT NULL COMMENT '生产日期',
  `expired_date` date NOT NULL COMMENT '有效日期',
  `total_qty` int(11) NOT NULL DEFAULT '0' COMMENT '总数量',
  `qualified_qty` int(11) NOT NULL DEFAULT '0' COMMENT '合格数量',
  `unqualified_qty` int(11) NOT NULL DEFAULT '0' COMMENT '不合格数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='产品批号';

-- ----------------------------
-- Records of wms_product_lot
-- ----------------------------
BEGIN;
INSERT INTO `wms_product_lot` VALUES (1, '2024-03-20 02:01:21', 1, '2024-03-20 02:01:21', 1, 1, 'A001', '2024-01-01', '2028-01-01', 5, 5, 0);
INSERT INTO `wms_product_lot` VALUES (2, '2024-03-20 02:01:21', 1, '2024-03-20 02:01:21', 1, 1, 'A002', '2024-02-01', '2028-02-01', 7, 5, 2);
INSERT INTO `wms_product_lot` VALUES (3, '2024-03-20 02:01:21', 1, '2024-03-20 02:04:14', 1, 2, 'B001', '2023-02-01', '2028-02-01', 30, 30, 0);
COMMIT;

-- ----------------------------
-- Table structure for wms_product_stock
-- ----------------------------
DROP TABLE IF EXISTS `wms_product_stock`;
CREATE TABLE `wms_product_stock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `product_id` bigint(20) NOT NULL COMMENT '产品ID',
  `total_stock` int(11) NOT NULL DEFAULT '0' COMMENT '总库存',
  `usable_stock` int(11) NOT NULL DEFAULT '0' COMMENT '可用库存',
  `locked_stock` int(11) NOT NULL DEFAULT '0' COMMENT '锁定库存',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='产品库存';

-- ----------------------------
-- Records of wms_product_stock
-- ----------------------------
BEGIN;
INSERT INTO `wms_product_stock` VALUES (1, '2024-03-20 02:01:21', 1, '2024-03-20 02:01:21', 1, 1, 10, 10, 0);
INSERT INTO `wms_product_stock` VALUES (2, '2024-03-20 02:01:21', 1, '2024-03-20 02:04:14', 1, 2, 30, 3, 27);
COMMIT;

-- ----------------------------
-- Table structure for wms_receive
-- ----------------------------
DROP TABLE IF EXISTS `wms_receive`;
CREATE TABLE `wms_receive` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `receive_no` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '收货单号',
  `receive_status` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '收货状态',
  `biz_type` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '业务类型',
  `biz_no` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '业务单号',
  `logistics_name` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '物流名称',
  `logistics_no` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '物流单号',
  `signed_time` datetime DEFAULT NULL COMMENT '签收时间',
  `batch_no` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '批次编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='收货单';

-- ----------------------------
-- Records of wms_receive
-- ----------------------------
BEGIN;
INSERT INTO `wms_receive` VALUES (2, '2024-03-18 16:28:14', 1, '2024-03-20 02:19:44', 1, 'WR2024031800002', 'FINISHED', 'PURCHASE', 'P2024031700002', '顺丰快递', 'SF0001', '2024-03-20 02:19:45', 'PB2024032000002');
INSERT INTO `wms_receive` VALUES (3, '2024-03-19 23:27:49', 1, '2024-03-20 02:19:32', 1, 'WR2024031900001', 'FINISHED', 'PURCHASE', 'P2024031900001', NULL, NULL, '2024-03-20 02:19:32', 'PB2024032000003');
INSERT INTO `wms_receive` VALUES (4, '2024-05-13 21:21:22', 0, '2024-05-13 23:08:20', 0, 'WR2024051300001', 'SENT_OUT', 'PURCHASE', 'SP2024051300002', 'XX物流', '1715606092508', NULL, NULL);
INSERT INTO `wms_receive` VALUES (5, '2024-05-13 23:08:20', 0, '2024-05-13 23:08:20', 0, 'WR2024051300002', 'SENT_OUT', 'PURCHASE', 'SP2024051300002', 'XX物流', '1715606482061', NULL, NULL);
INSERT INTO `wms_receive` VALUES (6, '2024-06-02 13:48:12', 0, '2024-06-02 13:48:12', 0, 'WR2024060200001', 'SENT_OUT', 'PURCHASE', 'SP2024051300002', 'XX物流', '1715606482061', NULL, NULL);
INSERT INTO `wms_receive` VALUES (7, '2024-06-02 16:23:04', 0, '2024-06-02 16:23:04', 0, 'WR2024060200002', 'SENT_OUT', 'PURCHASE', 'SP2024051300002', 'XX物流', '1715606092508', NULL, NULL);
INSERT INTO `wms_receive` VALUES (8, '2024-06-03 22:18:30', 0, '2024-06-03 22:18:30', 0, 'WR2024060300001', 'SENT_OUT', 'PURCHASE', 'SP2024051300002', 'XX物流', '1715606092508', NULL, NULL);
INSERT INTO `wms_receive` VALUES (9, '2024-06-06 22:53:26', 0, '2024-06-06 22:53:26', 0, 'WR2024060600001', 'SENT_OUT', 'PURCHASE', 'SP2024051300002', 'XX物流', '1715606482061', NULL, NULL);
INSERT INTO `wms_receive` VALUES (10, '2024-06-06 23:29:28', 0, '2024-06-06 23:29:28', 0, 'WR2024060600002', 'SENT_OUT', 'PURCHASE', 'SP2024051300002', 'XX物流', '1715606092508', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for wms_receive_detail
-- ----------------------------
DROP TABLE IF EXISTS `wms_receive_detail`;
CREATE TABLE `wms_receive_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  `receive_id` bigint(20) NOT NULL COMMENT '收货单ID',
  `product_id` bigint(20) NOT NULL COMMENT '产品ID',
  `qty` int(11) NOT NULL COMMENT '应收数量',
  `received_qty` int(11) DEFAULT NULL COMMENT '实收数量',
  `qualified_qty` int(11) DEFAULT NULL COMMENT '合格数量',
  `unqualified_qty` int(11) DEFAULT NULL COMMENT '不合格数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='收货明细';

-- ----------------------------
-- Records of wms_receive_detail
-- ----------------------------
BEGIN;
INSERT INTO `wms_receive_detail` VALUES (3, '2024-03-18 16:28:14', 1, '2024-03-20 02:01:21', 1, 2, 1, 13, 12, 10, 2);
INSERT INTO `wms_receive_detail` VALUES (4, '2024-03-18 16:28:14', 1, '2024-03-20 02:01:21', 1, 2, 2, 15, 15, 15, 0);
INSERT INTO `wms_receive_detail` VALUES (5, '2024-03-19 23:27:49', 1, '2024-03-20 02:04:14', 1, 3, 2, 15, 15, 15, 0);
INSERT INTO `wms_receive_detail` VALUES (6, '2024-05-13 21:21:22', 0, '2024-05-13 21:21:22', 0, 4, 3, 2, NULL, NULL, NULL);
INSERT INTO `wms_receive_detail` VALUES (7, '2024-05-13 23:08:20', 0, '2024-05-13 23:08:20', 0, 5, 3, 2, NULL, NULL, NULL);
INSERT INTO `wms_receive_detail` VALUES (8, '2024-06-02 13:48:12', 0, '2024-06-02 13:48:12', 0, 6, 3, 2, NULL, NULL, NULL);
INSERT INTO `wms_receive_detail` VALUES (9, '2024-06-02 16:23:04', 0, '2024-06-02 16:23:04', 0, 7, 3, 2, NULL, NULL, NULL);
INSERT INTO `wms_receive_detail` VALUES (10, '2024-06-03 22:18:31', 0, '2024-06-03 22:18:31', 0, 8, 3, 2, NULL, NULL, NULL);
INSERT INTO `wms_receive_detail` VALUES (11, '2024-06-06 22:53:26', 0, '2024-06-06 22:53:26', 0, 9, 3, 2, NULL, NULL, NULL);
INSERT INTO `wms_receive_detail` VALUES (12, '2024-06-06 23:29:28', 0, '2024-06-06 23:29:28', 0, 10, 3, 2, NULL, NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
