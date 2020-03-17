/*
Navicat MySQL Data Transfer

Source Server         : admin
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : infect_statistic

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2020-03-17 11:56:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` date NOT NULL,
  `ip` int(11) DEFAULT NULL,
  `sp` int(11) DEFAULT NULL,
  `cure` int(11) DEFAULT NULL,
  `dead` int(11) DEFAULT NULL,
  PRIMARY KEY (`province`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('上海', '2020-01-21', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('上海', '2020-01-22', '8', '0', '0', '0');
INSERT INTO `record` VALUES ('上海', '2020-01-23', '7', '0', '0', '0');
INSERT INTO `record` VALUES ('上海', '2020-01-24', '4', '0', '0', '0');
INSERT INTO `record` VALUES ('上海', '2020-01-25', '12', '0', '1', '0');
INSERT INTO `record` VALUES ('上海', '2020-01-26', '6', '0', '0', '1');
INSERT INTO `record` VALUES ('上海', '2020-01-27', '13', '0', '0', '0');
INSERT INTO `record` VALUES ('上海', '2020-01-28', '11', '0', '2', '0');
INSERT INTO `record` VALUES ('上海', '2020-01-29', '0', '0', '1', '0');
INSERT INTO `record` VALUES ('云南', '2020-01-25', '5', '0', '0', '0');
INSERT INTO `record` VALUES ('云南', '2020-01-26', '42', '0', '0', '0');
INSERT INTO `record` VALUES ('云南', '2020-01-27', '8', '0', '0', '0');
INSERT INTO `record` VALUES ('云南', '2020-01-28', '25', '0', '0', '0');
INSERT INTO `record` VALUES ('云南', '2020-01-29', '11', '0', '0', '0');
INSERT INTO `record` VALUES ('内蒙古', '2020-01-24', '1', '2', '0', '0');
INSERT INTO `record` VALUES ('内蒙古', '2020-01-25', '1', '3', '0', '0');
INSERT INTO `record` VALUES ('内蒙古', '2020-01-26', '5', '-5', '0', '0');
INSERT INTO `record` VALUES ('内蒙古', '2020-01-27', '4', '1', '0', '0');
INSERT INTO `record` VALUES ('内蒙古', '2020-01-28', '2', '1', '0', '0');
INSERT INTO `record` VALUES ('内蒙古', '2020-01-29', '3', '0', '0', '0');
INSERT INTO `record` VALUES ('北京', '2020-01-20', '5', '0', '0', '0');
INSERT INTO `record` VALUES ('北京', '2020-01-21', '5', '0', '0', '0');
INSERT INTO `record` VALUES ('北京', '2020-01-22', '4', '0', '0', '1');
INSERT INTO `record` VALUES ('北京', '2020-01-23', '12', '0', '0', '0');
INSERT INTO `record` VALUES ('北京', '2020-01-24', '9', '0', '1', '0');
INSERT INTO `record` VALUES ('北京', '2020-01-25', '14', '0', '1', '0');
INSERT INTO `record` VALUES ('北京', '2020-01-26', '17', '0', '0', '0');
INSERT INTO `record` VALUES ('北京', '2020-01-27', '11', '0', '0', '1');
INSERT INTO `record` VALUES ('北京', '2020-01-28', '9', '0', '2', '0');
INSERT INTO `record` VALUES ('北京', '2020-01-29', '20', '0', '0', '0');
INSERT INTO `record` VALUES ('吉林', '2020-01-23', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('吉林', '2020-01-24', '2', '0', '0', '0');
INSERT INTO `record` VALUES ('吉林', '2020-01-25', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('吉林', '2020-01-26', '0', '1', '0', '0');
INSERT INTO `record` VALUES ('吉林', '2020-01-27', '2', '-1', '0', '0');
INSERT INTO `record` VALUES ('吉林', '2020-01-28', '2', '0', '0', '0');
INSERT INTO `record` VALUES ('吉林', '2020-01-29', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('四川', '2020-01-22', '2', '0', '0', '0');
INSERT INTO `record` VALUES ('四川', '2020-01-23', '6', '0', '0', '0');
INSERT INTO `record` VALUES ('四川', '2020-01-24', '7', '0', '0', '0');
INSERT INTO `record` VALUES ('四川', '2020-01-25', '13', '0', '0', '0');
INSERT INTO `record` VALUES ('四川', '2020-01-26', '16', '0', '0', '0');
INSERT INTO `record` VALUES ('四川', '2020-01-27', '25', '0', '0', '0');
INSERT INTO `record` VALUES ('四川', '2020-01-28', '21', '0', '0', '0');
INSERT INTO `record` VALUES ('四川', '2020-01-29', '18', '0', '0', '0');
INSERT INTO `record` VALUES ('天津', '2020-01-22', '2', '0', '0', '0');
INSERT INTO `record` VALUES ('天津', '2020-01-23', '2', '0', '0', '0');
INSERT INTO `record` VALUES ('天津', '2020-01-24', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('天津', '2020-01-25', '3', '0', '0', '0');
INSERT INTO `record` VALUES ('天津', '2020-01-26', '2', '0', '0', '0');
INSERT INTO `record` VALUES ('天津', '2020-01-27', '4', '0', '0', '0');
INSERT INTO `record` VALUES ('天津', '2020-01-28', '9', '0', '0', '0');
INSERT INTO `record` VALUES ('天津', '2020-01-29', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('宁夏', '2020-01-23', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('宁夏', '2020-01-24', '1', '1', '0', '0');
INSERT INTO `record` VALUES ('宁夏', '2020-01-25', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('宁夏', '2020-01-26', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('宁夏', '2020-01-27', '3', '-1', '0', '0');
INSERT INTO `record` VALUES ('宁夏', '2020-01-28', '4', '0', '0', '0');
INSERT INTO `record` VALUES ('宁夏', '2020-01-29', '1', '2', '0', '0');
INSERT INTO `record` VALUES ('安徽', '2020-01-21', '0', '1', '0', '0');
INSERT INTO `record` VALUES ('安徽', '2020-01-22', '1', '2', '0', '0');
INSERT INTO `record` VALUES ('安徽', '2020-01-23', '8', '0', '0', '0');
INSERT INTO `record` VALUES ('安徽', '2020-01-24', '6', '0', '0', '0');
INSERT INTO `record` VALUES ('安徽', '2020-01-25', '24', '26', '0', '0');
INSERT INTO `record` VALUES ('安徽', '2020-01-26', '21', '15', '0', '0');
INSERT INTO `record` VALUES ('安徽', '2020-01-27', '10', '36', '0', '0');
INSERT INTO `record` VALUES ('安徽', '2020-01-28', '36', '38', '0', '0');
INSERT INTO `record` VALUES ('安徽', '2020-01-29', '46', '42', '0', '0');
INSERT INTO `record` VALUES ('山东', '2020-01-25', '21', '0', '0', '0');
INSERT INTO `record` VALUES ('山东', '2020-01-26', '18', '0', '0', '0');
INSERT INTO `record` VALUES ('山东', '2020-01-27', '24', '0', '0', '0');
INSERT INTO `record` VALUES ('山东', '2020-01-28', '24', '0', '0', '0');
INSERT INTO `record` VALUES ('山东', '2020-01-29', '34', '0', '0', '0');
INSERT INTO `record` VALUES ('山西', '2020-01-23', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('山西', '2020-01-25', '5', '0', '0', '0');
INSERT INTO `record` VALUES ('山西', '2020-01-26', '3', '0', '0', '0');
INSERT INTO `record` VALUES ('山西', '2020-01-27', '4', '0', '0', '0');
INSERT INTO `record` VALUES ('山西', '2020-01-28', '7', '0', '0', '0');
INSERT INTO `record` VALUES ('山西', '2020-01-29', '7', '0', '0', '0');
INSERT INTO `record` VALUES ('广东', '2020-01-19', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('广东', '2020-01-21', '25', '4', '0', '0');
INSERT INTO `record` VALUES ('广东', '2020-01-22', '6', '0', '0', '0');
INSERT INTO `record` VALUES ('广东', '2020-01-23', '0', '0', '2', '0');
INSERT INTO `record` VALUES ('广东', '2020-01-24', '25', '0', '0', '0');
INSERT INTO `record` VALUES ('广东', '2020-01-26', '48', '13', '0', '0');
INSERT INTO `record` VALUES ('广东', '2020-01-27', '40', '0', '2', '0');
INSERT INTO `record` VALUES ('广东', '2020-01-28', '52', '0', '1', '0');
INSERT INTO `record` VALUES ('广东', '2020-01-29', '69', '0', '1', '0');
INSERT INTO `record` VALUES ('广西', '2020-01-19', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('广西', '2020-01-21', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('广西', '2020-01-22', '2', '1', '0', '0');
INSERT INTO `record` VALUES ('广西', '2020-01-23', '11', '0', '0', '0');
INSERT INTO `record` VALUES ('广西', '2020-01-24', '10', '0', '0', '0');
INSERT INTO `record` VALUES ('广西', '2020-01-25', '10', '0', '0', '0');
INSERT INTO `record` VALUES ('广西', '2020-01-26', '13', '0', '0', '0');
INSERT INTO `record` VALUES ('广西', '2020-01-27', '5', '0', '0', '0');
INSERT INTO `record` VALUES ('广西', '2020-01-28', '5', '0', '2', '0');
INSERT INTO `record` VALUES ('广西', '2020-01-29', '20', '0', '0', '0');
INSERT INTO `record` VALUES ('新疆', '2020-01-24', '2', '0', '0', '0');
INSERT INTO `record` VALUES ('新疆', '2020-01-25', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('新疆', '2020-01-26', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('新疆', '2020-01-27', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('新疆', '2020-01-28', '5', '0', '0', '0');
INSERT INTO `record` VALUES ('新疆', '2020-01-29', '3', '0', '0', '0');
INSERT INTO `record` VALUES ('江苏', '2020-01-23', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('江苏', '2020-01-24', '8', '0', '0', '0');
INSERT INTO `record` VALUES ('江苏', '2020-01-25', '9', '0', '0', '0');
INSERT INTO `record` VALUES ('江苏', '2020-01-26', '13', '0', '0', '0');
INSERT INTO `record` VALUES ('江苏', '2020-01-27', '16', '0', '0', '0');
INSERT INTO `record` VALUES ('江苏', '2020-01-28', '23', '0', '0', '0');
INSERT INTO `record` VALUES ('江苏', '2020-01-29', '29', '0', '0', null);
INSERT INTO `record` VALUES ('江西', '2020-01-22', '2', '0', '0', '0');
INSERT INTO `record` VALUES ('江西', '2020-01-23', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('江西', '2020-01-24', '4', '0', '0', '0');
INSERT INTO `record` VALUES ('江西', '2020-01-25', '11', '0', '0', '0');
INSERT INTO `record` VALUES ('江西', '2020-01-26', '18', '0', '0', '0');
INSERT INTO `record` VALUES ('江西', '2020-01-27', '12', '0', '0', '0');
INSERT INTO `record` VALUES ('江西', '2020-01-28', '22', '0', '2', '0');
INSERT INTO `record` VALUES ('江西', '2020-01-29', '37', '0', '1', '0');
INSERT INTO `record` VALUES ('河北', '2020-01-22', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('河北', '2020-01-23', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('河北', '2020-01-24', '5', '0', '0', '1');
INSERT INTO `record` VALUES ('河北', '2020-01-25', '5', '5', '0', '0');
INSERT INTO `record` VALUES ('河北', '2020-01-26', '5', '11', '0', '0');
INSERT INTO `record` VALUES ('河北', '2020-01-27', '15', '38', '0', '0');
INSERT INTO `record` VALUES ('河北', '2020-01-28', '15', '45', '0', '0');
INSERT INTO `record` VALUES ('河北', '2020-01-29', '17', '38', '0', '0');
INSERT INTO `record` VALUES ('河南', '2020-01-22', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('河南', '2020-01-23', '4', '0', '0', '0');
INSERT INTO `record` VALUES ('河南', '2020-01-24', '4', '0', '0', '0');
INSERT INTO `record` VALUES ('河南', '2020-01-25', '23', '0', '0', '0');
INSERT INTO `record` VALUES ('河南', '2020-01-26', '50', '0', '0', '1');
INSERT INTO `record` VALUES ('河南', '2020-01-27', '0', '0', '0', '1');
INSERT INTO `record` VALUES ('河南', '2020-01-28', '40', '0', '0', '0');
INSERT INTO `record` VALUES ('河南', '2020-01-29', '37', '0', '0', '1');
INSERT INTO `record` VALUES ('浙江', '2020-01-22', '10', '0', '0', '0');
INSERT INTO `record` VALUES ('浙江', '2020-01-23', '17', '0', '0', '0');
INSERT INTO `record` VALUES ('浙江', '2020-01-24', '16', '0', '0', '0');
INSERT INTO `record` VALUES ('浙江', '2020-01-25', '19', '0', '0', '0');
INSERT INTO `record` VALUES ('浙江', '2020-01-27', '24', '0', '0', '0');
INSERT INTO `record` VALUES ('浙江', '2020-01-28', '45', '0', '0', '0');
INSERT INTO `record` VALUES ('浙江', '2020-01-29', '121', '0', '2', '0');
INSERT INTO `record` VALUES ('海南', '2020-01-22', '4', '0', '0', '0');
INSERT INTO `record` VALUES ('海南', '2020-01-23', '4', '0', '0', '0');
INSERT INTO `record` VALUES ('海南', '2020-01-24', '3', '0', '0', '0');
INSERT INTO `record` VALUES ('海南', '2020-01-25', '9', '0', '0', '0');
INSERT INTO `record` VALUES ('海南', '2020-01-26', '7', '0', '0', '0');
INSERT INTO `record` VALUES ('海南', '2020-01-27', '10', '0', '0', '1');
INSERT INTO `record` VALUES ('海南', '2020-01-28', '5', '0', '0', '0');
INSERT INTO `record` VALUES ('海南', '2020-01-29', '2', '0', '1', '0');
INSERT INTO `record` VALUES ('湖北', '2020-01-21', '239', '0', '25', '6');
INSERT INTO `record` VALUES ('湖北', '2020-01-22', '99', '0', '3', '3');
INSERT INTO `record` VALUES ('湖北', '2020-01-23', '0', '0', '0', '8');
INSERT INTO `record` VALUES ('湖北', '2020-01-24', '95', '0', '3', '7');
INSERT INTO `record` VALUES ('湖北', '2020-01-25', '164', '0', '1', '15');
INSERT INTO `record` VALUES ('湖北', '2020-01-26', '300', '0', '13', '10');
INSERT INTO `record` VALUES ('湖北', '2020-01-27', '355', '0', '24', '2');
INSERT INTO `record` VALUES ('湖北', '2020-01-28', '1291', '24', '0', '0');
INSERT INTO `record` VALUES ('湖北', '2020-01-29', '815', '0', '0', '25');
INSERT INTO `record` VALUES ('湖南', '2020-01-24', '24', '3', '0', '0');
INSERT INTO `record` VALUES ('湖南', '2020-01-25', '19', '0', '0', '0');
INSERT INTO `record` VALUES ('湖南', '2020-01-26', '26', '0', '0', '0');
INSERT INTO `record` VALUES ('湖南', '2020-01-27', '31', '0', '0', '0');
INSERT INTO `record` VALUES ('湖南', '2020-01-28', '43', '0', '0', '0');
INSERT INTO `record` VALUES ('湖南', '2020-01-29', '78', '0', '0', '0');
INSERT INTO `record` VALUES ('甘肃', '2020-01-23', '2', '1', '0', '0');
INSERT INTO `record` VALUES ('甘肃', '2020-01-24', '2', '0', '0', '0');
INSERT INTO `record` VALUES ('甘肃', '2020-01-25', '3', '0', '0', '0');
INSERT INTO `record` VALUES ('甘肃', '2020-01-26', '7', '0', '0', '0');
INSERT INTO `record` VALUES ('甘肃', '2020-01-27', '5', '0', '0', '0');
INSERT INTO `record` VALUES ('甘肃', '2020-01-28', '5', '0', '0', '0');
INSERT INTO `record` VALUES ('甘肃', '2020-01-29', '2', '0', '0', '0');
INSERT INTO `record` VALUES ('福建', '2020-01-22', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('福建', '2020-01-23', '4', '2', '0', '0');
INSERT INTO `record` VALUES ('福建', '2020-01-24', '5', '2', '0', '0');
INSERT INTO `record` VALUES ('福建', '2020-01-25', '8', '0', '0', '0');
INSERT INTO `record` VALUES ('福建', '2020-01-26', '17', '18', '0', '0');
INSERT INTO `record` VALUES ('福建', '2020-01-27', '24', '31', '0', '0');
INSERT INTO `record` VALUES ('福建', '2020-01-28', '23', '82', '0', '0');
INSERT INTO `record` VALUES ('福建', '2020-01-29', '19', '53', '0', '0');
INSERT INTO `record` VALUES ('贵州', '2020-01-21', '0', '1', '0', '0');
INSERT INTO `record` VALUES ('贵州', '2020-01-22', '3', '0', '0', '0');
INSERT INTO `record` VALUES ('贵州', '2020-01-24', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('贵州', '2020-01-25', '1', '0', '0', '0');
INSERT INTO `record` VALUES ('贵州', '2020-01-26', '2', '3', '0', '0');
INSERT INTO `record` VALUES ('贵州', '2020-01-27', '2', '-2', '0', '0');
INSERT INTO `record` VALUES ('贵州', '2020-01-28', '0', '2', '1', '0');
INSERT INTO `record` VALUES ('贵州', '2020-01-29', '3', '3', '0', '0');
INSERT INTO `record` VALUES ('辽宁', '2020-01-23', '2', '0', '0', '0');
INSERT INTO `record` VALUES ('辽宁', '2020-01-24', '2', '0', '0', '0');
INSERT INTO `record` VALUES ('辽宁', '2020-01-25', '8', '0', '0', '0');
INSERT INTO `record` VALUES ('辽宁', '2020-01-26', '5', '0', '0', '0');
INSERT INTO `record` VALUES ('辽宁', '2020-01-27', '5', '0', '0', '0');
INSERT INTO `record` VALUES ('辽宁', '2020-01-28', '5', '0', '0', '0');
INSERT INTO `record` VALUES ('辽宁', '2020-01-29', '9', '0', '0', '0');
INSERT INTO `record` VALUES ('重庆', '2020-01-21', '5', '0', '0', '0');
INSERT INTO `record` VALUES ('重庆', '2020-01-22', '1', '13', '0', '0');
INSERT INTO `record` VALUES ('重庆', '2020-01-23', '3', '0', '0', '0');
INSERT INTO `record` VALUES ('重庆', '2020-01-24', '18', '0', '0', '0');
INSERT INTO `record` VALUES ('重庆', '2020-01-25', '30', '0', '0', '0');
INSERT INTO `record` VALUES ('重庆', '2020-01-26', '18', '0', '0', '0');
INSERT INTO `record` VALUES ('重庆', '2020-01-27', '35', '0', '0', '0');
INSERT INTO `record` VALUES ('重庆', '2020-01-28', '22', '0', '0', '0');
INSERT INTO `record` VALUES ('重庆', '2020-01-29', '15', '0', '0', '0');
INSERT INTO `record` VALUES ('陕西', '2020-01-24', '3', '0', '0', '0');
INSERT INTO `record` VALUES ('陕西', '2020-01-25', '2', '0', '0', '0');
INSERT INTO `record` VALUES ('陕西', '2020-01-26', '10', '0', '0', '0');
INSERT INTO `record` VALUES ('陕西', '2020-01-27', '7', '0', '0', '0');
INSERT INTO `record` VALUES ('陕西', '2020-01-28', '13', '0', '0', '0');
INSERT INTO `record` VALUES ('陕西', '2020-01-29', '11', '0', '0', '0');
INSERT INTO `record` VALUES ('青海', '2020-01-25', '0', '1', '0', '0');
INSERT INTO `record` VALUES ('青海', '2020-01-26', '1', '-1', '0', '0');
INSERT INTO `record` VALUES ('青海', '2020-01-27', '3', '0', '0', '0');
INSERT INTO `record` VALUES ('青海', '2020-01-28', '2', '0', '0', '0');
INSERT INTO `record` VALUES ('黑龙江', '2020-01-22', '0', '1', '0', '0');
INSERT INTO `record` VALUES ('黑龙江', '2020-01-23', '1', '-1', '0', '0');
INSERT INTO `record` VALUES ('黑龙江', '2020-01-24', '2', '0', '0', '1');
INSERT INTO `record` VALUES ('黑龙江', '2020-01-25', '5', '0', '0', '0');
INSERT INTO `record` VALUES ('黑龙江', '2020-01-26', '0', '10', '0', '0');
INSERT INTO `record` VALUES ('黑龙江', '2020-01-27', '6', '40', '0', '0');
INSERT INTO `record` VALUES ('黑龙江', '2020-01-28', '9', '33', '0', '0');
INSERT INTO `record` VALUES ('黑龙江', '2020-01-29', '7', '45', '0', '0');
