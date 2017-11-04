/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : smarthome

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2017-11-04 16:10:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for data
-- ----------------------------
DROP TABLE IF EXISTS `data`;
CREATE TABLE `data` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_id` int(11) NOT NULL,
  `collect_time` varchar(20) NOT NULL,
  `data` varchar(50) NOT NULL,
  `data_type` varchar(20) NOT NULL,
  PRIMARY KEY (`data_id`),
  KEY `sensor_id_idx` (`sensor_id`),
  CONSTRAINT `sensor_id` FOREIGN KEY (`sensor_id`) REFERENCES `sensor` (`sensor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data
-- ----------------------------
INSERT INTO `data` VALUES ('1', '1', '2017-11-03 16:12:14', '24.1', '1');
INSERT INTO `data` VALUES ('2', '2', '2017-11-03 16:12:14', '48.7', '2');
INSERT INTO `data` VALUES ('3', '3', '2017-11-03 16:12:14', '712', '3');
INSERT INTO `data` VALUES ('4', '4', '2017-11-03 16:12:14', '219.3', '4');
INSERT INTO `data` VALUES ('5', '5', '2017-11-03 16:12:14', '23', '1');
INSERT INTO `data` VALUES ('6', '6', '2017-11-03 16:12:14', '45.2', '2');
INSERT INTO `data` VALUES ('7', '7', '2017-11-03 16:12:14', '553', '3');
INSERT INTO `data` VALUES ('8', '8', '2017-11-03 16:12:14', '206.3', '4');
INSERT INTO `data` VALUES ('9', '9', '2017-11-03 16:12:14', '17.8', '1');
INSERT INTO `data` VALUES ('10', '10', '2017-11-03 16:12:14', '50.1', '2');
INSERT INTO `data` VALUES ('11', '11', '2017-11-03 16:12:14', '682.8', '3');
INSERT INTO `data` VALUES ('12', '12', '2017-11-03 16:12:14', '176.7', '4');

-- ----------------------------
-- Table structure for home
-- ----------------------------
DROP TABLE IF EXISTS `home`;
CREATE TABLE `home` (
  `home_id` varchar(20) NOT NULL,
  `home_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`home_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of home
-- ----------------------------
INSERT INTO `home` VALUES ('12345', '我的家');
INSERT INTO `home` VALUES ('370782199511282618', null);
INSERT INTO `home` VALUES ('370782199511282619', null);

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `idcard` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `owner_flag` int(11) NOT NULL,
  `home_id` varchar(20) DEFAULT NULL,
  `telphone` varchar(20) NOT NULL,
  PRIMARY KEY (`idcard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('370782199511282618', 'ddddd', '李四', '0', '1234', '13465816558');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `home_id` varchar(20) NOT NULL,
  `room_type` int(11) NOT NULL,
  PRIMARY KEY (`room_id`),
  KEY `home_id_idx` (`home_id`),
  CONSTRAINT `room_home` FOREIGN KEY (`home_id`) REFERENCES `home` (`home_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('2', '370782199511282618', '1');
INSERT INTO `room` VALUES ('3', '370782199511282618', '2');
INSERT INTO `room` VALUES ('4', '370782199511282618', '3');
INSERT INTO `room` VALUES ('5', '370782199511282618', '4');

-- ----------------------------
-- Table structure for sensor
-- ----------------------------
DROP TABLE IF EXISTS `sensor`;
CREATE TABLE `sensor` (
  `sensor_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `sensor_type` varchar(20) NOT NULL,
  `buid_time` varchar(20) NOT NULL,
  `remark` varchar(20) NOT NULL,
  `home_id` varchar(20) NOT NULL,
  PRIMARY KEY (`sensor_id`),
  KEY `romm_id_idx` (`room_id`),
  KEY `home_id_idx` (`home_id`),
  CONSTRAINT `sensor_home` FOREIGN KEY (`home_id`) REFERENCES `home` (`home_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sensor_room` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sensor
-- ----------------------------
INSERT INTO `sensor` VALUES ('1', '2', '1', '9:20', 'eee', '370782199511282619');
INSERT INTO `sensor` VALUES ('2', '2', '2', '9:20', 'eee', '370782199511282619');
INSERT INTO `sensor` VALUES ('3', '2', '3', '9:20', 'eee', '370782199511282619');
INSERT INTO `sensor` VALUES ('4', '2', '4', '9:20', 'eee', '370782199511282619');
INSERT INTO `sensor` VALUES ('5', '3', '1', '9:20', 'eee', '370782199511282619');
INSERT INTO `sensor` VALUES ('6', '3', '2', '9:20', 'eee', '370782199511282619');
INSERT INTO `sensor` VALUES ('7', '3', '3', '9:20', 'eee', '370782199511282619');
INSERT INTO `sensor` VALUES ('8', '3', '4', '9:20', 'eee', '370782199511282619');
INSERT INTO `sensor` VALUES ('9', '4', '1', '9:20', 'eee', '370782199511282619');
INSERT INTO `sensor` VALUES ('10', '4', '2', '9:20', 'eee', '370782199511282619');
INSERT INTO `sensor` VALUES ('11', '4', '3', '9:20', 'eee', '370782199511282619');
INSERT INTO `sensor` VALUES ('12', '4', '4', '9:20', 'eee', '370782199511282619');

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
) ENGINE=InnoDB AUTO_INCREMENT=12346 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_admin
-- ----------------------------
INSERT INTO `sh_admin` VALUES ('12345', '张三', '12345', '18829502025');
