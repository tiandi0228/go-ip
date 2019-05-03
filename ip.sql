/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : ip

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 03/05/2019 11:21:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ip
-- ----------------------------
DROP TABLE IF EXISTS `ip`;
CREATE TABLE `ip`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `protocol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '协议',
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ip
-- ----------------------------
INSERT INTO `ip` VALUES (1, '119.131.90.58:8448', 'http', '');
INSERT INTO `ip` VALUES (2, '49.86.178.245:8140', 'http', '');
INSERT INTO `ip` VALUES (3, '218.60.8.83:8544', 'http', '');
INSERT INTO `ip` VALUES (4, '182.92.105.136:9021', 'http', '');
INSERT INTO `ip` VALUES (5, '116.114.19.204:8776', 'http', '');
INSERT INTO `ip` VALUES (6, '120.234.63.196:8584', 'http', '');
INSERT INTO `ip` VALUES (7, '39.137.107.98:8402', 'http', '');
INSERT INTO `ip` VALUES (8, '202.100.83.139:8665', 'http', '');
INSERT INTO `ip` VALUES (9, '120.210.219.105:8747', 'http', '');
INSERT INTO `ip` VALUES (10, '119.187.120.118:8778', 'http', '');
INSERT INTO `ip` VALUES (11, '182.92.105.136:8931', 'http', '');
INSERT INTO `ip` VALUES (12, '116.228.233.90:8732', 'http', '');
INSERT INTO `ip` VALUES (13, '120.234.63.196:8458', 'http', '');
INSERT INTO `ip` VALUES (14, '121.8.98.196:8767', 'http', '');
INSERT INTO `ip` VALUES (15, '119.180.158.36:8060', 'http', '');
INSERT INTO `ip` VALUES (16, '222.94.81.185:8118', 'http', '');
INSERT INTO `ip` VALUES (17, '123.163.122.225:9999', 'http', '');
INSERT INTO `ip` VALUES (18, '60.217.73.238:8060', 'http', '中国 山东 威海');
INSERT INTO `ip` VALUES (19, '60.217.139.6:8060', 'http', '中国 山东 威海');
INSERT INTO `ip` VALUES (20, '42.179.90.23:80', 'http', '中国 辽宁 锦州');
INSERT INTO `ip` VALUES (21, '27.208.93.118:8060', 'http', '中国 山东 威海');
INSERT INTO `ip` VALUES (22, '27.208.65.20:8060', 'http', '中国 山东 威海');
INSERT INTO `ip` VALUES (23, '222.135.24.61:8060', 'http', '中国 山东 威海');
INSERT INTO `ip` VALUES (24, '171.43.8.88:9999', 'http', '中国 湖北 黄冈');
INSERT INTO `ip` VALUES (25, '123.114.205.71:8118', 'http', '中国 北京 北京');
INSERT INTO `ip` VALUES (26, '123.114.205.116:8118', 'http', '中国 北京 北京');
INSERT INTO `ip` VALUES (27, '122.140.60.242:8656', 'http', '中国 吉林 辽源');
INSERT INTO `ip` VALUES (28, '120.234.63.196:8138', 'http', '中国 广东 深圳');
INSERT INTO `ip` VALUES (29, '119.190.193.190:8060', 'http', '中国 山东 威海');
INSERT INTO `ip` VALUES (30, '119.180.154.21:8060', 'http', '中国 山东 威海');
INSERT INTO `ip` VALUES (31, '115.53.34.16:9057', 'http', '中国 河南 濮阳');
INSERT INTO `ip` VALUES (32, '114.245.183.99:8060', 'http', '中国 北京 北京');
INSERT INTO `ip` VALUES (33, '218.95.53.115:8144', 'http', '中国 江西 萍乡');
INSERT INTO `ip` VALUES (34, '39.137.69.10:8924', 'http', '中国 天津 天津');
INSERT INTO `ip` VALUES (35, '113.121.242.199:808', 'http', '中国 山东 德州');
INSERT INTO `ip` VALUES (36, '49.86.178.245:8692', 'http', '中国 江苏 扬州');
INSERT INTO `ip` VALUES (37, '49.86.178.245:8900', 'http', '中国 江苏 扬州');
INSERT INTO `ip` VALUES (38, '112.85.165.100:9999', 'http', '中国 江苏 南通');
INSERT INTO `ip` VALUES (39, '119.180.154.21:8060', 'http', '中国 山东 威海');
INSERT INTO `ip` VALUES (40, '114.245.183.99:8060', 'http', '中国 北京 北京');
INSERT INTO `ip` VALUES (41, '113.121.242.199:808', 'http', '中国 山东 德州');
INSERT INTO `ip` VALUES (42, '49.86.178.245:8140', 'http', '');
INSERT INTO `ip` VALUES (43, '218.60.8.83:8544', 'http', '');
INSERT INTO `ip` VALUES (44, '182.92.105.136:9021', 'http', '');
INSERT INTO `ip` VALUES (45, '120.234.63.196:8584', 'http', '');
INSERT INTO `ip` VALUES (46, '39.137.107.98:8402', 'http', '');
INSERT INTO `ip` VALUES (47, '202.100.83.139:8665', 'http', '');
INSERT INTO `ip` VALUES (48, '120.210.219.105:8747', 'http', '');
INSERT INTO `ip` VALUES (49, '119.187.120.118:8778', 'http', '');
INSERT INTO `ip` VALUES (50, '182.92.105.136:8931', 'http', '');
INSERT INTO `ip` VALUES (51, '120.234.63.196:8458', 'http', '');
INSERT INTO `ip` VALUES (52, '121.8.98.196:8767', 'http', '');
INSERT INTO `ip` VALUES (53, '119.180.158.36:8060', 'http', '');
INSERT INTO `ip` VALUES (54, '60.217.139.6:8060', 'http', '中国 山东 威海');
INSERT INTO `ip` VALUES (55, '42.179.90.23:80', 'http', '中国 辽宁 锦州');
INSERT INTO `ip` VALUES (56, '27.208.93.118:8060', 'http', '中国 山东 威海');
INSERT INTO `ip` VALUES (57, '27.208.65.20:8060', 'http', '中国 山东 威海');
INSERT INTO `ip` VALUES (58, '222.135.24.61:8060', 'http', '中国 山东 威海');
INSERT INTO `ip` VALUES (59, '171.43.8.88:9999', 'http', '中国 湖北 黄冈');
INSERT INTO `ip` VALUES (60, '123.114.205.71:8118', 'http', '中国 北京 北京');
INSERT INTO `ip` VALUES (61, '123.114.205.116:8118', 'http', '中国 北京 北京');
INSERT INTO `ip` VALUES (62, '122.140.60.242:8656', 'http', '中国 吉林 辽源');
INSERT INTO `ip` VALUES (63, '218.95.53.115:8144', 'http', '中国 江西 萍乡');
INSERT INTO `ip` VALUES (64, '39.137.69.10:8924', 'http', '中国 天津 天津');
INSERT INTO `ip` VALUES (65, '49.86.178.245:8692', 'http', '中国 江苏 扬州');
INSERT INTO `ip` VALUES (66, '49.86.178.245:8900', 'http', '中国 江苏 扬州');

SET FOREIGN_KEY_CHECKS = 1;
