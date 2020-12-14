/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : ip

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 14/12/2020 20:09:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ip
-- ----------------------------
DROP TABLE IF EXISTS `ip`;
CREATE TABLE `ip` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地址',
  `port` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '端口',
  `protocol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '协议',
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=395 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ip
-- ----------------------------
BEGIN;
INSERT INTO `ip` VALUES (18, '150.138.154.164', '80', 'http', '中国 山东 青岛');
INSERT INTO `ip` VALUES (19, '120.221.86.164', '80', 'http', '中国 山东省 青岛市');
INSERT INTO `ip` VALUES (20, '101.201.31.208', '80', 'http', '中国 浙江省 西湖');
INSERT INTO `ip` VALUES (21, '117.185.17.151', '80', 'http', '中国 广东 东莞市');
INSERT INTO `ip` VALUES (22, '117.185.17.16', '80', 'http', '中国 上海 上海市');
INSERT INTO `ip` VALUES (23, '115.223.7.110', '80', 'http', '中国 浙江省 温州市');
INSERT INTO `ip` VALUES (24, '117.185.17.145', '80', 'http', '中国 广东 东莞市');
INSERT INTO `ip` VALUES (25, '117.185.16.31', '80', 'http', '中国 广东 东莞市');
INSERT INTO `ip` VALUES (26, '61.135.185.31', '80', 'http', '中国 北京市 北京');
INSERT INTO `ip` VALUES (27, '123.125.114.107', '80', 'http', '中国 北京市 Beijing');
INSERT INTO `ip` VALUES (28, '117.185.16.31', '80', 'http', '中国 广东 东莞市');
INSERT INTO `ip` VALUES (29, '117.185.17.144', '80', 'http', '中国 广东 东莞市');
INSERT INTO `ip` VALUES (30, '117.185.17.17', '80', 'http', '中国 上海 上海市');
INSERT INTO `ip` VALUES (31, '180.97.34.35', '80', 'http', '中国 江苏省 Qinnan');
INSERT INTO `ip` VALUES (32, '222.74.202.228', '9999', 'http', '中国 内蒙古 呼和浩特市');
INSERT INTO `ip` VALUES (33, '112.80.248.73', '80', 'http', '中国 江苏省 南京');
INSERT INTO `ip` VALUES (36, '202.108.22.5', '80', 'http', '中国 北京 北京市');
INSERT INTO `ip` VALUES (37, '112.80.248.75', '80', 'http', '中国 江苏 南京');
INSERT INTO `ip` VALUES (40, '202.108.22.5', '80', 'http', '中国 北京 北京市');
INSERT INTO `ip` VALUES (41, '61.135.169.121', '80', 'http', '中国 北京 北京市');
INSERT INTO `ip` VALUES (45, '220.181.111.37', '80', 'http', '中国 北京市 海淀');
INSERT INTO `ip` VALUES (47, '180.149.144.223', '80', 'http', '中国 北京市 北京');
INSERT INTO `ip` VALUES (48, '123.125.115.165', '80', 'http', '中国 北京 北京市');
INSERT INTO `ip` VALUES (149, '171.15.152.9', '9999', 'http', '河南省鹤壁市  电信');
INSERT INTO `ip` VALUES (150, '123.163.121.2', '9999', 'http', '河南省鹤壁市  电信');
INSERT INTO `ip` VALUES (151, '115.221.246.100', '9999', 'http', '浙江省温州市  电信');
INSERT INTO `ip` VALUES (153, '1.198.72.206', '9999', 'http', '河南省济源市  电信');
INSERT INTO `ip` VALUES (154, '182.46.111.7', '9999', 'http', '山东省菏泽市  电信');
INSERT INTO `ip` VALUES (155, '36.249.53.12', '9999', 'http', '福建省泉州市  联通');
INSERT INTO `ip` VALUES (156, '123.54.47.152', '9999', 'http', '河南省商丘市  电信');
INSERT INTO `ip` VALUES (157, '115.221.243.180', '9999', 'http', '浙江省温州市  电信');
INSERT INTO `ip` VALUES (158, '123.160.1.184', '9999', 'http', '河南省洛阳市  电信');
INSERT INTO `ip` VALUES (159, '222.89.32.177', '9999', 'http', '河南省济源市  电信');
INSERT INTO `ip` VALUES (160, '180.118.128.84', '9000', 'http', '江苏省镇江市  电信');
INSERT INTO `ip` VALUES (161, '115.218.1.103', '9000', 'http', '浙江省温州市  电信');
INSERT INTO `ip` VALUES (162, '115.218.0.47', '9000', 'http', '浙江省温州市  电信');
INSERT INTO `ip` VALUES (163, '60.186.42.215', '9000', 'http', '浙江省杭州市  电信');
INSERT INTO `ip` VALUES (164, '119.119.112.170', '9000', 'http', '辽宁省沈阳市  联通');
INSERT INTO `ip` VALUES (165, '220.189.98.163', '3000', 'http', '浙江省嘉兴市  电信');
INSERT INTO `ip` VALUES (166, '112.111.217.107', '9999', 'http', '福建省宁德市  联通');
INSERT INTO `ip` VALUES (167, '123.55.114.203', '9999', 'http', '河南省鹤壁市  电信');
INSERT INTO `ip` VALUES (168, '106.42.44.220', '9999', 'http', '河南省鹤壁市  电信');
INSERT INTO `ip` VALUES (169, '123.160.1.149', '9999', 'http', '河南省洛阳市  电信');
INSERT INTO `ip` VALUES (170, '112.111.217.216', '9999', 'http', '福建省宁德市  联通');
INSERT INTO `ip` VALUES (171, '175.42.122.164', '9999', 'http', '福建省宁德市  联通');
INSERT INTO `ip` VALUES (172, '112.111.217.231', '9999', 'http', '福建省宁德市  联通');
INSERT INTO `ip` VALUES (173, '171.11.178.70', '9999', 'http', '河南省济源市  电信');
INSERT INTO `ip` VALUES (174, '183.166.71.111', '9999', 'http', '安徽省淮南市  电信');
INSERT INTO `ip` VALUES (175, '123.149.141.118', '9999', 'http', '河南省洛阳市  电信');
INSERT INTO `ip` VALUES (176, '220.249.149.190', '9999', 'http', '福建省南平市  联通');
INSERT INTO `ip` VALUES (177, '175.44.108.239', '9999', 'http', '福建省南平市  联通');
INSERT INTO `ip` VALUES (178, '123.163.117.59', '9999', 'http', '河南省鹤壁市  电信');
INSERT INTO `ip` VALUES (179, '175.42.68.166', '9999', 'http', '福建省宁德市  联通');
INSERT INTO `ip` VALUES (180, '115.221.247.252', '9999', 'http', '浙江省温州市  电信');
INSERT INTO `ip` VALUES (181, '123.101.237.41', '9999', 'http', '河南省商丘市  电信');
INSERT INTO `ip` VALUES (182, '120.83.96.169', '9999', 'http', '广东省揭阳市  联通');
INSERT INTO `ip` VALUES (183, '171.11.179.24', '9999', 'http', '河南省济源市  电信');
INSERT INTO `ip` VALUES (184, '222.74.65.83', '56210', 'http', '内蒙古自治区赤峰市  电信');
INSERT INTO `ip` VALUES (185, '128.199.120.160', '8080', 'https', '中国 安徽 合肥 移动');
INSERT INTO `ip` VALUES (186, '103.46.210.22', '8080', 'https', '中国 广东 韶关 电信');
INSERT INTO `ip` VALUES (187, '123.55.98.31', '9999', 'https', '中国 河南 鹤壁 电信');
INSERT INTO `ip` VALUES (188, '47.75.196.15', '8118', 'https', '中国 香港 阿里云');
INSERT INTO `ip` VALUES (189, '183.89.162.53', '8080', 'https', '中国 湖北 宜昌 电信');
INSERT INTO `ip` VALUES (190, '171.35.143.42', '9999', 'https', '中国 江西 抚州 联通');
INSERT INTO `ip` VALUES (191, '124.205.155.157', '9090', 'https', '中国 北京 北京 鹏博士');
INSERT INTO `ip` VALUES (192, '110.243.23.193', '9999', 'https', '中国 河北 唐山 联通');
INSERT INTO `ip` VALUES (193, '110.243.22.75', '9999', 'https', '中国 河北 唐山 联通');
INSERT INTO `ip` VALUES (194, '123.55.102.38', '9999', 'https', '中国 河南 鹤壁 电信');
INSERT INTO `ip` VALUES (195, '45.33.104.129', '8118', 'https', '中国 青海 海西 电信');
INSERT INTO `ip` VALUES (196, '114.239.150.170', '9999', 'https', '中国 江苏 宿迁 电信');
INSERT INTO `ip` VALUES (197, '123.160.1.16', '9999', 'https', '中国 河南 洛阳 电信');
INSERT INTO `ip` VALUES (198, '113.124.84.55', '9999', 'https', '中国 山东 烟台 电信');
INSERT INTO `ip` VALUES (199, '188.156.240.240', '8118', 'https', '中国 陕西 宝鸡 电信');
INSERT INTO `ip` VALUES (200, '171.12.115.126', '9999', 'https', '中国 河南 鹤壁 电信');
INSERT INTO `ip` VALUES (201, '110.243.1.64', '9999', 'https', '中国 河北 唐山 联通');
INSERT INTO `ip` VALUES (202, '187.60.36.164', '53597', 'https', '中国 黑龙江 大庆 移动');
INSERT INTO `ip` VALUES (203, '45.71.115.213', '999', 'https', '中国 四川 达州 电信');
INSERT INTO `ip` VALUES (204, '103.242.15.37', '55443', 'https', '中国 宁夏 中卫 移动');
INSERT INTO `ip` VALUES (205, '61.160.210.223', '808', 'https', '中国 江苏 常州 电信');
INSERT INTO `ip` VALUES (206, '101.255.72.171', '80', 'https', '中国 吉林 松原 联通');
INSERT INTO `ip` VALUES (207, '58.253.153.198', '9999', 'https', '中国 广东 揭阳 联通');
INSERT INTO `ip` VALUES (209, '58.253.154.197', '9999', 'https', '中国 广东 揭阳 联通');
INSERT INTO `ip` VALUES (210, '113.195.231.52', '9999', 'https', '中国 江西 新余 联通');
INSERT INTO `ip` VALUES (211, '171.35.141.216', '9999', 'https', '中国 江西 抚州 联通');
INSERT INTO `ip` VALUES (212, '182.140.244.163', '8118', 'https', '中国 四川 成都 电信');
INSERT INTO `ip` VALUES (213, '124.122.114.11', '8080', 'https', '中国 江苏 苏州 移动');
INSERT INTO `ip` VALUES (214, '221.122.91.76', '9480', 'https', '中国 北京 北京 电信/联通');
INSERT INTO `ip` VALUES (215, '182.46.110.15', '9999', 'https', '中国 山东 淄博 电信');
INSERT INTO `ip` VALUES (216, '163.125.71.0', '8888', 'https', '中国 广东 深圳 联通');
INSERT INTO `ip` VALUES (217, '163.125.71.4', '8888', 'https', '中国 广东 深圳 联通');
INSERT INTO `ip` VALUES (218, '163.125.71.1', '8888', 'https', '中国 广东 深圳 联通');
INSERT INTO `ip` VALUES (219, '150.138.253.71', '808', 'https', '中国 山东 济南 电信');
INSERT INTO `ip` VALUES (220, '58.220.95.78', '9401', 'https', '中国 江苏 扬州 电信');
INSERT INTO `ip` VALUES (221, '58.220.95.80', '9401', 'https', '中国 江苏 扬州 电信');
INSERT INTO `ip` VALUES (222, '150.138.253.70', '808', 'https', '中国 广东 中山 电信');
INSERT INTO `ip` VALUES (223, '144.91.70.15', '3128', 'https', '中国 北京 北京 鹏博士');
INSERT INTO `ip` VALUES (224, '113.235.101.202', '8118', 'https', '中国 辽宁 大连 联通');
INSERT INTO `ip` VALUES (225, '112.111.217.40', '9999', 'https', '中国 福建 宁德 联通');
INSERT INTO `ip` VALUES (226, '150.138.253.72', '808', 'https', '中国 山东 济南 电信');
INSERT INTO `ip` VALUES (227, '58.220.95.54', '9400', 'https', '中国 河南 信阳 联通');
INSERT INTO `ip` VALUES (228, '120.24.225.170', '8080', 'https', '中国 广东 深圳 阿里云');
INSERT INTO `ip` VALUES (229, '221.122.91.75', '10286', 'https', '中国 北京 北京 电信/联通');
INSERT INTO `ip` VALUES (230, '221.122.91.74', '9401', 'https', '中国 北京 北京 电信/联通');
INSERT INTO `ip` VALUES (231, '183.88.177.16', '8080', 'https', '中国 北京 北京 中电飞华');
INSERT INTO `ip` VALUES (232, '103.35.64.12', '3128', 'https', '中国 广东 茂名 移动');
INSERT INTO `ip` VALUES (233, '119.42.70.85', '8080', 'https', '中国 浙江 宁波 移动');
INSERT INTO `ip` VALUES (234, '223.206.63.9', '8080', 'https', '中国 河北 秦皇岛 移动');
INSERT INTO `ip` VALUES (235, '1.198.73.28', '9999', 'https', '中国 河南 济源 电信');
INSERT INTO `ip` VALUES (236, '27.38.155.229', '8118', 'https', '中国 广东 深圳 联通');
INSERT INTO `ip` VALUES (237, '163.125.115.212', '8118', 'https', '中国 广东 深圳 联通');
INSERT INTO `ip` VALUES (238, '165.225.56.80', '10605', 'https', '中国 北京 北京 网宿科技/BGP多线');
INSERT INTO `ip` VALUES (239, '157.230.34.152', '36127', 'https', '中国 海南 海口 教育网');
INSERT INTO `ip` VALUES (240, '178.132.220.241', '8080', 'https', '中国 北京 北京 方正宽带/电信/联通');
INSERT INTO `ip` VALUES (241, '95.79.55.196', '53281', 'https', '中国 湖北 武汉 电信');
INSERT INTO `ip` VALUES (242, '176.110.121.90', '21776', 'https', '中国 甘肃 武威 联通');
INSERT INTO `ip` VALUES (243, '150.129.250.28', '33846', 'https', '中国 陕西 延安 电信');
INSERT INTO `ip` VALUES (244, '118.181.226.166', '44640', 'https', '中国 福建 三明 电信');
INSERT INTO `ip` VALUES (245, '118.172.207.162', '8080', 'https', '中国 贵州 安顺 电信');
INSERT INTO `ip` VALUES (246, '1.20.101.24', '51681', 'https', '中国 广东 惠州 联通');
INSERT INTO `ip` VALUES (247, '58.220.95.35', '10174', 'https', '中国 江苏 扬州 电信');
INSERT INTO `ip` VALUES (248, '1.20.102.228', '58274', 'https', '中国 北京 北京 天地祥云/电信');
INSERT INTO `ip` VALUES (249, '203.176.135.102', '52234', 'https', '中国 湖北 仙桃 电信');
INSERT INTO `ip` VALUES (250, '182.23.54.211', '54525', 'https', '中国 云南 临沧 联通');
INSERT INTO `ip` VALUES (251, '139.99.102.114', '80', 'https', '中国 广东 汕尾 联通');
INSERT INTO `ip` VALUES (252, '95.140.27.135', '58901', 'https', '中国 四川 广安 电信');
INSERT INTO `ip` VALUES (253, '124.6.129.135', '80', 'https', '中国 重庆 重庆 电信');
INSERT INTO `ip` VALUES (254, '91.224.182.49', '8080', 'https', '中国 重庆 重庆 联通');
INSERT INTO `ip` VALUES (255, '185.114.137.14', '3217', 'https', '中国 河南 郑州 教育网');
INSERT INTO `ip` VALUES (256, '85.30.198.53', '55443', 'https', '中国 北京 北京 移动');
INSERT INTO `ip` VALUES (257, '185.114.137.14', '185', 'https', '中国 云南 昆明 联通');
INSERT INTO `ip` VALUES (258, '179.191.118.42', '20183', 'https', '中国 四川 资阳 电信');
INSERT INTO `ip` VALUES (259, '208.163.39.218', '53281', 'https', '中国 贵州 毕节 移动');
INSERT INTO `ip` VALUES (260, '190.109.167.9', '57608', 'https', '中国 湖北 恩施 联通');
INSERT INTO `ip` VALUES (261, '93.91.112.247', '41258', 'https', '中国 广东 东莞 联通');
INSERT INTO `ip` VALUES (262, '103.6.104.104', '38898', 'https', '中国 浙江 绍兴 联通');
INSERT INTO `ip` VALUES (263, '103.92.212.1', '43399', 'https', '中国 江西 吉安 电信');
INSERT INTO `ip` VALUES (264, '175.141.69.200', '80', 'https', '中国 海南 文昌 电信');
INSERT INTO `ip` VALUES (265, '103.138.172.66', '8080', 'https', '中国 江西 鹰潭 联通');
INSERT INTO `ip` VALUES (266, '191.101.39.118', '80', 'https', '中国 内蒙古 赤峰 联通');
INSERT INTO `ip` VALUES (267, '185.114.137.14', '8282', 'https', '中国 香港  百度');
INSERT INTO `ip` VALUES (268, '84.22.137.229', '8080', 'https', '中国 湖南 娄底 移动');
INSERT INTO `ip` VALUES (269, '192.109.165.124', '80', 'https', '中国 安徽 铜陵 铁通');
INSERT INTO `ip` VALUES (270, '131.161.68.41', '31264', 'https', '中国 山东 东营 联通');
INSERT INTO `ip` VALUES (271, '185.114.137.14', '25074', 'https', '中国 江苏 苏州 电信');
INSERT INTO `ip` VALUES (272, '192.109.165.222', '80', 'https', '中国 新疆 乌鲁木齐 电信');
INSERT INTO `ip` VALUES (273, '1.197.204.27', '9999', 'https', '中国 河南 济源 电信');
INSERT INTO `ip` VALUES (274, '113.124.94.120', '9999', 'https', '中国 山东 烟台 电信');
INSERT INTO `ip` VALUES (275, '115.221.247.102', '9999', 'https', '中国 浙江 温州 电信');
INSERT INTO `ip` VALUES (276, '163.204.93.211', '9999', 'https', '中国 广东 揭阳 联通');
INSERT INTO `ip` VALUES (277, '123.149.137.91', '9999', 'https', '中国 河南 洛阳 电信');
INSERT INTO `ip` VALUES (278, '120.83.98.51', '9999', 'https', '中国 广东 揭阳 联通');
INSERT INTO `ip` VALUES (279, '1.196.177.230', '9999', 'https', '中国 河南 洛阳 电信');
INSERT INTO `ip` VALUES (280, '163.204.92.140', '9999', 'https', '中国 广东 揭阳 联通');
INSERT INTO `ip` VALUES (281, '118.212.105.140', '9999', 'https', '中国 江西 新余 联通');
INSERT INTO `ip` VALUES (282, '113.195.164.227', '9999', 'https', '中国 江西 宜春 联通');
INSERT INTO `ip` VALUES (283, '183.166.171.55', '8888', 'https', '中国 安徽 黄山 电信');
INSERT INTO `ip` VALUES (284, '123.169.125.252', '9999', 'https', '中国 山东 淄博 电信');
INSERT INTO `ip` VALUES (285, '49.86.181.134', '9999', 'https', '中国 江苏 扬州 电信');
INSERT INTO `ip` VALUES (286, '190.61.49.244', '999', 'https', '中国 广东 清远 联通');
INSERT INTO `ip` VALUES (287, '110.243.0.172', '9999', 'https', '中国 河北 唐山 联通');
INSERT INTO `ip` VALUES (288, '117.66.232.225', '9999', 'https', '中国 安徽 芜湖 电信');
INSERT INTO `ip` VALUES (289, '110.243.31.169', '9999', 'https', '中国 河北 唐山 联通');
INSERT INTO `ip` VALUES (290, '114.239.146.116', '9999', 'https', '中国 江苏 宿迁 电信');
INSERT INTO `ip` VALUES (291, '122.5.107.198', '9999', 'https', '中国 山东 淄博 电信');
INSERT INTO `ip` VALUES (292, '163.204.94.129', '9999', 'https', '中国 广东 揭阳 联通');
INSERT INTO `ip` VALUES (293, '27.43.184.42', '9999', 'https', '中国 广东 揭阳 联通');
INSERT INTO `ip` VALUES (294, '1.196.177.154', '9999', 'https', '中国 河南 洛阳 电信');
INSERT INTO `ip` VALUES (295, '117.69.13.122', '9999', 'https', '中国 安徽 淮南 电信');
INSERT INTO `ip` VALUES (296, '112.83.142.25', '9000', 'https', '中国 江苏 泰州 联通');
INSERT INTO `ip` VALUES (297, '113.195.201.192', '9999', 'https', '中国 江西 抚州 联通');
INSERT INTO `ip` VALUES (298, '123.169.123.144', '9999', 'https', '中国 山东 淄博 电信');
INSERT INTO `ip` VALUES (299, '123.163.121.94', '9999', 'https', '中国 河南 鹤壁 电信');
INSERT INTO `ip` VALUES (300, '120.83.106.175', '9999', 'https', '中国 广东 揭阳 联通');
INSERT INTO `ip` VALUES (301, '171.11.178.232', '9999', 'https', '中国 河南 济源 电信');
INSERT INTO `ip` VALUES (302, '123.169.37.80', '9999', 'https', '中国 山东 烟台 电信');
INSERT INTO `ip` VALUES (303, '110.243.30.182', '9999', 'https', '中国 河北 唐山 联通');
INSERT INTO `ip` VALUES (304, '123.55.101.225', '9999', 'https', '中国 河南 鹤壁 电信');
INSERT INTO `ip` VALUES (305, '123.55.106.147', '9999', 'https', '中国 河南 鹤壁 电信');
INSERT INTO `ip` VALUES (306, '175.42.68.90', '9999', 'https', '中国 福建 宁德 联通');
INSERT INTO `ip` VALUES (307, '123.163.121.121', '9999', 'https', '中国 河南 鹤壁 电信');
INSERT INTO `ip` VALUES (308, '117.95.195.108', '9999', 'https', '中国 江苏 宿迁 电信');
INSERT INTO `ip` VALUES (309, '49.81.247.42', '8888', 'http', '中国 江苏 徐州');
INSERT INTO `ip` VALUES (310, '123.163.116.177', '9999', 'https', '中国 河南 鹤壁');
INSERT INTO `ip` VALUES (311, '58.253.157.196', '9999', 'https', '中国 广东 揭阳');
INSERT INTO `ip` VALUES (312, '36.248.132.44', '9999', 'https', '中国 福建 宁德');
INSERT INTO `ip` VALUES (313, '27.43.186.79', '9999', 'https', '中国 广东 揭阳');
INSERT INTO `ip` VALUES (314, '36.248.132.175', '9999', 'http', '中国 福建 宁德');
INSERT INTO `ip` VALUES (315, '175.43.32.31', '9999', 'https', '中国 福建 泉州');
INSERT INTO `ip` VALUES (316, '58.253.159.96', '9999', 'http', '中国 广东 揭阳');
INSERT INTO `ip` VALUES (317, '27.43.187.243', '9999', 'https', '中国 广东 揭阳');
INSERT INTO `ip` VALUES (318, '115.221.247.236', '9999', 'https', '中国 浙江 温州');
INSERT INTO `ip` VALUES (319, '113.195.225.221', '9999', 'https', '中国 江西 新余');
INSERT INTO `ip` VALUES (320, '112.111.77.162', '9999', 'https', '中国 福建 南平');
INSERT INTO `ip` VALUES (321, '123.55.106.44', '9999', 'https', '中国 河南 鹤壁');
INSERT INTO `ip` VALUES (322, '175.42.129.82', '9999', 'https', '中国 福建 南平');
INSERT INTO `ip` VALUES (323, '171.12.115.190', '9999', 'https', '中国 河南 鹤壁');
INSERT INTO `ip` VALUES (324, '123.55.114.40', '9999', 'https', '中国 河南 鹤壁');
INSERT INTO `ip` VALUES (325, '220.249.149.69', '9999', 'https', '中国 福建 南平');
INSERT INTO `ip` VALUES (326, '27.43.185.150', '9999', 'https', '中国 广东 揭阳');
INSERT INTO `ip` VALUES (327, '36.249.53.58', '9999', 'https', '中国 福建 泉州');
INSERT INTO `ip` VALUES (328, '36.249.49.26', '9999', 'https', '中国 福建 泉州');
INSERT INTO `ip` VALUES (329, '183.166.20.136', '9999', 'https', '中国 安徽 淮南');
INSERT INTO `ip` VALUES (330, '123.55.106.211', '9999', 'https', '中国 河南 鹤壁');
INSERT INTO `ip` VALUES (331, '36.248.132.2', '9999', 'http', '中国 福建 宁德');
INSERT INTO `ip` VALUES (332, '49.70.99.30', '9999', 'https', '中国 江苏 宿迁');
INSERT INTO `ip` VALUES (333, '42.238.71.111', '9999', 'https', '中国 河南 濮阳');
INSERT INTO `ip` VALUES (334, '58.253.154.78', '9999', 'https', '中国 广东 揭阳');
INSERT INTO `ip` VALUES (335, '36.248.132.189', '9999', 'http', '中国 福建 宁德');
INSERT INTO `ip` VALUES (336, '115.221.246.86', '9999', 'https', '中国 浙江 温州');
INSERT INTO `ip` VALUES (337, '123.163.117.25', '9999', 'https', '中国 河南 鹤壁');
INSERT INTO `ip` VALUES (338, '220.249.149.153', '9999', 'http', '中国 福建 南平');
INSERT INTO `ip` VALUES (339, '110.243.31.66', '9999', 'https', '中国 河北 唐山');
INSERT INTO `ip` VALUES (340, '123.163.121.156', '9999', 'https', '中国 河南 鹤壁');
INSERT INTO `ip` VALUES (341, '49.70.85.85', '9999', 'https', '中国 江苏 宿迁');
INSERT INTO `ip` VALUES (342, '123.149.137.5', '9999', 'https', '中国 河南 洛阳');
INSERT INTO `ip` VALUES (343, '113.254.178.224', '8383', 'http', '中国 香港');
INSERT INTO `ip` VALUES (344, '27.43.186.228', '9999', 'https', '中国 广东 揭阳');
INSERT INTO `ip` VALUES (345, '49.70.17.136', '9999', 'https', '中国 江苏 宿迁');
INSERT INTO `ip` VALUES (346, '220.249.149.74', '9999', 'http', '中国 福建 南平');
INSERT INTO `ip` VALUES (347, '60.169.133.254', '9999', 'https', '中国 安徽 芜湖');
INSERT INTO `ip` VALUES (348, '182.34.36.148', '9999', 'https', '中国 山东 烟台');
INSERT INTO `ip` VALUES (349, '220.249.149.170', '9999', 'https', '中国 福建 南平');
INSERT INTO `ip` VALUES (350, '123.149.141.45', '9999', 'https', '中国 河南 洛阳');
INSERT INTO `ip` VALUES (351, '36.248.133.94', '9999', 'https', '中国 福建 宁德');
INSERT INTO `ip` VALUES (352, '36.248.129.167', '9999', 'http', '中国 福建 宁德');
INSERT INTO `ip` VALUES (353, '107.151.198.8', '8888', 'http', '中国 香港');
INSERT INTO `ip` VALUES (354, '60.168.81.249', '1133', 'https', '中国 安徽 合肥');
INSERT INTO `ip` VALUES (355, '123.55.102.4', '9999', 'https', '中国 河南 鹤壁');
INSERT INTO `ip` VALUES (356, '183.166.21.122', '9999', 'https', '中国 安徽 淮南');
INSERT INTO `ip` VALUES (357, '36.248.133.240', '9999', 'http', '中国 福建 宁德');
INSERT INTO `ip` VALUES (358, '36.249.118.2', '9999', 'https', '中国 福建 泉州');
INSERT INTO `ip` VALUES (359, '123.55.106.128', '9999', 'https', '中国 河南 鹤壁');
INSERT INTO `ip` VALUES (360, '58.22.177.133', '9999', 'https', '中国 福建 南平');
INSERT INTO `ip` VALUES (361, '163.204.95.248', '9999', 'https', '中国 广东 揭阳');
INSERT INTO `ip` VALUES (362, '36.249.48.42', '9999', 'https', '中国 福建 泉州');
INSERT INTO `ip` VALUES (363, '123.149.137.151', '9999', 'https', '中国 河南 洛阳');
INSERT INTO `ip` VALUES (364, '36.248.132.107', '9999', 'https', '中国 福建 宁德');
INSERT INTO `ip` VALUES (365, '49.70.99.104', '9999', 'https', '中国 江苏 宿迁');
INSERT INTO `ip` VALUES (366, '27.43.190.166', '9999', 'https', '中国 广东 揭阳');
INSERT INTO `ip` VALUES (367, '27.43.184.67', '9999', 'https', '中国 广东 揭阳');
INSERT INTO `ip` VALUES (368, '58.253.154.127', '9999', 'https', '中国 广东 揭阳');
INSERT INTO `ip` VALUES (369, '60.169.149.88', '9999', 'https', '中国 安徽 芜湖');
INSERT INTO `ip` VALUES (370, '171.12.115.2', '9999', 'https', '中国 河南 鹤壁');
INSERT INTO `ip` VALUES (371, '36.7.27.51', '9999', 'https', '中国 安徽 宣城');
INSERT INTO `ip` VALUES (372, '163.204.95.104', '9999', 'https', '中国 广东 揭阳');
INSERT INTO `ip` VALUES (373, '220.249.149.104', '9999', 'https', '中国 福建 南平');
INSERT INTO `ip` VALUES (374, '175.43.35.26', '9999', 'https', '中国 福建 泉州');
INSERT INTO `ip` VALUES (375, '36.248.133.85', '9999', 'https', '中国 福建 宁德');
INSERT INTO `ip` VALUES (376, '36.248.133.199', '9999', 'https', '中国 福建 宁德');
INSERT INTO `ip` VALUES (377, '123.160.1.151', '9999', 'https', '中国 河南 洛阳');
INSERT INTO `ip` VALUES (378, '36.248.133.36', '9999', 'http', '中国 福建 宁德');
INSERT INTO `ip` VALUES (379, '27.43.188.115', '9999', 'http', '中国 广东 揭阳');
INSERT INTO `ip` VALUES (380, '60.168.207.44', '1133', 'https', '中国 安徽 合肥');
INSERT INTO `ip` VALUES (381, '123.163.115.18', '9999', 'https', '中国 河南 鹤壁');
INSERT INTO `ip` VALUES (382, '183.166.102.167', '9999', 'https', '中国 安徽 淮南');
INSERT INTO `ip` VALUES (383, '129.226.170.131', '8118', 'http', '中国 香港');
INSERT INTO `ip` VALUES (384, '175.44.108.209', '9999', 'https', '中国 福建 南平');
INSERT INTO `ip` VALUES (385, '220.189.99.198', '3000', 'https', '中国 浙江 嘉兴');
INSERT INTO `ip` VALUES (386, '58.253.157.254', '9999', 'https', '中国 广东 揭阳');
INSERT INTO `ip` VALUES (387, '58.253.154.28', '9999', 'http', '中国 广东 揭阳');
INSERT INTO `ip` VALUES (388, '183.166.21.147', '9999', 'https', '中国 安徽 淮南');
INSERT INTO `ip` VALUES (389, '222.249.238.138', '8080', 'https', '中国 北京 北京');
INSERT INTO `ip` VALUES (390, '117.94.140.147', '9999', 'http', '中国 江苏 泰州');
INSERT INTO `ip` VALUES (391, '27.43.187.102', '9999', 'https', '中国 广东 揭阳');
INSERT INTO `ip` VALUES (392, '123.55.98.229', '9999', 'https', '中国 河南 鹤壁');
INSERT INTO `ip` VALUES (393, '218.93.119.165', '9002', 'http', '中国 江苏 常州');
INSERT INTO `ip` VALUES (394, '171.35.162.86', '9999', 'http', '中国 江西 宜春');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
