/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50523
Source Host           : localhost:3306
Source Database       : student

Target Server Type    : MYSQL
Target Server Version : 50523
File Encoding         : 65001

Date: 2018-06-02 17:03:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '1', '1', '1', '1');
INSERT INTO `student` VALUES ('3', '3', '34', 'male', 'java');
INSERT INTO `student` VALUES ('9', '3', '2', 'female', 'PHP');
INSERT INTO `student` VALUES ('10', 'qw', '34', 'female', 'java');
INSERT INTO `student` VALUES ('13', 'rth', '18', 'male', 'java');
INSERT INTO `student` VALUES ('15', 'e', '12', 'male', 'java');
INSERT INTO `student` VALUES ('16', 'w', '123', 'male', 'java');
INSERT INTO `student` VALUES ('17', 'q', '12', 'male', 'java');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('6', 'a', 'ddd', 'a');
INSERT INTO `user` VALUES ('11', 'admin', 'admin', 'admin');
