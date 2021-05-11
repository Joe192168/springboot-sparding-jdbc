/*
 Navicat Premium Data Transfer

 Source Server         : docker233
 Source Server Type    : MySQL
 Source Server Version : 50650
 Source Host           : 192.168.0.233:3306
 Source Schema         : db1

 Target Server Type    : MySQL
 Target Server Version : 50650
 File Encoding         : 65001

 Date: 11/05/2021 10:28:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for loudong
-- ----------------------------
DROP TABLE IF EXISTS `loudong`;
CREATE TABLE `loudong`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `region` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ld_num` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit_num` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of loudong
-- ----------------------------
INSERT INTO `loudong` VALUES ('0a', '深圳', '宝安', '李四', 'A', '2');
INSERT INTO `loudong` VALUES ('1a', '深圳', '宝安', '李四', 'A', '2');
INSERT INTO `loudong` VALUES ('2a', '深圳', '宝安', '李四', 'A', '2');
INSERT INTO `loudong` VALUES ('3a', '深圳', '宝安', '李四', 'A', '2');
INSERT INTO `loudong` VALUES ('4a', '深圳', '宝安', '李四', 'A', '2');
INSERT INTO `loudong` VALUES ('5a', '深圳', '宝安', '李四', 'A', '2');
INSERT INTO `loudong` VALUES ('6a', '深圳', '宝安', '李四', 'A', '2');
INSERT INTO `loudong` VALUES ('7a', '深圳', '宝安', '李四', 'A', '2');
INSERT INTO `loudong` VALUES ('8a', '深圳', '宝安', '李四', 'A', '2');
INSERT INTO `loudong` VALUES ('9a', '深圳', '宝安', '李四', 'A', '2');

-- ----------------------------
-- Table structure for t_order0
-- ----------------------------
DROP TABLE IF EXISTS `t_order0`;
CREATE TABLE `t_order0`  (
  `order_id` bigint(20) NOT NULL COMMENT '订单流水ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_order0
-- ----------------------------

-- ----------------------------
-- Table structure for t_order1
-- ----------------------------
DROP TABLE IF EXISTS `t_order1`;
CREATE TABLE `t_order1`  (
  `order_id` bigint(20) NOT NULL COMMENT '订单流水ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_order1
-- ----------------------------
INSERT INTO `t_order1` VALUES (1, 1, 'string', '2021-05-08');

-- ----------------------------
-- Table structure for t_order2
-- ----------------------------
DROP TABLE IF EXISTS `t_order2`;
CREATE TABLE `t_order2`  (
  `order_id` bigint(20) NOT NULL COMMENT '订单流水ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_order2
-- ----------------------------

-- ----------------------------
-- Table structure for t_order3
-- ----------------------------
DROP TABLE IF EXISTS `t_order3`;
CREATE TABLE `t_order3`  (
  `order_id` bigint(20) NOT NULL COMMENT '订单流水ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_order3
-- ----------------------------

-- ----------------------------
-- Table structure for t_order_item0
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item0`;
CREATE TABLE `t_order_item0`  (
  `order_item_id` bigint(20) NOT NULL COMMENT '订单明细流水ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户流水ID',
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '订单流水ID',
  `seller_id` bigint(20) NULL DEFAULT NULL COMMENT '商家流水ID',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单明细' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_order_item0
-- ----------------------------

-- ----------------------------
-- Table structure for t_order_item1
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item1`;
CREATE TABLE `t_order_item1`  (
  `order_item_id` bigint(20) NOT NULL COMMENT '订单明细流水ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户流水ID',
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '订单流水ID',
  `seller_id` bigint(20) NULL DEFAULT NULL COMMENT '商家流水ID',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单明细' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_order_item1
-- ----------------------------
INSERT INTO `t_order_item1` VALUES (8, 1, 1, 1, '2021-05-08');
INSERT INTO `t_order_item1` VALUES (9, 1, 1, 1, '2021-05-08');
INSERT INTO `t_order_item1` VALUES (10, 1, 1, 1, '2021-05-08');
INSERT INTO `t_order_item1` VALUES (11, 1, 1, 1, '2021-05-08');

-- ----------------------------
-- Table structure for t_order_item2
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item2`;
CREATE TABLE `t_order_item2`  (
  `order_item_id` bigint(20) NOT NULL COMMENT '订单明细流水ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户流水ID',
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '订单流水ID',
  `seller_id` bigint(20) NULL DEFAULT NULL COMMENT '商家流水ID',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单明细' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_order_item2
-- ----------------------------

-- ----------------------------
-- Table structure for t_order_item3
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item3`;
CREATE TABLE `t_order_item3`  (
  `order_item_id` bigint(20) NOT NULL COMMENT '订单明细流水ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户流水ID',
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '订单流水ID',
  `seller_id` bigint(20) NULL DEFAULT NULL COMMENT '商家流水ID',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单明细' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_order_item3
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
