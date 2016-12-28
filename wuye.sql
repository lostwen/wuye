/*
Navicat MySQL Data Transfer

Source Server         : aaa
Source Server Version : 50137
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50137
File Encoding         : 65001

Date: 2016-12-28 23:36:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `车位`
-- ----------------------------
DROP TABLE IF EXISTS `车位`;
CREATE TABLE `车位` (
  `编号` int(11) NOT NULL AUTO_INCREMENT,
  `车牌号` varchar(255) DEFAULT NULL,
  `车主` int(11) DEFAULT NULL,
  `停车位` varchar(255) DEFAULT NULL,
  `车位状况` int(11) DEFAULT NULL COMMENT '0：买\r\n1：租',
  `车位领用日期` date DEFAULT NULL,
  `上次缴费日期` date DEFAULT NULL,
  `停车费到期日期` date DEFAULT NULL,
  `备注` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`编号`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 车位
-- ----------------------------
INSERT INTO `车位` VALUES ('1', '苏A23456', '1', 'X111', '0', '2015-01-06', '2016-11-29', '2017-11-29', null);
INSERT INTO `车位` VALUES ('2', '苏A23455', '2', 'X112', '1', '2015-01-06', '2016-11-29', '2016-11-29', null);
INSERT INTO `车位` VALUES ('3', '苏A34567', '2', 'X220', '1', '2016-11-01', '2016-02-02', '2016-12-05', null);

-- ----------------------------
-- Table structure for `管理员`
-- ----------------------------
DROP TABLE IF EXISTS `管理员`;
CREATE TABLE `管理员` (
  `编号` int(11) NOT NULL AUTO_INCREMENT,
  `用户名` varchar(255) DEFAULT NULL,
  `密码` varchar(255) DEFAULT NULL,
  `真实姓名` varchar(255) DEFAULT NULL,
  `联系方式` varchar(255) DEFAULT NULL,
  `使用权限` int(11) DEFAULT NULL COMMENT '0：超级用户\r\n1：一般用户',
  `管辖区域` int(11) DEFAULT NULL COMMENT '管辖小区编号',
  `备注` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`编号`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 管理员
-- ----------------------------
INSERT INTO `管理员` VALUES ('1', 'admin', '111111', '张三', '13813875591', '0', '0', '测试用超级用户');
INSERT INTO `管理员` VALUES ('2', 'test', '222222', '李四', '13813875592', '1', '1', '测试用一般用户');
INSERT INTO `管理员` VALUES ('3', 'bb', '111111', 'BB', '1234546', '1', '2', '');
INSERT INTO `管理员` VALUES ('4', 'aa', '111111', 'AA', '12345667', '1', '1', 'afdgsh');
INSERT INTO `管理员` VALUES ('5', 'test2', '111111', '张无忌', '12354676', '1', '2', '');
INSERT INTO `管理员` VALUES ('6', 'cc', '111111', '张庆', '2351465', '1', '1', '电饭锅');

-- ----------------------------
-- Table structure for `基础信息`
-- ----------------------------
DROP TABLE IF EXISTS `基础信息`;
CREATE TABLE `基础信息` (
  `住户编号` int(11) NOT NULL AUTO_INCREMENT,
  `业主姓名` varchar(255) NOT NULL,
  `所在小区` int(11) DEFAULT NULL,
  `幢号` varchar(255) DEFAULT NULL,
  `室号` varchar(255) DEFAULT NULL,
  `建筑面积` float DEFAULT NULL,
  `联系电话` varchar(255) DEFAULT NULL,
  `性别` int(11) DEFAULT NULL COMMENT '0：男\r\n1：女',
  `年龄` int(11) DEFAULT NULL,
  `领房时间` date DEFAULT NULL,
  `身份证号` varchar(255) DEFAULT NULL,
  `工作单位` varchar(255) DEFAULT NULL,
  `婚姻状况` int(11) DEFAULT NULL COMMENT '0：未婚\r\n1：已婚',
  `民族` varchar(255) DEFAULT NULL,
  `家庭成员` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`住户编号`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 基础信息
-- ----------------------------
INSERT INTO `基础信息` VALUES ('1', '张三', '1', '3幢', '303', '90.5', '1234567', '1', '1987', '2016-12-05', 'XXXXX', 'qqq', '1', '汉', 'aa');
INSERT INTO `基础信息` VALUES ('2', '李四', '2', '1幢', '202', '88.8', '13913900001', '0', '1989', '2016-12-01', 'ZZZZZ', 'AAAAA', '0', '回', null);
INSERT INTO `基础信息` VALUES ('3', '张三丰', '1', '1幢', '505', '89', '1536276', '0', '1988', '2016-10-05', '1465768', 'asgfhgf', '0', '汉', '');
INSERT INTO `基础信息` VALUES ('4', '张一', '1', '1幢', '505', '89', '1536276', '0', '1988', '2016-10-05', '1465768', 'asgfhgf', '0', '汉', '');
INSERT INTO `基础信息` VALUES ('5', '张二', '1', '1幢', '505', '89', '1536276', '0', '1988', '2016-10-05', '1465768', 'asgfhgf', '0', '汉', '');
INSERT INTO `基础信息` VALUES ('6', '张四', '1', '1幢', '505', '89', '1536276', '0', '1988', '2016-10-05', '1465768', 'asgfhgf', '0', '汉', '');
INSERT INTO `基础信息` VALUES ('7', '张五', '1', '1幢', '505', '89', '1536276', '0', '1988', '2016-10-05', '1465768', 'asgfhgf', '0', '汉', '');
INSERT INTO `基础信息` VALUES ('8', '张六', '1', '1幢', '505', '89', '1536276', '0', '1988', '2016-10-05', '1465768', 'asgfhgf', '0', '汉', '');
INSERT INTO `基础信息` VALUES ('9', '张七', '1', '1幢', '505', '89', '1536276', '0', '1988', '2016-10-05', '1465768', 'asgfhgf', '0', '汉', '');
INSERT INTO `基础信息` VALUES ('10', '张八', '1', '1幢', '505', '89', '1536276', '0', '1988', '2016-10-05', '1465768', 'asgfhgf', '0', '汉', '');
INSERT INTO `基础信息` VALUES ('11', '张九', '1', '1幢', '505', '89', '1536276', '0', '1988', '2016-10-05', '1465768', 'asgfhgf', '0', '汉', '');
INSERT INTO `基础信息` VALUES ('12', '张十', '1', '1幢', '505', '89', '1536276', '0', '1988', '2016-10-05', '1465768', 'asgfhgf', '0', '汉', '');

-- ----------------------------
-- Table structure for `维修记录`
-- ----------------------------
DROP TABLE IF EXISTS `维修记录`;
CREATE TABLE `维修记录` (
  `维修编号` int(11) NOT NULL AUTO_INCREMENT,
  `报修业主` int(11) DEFAULT NULL,
  `报修事项` varchar(255) DEFAULT NULL,
  `处理人` varchar(255) DEFAULT NULL,
  `处理反馈` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`维修编号`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 维修记录
-- ----------------------------
INSERT INTO `维修记录` VALUES ('1', '1', '水管破裂', '李水', '已修复');

-- ----------------------------
-- Table structure for `物业费`
-- ----------------------------
DROP TABLE IF EXISTS `物业费`;
CREATE TABLE `物业费` (
  `业主` int(11) NOT NULL AUTO_INCREMENT,
  `物业费` float DEFAULT NULL,
  `电梯运营费` float DEFAULT NULL,
  `公共能耗费` float DEFAULT NULL,
  `公共服务费` float DEFAULT NULL,
  `应收费用` float DEFAULT NULL,
  `上次缴费日期` date DEFAULT NULL,
  `到期日期` date DEFAULT NULL,
  `实收费用` float DEFAULT NULL,
  `备注` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`业主`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 物业费
-- ----------------------------
INSERT INTO `物业费` VALUES ('1', '230', '56', '56', '56', '2222', '2016-12-24', '2017-12-23', '2222', '阿斯蒂芬');
INSERT INTO `物业费` VALUES ('2', '2201', '150', '50', '50', '2450', '2016-12-22', '2017-12-05', null, null);
INSERT INTO `物业费` VALUES ('3', '2262', '34', '34', '34', '2460', '2016-12-24', '2017-12-24', '2356', '');
INSERT INTO `物业费` VALUES ('4', '2263', '34', '34', '34', '2460', '2016-12-24', '2017-12-24', '2356', '');
INSERT INTO `物业费` VALUES ('5', '2264', '34', '34', '34', '2460', '2016-12-24', '2017-12-24', '2356', '');
INSERT INTO `物业费` VALUES ('6', '2223', '34', '34', '34', '2460', '2016-12-24', '2017-12-24', '2356', '');
INSERT INTO `物业费` VALUES ('7', '2254', '34', '34', '34', '2460', '2016-12-24', '2017-12-24', '2356', '');
INSERT INTO `物业费` VALUES ('8', '2265', '34', '34', '34', '2460', '2016-12-24', '2017-12-24', '2356', '');
INSERT INTO `物业费` VALUES ('9', '2289', '34', '34', '34', '2460', '2016-12-24', '2017-12-24', '2356', '');
INSERT INTO `物业费` VALUES ('10', '2225', '34', '34', '34', '2460', '2016-12-24', '2017-12-24', '2356', '');
INSERT INTO `物业费` VALUES ('11', '2298', '34', '34', '34', '2460', '2016-12-24', '2017-12-24', '2356', '');
INSERT INTO `物业费` VALUES ('12', '2212', '34', '34', '34', '2460', '2016-12-24', '2017-12-24', '2356', '');

-- ----------------------------
-- Table structure for `小区信息`
-- ----------------------------
DROP TABLE IF EXISTS `小区信息`;
CREATE TABLE `小区信息` (
  `小区编号` int(11) NOT NULL AUTO_INCREMENT,
  `小区名` varchar(255) NOT NULL,
  `小区地址` varchar(255) DEFAULT NULL,
  `备注` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`小区编号`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 小区信息
-- ----------------------------
INSERT INTO `小区信息` VALUES ('1', '富川瑞园', '位置1', null);
INSERT INTO `小区信息` VALUES ('2', '雅苑', '位置2', null);
INSERT INTO `小区信息` VALUES ('3', '鸿锦花园', null, null);
INSERT INTO `小区信息` VALUES ('4', '壹号公馆', null, null);
INSERT INTO `小区信息` VALUES ('5', '鸿大花园', null, null);
INSERT INTO `小区信息` VALUES ('6', '鸿泰家园', null, null);
INSERT INTO `小区信息` VALUES ('7', '宝带新村', null, null);
INSERT INTO `小区信息` VALUES ('8', '大唐新寓', null, null);
INSERT INTO `小区信息` VALUES ('9', '水岸华城', null, null);

-- ----------------------------
-- Table structure for `业主杂事`
-- ----------------------------
DROP TABLE IF EXISTS `业主杂事`;
CREATE TABLE `业主杂事` (
  `编号` int(11) NOT NULL AUTO_INCREMENT,
  `业主` int(11) DEFAULT NULL,
  `违规违章` varchar(255) DEFAULT NULL,
  `求助` varchar(255) DEFAULT NULL,
  `好事` varchar(255) DEFAULT NULL,
  `备注` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`编号`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 业主杂事
-- ----------------------------
INSERT INTO `业主杂事` VALUES ('1', '1', 'a', null, null, null);
INSERT INTO `业主杂事` VALUES ('2', '1', null, 'b', null, null);
INSERT INTO `业主杂事` VALUES ('3', '1', null, null, 'c', null);

-- ----------------------------
-- Table structure for `装修记录`
-- ----------------------------
DROP TABLE IF EXISTS `装修记录`;
CREATE TABLE `装修记录` (
  `装修编号` int(11) NOT NULL AUTO_INCREMENT,
  `业主` int(11) DEFAULT NULL,
  `装修手续` varchar(255) DEFAULT NULL,
  `装修违规操作` varchar(255) DEFAULT NULL,
  `物业巡查记录` varchar(255) DEFAULT NULL,
  `装修押金` float DEFAULT NULL,
  `退还押金` float DEFAULT NULL,
  `验收结果` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`装修编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 装修记录
-- ----------------------------
