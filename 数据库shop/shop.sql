/*
 Navicat Premium Data Transfer

 Source Server         : zhb_localhost
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : 127.0.0.1:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 21/06/2020 09:56:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for classify
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classify
-- ----------------------------
INSERT INTO `classify` VALUES (1, '兰蔻');
INSERT INTO `classify` VALUES (2, '娇兰');
INSERT INTO `classify` VALUES (3, '雅诗兰黛');
INSERT INTO `classify` VALUES (4, '神仙水');

-- ----------------------------
-- Table structure for cosmeticform
-- ----------------------------
DROP TABLE IF EXISTS `cosmeticform`;
CREATE TABLE `cosmeticform`  (
  `cosmetic_number` char(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cosmetic_name` char(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cosmetic_made` char(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cosmetic_price` float NULL DEFAULT NULL,
  `cosmetic_mess` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cosmetic_pic` char(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cosmetic_number`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  CONSTRAINT `cosmeticform_ibfk_1` FOREIGN KEY (`id`) REFERENCES `classify` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cosmeticform
-- ----------------------------
INSERT INTO `cosmeticform` VALUES ('EsteeLauder1001', '雅思兰黛眼霜', 'EsteeLauder', 389, '功效：去黑眼圈 去眼袋', 'est1.jpg', 3);
INSERT INTO `cosmeticform` VALUES ('EsteeLauder1002', '雅思兰黛面霜', 'EsteeLauder', 649, '祛斑、变美、恢复弹性肌肤', 'est2.jpg', 3);
INSERT INTO `cosmeticform` VALUES ('guer01', '娇兰润唇膏', '法国Guerlain', 199, '保湿、娇艳、锁水分', 'guer1.jpg', 2);
INSERT INTO `cosmeticform` VALUES ('guer02', '娇兰护肤套餐', '法国Guerlain', 899, '美白、年轻、健康、永持青春', 'guer2.jpg', 2);
INSERT INTO `cosmeticform` VALUES ('lan_a1001', '兰蔻清滢柔肤水', '法国Lancome', 229, '化妆品净含量：400g', 'lan1.jpg', 1);
INSERT INTO `cosmeticform` VALUES ('lan_a1002', '兰蔻乳液', '法国Lancome', 588, '乳液功效：补水 保湿 抗敏感 适合肤质：干性肤质', 'lan2.jpg', 1);
INSERT INTO `cosmeticform` VALUES ('SK-II001', '神仙水精华露', 'Japan', 1899, '控油平衡，收缩毛孔', 'sk-ii1.jpg', 4);
INSERT INTO `cosmeticform` VALUES ('SK-II002', '神仙水小灯泡', 'Japan', 1069, '净白精华，淡化斑点', 'sk-ii2.jpg', 4);

-- ----------------------------
-- Table structure for orderform
-- ----------------------------
DROP TABLE IF EXISTS `orderform`;
CREATE TABLE `orderform`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `logname` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mess` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sum` float NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderform
-- ----------------------------
INSERT INTO `orderform` VALUES (30, 'Hbin', '1:(lan_a1001,兰蔻清滢柔肤水,法国Lancome,229.0)2:(lan_a1001,兰蔻清滢柔肤水,法国Lancome,229)3:(lan_a1002,兰蔻乳液,法国Lancome,588.0)', 229);
INSERT INTO `orderform` VALUES (31, 'Hbin', '1:(SK-II002,神仙水小灯泡,Japan,1069)', 1069);
INSERT INTO `orderform` VALUES (32, 'ZHB', '1:(SK-II002,神仙水小灯泡,Japan,1069)', 1069);
INSERT INTO `orderform` VALUES (33, 'ZHB', '1:(guer01,娇兰润唇膏,法国Guerlain,199.0)', 199);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `logname` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `realname` char(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`logname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('Hbin', 'asdf1149174155', '15625739502', '东莞寮步城市学院', '庄宏斌');
INSERT INTO `user` VALUES ('smart', '0123456', '83317657', '北京大学777', '庄哥');
INSERT INTO `user` VALUES ('ZHB', '123', '15625739502', '东莞', '庄宏斌');

SET FOREIGN_KEY_CHECKS = 1;
