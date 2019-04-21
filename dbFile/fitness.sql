/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : fitness

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 21/04/2019 21:09:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `VIPNumber` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '会员卡号',
  `RealName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `Sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `Birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出生日期',
  `StartDate` bigint(20) NULL DEFAULT NULL COMMENT '开始日期',
  `EndDate` bigint(20) NULL DEFAULT NULL COMMENT '结束日期',
  `LessonNumber` int(255) NULL DEFAULT NULL COMMENT '剩余课时数',
  `TeacherNumber` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专属私教工号',
  `Telephone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `Email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `Identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户身份',
  PRIMARY KEY (`VIPNumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('VIP.19034619', '戴可能有卵', '女', '1997-02-06', 1552032304619, 1584547200000, 20, 'emp.19000001', '18861802508', 'djnmjb@163.com', '社会大众');
INSERT INTO `customers` VALUES ('VIP.19038293', '戴无卵', '男', '1997-02-06', 1552035978293, 1584547200000, 19, 'emp.19000001', '18861802508', 'djnmjb@163.com', '社会大众');
INSERT INTO `customers` VALUES ('VIP.19041217', '戴江南', '男', '2019-04-17', 1554777181217, 1555516800000, 0, 'emp.19000001', '', '', '社会大众');

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees`  (
  `UserNum` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工号',
  `LogName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `Password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `RealName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `Sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `Birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出生日期',
  `Job` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工种',
  `Status` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作状态',
  `Telephone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `Email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱号',
  PRIMARY KEY (`UserNum`, `LogName`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES ('emp.19000001', 'qin', 'qin', '张三', '女', '22', '私教', '在场', '18861812785', '405903618@qq.com');
INSERT INTO `employees` VALUES ('EMP.19041041', 'lisi001', 'lisi001', '李四', '男', '1994-04-20', '前台', '--', '12345678', '12345678');

-- ----------------------------
-- Table structure for getinto
-- ----------------------------
DROP TABLE IF EXISTS `getinto`;
CREATE TABLE `getinto`  (
  `VIPNumber` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '会员卡号',
  `GetInTime` bigint(20) NULL DEFAULT NULL COMMENT '入场时间',
  `LessonUse` int(255) NULL DEFAULT NULL COMMENT '消费私教课时',
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of getinto
-- ----------------------------
INSERT INTO `getinto` VALUES ('VIP.19038293', 1554776977479, 1, '');
INSERT INTO `getinto` VALUES ('VIP.19034619', 1554776985493, 15, '');
INSERT INTO `getinto` VALUES ('VIP.19034619', 1554777017826, 0, '');
INSERT INTO `getinto` VALUES ('VIP.19034619', 1554777022042, 0, '');
INSERT INTO `getinto` VALUES ('VIP.19041217', 1554777202814, 0, '');
INSERT INTO `getinto` VALUES ('VIP.19041217', 1554777207228, 0, '');

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `ItemNumber` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备编号',
  `ItemName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备名',
  `ItemStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备状态',
  PRIMARY KEY (`ItemNumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('ITEM19164965', '括背机', '正常');

-- ----------------------------
-- Table structure for lessons
-- ----------------------------
DROP TABLE IF EXISTS `lessons`;
CREATE TABLE `lessons`  (
  `LessonNumber` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操课编号',
  `Day` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `Time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间段',
  `LessonName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名',
  `TeacherNum` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授课教练工号',
  PRIMARY KEY (`LessonNumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lessons
-- ----------------------------
INSERT INTO `lessons` VALUES ('LESS19032740', '2019-03-02', '19:00--21:00', '爵士舞', 'emp.19000001');

SET FOREIGN_KEY_CHECKS = 1;
