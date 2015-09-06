/*
Navicat MySQL Data Transfer

Source Server         : IotDB
Source Server Version : 50626
Source Host           : 182.231.176.118:3307
Source Database       : subwaydb

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2015-09-06 14:39:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for conveniencestores
-- ----------------------------
DROP TABLE IF EXISTS `conveniencestores`;
CREATE TABLE `conveniencestores` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubwayStationName` varchar(255) DEFAULT NULL,
  `ConvenienceStoreName` varchar(255) DEFAULT NULL,
  `ConvenienceStoreLocation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of conveniencestores
-- ----------------------------

-- ----------------------------
-- Table structure for subwaystationexit
-- ----------------------------
DROP TABLE IF EXISTS `subwaystationexit`;
CREATE TABLE `subwaystationexit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubwayStationName` varchar(255) DEFAULT NULL,
  `SubwayStationExitName` varchar(255) DEFAULT NULL,
  `SubwayStationExitLocation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subwaystationexit
-- ----------------------------
INSERT INTO `subwaystationexit` VALUES ('1', '철선', '1', '2c865124');
INSERT INTO `subwaystationexit` VALUES ('2', '철선', '2', '2c865188');
INSERT INTO `subwaystationexit` VALUES ('3', '철선', '3', '2c8651ec');
INSERT INTO `subwaystationexit` VALUES ('4', '철선', '4', '2c865250');

-- ----------------------------
-- Table structure for subwaystationmain
-- ----------------------------
DROP TABLE IF EXISTS `subwaystationmain`;
CREATE TABLE `subwaystationmain` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubwayStationName` varchar(255) NOT NULL,
  `MapData` varbinary(5000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subwaystationmain
-- ----------------------------
INSERT INTO `subwaystationmain` VALUES ('1', '수원', null);

-- ----------------------------
-- Table structure for subwaytime
-- ----------------------------
DROP TABLE IF EXISTS `subwaytime`;
CREATE TABLE `subwaytime` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubwayStationName` varchar(255) DEFAULT NULL,
  `SubwayNo` varchar(255) DEFAULT NULL,
  `StartTime` varchar(255) DEFAULT NULL,
  `EndTiem` varchar(255) DEFAULT NULL,
  `NeededTiem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subwaytime
-- ----------------------------

-- ----------------------------
-- Table structure for toilets
-- ----------------------------
DROP TABLE IF EXISTS `toilets`;
CREATE TABLE `toilets` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubwayStationName` varchar(255) NOT NULL,
  `Toilet` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toilets
-- ----------------------------
INSERT INTO `toilets` VALUES ('1', '수원', '1');

-- ----------------------------
-- Table structure for trashcans
-- ----------------------------
DROP TABLE IF EXISTS `trashcans`;
CREATE TABLE `trashcans` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `SubwayStationName` varchar(255) DEFAULT NULL,
  `TrashCan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trashcans
-- ----------------------------

-- ----------------------------
-- Table structure for version
-- ----------------------------
DROP TABLE IF EXISTS `version`;
CREATE TABLE `version` (
  `version` int(11) NOT NULL,
  `update_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of version
-- ----------------------------
INSERT INTO `version` VALUES ('1', '2015-09-06 14:13:50');
INSERT INTO `version` VALUES ('2', '2015-09-06 14:19:00');

-- ----------------------------
-- Table structure for webdata
-- ----------------------------
DROP TABLE IF EXISTS `webdata`;
CREATE TABLE `webdata` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WebData` varchar(255) DEFAULT NULL,
  `Version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of webdata
-- ----------------------------
