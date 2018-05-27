/*
Navicat MySQL Data Transfer

Source Server         : ssm
Source Server Version : 50638
Source Host           : localhost:3306
Source Database       : db_studentinfo

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2018-05-27 22:19:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_class
-- ----------------------------
DROP TABLE IF EXISTS `t_class`;
CREATE TABLE `t_class` (
  `classId` int(11) NOT NULL AUTO_INCREMENT,
  `className` varchar(20) DEFAULT NULL,
  `gradeId` int(11) DEFAULT NULL,
  `classDesc` text,
  PRIMARY KEY (`classId`),
  KEY `FK_t_class` (`gradeId`),
  CONSTRAINT `FK_t_class` FOREIGN KEY (`gradeId`) REFERENCES `t_grade` (`gradeId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_class
-- ----------------------------
INSERT INTO `t_class` VALUES ('3', '15计科1班', '2', '43人');
INSERT INTO `t_class` VALUES ('4', '14计科1班', '1', '35人');
INSERT INTO `t_class` VALUES ('5', '14网络1班', '1', '40人');
INSERT INTO `t_class` VALUES ('6', '16级网络安全1班', '3', '41人');
INSERT INTO `t_class` VALUES ('7', '16级网络安全2班', '3', '43人');
INSERT INTO `t_class` VALUES ('8', '15计科2班', '3', '45人');

-- ----------------------------
-- Table structure for t_datadic
-- ----------------------------
DROP TABLE IF EXISTS `t_datadic`;
CREATE TABLE `t_datadic` (
  `ddId` int(11) NOT NULL AUTO_INCREMENT,
  `ddTypeId` int(11) DEFAULT NULL,
  `ddValue` varchar(20) DEFAULT NULL,
  `ddDesc` text,
  PRIMARY KEY (`ddId`),
  KEY `FK_t_datadic` (`ddTypeId`),
  CONSTRAINT `FK_t_datadic` FOREIGN KEY (`ddTypeId`) REFERENCES `t_datadictype` (`ddTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_datadic
-- ----------------------------
INSERT INTO `t_datadic` VALUES ('1', '1', '男', '1');
INSERT INTO `t_datadic` VALUES ('2', '1', '女', null);
INSERT INTO `t_datadic` VALUES ('3', '2', '中共党员', null);
INSERT INTO `t_datadic` VALUES ('4', '2', '中共预备党员', null);
INSERT INTO `t_datadic` VALUES ('5', '2', '共青团员', null);
INSERT INTO `t_datadic` VALUES ('6', '2', '民革党员', null);
INSERT INTO `t_datadic` VALUES ('7', '2', '民盟盟员', null);
INSERT INTO `t_datadic` VALUES ('8', '2', '民建会员', null);
INSERT INTO `t_datadic` VALUES ('9', '2', '民进会员', null);
INSERT INTO `t_datadic` VALUES ('10', '2', '农工党党员', null);
INSERT INTO `t_datadic` VALUES ('11', '2', '致公党党员', null);
INSERT INTO `t_datadic` VALUES ('12', '2', '九三学社社员', null);
INSERT INTO `t_datadic` VALUES ('13', '2', '台盟盟员', null);
INSERT INTO `t_datadic` VALUES ('14', '2', '无党派人士', null);
INSERT INTO `t_datadic` VALUES ('15', '2', '普通公民', null);
INSERT INTO `t_datadic` VALUES ('16', '2', '港澳同胞', null);
INSERT INTO `t_datadic` VALUES ('17', '2', '叛徒', null);
INSERT INTO `t_datadic` VALUES ('18', '2', '反革命分子', null);
INSERT INTO `t_datadic` VALUES ('334', '3', '汉族', null);
INSERT INTO `t_datadic` VALUES ('335', '3', '蒙古族', null);
INSERT INTO `t_datadic` VALUES ('336', '3', '回族', null);
INSERT INTO `t_datadic` VALUES ('337', '3', '藏族', null);
INSERT INTO `t_datadic` VALUES ('338', '3', '维吾尔族', null);
INSERT INTO `t_datadic` VALUES ('339', '3', '门巴族', null);
INSERT INTO `t_datadic` VALUES ('340', '3', '外国血统', null);
INSERT INTO `t_datadic` VALUES ('342', '3', '哈哈族', '11');

-- ----------------------------
-- Table structure for t_datadictype
-- ----------------------------
DROP TABLE IF EXISTS `t_datadictype`;
CREATE TABLE `t_datadictype` (
  `ddTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `ddTypeName` varchar(20) DEFAULT NULL,
  `ddTypeDesc` text,
  PRIMARY KEY (`ddTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_datadictype
-- ----------------------------
INSERT INTO `t_datadictype` VALUES ('1', '性别', '121');
INSERT INTO `t_datadictype` VALUES ('2', '政治面貌', null);
INSERT INTO `t_datadictype` VALUES ('3', '民族', '');

-- ----------------------------
-- Table structure for t_grade
-- ----------------------------
DROP TABLE IF EXISTS `t_grade`;
CREATE TABLE `t_grade` (
  `gradeId` int(11) NOT NULL AUTO_INCREMENT,
  `gradeName` varchar(20) DEFAULT NULL,
  `gradeDesc` text,
  PRIMARY KEY (`gradeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grade
-- ----------------------------
INSERT INTO `t_grade` VALUES ('1', '14级', '111');
INSERT INTO `t_grade` VALUES ('2', '15级', '222');
INSERT INTO `t_grade` VALUES ('3', '16级', '33');
INSERT INTO `t_grade` VALUES ('4', '17级', '10389人');

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `studentId` varchar(40) NOT NULL,
  `stuNo` varchar(20) DEFAULT NULL,
  `stuName` varchar(20) DEFAULT NULL,
  `stuSex` varchar(10) DEFAULT NULL,
  `stuBirthday` date DEFAULT NULL,
  `stuRxsj` date DEFAULT NULL,
  `stuNation` varchar(20) DEFAULT NULL,
  `stuZzmm` varchar(20) DEFAULT NULL,
  `classId` int(11) DEFAULT NULL,
  `stuDesc` text,
  `stuPic` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`studentId`),
  KEY `FK_t_student` (`classId`),
  CONSTRAINT `FK_t_student` FOREIGN KEY (`classId`) REFERENCES `t_class` (`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('10bea402-23e4-4066-a4fd-534c3798a7d7', '0011', '美女111', '男', '2014-05-16', '2014-06-08', '回族', '共青团员', '5', '美女12222222', '20140712081542.jpg');
INSERT INTO `t_student` VALUES ('13', '21', null, null, null, null, null, null, '4', null, null);
INSERT INTO `t_student` VALUES ('14', '21', null, null, null, null, null, null, '4', null, null);
INSERT INTO `t_student` VALUES ('17', '2', null, null, null, null, null, null, '4', null, null);
INSERT INTO `t_student` VALUES ('18', '2', null, null, null, null, null, null, '4', null, null);
INSERT INTO `t_student` VALUES ('19', '小三', '21', '女', '2014-05-14', '2014-05-14', '汉族', '中共党员', '5', '是', '20140502030158.jpg');
INSERT INTO `t_student` VALUES ('4', '11', '212', '男', '2014-04-08', '2014-04-05', '蒙古族', '中共预备党员', '4', '21', '20140429052236.JPG');
INSERT INTO `t_student` VALUES ('5', '11', '21', '男', '2014-04-08', '2014-04-05', '蒙古族', '中共预备党员', '4', '21', '20140429052433.JPG');
INSERT INTO `t_student` VALUES ('6', '21', '2', '男', '2014-04-08', '2014-04-05', '蒙古族', null, '4', null, null);
INSERT INTO `t_student` VALUES ('7fac0234-59ef-46ea-981a-de50d24741b2', '000', '11', '男', '2014-07-10', '2014-07-09', '汉族', '中共党员', '4', '测试图片', '20140710090403.jpg');
INSERT INTO `t_student` VALUES ('a1cf592d-d9d4-4de1-b8ff-0db7e9852411', 'sss22', 'ss2', '女', '2014-05-08', '2014-05-10', '蒙古族', '共青团员', '3', '大2', '20140508022528.jpg');
INSERT INTO `t_student` VALUES ('a8a1816b-f24c-4fb9-b160-c8c107c80acf', '21', '321', '男', '2014-05-13', '2014-05-15', '蒙古族', '民革党员', '3', '123', '20140508020709.jpg');
INSERT INTO `t_student` VALUES ('b53b0b8a-7f1c-4254-8cff-e8353902f012', '121', '21', '男', '2014-07-09', '2014-07-16', '汉族', '中共党员', '3', '21', '');
INSERT INTO `t_student` VALUES ('c793537d-827f-4332-aecd-9292d3b09399', '3115004925', '蒋帅', '男', '2014-05-15', '2016-05-17', '汉族', '共青团员', '4', '河北小伙子', '');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'huangzhiwei', '3115004924');
