/*
 Navicat Premium Data Transfer

 Source Server         : docker233
 Source Server Type    : MySQL
 Source Server Version : 50650
 Source Host           : 192.168.0.233:3306
 Source Schema         : db0

 Target Server Type    : MySQL
 Target Server Version : 50650
 File Encoding         : 65001

 Date: 11/05/2021 10:28:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
INSERT INTO `t_order0` VALUES (20, 10, 'string20', '2021-05-08');

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
INSERT INTO `t_order2` VALUES (30, 1, 'string', '2021-05-08');

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
INSERT INTO `t_order_item0` VALUES (1, 1, 20, 1, '2021-05-08');
INSERT INTO `t_order_item0` VALUES (2, 1, 20, 1, '2021-05-08');
INSERT INTO `t_order_item0` VALUES (3, 1, 20, 1, '2021-05-08');
INSERT INTO `t_order_item0` VALUES (4, 1, 20, 1, '2021-05-08');

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
INSERT INTO `t_order_item2` VALUES (4, 1, 30, 1, '2021-05-08');
INSERT INTO `t_order_item2` VALUES (5, 1, 30, 1, '2021-05-08');
INSERT INTO `t_order_item2` VALUES (6, 1, 30, 1, '2021-05-08');
INSERT INTO `t_order_item2` VALUES (7, 1, 30, 1, '2021-05-08');

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

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(64) NOT NULL,
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (597851751411875841, '深圳', '李四');
INSERT INTO `user` VALUES (597851751684505600, '深圳', '李四');
INSERT INTO `user` VALUES (597851751697088513, '深圳', '李四');
INSERT INTO `user` VALUES (597851751705477120, '深圳', '李四');
INSERT INTO `user` VALUES (597851751713865729, '深圳', '李四');
INSERT INTO `user` VALUES (597851751722254336, '深圳', '李四');
INSERT INTO `user` VALUES (597851751726448641, '深圳', '李四');
INSERT INTO `user` VALUES (597851751734837248, '深圳', '李四');
INSERT INTO `user` VALUES (597851751743225857, '深圳', '李四');
INSERT INTO `user` VALUES (597851751751614464, '深圳', '李四');
INSERT INTO `user` VALUES (597851751760003073, '深圳', '李四');
INSERT INTO `user` VALUES (597851751772585984, '深圳', '李四');
INSERT INTO `user` VALUES (597851751780974593, '深圳', '李四');
INSERT INTO `user` VALUES (597851751789363200, '深圳', '李四');
INSERT INTO `user` VALUES (597851751797751809, '深圳', '李四');
INSERT INTO `user` VALUES (597851751810334720, '深圳', '李四');
INSERT INTO `user` VALUES (597851751818723329, '深圳', '李四');
INSERT INTO `user` VALUES (597851751827111936, '深圳', '李四');
INSERT INTO `user` VALUES (597851751835500545, '深圳', '李四');
INSERT INTO `user` VALUES (597851751843889152, '深圳', '李四');
INSERT INTO `user` VALUES (597851751852277761, '深圳', '李四');
INSERT INTO `user` VALUES (597851751864860672, '深圳', '李四');
INSERT INTO `user` VALUES (597851751873249281, '深圳', '李四');
INSERT INTO `user` VALUES (597851751898415104, '深圳', '李四');
INSERT INTO `user` VALUES (597851751910998017, '深圳', '李四');
INSERT INTO `user` VALUES (597851751919386624, '深圳', '李四');
INSERT INTO `user` VALUES (597851751927775233, '深圳', '李四');
INSERT INTO `user` VALUES (597851751940358144, '深圳', '李四');
INSERT INTO `user` VALUES (597851751952941057, '深圳', '李四');
INSERT INTO `user` VALUES (597851751969718272, '深圳', '李四');
INSERT INTO `user` VALUES (597851751982301185, '深圳', '李四');
INSERT INTO `user` VALUES (597851751990689792, '深圳', '李四');
INSERT INTO `user` VALUES (597851752003272705, '深圳', '李四');
INSERT INTO `user` VALUES (597851752015855616, '深圳', '李四');
INSERT INTO `user` VALUES (597851752024244225, '深圳', '李四');
INSERT INTO `user` VALUES (597851752041021440, '深圳', '李四');
INSERT INTO `user` VALUES (597851752053604353, '深圳', '李四');
INSERT INTO `user` VALUES (597851752066187264, '深圳', '李四');
INSERT INTO `user` VALUES (597851752078770177, '深圳', '李四');
INSERT INTO `user` VALUES (597851752087158784, '深圳', '李四');
INSERT INTO `user` VALUES (597851752095547393, '深圳', '李四');
INSERT INTO `user` VALUES (597851752103936000, '深圳', '李四');
INSERT INTO `user` VALUES (597851752112324609, '深圳', '李四');
INSERT INTO `user` VALUES (597851752120713216, '深圳', '李四');
INSERT INTO `user` VALUES (597851752129101825, '深圳', '李四');
INSERT INTO `user` VALUES (597851752141684736, '深圳', '李四');
INSERT INTO `user` VALUES (597851752166850561, '深圳', '李四');
INSERT INTO `user` VALUES (597851752179433472, '深圳', '李四');
INSERT INTO `user` VALUES (597851752187822081, '深圳', '李四');
INSERT INTO `user` VALUES (597851752196210688, '深圳', '李四');
INSERT INTO `user` VALUES (597851752208793601, '深圳', '李四');
INSERT INTO `user` VALUES (597851752212987904, '深圳', '李四');
INSERT INTO `user` VALUES (597851752221376513, '深圳', '李四');
INSERT INTO `user` VALUES (597851752229765120, '深圳', '李四');
INSERT INTO `user` VALUES (597851752238153729, '深圳', '李四');
INSERT INTO `user` VALUES (597851752246542336, '深圳', '李四');
INSERT INTO `user` VALUES (597851752254930945, '深圳', '李四');
INSERT INTO `user` VALUES (597851752267513856, '深圳', '李四');
INSERT INTO `user` VALUES (597851752271708161, '深圳', '李四');
INSERT INTO `user` VALUES (597851752280096768, '深圳', '李四');
INSERT INTO `user` VALUES (597851752288485377, '深圳', '李四');
INSERT INTO `user` VALUES (597851752292679680, '深圳', '李四');
INSERT INTO `user` VALUES (597851752301068289, '深圳', '李四');
INSERT INTO `user` VALUES (597851752309456896, '深圳', '李四');
INSERT INTO `user` VALUES (597851752322039809, '深圳', '李四');
INSERT INTO `user` VALUES (597851752330428416, '深圳', '李四');
INSERT INTO `user` VALUES (597851752338817025, '深圳', '李四');
INSERT INTO `user` VALUES (597851752343011328, '深圳', '李四');
INSERT INTO `user` VALUES (597851752351399937, '深圳', '李四');
INSERT INTO `user` VALUES (597851752359788544, '深圳', '李四');
INSERT INTO `user` VALUES (597851752368177153, '深圳', '李四');
INSERT INTO `user` VALUES (597851752372371456, '深圳', '李四');
INSERT INTO `user` VALUES (597851752380760065, '深圳', '李四');
INSERT INTO `user` VALUES (597851752389148672, '深圳', '李四');
INSERT INTO `user` VALUES (597851752397537281, '深圳', '李四');
INSERT INTO `user` VALUES (597851752405925888, '深圳', '李四');
INSERT INTO `user` VALUES (597851752418508801, '深圳', '李四');
INSERT INTO `user` VALUES (597851752426897408, '深圳', '李四');
INSERT INTO `user` VALUES (597851752435286017, '深圳', '李四');
INSERT INTO `user` VALUES (597851752443674624, '深圳', '李四');
INSERT INTO `user` VALUES (597851752452063233, '深圳', '李四');
INSERT INTO `user` VALUES (597851752460451840, '深圳', '李四');
INSERT INTO `user` VALUES (597851752473034753, '深圳', '李四');
INSERT INTO `user` VALUES (597851752481423360, '深圳', '李四');
INSERT INTO `user` VALUES (597851752489811969, '深圳', '李四');
INSERT INTO `user` VALUES (597851752498200576, '深圳', '李四');
INSERT INTO `user` VALUES (597851752506589185, '深圳', '李四');
INSERT INTO `user` VALUES (597851752519172096, '深圳', '李四');
INSERT INTO `user` VALUES (597851752527560705, '深圳', '李四');
INSERT INTO `user` VALUES (597851752535949312, '深圳', '李四');
INSERT INTO `user` VALUES (597851752544337921, '深圳', '李四');
INSERT INTO `user` VALUES (597851752552726528, '深圳', '李四');
INSERT INTO `user` VALUES (597851752561115137, '深圳', '李四');
INSERT INTO `user` VALUES (597851752569503744, '深圳', '李四');
INSERT INTO `user` VALUES (597851752573698049, '深圳', '李四');
INSERT INTO `user` VALUES (597851752582086656, '深圳', '李四');
INSERT INTO `user` VALUES (597851752594669569, '深圳', '李四');
INSERT INTO `user` VALUES (597851752607252480, '深圳', '李四');
INSERT INTO `user` VALUES (597851752615641089, '深圳', '李四');
INSERT INTO `user` VALUES (597851752619835392, '深圳', '李四');

SET FOREIGN_KEY_CHECKS = 1;
