/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL80
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : hotelbooking

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 04/05/2021 11:28:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adcode_moreinfo
-- ----------------------------
DROP TABLE IF EXISTS `adcode_moreinfo`;
CREATE TABLE `adcode_moreinfo`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地区/地标/建筑等都有自己独一无二的代号',
  `adcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地区/地标/建筑等名字',
  `ishot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `initials` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '首字母',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adcode_moreinfo
-- ----------------------------
INSERT INTO `adcode_moreinfo` VALUES ('0001', '460100', '白云机场', NULL, NULL, '飞机场/火车站', NULL, 'B');
INSERT INTO `adcode_moreinfo` VALUES ('0002', '460100', '蓝天机场', NULL, NULL, '飞机场/火车站', NULL, 'L');
INSERT INTO `adcode_moreinfo` VALUES ('0003', '460100', '流亭机场', NULL, NULL, '飞机场/火车站', NULL, 'L');
INSERT INTO `adcode_moreinfo` VALUES ('0011', '460100', '美兰火车站', NULL, NULL, '飞机场/火车站', NULL, 'M');
INSERT INTO `adcode_moreinfo` VALUES ('0012', '460100', '东流火车站', NULL, NULL, '飞机场/火车站', NULL, 'D');
INSERT INTO `adcode_moreinfo` VALUES ('0013', '460100', '高铁东站', NULL, NULL, '飞机场/火车站', NULL, 'G');
INSERT INTO `adcode_moreinfo` VALUES ('0014', '460100', '高铁西站', NULL, NULL, '飞机场/火车站', NULL, 'G');
INSERT INTO `adcode_moreinfo` VALUES ('00201', '460100', '海南医学院附属医院', NULL, NULL, '医院', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00202', '460100', '海南眼科医院', NULL, NULL, '医院', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00203', '460100', '海南省人民医院', NULL, NULL, '医院', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00204', '460100', '海南省中医院', NULL, NULL, '医院', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00205', '460100', '海口市人民医院', NULL, NULL, '医院', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00206', '460100', '海南省安宁医院', NULL, NULL, '医院', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00207', '460100', '海南省康宁医院', NULL, NULL, '医院', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00208', '460100', '海口市妇幼保健院', NULL, NULL, '医院', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00209', '460100', '海南省农垦总局医院', NULL, NULL, '医院', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00301', '460100', '白沙门公园', NULL, NULL, '景点', '热门', 'B');
INSERT INTO `adcode_moreinfo` VALUES ('00302', '460100', '博鳌亚洲论坛国际会议中心', NULL, NULL, '景点', NULL, 'B');
INSERT INTO `adcode_moreinfo` VALUES ('00303', '460100', '桂林洋旅游景区', NULL, NULL, '景点', NULL, 'G');
INSERT INTO `adcode_moreinfo` VALUES ('00304', '460100', '海南热带野生动植物园', NULL, NULL, '景点', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00305', '460100', '海瑞墓', NULL, NULL, '景点', '热门', 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00306', '460100', '火山口公园', NULL, NULL, '景点', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00307', '460100', '假日海滩旅游区', NULL, NULL, '景点', NULL, 'J');
INSERT INTO `adcode_moreinfo` VALUES ('00308', '460100', '金牛岭公园', NULL, NULL, '景点', NULL, 'J');
INSERT INTO `adcode_moreinfo` VALUES ('00309', '460100', '骑楼老街', NULL, NULL, '景点', NULL, 'Q');
INSERT INTO `adcode_moreinfo` VALUES ('00310', '460100', '人民公园', NULL, NULL, '景点', NULL, 'R');
INSERT INTO `adcode_moreinfo` VALUES ('00311', '460100', '时代广场', NULL, NULL, '景点', '热门', 'S');
INSERT INTO `adcode_moreinfo` VALUES ('00312', '460100', '世纪大桥', NULL, NULL, '景点', '热门', 'S');
INSERT INTO `adcode_moreinfo` VALUES ('00313', '460100', '铜鼓岭国家级自然保护区', NULL, NULL, '景点', NULL, 'T');
INSERT INTO `adcode_moreinfo` VALUES ('00314', '460100', '万绿园', NULL, NULL, '景点', NULL, 'W');
INSERT INTO `adcode_moreinfo` VALUES ('00315', '460100', '五公祠', NULL, NULL, '景点', NULL, 'W');
INSERT INTO `adcode_moreinfo` VALUES ('00316', '460100', '西秀海滩公园', NULL, NULL, '景点', NULL, 'X');
INSERT INTO `adcode_moreinfo` VALUES ('00317', '460100', '兴隆热带植物园', NULL, NULL, '景点', NULL, 'X');
INSERT INTO `adcode_moreinfo` VALUES ('00318', '460100', '兴隆温泉景区', NULL, NULL, '景点', NULL, 'X');
INSERT INTO `adcode_moreinfo` VALUES ('00319', '460100', '秀英炮台', NULL, NULL, '景点', NULL, 'X');
INSERT INTO `adcode_moreinfo` VALUES ('00320', '460100', '印象海南岛', NULL, NULL, '景点', NULL, 'Y');
INSERT INTO `adcode_moreinfo` VALUES ('00321', '460100', '月亮湾花园', NULL, NULL, '景点', NULL, 'Y');
INSERT INTO `adcode_moreinfo` VALUES ('00322', '460100', '钟楼', NULL, NULL, '景点', NULL, 'Z');
INSERT INTO `adcode_moreinfo` VALUES ('00401', '460100', '白龙路沿线', NULL, NULL, '行政区/商圈', NULL, 'B');
INSERT INTO `adcode_moreinfo` VALUES ('00402', '460100', '白沙县政府', NULL, NULL, '行政区/商圈', NULL, 'B');
INSERT INTO `adcode_moreinfo` VALUES ('00403', '460100', '滨海大道东段', NULL, NULL, '行政区/商圈', NULL, 'B');
INSERT INTO `adcode_moreinfo` VALUES ('00404', '460100', '滨海江岸', NULL, NULL, '行政区/商圈', NULL, 'B');
INSERT INTO `adcode_moreinfo` VALUES ('00405', '460100', '滨江路', NULL, NULL, '行政区/商圈', '热门', 'B');
INSERT INTO `adcode_moreinfo` VALUES ('00406', '460100', '滨涯路', NULL, NULL, '行政区/商圈', NULL, 'B');
INSERT INTO `adcode_moreinfo` VALUES ('00407', '460100', '长堤路', NULL, NULL, '行政区/商圈', NULL, 'B');
INSERT INTO `adcode_moreinfo` VALUES ('00408', '460100', '城西', NULL, NULL, '行政区/商圈', NULL, 'C');
INSERT INTO `adcode_moreinfo` VALUES ('00409', '460100', '大同路沿线', NULL, NULL, '行政区/商圈', NULL, 'D');
INSERT INTO `adcode_moreinfo` VALUES ('00410', '460100', '大学城', NULL, NULL, '行政区/商圈', NULL, 'D');
INSERT INTO `adcode_moreinfo` VALUES ('00411', '460100', '电影公社', NULL, NULL, '行政区/商圈', NULL, 'D');
INSERT INTO `adcode_moreinfo` VALUES ('00412', '460100', '丁村万人海鲜广场', NULL, NULL, '行政区/商圈', NULL, 'D');
INSERT INTO `adcode_moreinfo` VALUES ('00413', '460100', '东海岸', NULL, NULL, '行政区/商圈', NULL, 'D');
INSERT INTO `adcode_moreinfo` VALUES ('00414', '460100', '东湖', NULL, NULL, '行政区/商圈', NULL, 'D');
INSERT INTO `adcode_moreinfo` VALUES ('00415', '460100', '凤翔路', NULL, NULL, '行政区/商圈', NULL, 'F');
INSERT INTO `adcode_moreinfo` VALUES ('00416', '460100', '冯小刚电影公社', NULL, NULL, '行政区/商圈', '', 'F');
INSERT INTO `adcode_moreinfo` VALUES ('00417', '460100', '复兴城', NULL, NULL, '行政区/商圈', NULL, 'F');
INSERT INTO `adcode_moreinfo` VALUES ('00418', '460100', '高登街', NULL, NULL, '行政区/商圈', NULL, 'G');
INSERT INTO `adcode_moreinfo` VALUES ('00419', '460100', '高铁东站', NULL, NULL, '行政区/商圈', NULL, 'G');
INSERT INTO `adcode_moreinfo` VALUES ('00420', '460100', '观澜湖', NULL, NULL, '行政区/商圈', NULL, 'G');
INSERT INTO `adcode_moreinfo` VALUES ('00421', '460100', '国贸大道', NULL, NULL, '行政区/商圈', NULL, 'G');
INSERT INTO `adcode_moreinfo` VALUES ('00422', '460100', '国兴大道', NULL, NULL, '行政区/商圈', NULL, 'G');
INSERT INTO `adcode_moreinfo` VALUES ('00423', '460100', '国兴大润发', NULL, NULL, '行政区/商圈', NULL, 'G');
INSERT INTO `adcode_moreinfo` VALUES ('00424', '460100', '国秀城', NULL, NULL, '行政区/商圈', NULL, 'G');
INSERT INTO `adcode_moreinfo` VALUES ('00425', '460100', '海德路', NULL, NULL, '行政区/商圈', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00426', '460100', '海甸岛', NULL, NULL, '行政区/商圈', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00428', '460100', '假日海滩', NULL, NULL, '行政区/商圈', NULL, 'J');
INSERT INTO `adcode_moreinfo` VALUES ('00429', '460100', '金龙路', NULL, NULL, '行政区/商圈', NULL, 'J');
INSERT INTO `adcode_moreinfo` VALUES ('00430', '460100', '金山广场', NULL, NULL, '行政区/商圈', NULL, 'J');
INSERT INTO `adcode_moreinfo` VALUES ('00431', '460100', '金宇路', NULL, NULL, '行政区/商圈', NULL, 'J');
INSERT INTO `adcode_moreinfo` VALUES ('00432', '460100', '京华城', NULL, NULL, '行政区/商圈', NULL, 'J');
INSERT INTO `adcode_moreinfo` VALUES ('00433', '460100', '灵山镇', NULL, NULL, '行政区/商圈', NULL, 'L');
INSERT INTO `adcode_moreinfo` VALUES ('00434', '460100', '龙昆北路', NULL, NULL, '行政区/商圈', NULL, 'L');
INSERT INTO `adcode_moreinfo` VALUES ('00435', '460100', '龙昆南路', NULL, NULL, '行政区/商圈', NULL, 'L');
INSERT INTO `adcode_moreinfo` VALUES ('00436', '460100', '美华路', NULL, NULL, '行政区/商圈', NULL, 'M');
INSERT INTO `adcode_moreinfo` VALUES ('00437', '460100', '美源商业广场', NULL, NULL, '行政区/商圈', NULL, 'M');
INSERT INTO `adcode_moreinfo` VALUES ('00438', '460100', '名门广场', NULL, NULL, '行政区/商圈', NULL, 'M');
INSERT INTO `adcode_moreinfo` VALUES ('00439', '460100', '明珠广场', NULL, NULL, '行政区/商圈', NULL, 'M');
INSERT INTO `adcode_moreinfo` VALUES ('00440', '460100', '南沙城市广场', NULL, NULL, '行政区/商圈', NULL, 'N');
INSERT INTO `adcode_moreinfo` VALUES ('00441', '460100', '南海大道', NULL, NULL, '行政区/商圈', NULL, 'N');
INSERT INTO `adcode_moreinfo` VALUES ('00442', '460100', '南亚广场', NULL, NULL, '行政区/商圈', NULL, 'N');
INSERT INTO `adcode_moreinfo` VALUES ('00443', '460100', '人民公园', NULL, NULL, '行政区/商圈', NULL, 'R');
INSERT INTO `adcode_moreinfo` VALUES ('00444', '460100', '日月广场', NULL, NULL, '行政区/商圈', NULL, 'R');
INSERT INTO `adcode_moreinfo` VALUES ('00445', '460100', '万达广场', NULL, NULL, '行政区/商圈', '热门', 'R');
INSERT INTO `adcode_moreinfo` VALUES ('00446', '460100', '万绿园', NULL, NULL, '行政区/商圈', NULL, 'W');
INSERT INTO `adcode_moreinfo` VALUES ('00447', '460100', '万国大都会', NULL, NULL, '行政区/商圈', NULL, 'W');
INSERT INTO `adcode_moreinfo` VALUES ('00448', '460100', '新友谊阳光城', NULL, NULL, '行政区/商圈', NULL, 'X');
INSERT INTO `adcode_moreinfo` VALUES ('00449', '460100', '秀英小街', NULL, NULL, '行政区/商圈', NULL, 'X');
INSERT INTO `adcode_moreinfo` VALUES ('00450', '460100', '学院路', NULL, NULL, '行政区/商圈', NULL, 'X');
INSERT INTO `adcode_moreinfo` VALUES ('00451', '460100', '玉沙路', NULL, NULL, '行政区/商圈', NULL, 'Y');
INSERT INTO `adcode_moreinfo` VALUES ('00452', '460100', '振兴路', NULL, NULL, '行政区/商圈', NULL, 'Z');
INSERT INTO `adcode_moreinfo` VALUES ('00453', '460100', '国贸商业城', NULL, NULL, '行政区/商圈', NULL, 'G');
INSERT INTO `adcode_moreinfo` VALUES ('00501', '460100', '中山南路', NULL, NULL, '行政区/商圈', NULL, 'Z');
INSERT INTO `adcode_moreinfo` VALUES ('00502', '460100', '海南医学院', NULL, NULL, '学校', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00503', '460100', '海南大学', NULL, NULL, '学校', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00504', '460100', '海南师范大学', NULL, NULL, '学校', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00505', '460100', '琼台书院', NULL, NULL, '学校', NULL, 'Q');
INSERT INTO `adcode_moreinfo` VALUES ('00506', '460100', '海南工商职业学院', '', '', '学校', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00507', '460100', '海南政法职业学院', NULL, NULL, '学校', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00508', '460100', '天天幼儿园', NULL, NULL, '学校', NULL, 'T');
INSERT INTO `adcode_moreinfo` VALUES ('00509', '460100', '清华幼儿园', NULL, NULL, '学校', NULL, 'Q');
INSERT INTO `adcode_moreinfo` VALUES ('00510', '460100', '华中科技小学', NULL, NULL, '学校', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00511', '460100', '华南科技幼儿园', NULL, NULL, '学校', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00512', '460100', '海南大学附属中学', NULL, NULL, '学校', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('00513', '460100', '益智幼儿园', NULL, NULL, '学校', NULL, 'Y');
INSERT INTO `adcode_moreinfo` VALUES ('01001', '460100', '轻住', NULL, NULL, '品牌', NULL, 'Q');
INSERT INTO `adcode_moreinfo` VALUES ('01002', '460100', 'OYO酒店', NULL, NULL, '品牌', NULL, 'O');
INSERT INTO `adcode_moreinfo` VALUES ('01003', '460100', '嘉捷', NULL, NULL, '品牌', NULL, 'J');
INSERT INTO `adcode_moreinfo` VALUES ('01004', '460100', '如家', NULL, NULL, '品牌', NULL, 'R');
INSERT INTO `adcode_moreinfo` VALUES ('01005', '460100', '格林豪泰', NULL, NULL, '品牌', NULL, 'G');
INSERT INTO `adcode_moreinfo` VALUES ('01006', '460100', '汉庭', NULL, NULL, '品牌', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('01007', '460100', '城市便捷', NULL, NULL, '品牌', NULL, 'C');
INSERT INTO `adcode_moreinfo` VALUES ('01008', '460100', '维也纳', NULL, NULL, '品牌', NULL, 'W');
INSERT INTO `adcode_moreinfo` VALUES ('01009', '460100', '全季', NULL, NULL, '品牌', NULL, 'Q');
INSERT INTO `adcode_moreinfo` VALUES ('01010', '460100', '贝克酒店', NULL, NULL, '品牌', NULL, 'B');
INSERT INTO `adcode_moreinfo` VALUES ('01011', '460100', '皇马假日', NULL, NULL, '品牌', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('01012', '460100', '7天', NULL, NULL, '品牌', NULL, 'Q');
INSERT INTO `adcode_moreinfo` VALUES ('01101', '460100', '华中经济型酒店', NULL, NULL, '酒店', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('01102', '460100', '华中三星酒店', NULL, NULL, '酒店', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('01103', '460100', '华中四星酒店', NULL, NULL, '酒店', NULL, 'H');
INSERT INTO `adcode_moreinfo` VALUES ('01104', '460100', '华中五星酒店', NULL, NULL, '酒店', NULL, 'H');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` enum('man','women') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fullAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------

-- ----------------------------
-- Table structure for home_advertisement
-- ----------------------------
DROP TABLE IF EXISTS `home_advertisement`;
CREATE TABLE `home_advertisement`  (
  `imagePath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图片的路径',
  `adUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '点击图片后的跳转界面',
  PRIMARY KEY (`imagePath`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_advertisement
-- ----------------------------
INSERT INTO `home_advertisement` VALUES ('ad_1', NULL);
INSERT INTO `home_advertisement` VALUES ('ad_2', NULL);
INSERT INTO `home_advertisement` VALUES ('ad_3', NULL);
INSERT INTO `home_advertisement` VALUES ('ad_4', NULL);
INSERT INTO `home_advertisement` VALUES ('ad_5', NULL);
INSERT INTO `home_advertisement` VALUES ('ad_6', NULL);

-- ----------------------------
-- Table structure for hotel_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `hotel_evaluation`;
CREATE TABLE `hotel_evaluation`  (
  `hotelId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `eid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评价人的账号',
  `score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评价人评价分数',
  `evaluation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评价',
  `businessResponse` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商家回复，可能为kong',
  `checkInDate` date NOT NULL COMMENT '入住日期',
  `evaluateDate` date NOT NULL COMMENT '评价日期',
  `anonymous` int(0) NOT NULL COMMENT '0 :不匿名  1：匿名'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel_evaluation
-- ----------------------------
INSERT INTO `hotel_evaluation` VALUES ('9', '2', '111111', '4', '不错，非常的满意，房间的面积非常大，采光足够好。房间的设施都是比较新的，房间没有异味，入住体验比较棒。没有满分的原因是老板很凶', '感谢顾客您提出的宝贵建议，我的态度以后肯定变得更加友好！欢迎下次入住', '2021-04-03', '2021-04-08', 0);
INSERT INTO `hotel_evaluation` VALUES ('9', '1', '1', '5', '非常满意，酒店的服务质量和入住体验都是一流的，我给满分评价', '感谢顾客对我们工作的支持，欢迎下次入住', '2021-04-04', '2021-04-08', 0);
INSERT INTO `hotel_evaluation` VALUES ('9', '3', '1', '3.5', '不满意，房间和楼道里面有很大的烟味，老板态度恶劣', '感谢您提的建议，您的房间周围确实有人抽烟，我们会处理好这种情况，一定不会再次发生从而影响顾客的入住！', '2021-04-14', '2021-04-17', 1);
INSERT INTO `hotel_evaluation` VALUES ('2', '2', '111111', '1.5', '华中四星酒店住宿条件过于差，希望大家都不要来', NULL, '2021-04-08', '2021-04-20', 0);
INSERT INTO `hotel_evaluation` VALUES ('2', '2', '111111', '1.0', '华中四星酒店第二次入住还是感觉很差', NULL, '2021-04-08', '2021-04-20', 1);
INSERT INTO `hotel_evaluation` VALUES ('2', '2', '111111', '0.5', '非常差金', NULL, '2021-04-08', '2021-04-20', 0);
INSERT INTO `hotel_evaluation` VALUES ('2', '2', '111111', '2.0', '华中四星酒店非常兰', NULL, '2021-04-08', '2021-04-21', 0);

-- ----------------------------
-- Table structure for hotel_room
-- ----------------------------
DROP TABLE IF EXISTS `hotel_room`;
CREATE TABLE `hotel_room`  (
  `hotelId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房间对应酒店id',
  `eid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '酒店的每个类型房间的id',
  `types` enum('大床房','双床房','家庭房','钟点房') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '酒店房间的类型',
  `roomname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房间名称',
  `photo1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房间照片1',
  `photo2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房间照片2',
  `photo3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房间照片3',
  `photo4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房间照片4',
  `count` int(0) NULL DEFAULT NULL COMMENT '酒店此类型房间数量',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '此房间的综合描述',
  `beddesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '床的描述，譬如：一张大床1.5米',
  `roomarea` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房间大小',
  `floordesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房间所在楼层',
  `windowdesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '窗户所在位置描述',
  `wifidesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '无线上网描述',
  `internetdesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '有线网还是WiFi上网',
  `smokedesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '吸烟描述',
  `peopledesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最大可入住人数',
  `breakfast` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '有无早餐',
  `beddetail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房间床的详细描述',
  `costpolicy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '费用政策',
  `easyfacility` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '便利设施',
  `mediatech` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '媒体科技',
  `bathroommatch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '浴室配套',
  `fooddrink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '食品饮品',
  `outerdoor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '室外景观',
  `otherfacility` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其他设施'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel_room
-- ----------------------------
INSERT INTO `hotel_room` VALUES ('1', '1', '大床房', '浪漫大床房', '1', '2', '3', '4', 5, '超大房间', '大床', '18㎡', '1-3层', '窗户位于走廊', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '一张大床1.8米', '加床：该房型不可加床 停车场：有免费停车场', '多种规格电源插座', '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', '街景', NULL);
INSERT INTO `hotel_room` VALUES ('1', '2', '双床房', '商务高级双床房', '5', '6', '7', '8', 6, '房间好', '双床', '20㎡', '4-6层', '窗户靠外', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '2张双人床1.4米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, NULL);
INSERT INTO `hotel_room` VALUES ('1', '3', '家庭房', '爱心家庭房', '9', '10', '11', '12', 7, '房间真大', '三床', '24㎡', '7-9层', '无窗户', '无线上网', NULL, '可吸烟', '3人', '有早餐', '3张单人床1.35米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, '空气净化器');
INSERT INTO `hotel_room` VALUES ('2', '1', '大床房', '浪漫大床房', '13', '14', '15', '16', 5, '房间好', '大床', '18㎡', '1-3层', '窗户位于走廊', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '一张大床1.8米', '加床：该房型不可加床 停车场：有免费停车场', '多种规格电源插座', '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', '街景', NULL);
INSERT INTO `hotel_room` VALUES ('2', '2', '双床房', '商务高级双床房', '17', '18', '19', '20', 6, '床非常大', '双床', '20㎡', '4-6层', '窗户靠外', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '2张双人床1.4米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, NULL);
INSERT INTO `hotel_room` VALUES ('2', '3', '家庭房', '爱心家庭房', '21', '22', '23', '24', 7, '隔音非常好', '三床', '24㎡', '7-9层', '无窗户', '无线上网', NULL, '可吸烟', '3人', '有早餐', '3张单人床1.35米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, '空气净化器');
INSERT INTO `hotel_room` VALUES ('3', '1', '大床房', '浪漫大床房', '25', '26', '27', '28', 5, '房屋暖和', '大床', '18㎡', '1-3层', '窗户位于走廊', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '一张大床1.8米', '加床：该房型不可加床 停车场：有免费停车场', '多种规格电源插座', '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', '街景', NULL);
INSERT INTO `hotel_room` VALUES ('3', '2', '双床房', '商务高级双床房', '29', '30', '31', '32', 6, '房间明亮', '双床', '20㎡', '4-6层', '窗户靠外', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '2张双人床1.4米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, NULL);
INSERT INTO `hotel_room` VALUES ('3', '3', '家庭房', '爱心家庭房', '33', '34', '35', '36', 7, '房间实惠', '三床', '24㎡', '7-9层', '无窗户', '无线上网', NULL, '可吸烟', '3人', '有早餐', '3张单人床1.35米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, '空气净化器');
INSERT INTO `hotel_room` VALUES ('4', '1', '大床房', '浪漫大床房', '37', '38', '39', '40', 5, '房间欢迎你', '大床', '18㎡', '1-3层', '窗户位于走廊', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '一张大床1.8米', '加床：该房型不可加床 停车场：有免费停车场', '多种规格电源插座', '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', '街景', NULL);
INSERT INTO `hotel_room` VALUES ('4', '2', '双床房', '商务高级双床房', '41', '42', '43', '44', 6, '房间好', '双床', '20㎡', '4-6层', '窗户靠外', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '2张双人床1.4米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, NULL);
INSERT INTO `hotel_room` VALUES ('4', '3', '家庭房', '爱心家庭房', '45', '46', '47', '48', 7, '房间非常大', '三床', '24㎡', '7-9层', '无窗户', '无线上网', NULL, '可吸烟', '3人', '有早餐', '3张单人床1.35米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, '空气净化器');
INSERT INTO `hotel_room` VALUES ('5', '1', '大床房', '浪漫大床房', '1', '2', '3', '4', 5, '超大房间', '大床', '20㎡', '2-5层', '无窗户', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '一张大床1.8米', '加床：该房型不可加床 停车场：有免费停车场', '多种规格电源插座', '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', '街景', NULL);
INSERT INTO `hotel_room` VALUES ('5', '2', '双床房', '商务高级双床房', '5', '6', '7', '8', 6, '房间明亮', '双床', '19㎡', '6-8层', '有窗', '无线上网', '有线上网', '可吸烟', '2人', '无早餐', '2张双人床1.4米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, NULL);
INSERT INTO `hotel_room` VALUES ('5', '3', '家庭房', '爱心家庭房', '9', '10', '11', '12', 7, '房间明亮', '三床', '18㎡', '7-9层', '窗户靠外', '无线上网', NULL, '禁止吸烟', '3人', '有早餐', '3张单人床1.35米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, '空气净化器');
INSERT INTO `hotel_room` VALUES ('6', '1', '大床房', '浪漫大床房', '13', '14', '15', '16', 5, '房间明亮', '大床', '21㎡', '6-8层', '窗户位于走廊', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '一张大床1.8米', '加床：该房型不可加床 停车场：有免费停车场', '多种规格电源插座', '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', '街景', NULL);
INSERT INTO `hotel_room` VALUES ('6', '2', '双床房', '商务高级双床房', '17', '18', '19', '20', 6, '超大房间', '双床', '20㎡', '1-9层', '有窗', '无线上网', '有线上网', '可吸烟', '2人', '无早餐', '2张双人床1.4米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, NULL);
INSERT INTO `hotel_room` VALUES ('6', '3', '家庭房', '爱心家庭房', '21', '22', '23', '24', 7, '房间实惠', '三床', '19㎡', '7-9层', '窗户靠外', '无线上网', NULL, '禁止吸烟', '3人', '无早餐', '3张单人床1.35米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, '空气净化器');
INSERT INTO `hotel_room` VALUES ('7', '1', '大床房', '浪漫大床房', '25', '26', '27', '28', 5, '隔音非常好', '大床', '21㎡', '2-5层', '窗户靠外', '无线上网', '有线上网', '可吸烟', '2人', '无早餐', '一张大床1.8米', '加床：该房型不可加床 停车场：有免费停车场', '多种规格电源插座', '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', '街景', NULL);
INSERT INTO `hotel_room` VALUES ('7', '2', '双床房', '商务高级双床房', '29', '30', '31', '32', 6, '超大房间', '双床', '20㎡', '6-8层', '窗户靠外', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '2张双人床1.4米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, NULL);
INSERT INTO `hotel_room` VALUES ('7', '3', '家庭房', '爱心家庭房', '33', '34', '35', '36', 7, '房间实惠', '三床', '20㎡', '7-9层', '窗户位于走廊', '无线上网', NULL, '禁止吸烟', '3人', '无早餐', '3张单人床1.35米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, '空气净化器');
INSERT INTO `hotel_room` VALUES ('8', '1', '大床房', '浪漫大床房', '37', '38', '39', '40', 2, '超大房间', '大床', '19㎡', '6-8层', '有窗', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '一张大床1.8米', '加床：该房型不可加床 停车场：有免费停车场', '多种规格电源插座', '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', '街景', NULL);
INSERT INTO `hotel_room` VALUES ('8', '2', '双床房', '商务高级双床房', '41', '42', '43', '44', 3, '超大房间', '双床', '18㎡', '1-9层', '窗户位于走廊', '无线上网', '有线上网', '可吸烟', '2人', '有早餐', '2张双人床1.4米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, NULL);
INSERT INTO `hotel_room` VALUES ('8', '3', '家庭房', '爱心家庭房', '45', '46', '47', '48', 4, '房间实惠', '三床', '20㎡', '7-9层', '有窗', '无线上网', NULL, '禁止吸烟', '3人', '有早餐', '3张单人床1.35米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, '空气净化器');
INSERT INTO `hotel_room` VALUES ('9', '1', '大床房', '浪漫大床房', '1', '2', '3', '4', 2, '超大房间', '大床', '21㎡', '3-7层', '无窗户', '无线上网', '有线上网', '禁止吸烟', '2人', '有早餐', '一张大床1.8米', '加床：该房型不可加床 停车场：有免费停车场', '多种规格电源插座', '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', '街景', NULL);
INSERT INTO `hotel_room` VALUES ('9', '2', '双床房', '商务高级双床房', '5', '6', '7', '8', 3, '隔音非常好', '双床', '24㎡', '3-7层', '窗户位于走廊', '无线上网', '有线上网', '禁止吸烟', '2人', '有早餐', '2张双人床1.4米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, NULL);
INSERT INTO `hotel_room` VALUES ('9', '3', '家庭房', '爱心家庭房', '9', '10', '11', '12', 4, '房间明亮', '三床', '21㎡', '2-5层', '窗户位于走廊', '无线上网', NULL, '可吸烟', '3人', '有早餐', '3张单人床1.35米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, '空气净化器');
INSERT INTO `hotel_room` VALUES ('10', '1', '大床房', '浪漫大床房', '13', '14', '15', '16', 2, '房间明亮', '大床', '19㎡', '3-7层', '有窗', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '一张大床1.8米', '加床：该房型不可加床 停车场：有免费停车场', '多种规格电源插座', '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', '街景', NULL);
INSERT INTO `hotel_room` VALUES ('10', '2', '双床房', '商务高级双床房', '17', '18', '19', '20', 3, '房间实惠', '双床', '24㎡', '7-9层', '窗户靠外', '无线上网', '有线上网', '可吸烟', '2人', '无早餐', '2张双人床1.4米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, NULL);
INSERT INTO `hotel_room` VALUES ('10', '3', '家庭房', '爱心家庭房', '21', '22', '23', '24', 4, '超大房间', '三床', '18㎡', '1-9层', '窗户位于走廊', '无线上网', NULL, '禁止吸烟', '3人', '无早餐', '3张单人床1.35米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, '空气净化器');
INSERT INTO `hotel_room` VALUES ('11', '1', '大床房', '浪漫大床房', '25', '26', '27', '28', 2, '房间实惠', '大床', '19㎡', '1-9层', '有窗', '无线上网', '有线上网', '可吸烟', '2人', '有早餐', '一张大床1.8米', '加床：该房型不可加床 停车场：有免费停车场', '多种规格电源插座', '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', '街景', NULL);
INSERT INTO `hotel_room` VALUES ('11', '2', '双床房', '商务高级双床房', '29', '30', '31', '32', 3, '房间明亮', '双床', '21㎡', '7-9层', '无窗户', '无线上网', '有线上网', '禁止吸烟', '2人', '有早餐', '2张双人床1.4米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, NULL);
INSERT INTO `hotel_room` VALUES ('11', '3', '家庭房', '爱心家庭房', '33', '34', '35', '36', 4, '超大房间', '三床', '19㎡', '1-9层', '窗户靠外', '无线上网', NULL, '可吸烟', '3人', '无早餐', '3张单人床1.35米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, '空气净化器');
INSERT INTO `hotel_room` VALUES ('12', '1', '大床房', '浪漫大床房', '37', '38', '39', '40', 2, '房屋暖和', '大床', '21㎡', '2-5层', '有窗', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '一张大床1.8米', '加床：该房型不可加床 停车场：有免费停车场', '多种规格电源插座', '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', '街景', NULL);
INSERT INTO `hotel_room` VALUES ('12', '2', '双床房', '商务高级双床房', '41', '42', '43', '44', 3, '超大房间', '双床', '24㎡', '3-7层', '窗户位于走廊', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '2张双人床1.4米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, NULL);
INSERT INTO `hotel_room` VALUES ('12', '3', '家庭房', '爱心家庭房', '45', '46', '47', '48', 4, '房屋暖和', '三床', '24㎡', '2-5层', '有窗', '无线上网', NULL, '可吸烟', '3人', '无早餐', '3张单人床1.35米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, '空气净化器');
INSERT INTO `hotel_room` VALUES ('13', '1', '大床房', '浪漫大床房', '1', '2', '3', '4', 2, '房间明亮', '大床', '21㎡', '3-7层', '窗户位于走廊', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '一张大床1.8米', '加床：该房型不可加床 停车场：有免费停车场', '多种规格电源插座', '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', '街景', NULL);
INSERT INTO `hotel_room` VALUES ('13', '2', '双床房', '商务高级双床房', '5', '6', '7', '8', 3, '房间明亮', '双床', '20㎡', '3-7层', '有窗', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '2张双人床1.4米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, NULL);
INSERT INTO `hotel_room` VALUES ('13', '3', '家庭房', '爱心家庭房', '9', '10', '11', '12', 4, '隔音非常好', '三床', '24㎡', '7-9层', '有窗', '无线上网', NULL, '禁止吸烟', '3人', '无早餐', '3张单人床1.35米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, '空气净化器');
INSERT INTO `hotel_room` VALUES ('14', '1', '大床房', '浪漫大床房', '13', '14', '15', '16', 2, '房屋暖和', '大床', '18㎡', '3-7层', '无窗户', '无线上网', '有线上网', '可吸烟', '2人', '无早餐', '一张大床1.8米', '加床：该房型不可加床 停车场：有免费停车场', '多种规格电源插座', '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', '街景', NULL);
INSERT INTO `hotel_room` VALUES ('14', '2', '双床房', '商务高级双床房', '17', '18', '19', '20', 3, '房间明亮', '双床', '19㎡', '2-5层', '有窗', '无线上网', '有线上网', '禁止吸烟', '2人', '无早餐', '2张双人床1.4米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, NULL);
INSERT INTO `hotel_room` VALUES ('14', '3', '家庭房', '爱心家庭房', '21', '22', '23', '24', 4, '隔音非常好', '三床', '21㎡', '7-9层', '窗户位于走廊', '无线上网', NULL, '可吸烟', '3人', '无早餐', '3张单人床1.35米', '加床：该房型不可加床 停车场：有免费停车场', NULL, '电视机', '独立卫生间，24小时热水，电热水器，吹风机，拖鞋', '电热水壶', NULL, '空气净化器');

-- ----------------------------
-- Table structure for hotel_service
-- ----------------------------
DROP TABLE IF EXISTS `hotel_service`;
CREATE TABLE `hotel_service`  (
  `hotelId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `servicetitle_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `servicepre_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `servicetitle_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `servicepre_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `servicetitle_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `servicepre_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cancellevel` int(0) NOT NULL COMMENT '0:不可取消  1:订单后15分钟内可取消 2:入住前一天18:00前可取消',
  `canceltitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cancelpolicy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `childlivein` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `addbed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `userule_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `userule_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `userule_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `roomtypedesc_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `roomtypedesc_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`hotelId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel_service
-- ----------------------------
INSERT INTO `hotel_service` VALUES ('1', '预约发票', '下单后可预约酒店开具发票，退房时直接在前台索取', '溜溜住', '直接退房，无需查房', NULL, NULL, 1, '限时取消', '下单后15分钟内免费取消', '未成年必须在监护人陪同下才能入住', '加床政策请详询酒店', '直接消费，携带入住人的有效证件办理入住，入住必须按照一人一证', '请在12:00至23:59内入住并于次日12:00之前退房；如需提前入住或延迟退房，请咨询商家', '入住需要押金，金额以前台为准', '房型图片仅供参考，实际提供房型信息请以文字为准，具体情况请咨询商家', NULL);
INSERT INTO `hotel_service` VALUES ('10', NULL, NULL, NULL, NULL, NULL, NULL, 1, '限时取消', '下单后15分钟内免费取消', '未成年必须在监护人陪同下才能入住', '加床政策请详询酒店', '直接消费，携带入住人的有效证件办理入住，入住必须按照一人一证', '请在12:00至23:59内入住并于次日12:00之前退房；如需提前入住或延迟退房，请咨询商家', '入住需要押金，金额以前台为准', '房型图片仅供参考，实际提供房型信息请以文字为准，具体情况请咨询商家', NULL);
INSERT INTO `hotel_service` VALUES ('11', NULL, NULL, '溜溜住', '直接退房，无需查房', NULL, NULL, 1, '限时取消', '下单后15分钟内免费取消', '未成年必须在监护人陪同下才能入住', '加床政策请详询酒店', '直接消费，携带入住人的有效证件办理入住，入住必须按照一人一证', '请在12:00至23:59内入住并于次日12:00之前退房；如需提前入住或延迟退房，请咨询商家', '入住需要押金，金额以前台为准', '房型图片仅供参考，实际提供房型信息请以文字为准，具体情况请咨询商家', NULL);
INSERT INTO `hotel_service` VALUES ('12', '预约发票', '下单后可预约酒店开具发票，退房时直接在前台索取', NULL, NULL, NULL, NULL, 1, '限时取消', '下单后15分钟内免费取消', '未成年必须在监护人陪同下才能入住', '加床政策请详询酒店', '直接消费，携带入住人的有效证件办理入住，入住必须按照一人一证', '请在12:00至23:59内入住并于次日12:00之前退房；如需提前入住或延迟退房，请咨询商家', '入住需要押金，金额以前台为准', '房型图片仅供参考，实际提供房型信息请以文字为准，具体情况请咨询商家', NULL);
INSERT INTO `hotel_service` VALUES ('13', NULL, NULL, '溜溜住', '直接退房，无需查房', NULL, NULL, 1, '限时取消', '下单后15分钟内免费取消', '未成年必须在监护人陪同下才能入住', '加床政策请详询酒店', '直接消费，携带入住人的有效证件办理入住，入住必须按照一人一证', '请在12:00至23:59内入住并于次日12:00之前退房；如需提前入住或延迟退房，请咨询商家', '入住需要押金，金额以前台为准', '房型图片仅供参考，实际提供房型信息请以文字为准，具体情况请咨询商家', NULL);
INSERT INTO `hotel_service` VALUES ('14', '预约发票', '下单后可预约酒店开具发票，退房时直接在前台索取', NULL, NULL, NULL, NULL, 0, '不可取消', NULL, '未成年必须在监护人陪同下才能入住', '加床政策请详询酒店', '直接消费，携带入住人的有效证件办理入住，入住必须按照一人一证', '请在12:00至23:59内入住并于次日12:00之前退房；如需提前入住或延迟退房，请咨询商家', '入住需要押金，金额以前台为准', '房型图片仅供参考，实际提供房型信息请以文字为准，具体情况请咨询商家', NULL);
INSERT INTO `hotel_service` VALUES ('2', NULL, NULL, '溜溜住', '直接退房，无需查房', NULL, NULL, 0, '不可取消', NULL, '未成年必须在监护人陪同下才能入住', '加床政策请详询酒店', '直接消费，携带入住人的有效证件办理入住，入住必须按照一人一证', '请在12:00至23:59内入住并于次日12:00之前退房；如需提前入住或延迟退房，请咨询商家', '入住需要押金，金额以前台为准', '房型图片仅供参考，实际提供房型信息请以文字为准，具体情况请咨询商家', NULL);
INSERT INTO `hotel_service` VALUES ('3', '预约发票', '下单后可预约酒店开具发票，退房时直接在前台索取', NULL, NULL, NULL, NULL, 0, '不可取消', NULL, '未成年必须在监护人陪同下才能入住', '加床政策请详询酒店', '直接消费，携带入住人的有效证件办理入住，入住必须按照一人一证', '请在12:00至23:59内入住并于次日12:00之前退房；如需提前入住或延迟退房，请咨询商家', '入住需要押金，金额以前台为准', '房型图片仅供参考，实际提供房型信息请以文字为准，具体情况请咨询商家', NULL);
INSERT INTO `hotel_service` VALUES ('4', '预约发票', '下单后可预约酒店开具发票，退房时直接在前台索取', '溜溜住', '直接退房，无需查房', NULL, NULL, 0, '不可取消', NULL, '未成年必须在监护人陪同下才能入住', '加床政策请详询酒店', '直接消费，携带入住人的有效证件办理入住，入住必须按照一人一证', '请在12:00至23:59内入住并于次日12:00之前退房；如需提前入住或延迟退房，请咨询商家', '入住需要押金，金额以前台为准', '房型图片仅供参考，实际提供房型信息请以文字为准，具体情况请咨询商家', NULL);
INSERT INTO `hotel_service` VALUES ('5', '预约发票', '下单后可预约酒店开具发票，退房时直接在前台索取', NULL, NULL, NULL, NULL, 0, '不可取消', NULL, '未成年必须在监护人陪同下才能入住', '加床政策请详询酒店', '直接消费，携带入住人的有效证件办理入住，入住必须按照一人一证', '请在12:00至23:59内入住并于次日12:00之前退房；如需提前入住或延迟退房，请咨询商家', '入住需要押金，金额以前台为准', '房型图片仅供参考，实际提供房型信息请以文字为准，具体情况请咨询商家', NULL);
INSERT INTO `hotel_service` VALUES ('6', NULL, NULL, '溜溜住', '直接退房，无需查房', NULL, NULL, 0, '不可取消', NULL, '未成年必须在监护人陪同下才能入住', '加床政策请详询酒店', '直接消费，携带入住人的有效证件办理入住，入住必须按照一人一证', '请在12:00至23:59内入住并于次日12:00之前退房；如需提前入住或延迟退房，请咨询商家', '入住需要押金，金额以前台为准', '房型图片仅供参考，实际提供房型信息请以文字为准，具体情况请咨询商家', NULL);
INSERT INTO `hotel_service` VALUES ('7', '预约发票', '下单后可预约酒店开具发票，退房时直接在前台索取', NULL, NULL, NULL, NULL, 0, '不可取消', NULL, '未成年必须在监护人陪同下才能入住', '加床政策请详询酒店', '直接消费，携带入住人的有效证件办理入住，入住必须按照一人一证', '请在12:00至23:59内入住并于次日12:00之前退房；如需提前入住或延迟退房，请咨询商家', '入住需要押金，金额以前台为准', '房型图片仅供参考，实际提供房型信息请以文字为准，具体情况请咨询商家', NULL);
INSERT INTO `hotel_service` VALUES ('8', '预约发票', '下单后可预约酒店开具发票，退房时直接在前台索取', '溜溜住', '直接退房，无需查房', NULL, NULL, 2, '限时取消', '入住前一天18:00前免费取消', '未成年必须在监护人陪同下才能入住', '加床政策请详询酒店', '直接消费，携带入住人的有效证件办理入住，入住必须按照一人一证', '请在12:00至23:59内入住并于次日12:00之前退房；如需提前入住或延迟退房，请咨询商家', '入住需要押金，金额以前台为准', '房型图片仅供参考，实际提供房型信息请以文字为准，具体情况请咨询商家', NULL);
INSERT INTO `hotel_service` VALUES ('9', NULL, NULL, '溜溜住', '直接退房，无需查房', NULL, NULL, 2, '限时取消', '入住前一天18:00前免费取消', '未成年必须在监护人陪同下才能入住', '加床政策请详询酒店', '直接消费，携带入住人的有效证件办理入住，入住必须按照一人一证', '请在12:00至23:59内入住并于次日12:00之前退房；如需提前入住或延迟退房，请咨询商家', '入住需要押金，金额以前台为准', '房型图片仅供参考，实际提供房型信息请以文字为准，具体情况请咨询商家', NULL);

-- ----------------------------
-- Table structure for hotels
-- ----------------------------
DROP TABLE IF EXISTS `hotels`;
CREATE TABLE `hotels`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '每家酒店都有自己的id，是唯一的',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '酒店的名称',
  `adcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '酒店所在行政区的编码',
  `lon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '酒店位置的经度',
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '酒店位置的纬度',
  `photo1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '酒店图片简介1',
  `photo2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '酒店图片简介2',
  `photo3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '酒店图片简介3',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '酒店位置描述',
  `types` enum('经济型','舒适/三星','高档/四星','豪华/五星') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '酒店星级',
  `score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '酒店评分',
  `scoreDec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '酒店评分描述',
  `price` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '酒店平均价格/最低价格',
  `openTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '开业时间描述',
  `decorateTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '装修时间描述',
  `distanceText` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '距离描述',
  `distanceBus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '交通工具距离描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotels
-- ----------------------------
INSERT INTO `hotels` VALUES ('1', '华中三星酒店(五一广场附二店)', '460100', '', '', '4', '5', '6', '金特里希路口公交站', '舒适/三星', '4.2', '不错“酒店阿姨人很好”', '164', '2018年开业', '2018年装修', '距离中心直线距离700米，步行900米，约11分钟', '距离中山村地铁站直线200米，步行300米，约5分钟');
INSERT INTO `hotels` VALUES ('10', '谷雨精选酒店(中级人民法院店)', '460100', NULL, NULL, '31', '32', '33', '卧春风桥小区C栋-902', '经济型', '4.6', '超棒”出行方便“', '189', '2020年开业', '2020年装修', '距离中心直线900m，步行1.2km，约15分钟', '距离珞喻路地铁站直线1km，步行2km，约30分钟');
INSERT INTO `hotels` VALUES ('11', '糖果时尚酒店(东塘水利厅妇幼店)', '460100', NULL, NULL, '34', '35', '36', '光谷广场斜对面200米', '舒适/三星', '4.7', '不错”提供接送服务“', '199', '2021年开业', '2021年装修', '距离中心直线距离1km，步行1.5km，约20分钟', '距离小王庄地铁站非常近A口直线500米，步行700米，约9分钟');
INSERT INTO `hotels` VALUES ('12', '唯爱情侣酒店', '460100', NULL, NULL, '37', '38', '39', '美丽路29号', '豪华/五星', '4.3', '好“酒店隔音很好”', '142', '2017年开业', '2020年装修', '距离中心直线距离700米，步行900米，约11分钟', '距离中山村地铁站直线200米，步行300米，约5分钟');
INSERT INTO `hotels` VALUES ('13', '天鑫商务宾馆(大学城店)', '460100', NULL, NULL, '40', '41', '42', '汉街19号(万达广场旁)', '舒适/三星', '5.0', '超棒“房间干净整洁，隔音好”', '212', '2021年开业', '2021年装修', '距离中心直线距离1km，步行1.5km，约20分钟', '距离关山口地铁站直线300米，步行500米，约7分钟距离珞喻路地铁站直线1km，步行2km，约30分钟');
INSERT INTO `hotels` VALUES ('14', '铂顿国际公寓', '460100', NULL, NULL, '43', '44', '45', '江夏坡子街29号(文和友中心2层)', '高档/四星', '3.7', '一般“房间干净”', '123', '2018年开业', '2018年装修', '距离中心直线距离700米，步行900米，约11分钟', '距离中山村地铁站直线200米，步行300米，约5分钟');
INSERT INTO `hotels` VALUES ('2', '华中四星酒店', '460100', '', '', '7', '8', '9', '湘龙小区C-2栋', '高档/四星', '4.8', '超棒”出行方便“', '162', '2017年开业', '2017年装修', '距离中心直线900m，步行1.2km，约15分钟', '距离关山口地铁站直线300米，步行500米，约7分钟');
INSERT INTO `hotels` VALUES ('3', '华中五星酒店', '460100', '', '', '10', '11', '12', '新源路486号', '豪华/五星', '4.9', '不错”周边交通生活方便“', '123', '2021年开业', '2021年装修', '距离中心直线900m，步行1.2km，约15分钟', '距离中山村地铁站直线200米，步行300米，约5分钟');
INSERT INTO `hotels` VALUES ('4', '怡园酒店(艾米零地铁站店)', '460100', NULL, NULL, '13', '14', '15', '珞喻路1037号', '经济型', '3.9', '不错”提供接送服务“', '181', '2020年开业', '2021年装修', '距离中心直线距离700米，步行900米，约11分钟', '距离珞喻路地铁站直线1km，步行2km，约30分钟');
INSERT INTO `hotels` VALUES ('5', '如派连锁酒店(高铁南站店)', '460100', NULL, NULL, '16', '17', '18', '湘美路29号(近五一广场)', '经济型', '4.6', '很棒“房间采光很好”', '174', '2017年开业', '2017年装修', '距离中心直线距离1km，步行1.5km，约20分钟', '距离关山口地铁站直线300米，步行500米，约7分钟');
INSERT INTO `hotels` VALUES ('6', '幸福小镇创意酒店(人民政府店)', '460100', NULL, NULL, '19', '20', '21', '夏利碧路(保利广场对面100米)', '经济型', '4.2', '棒“阿姨非常好”', '132', '2020年开业', '2020年装修', '距离中心直线距离700米，步行900米，约11分钟', '距离小王庄地铁站非常近A口直线500米，步行700米，约9分钟');
INSERT INTO `hotels` VALUES ('7', '轻住豆豆公寓(机电学院土桥地铁站店)', '460100', NULL, NULL, '22', '23', '24', '关山大道129号(曙光路与南山路交叉路口)', '高档/四星', '3.8', '一般“老板很热情”', '145', '2020年开业', '2020年装修', '距离中心直线距离700米，步行900米，约11分钟', '距离珞喻路地铁站直线1km，步行2km，约30分钟');
INSERT INTO `hotels` VALUES ('8', '豪庭商务酒店(六沟龙地铁站店)', '460100', NULL, NULL, '25', '26', '27', '曙光路320号', '经济型', '5.0', '不错”周边交通生活方便“', '144', '2018年开业', '2018年装修', '距离中心直线距离1km，步行1.5km，约20分钟', '距离小王庄地铁站非常近A口直线500米，步行700米，约9分钟');
INSERT INTO `hotels` VALUES ('9', '城市便捷酒店', '460100', NULL, NULL, '28', '29', '30', '中山南路290号(南山医院斜对面100米)', '经济型', '4.9', '棒“附近出行生活很方便”', '165', '2021年开业', '2021年装修', '距离中心直线900m，步行1.2km，约15分钟', '距离关山口地铁站直线300米，步行500米，约7分钟');

-- ----------------------------
-- Table structure for room_state
-- ----------------------------
DROP TABLE IF EXISTS `room_state`;
CREATE TABLE `room_state`  (
  `hotelId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '房间所在酒店的id',
  `eid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '房间的id',
  `date` date NOT NULL COMMENT '入住房间日期',
  `remaining` int(0) NOT NULL COMMENT '此类型的房间剩余数量',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订 抢 无状态',
  `price` int(0) NOT NULL COMMENT '此类型房间的单价'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_state
-- ----------------------------
INSERT INTO `room_state` VALUES ('1', '1', '2021-05-20', 1, '抢', 1);
INSERT INTO `room_state` VALUES ('1', '2', '2021-05-20', 2, '订', 2);
INSERT INTO `room_state` VALUES ('1', '3', '2021-05-20', 3, '订', 3);
INSERT INTO `room_state` VALUES ('2', '1', '2021-05-20', 0, '无', 1);
INSERT INTO `room_state` VALUES ('2', '2', '2021-05-20', 1, '抢', 2);
INSERT INTO `room_state` VALUES ('2', '3', '2021-05-20', 2, '订', 3);
INSERT INTO `room_state` VALUES ('3', '1', '2021-05-20', 2, '订', 1);
INSERT INTO `room_state` VALUES ('3', '2', '2021-05-20', 3, '订', 2);
INSERT INTO `room_state` VALUES ('3', '3', '2021-05-20', 0, '无', 3);
INSERT INTO `room_state` VALUES ('4', '1', '2021-05-20', 1, '抢', 1);
INSERT INTO `room_state` VALUES ('4', '2', '2021-05-20', 2, '订', 2);
INSERT INTO `room_state` VALUES ('4', '3', '2021-05-20', 3, '订', 3);
INSERT INTO `room_state` VALUES ('5', '1', '2021-05-20', 2, '订', 1);
INSERT INTO `room_state` VALUES ('5', '2', '2021-05-20', 0, '无', 2);
INSERT INTO `room_state` VALUES ('5', '3', '2021-05-20', 5, '订', 3);
INSERT INTO `room_state` VALUES ('6', '1', '2021-05-20', 1, '抢', 1);
INSERT INTO `room_state` VALUES ('6', '2', '2021-05-20', 3, '订', 2);
INSERT INTO `room_state` VALUES ('6', '3', '2021-05-20', 2, '订', 3);
INSERT INTO `room_state` VALUES ('7', '1', '2021-05-20', 0, '无', 1);
INSERT INTO `room_state` VALUES ('7', '2', '2021-05-20', 1, '抢', 2);
INSERT INTO `room_state` VALUES ('7', '3', '2021-05-20', 3, '订', 3);
INSERT INTO `room_state` VALUES ('8', '1', '2021-05-20', 4, '订', 1);
INSERT INTO `room_state` VALUES ('8', '2', '2021-05-20', 2, '订', 2);
INSERT INTO `room_state` VALUES ('8', '3', '2021-05-20', 1, '抢', 3);
INSERT INTO `room_state` VALUES ('9', '1', '2021-05-20', 0, '无', 1);
INSERT INTO `room_state` VALUES ('9', '2', '2021-05-20', 4, '订', 2);
INSERT INTO `room_state` VALUES ('9', '3', '2021-05-20', 1, '抢', 3);
INSERT INTO `room_state` VALUES ('10', '1', '2021-05-20', 0, '无', 1);
INSERT INTO `room_state` VALUES ('10', '2', '2021-05-20', 0, '无', 2);
INSERT INTO `room_state` VALUES ('10', '3', '2021-05-20', 1, '抢', 3);
INSERT INTO `room_state` VALUES ('11', '1', '2021-05-20', 0, '无', 1);
INSERT INTO `room_state` VALUES ('11', '2', '2021-05-20', 2, '订', 2);
INSERT INTO `room_state` VALUES ('11', '3', '2021-05-20', 1, '抢', 3);
INSERT INTO `room_state` VALUES ('12', '1', '2021-05-20', 0, '无', 1);
INSERT INTO `room_state` VALUES ('12', '2', '2021-05-20', 0, '无', 2);
INSERT INTO `room_state` VALUES ('12', '3', '2021-05-20', 1, '抢', 3);
INSERT INTO `room_state` VALUES ('13', '1', '2021-05-20', 1, '抢', 1);
INSERT INTO `room_state` VALUES ('13', '2', '2021-05-20', 1, '抢', 2);
INSERT INTO `room_state` VALUES ('13', '3', '2021-05-20', 0, '无', 3);
INSERT INTO `room_state` VALUES ('14', '1', '2021-05-20', 1, '抢', 1);
INSERT INTO `room_state` VALUES ('14', '2', '2021-05-20', 2, '订', 2);
INSERT INTO `room_state` VALUES ('14', '3', '2021-05-20', 3, '订', 3);
INSERT INTO `room_state` VALUES ('9', '1', '2021-05-21', 1, '抢', 5);
INSERT INTO `room_state` VALUES ('9', '2', '2021-05-21', 4, '订', 3);
INSERT INTO `room_state` VALUES ('9', '3', '2021-05-21', 3, '订', 3);
INSERT INTO `room_state` VALUES ('9', '1', '2021-05-22', 0, '无', 1);
INSERT INTO `room_state` VALUES ('9', '2', '2021-05-22', 4, '订', 2);
INSERT INTO `room_state` VALUES ('9', '3', '2021-05-22', 3, '订', 3);

-- ----------------------------
-- Table structure for user_account_pwd
-- ----------------------------
DROP TABLE IF EXISTS `user_account_pwd`;
CREATE TABLE `user_account_pwd`  (
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_account_pwd
-- ----------------------------
INSERT INTO `user_account_pwd` VALUES ('1', '1');
INSERT INTO `user_account_pwd` VALUES ('111111', '111111');
INSERT INTO `user_account_pwd` VALUES ('111112', '111112');

-- ----------------------------
-- Table structure for user_fav_record
-- ----------------------------
DROP TABLE IF EXISTS `user_fav_record`;
CREATE TABLE `user_fav_record`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流水号',
  `userId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hotelsId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_fav_record
-- ----------------------------
INSERT INTO `user_fav_record` VALUES ('1', '111111', '2');
INSERT INTO `user_fav_record` VALUES ('2', '111111', '5');
INSERT INTO `user_fav_record` VALUES ('3', '111111', '3');

-- ----------------------------
-- Table structure for user_history_order
-- ----------------------------
DROP TABLE IF EXISTS `user_history_order`;
CREATE TABLE `user_history_order`  (
  `orderId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单独一无二的ID号',
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户账号名称',
  `hotelId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户居住的酒店ID',
  `eid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户居住的房间ID',
  `number` int(0) NOT NULL COMMENT '客户居住的房间数量',
  `totalPrice` int(0) NOT NULL COMMENT '客户支付的总价格',
  `priceList` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '价格列表',
  `sdate` date NOT NULL COMMENT '客户入住日期',
  `edate` date NOT NULL COMMENT '客户离开日期',
  `orderState` int(0) NOT NULL COMMENT '订单状态 0：已消费 1：待评价 2：预定成功 3：已取消',
  `customerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '入住人的名称',
  `customerPhone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '入住人的电话号码',
  `arriveTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '到店时间备注',
  `isShow` int(0) NOT NULL DEFAULT 1 COMMENT '是否展示在用户的界面',
  `cancelTime` datetime(0) NOT NULL COMMENT '可取消的截至时间',
  `payTime` datetime(0) NOT NULL COMMENT '下单时间',
  PRIMARY KEY (`orderId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_history_order
-- ----------------------------
INSERT INTO `user_history_order` VALUES ('111111202012101224320', '111111', '4', '3', 2, 2, '1 ', '2021-04-18', '2021-04-19', 2, '牛股四', '17615921534', '当天九点', 1, '2021-04-17 11:33:19', '2021-04-07 09:52:39');
INSERT INTO `user_history_order` VALUES ('111111202101071224320', '111111', '3', '1', 1, 2, '1 1 ', '2021-01-07', '2021-01-09', 2, '牛股三', '17615921533', '当天十一点', 1, '2021-04-21 11:33:23', '2021-01-06 09:52:50');
INSERT INTO `user_history_order` VALUES ('111111202103011224320', '111111', '5', '2', 1, 1, '1 ', '2021-03-01', '2021-03-02', 0, '牛股五', '17615921535', '当天下午一点', 1, '2021-04-15 11:33:26', '2021-02-25 09:53:04');
INSERT INTO `user_history_order` VALUES ('111111202103261224320', '111111', '6', '1', 2, 2, '1 ', '2021-03-26', '2021-03-27', 1, '牛股六', '17615921536', '当天下午三点', 1, '2021-03-31 11:33:29', '2021-03-04 09:53:16');
INSERT INTO `user_history_order` VALUES ('111111202104011224320', '111111', '1', '3', 1, 1, '1 ', '2021-04-01', '2021-04-02', 0, '牛股一', '17615921531', '当天十二点', 1, '2021-04-27 11:33:32', '2021-03-17 09:53:23');
INSERT INTO `user_history_order` VALUES ('111111202104081224320', '111111', '2', '2', 2, 12, '1 2 3 ', '2021-04-08', '2021-04-11', 1, '牛股二', '17615921532', '当天八点', 1, '2021-04-08 11:33:44', '2021-04-01 09:53:28');
INSERT INTO `user_history_order` VALUES ('1111112021418141923253', '111111', '9', '2', 1, 7, '2 3 2 ', '2021-05-20', '2021-05-23', 3, '测试', '测试', '测试', 1, '2021-05-19 18:00:00', '2021-04-18 14:19:23');
INSERT INTO `user_history_order` VALUES ('111111202142021213191', '111111', '9', '2', 2, 10, '2 3 ', '2021-05-20', '2021-05-22', 3, '我上班呢', '睡觉睡觉', '睡觉睡觉', 1, '2021-05-19 18:00:00', '2021-04-20 21:02:13');
INSERT INTO `user_history_order` VALUES ('111111202142215430940', '111111', '9', '2', 2, 14, '2 3 2 ', '2021-05-20', '2021-05-23', 3, '测试', '测试', '测试', 1, '2021-05-19 18:00:00', '2021-04-22 15:04:30');
INSERT INTO `user_history_order` VALUES ('111111202142216932239', '111111', '12', '3', 1, 3, '3 ', '2021-05-20', '2021-05-21', 3, 'QQ', 'QQ', 'qq', 1, '2021-04-22 16:24:32', '2021-04-22 16:24:32');
INSERT INTO `user_history_order` VALUES ('1202142122656525', '1', '9', '2', 3, 21, '2 3 2 ', '2021-05-20', '2021-05-23', 3, '测试用户', '测试用户', '测试用户', 1, '2021-05-19 18:00:00', '2021-04-21 22:06:56');
INSERT INTO `user_history_order` VALUES ('12021422143341609', '1', '9', '3', 1, 9, '3 3 3 ', '2021-05-20', '2021-05-23', 3, '账号1测试', '账号1手机', '入住当天下午四点之前', 1, '2021-05-19 18:00:00', '2021-04-22 14:33:41');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账号',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '头像',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '昵称',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '性别',
  `age` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '年龄',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '电话',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地点',
  PRIMARY KEY (`account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', '1', '不期而遇', '女', '23岁', '123465', '上海');
INSERT INTO `user_info` VALUES ('111111', '111111', '两只小猪', '女', '100岁', '保密', '深圳');

-- ----------------------------
-- Table structure for user_lived_record
-- ----------------------------
DROP TABLE IF EXISTS `user_lived_record`;
CREATE TABLE `user_lived_record`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流水号',
  `userId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hotelsId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `liveDate` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_lived_record
-- ----------------------------
INSERT INTO `user_lived_record` VALUES ('1', '111111', '12', '2021-01-01');
INSERT INTO `user_lived_record` VALUES ('2', '111111', '13', '2020-06-10');
INSERT INTO `user_lived_record` VALUES ('3', '111111', '4', '2021-02-09');
INSERT INTO `user_lived_record` VALUES ('4', '111111', '7', '2019-05-14');
INSERT INTO `user_lived_record` VALUES ('5', '111111', '8', '2020-11-18');
INSERT INTO `user_lived_record` VALUES ('6', '111111', '6', '2020-03-06');
INSERT INTO `user_lived_record` VALUES ('7', '111111', '1', '2021-02-28');

SET FOREIGN_KEY_CHECKS = 1;
