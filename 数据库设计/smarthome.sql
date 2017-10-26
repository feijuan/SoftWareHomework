/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : smarthome

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2017-10-26 09:44:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bedroom_data
-- ----------------------------
DROP TABLE IF EXISTS `bedroom_data`;
CREATE TABLE `bedroom_data` (
  `sensor_id` varchar(30) NOT NULL,
  `sensor_type` varchar(30) DEFAULT NULL,
  `sensor_data` varchar(10) DEFAULT NULL,
  `collect_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sensor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bedroom_data
-- ----------------------------
INSERT INTO `bedroom_data` VALUES ('1', '1', '1', '1');

-- ----------------------------
-- Table structure for kitchen_data
-- ----------------------------
DROP TABLE IF EXISTS `kitchen_data`;
CREATE TABLE `kitchen_data` (
  `sensor_id` varchar(30) NOT NULL,
  `sensor_type` varchar(30) DEFAULT NULL,
  `sensor_data` varchar(10) DEFAULT NULL,
  `collect_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sensor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kitchen_data
-- ----------------------------

-- ----------------------------
-- Table structure for livingroom_data
-- ----------------------------
DROP TABLE IF EXISTS `livingroom_data`;
CREATE TABLE `livingroom_data` (
  `sensor_id` varchar(30) NOT NULL,
  `sensor_type` varchar(30) DEFAULT NULL,
  `sensor_data` varchar(10) DEFAULT NULL,
  `collect_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sensor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of livingroom_data
-- ----------------------------

-- ----------------------------
-- Table structure for sersor_infor
-- ----------------------------
DROP TABLE IF EXISTS `sersor_infor`;
CREATE TABLE `sersor_infor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_id` varchar(30) DEFAULT NULL,
  `sensor_type` int(1) DEFAULT NULL,
  `distribute_place` int(1) DEFAULT NULL,
  `build_time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sersor_infor
-- ----------------------------

-- ----------------------------
-- Table structure for sh_admin
-- ----------------------------
DROP TABLE IF EXISTS `sh_admin`;
CREATE TABLE `sh_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_admin
-- ----------------------------

-- ----------------------------
-- Table structure for sh_user
-- ----------------------------
DROP TABLE IF EXISTS `sh_user`;
CREATE TABLE `sh_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `homenum` varchar(50) DEFAULT NULL,
  `memberflag` int(1) DEFAULT NULL,
  `provingflag` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_user
-- ----------------------------
