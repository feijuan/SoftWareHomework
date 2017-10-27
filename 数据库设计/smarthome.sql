/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : smarthome

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2017-10-27 21:50:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for home_member
-- ----------------------------
DROP TABLE IF EXISTS `home_member`;
CREATE TABLE `home_member` (
  `idcard_num` varchar(20) NOT NULL,
  `home_id` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `owner_flag` int(1) DEFAULT '0',
  PRIMARY KEY (`idcard_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of home_member
-- ----------------------------

-- ----------------------------
-- Table structure for home_room
-- ----------------------------
DROP TABLE IF EXISTS `home_room`;
CREATE TABLE `home_room` (
  `room_id` int(1) NOT NULL,
  `home_id` varchar(20) NOT NULL,
  `root_name` varchar(10) NOT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of home_room
-- ----------------------------

-- ----------------------------
-- Table structure for room_sensor
-- ----------------------------
DROP TABLE IF EXISTS `room_sensor`;
CREATE TABLE `room_sensor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_id` varchar(20) NOT NULL,
  `home_id` varchar(30) DEFAULT NULL,
  `room_id` int(1) NOT NULL,
  `collect_time` varchar(30) DEFAULT NULL,
  `data` varchar(20) NOT NULL,
  `sensor_type` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room_sensor
-- ----------------------------

-- ----------------------------
-- Table structure for sensor_manage
-- ----------------------------
DROP TABLE IF EXISTS `sensor_manage`;
CREATE TABLE `sensor_manage` (
  `sensor_id` varchar(30) DEFAULT NULL,
  `sensor_type` int(1) DEFAULT NULL,
  `home_id` varchar(20) DEFAULT NULL,
  `room_id` int(1) DEFAULT NULL,
  `build_time` varchar(30) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sensor_manage
-- ----------------------------

-- ----------------------------
-- Table structure for sh_admin
-- ----------------------------
DROP TABLE IF EXISTS `sh_admin`;
CREATE TABLE `sh_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_admin
-- ----------------------------
