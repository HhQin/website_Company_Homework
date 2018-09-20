/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : mybatis

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 20/09/2018 17:59:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_news
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `simpleIntroduce` varchar(25536) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `particularIntroduce` varchar(25536) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_news
-- ----------------------------
INSERT INTO `t_news` VALUES (1, 'testTitle', 'testSimpleIntroduce', 'testParticularIntroduce');
INSERT INTO `t_news` VALUES (2, 'testTitle', 'testSimpleIntroduce', 'testParticularIntroduce');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `productIntroduce` varchar(25536) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES (5, 'SiaoMi Notebook Pro', 'The 12.5-inch siaomi laptop features ultra-thin, portable, metal body like the apple MacBook, while the 15.6-inch model features gaming capabilities. Offers a fourth-generation core i7 processor with a built-in NVIDIAGeForce GTX 760M graphics card and 8GB memory.');
INSERT INTO `t_product` VALUES (6, 'SiaoMi No.9 balancing car', 'No. 9 is small in size and weighs only 12.8kg. It has super high performance and can reach a speed of 16km/h. It is equipped with two direct drive motors, with a total output power of up to 700 watts and instantaneous power of over 2,000 watts.');
INSERT INTO `t_product` VALUES (7, 'SiaoMi Mix2', 'The 5.99-inch display has the same holding feel as the 5.5-inch traditional 16:9 phone. The millet MIX2 USES a four-curved ceramic body, the camera decoration ring is all 18K gold-plated, and the body frame part is made of 7 series aluminum.');

-- ----------------------------
-- Table structure for t_professor
-- ----------------------------
DROP TABLE IF EXISTS `t_professor`;
CREATE TABLE `t_professor`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `professorName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `professorIntroduce` varchar(25536) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (21, 'Lisi', 20);
INSERT INTO `users` VALUES (22, 'Lisi', 20);
INSERT INTO `users` VALUES (23, 'Lisi', 20);
INSERT INTO `users` VALUES (24, 'Lisi', 20);
INSERT INTO `users` VALUES (26, 'Lisi', 20);
INSERT INTO `users` VALUES (27, 'Lisi', 20);
INSERT INTO `users` VALUES (28, 'Lisi', 20);
INSERT INTO `users` VALUES (29, 'Lisi', 20);
INSERT INTO `users` VALUES (30, 'Lisi', 20);
INSERT INTO `users` VALUES (31, 'zhangsan', 22);

SET FOREIGN_KEY_CHECKS = 1;
