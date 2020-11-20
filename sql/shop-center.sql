/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : shop-center

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2020-11-20 14:34:20
*/
/**
数据库的创建11
 */

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` bigint(20) NOT NULL COMMENT '主键⾃增ID',
  `user_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '⽤户名',
  `user_password` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `description` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述信息',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '⽤户类型,0-运营商,1-商户',
  `shop_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商家ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_user_name` (`user_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_info
-- ----------------------------
