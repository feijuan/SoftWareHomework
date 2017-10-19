/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : xycdb

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2017-10-19 20:06:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for airplane_info
-- ----------------------------
DROP TABLE IF EXISTS `airplane_info`;
CREATE TABLE `airplane_info` (
  `flightnum` varchar(20) DEFAULT NULL,
  `oirgin` varchar(30) DEFAULT NULL,
  `destination` varchar(30) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of airplane_info
-- ----------------------------
INSERT INTO `airplane_info` VALUES ('null', 'null', 'null', 'null');
INSERT INTO `airplane_info` VALUES ('1', '1', '1', '1');
INSERT INTO `airplane_info` VALUES ('2', '2', '2', '2');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'zhang', '12345');
INSERT INTO `user_info` VALUES ('2', 'fei', '111');
INSERT INTO `user_info` VALUES ('3', '飞', '159630');
