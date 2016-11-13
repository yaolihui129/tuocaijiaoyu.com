/*
Navicat MySQL Data Transfer

Source Server         : mac
Source Server Version : 50505
Source Host           : 192.168.31.138:3306
Source Database       : tuocai

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-11-13 22:17:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tuoc_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tuoc_admin`;
CREATE TABLE `tuoc_admin` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `photo` varchar(32) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `tech` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuoc_admin
-- ----------------------------
INSERT INTO `tuoc_admin` VALUES ('1', 'yaolh', '腰立辉', 'c33367701511b4f6020ec61ded352059', '/Admin/user/image/2016-11-05/', '581de638ca86c.jpg', '18801043607', '在职', null, '腰立辉', '腰立辉', null, '2016-11-06 18:01:08');
INSERT INTO `tuoc_admin` VALUES ('2', 'liangxw', '梁小伟', 'e10adc3949ba59abbe56e057f20f883e', null, null, '13426179579', '在职', null, '腰立辉', '腰立辉', '2016', '2016-11-12 16:09:56');

-- ----------------------------
-- Table structure for `tuoc_course`
-- ----------------------------
DROP TABLE IF EXISTS `tuoc_course`;
CREATE TABLE `tuoc_course` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `course` varchar(30) DEFAULT NULL,
  `coursetype` varchar(5) DEFAULT NULL,
  `desc` text,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuoc_course
-- ----------------------------
INSERT INTO `tuoc_course` VALUES ('6', '小学英语', '小学课程', null, '/Course/2016-11-13/', '5828142cd61aa.jpg', '正常', '腰立辉', '腰立辉', null, '2016-11-13 15:20:12');
INSERT INTO `tuoc_course` VALUES ('7', '百家姓', '学前少儿', '12312', '/Course/2016-11-13/', '58280bc662aaa.jpg', '正常', '腰立辉', '腰立辉', '1478422638', '2016-11-13 14:44:22');
INSERT INTO `tuoc_course` VALUES ('9', '小学自然', '小学课程', 'qweqw11', '/Course/2016-11-13/', '5828056fe2b19.jpeg', '正常', '腰立辉', '腰立辉', '1478530883', '2016-11-13 14:17:19');
INSERT INTO `tuoc_course` VALUES ('10', '跆拳道', '兴趣拓展', '', '/Course/2016-11-13/', '58284465e15a9.jpg', '正常', '腰立辉', '腰立辉', '1479015112', '2016-11-13 18:45:57');
INSERT INTO `tuoc_course` VALUES ('11', '九年级物理', '中学课程', '', '/Course/2016-11-13/', '58284492cc71a.png', '正常', '腰立辉', '腰立辉', '1479015398', '2016-11-13 18:46:42');
INSERT INTO `tuoc_course` VALUES ('12', '三字经', '学前少儿', '', '/Course/2016-11-13/', '58280ae25f669.png', '正常', '腰立辉', '腰立辉', '1479015502', '2016-11-13 14:40:34');

-- ----------------------------
-- Table structure for `tuoc_customer`
-- ----------------------------
DROP TABLE IF EXISTS `tuoc_customer`;
CREATE TABLE `tuoc_customer` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `custype` varchar(5) DEFAULT NULL,
  `isteacher` int(1) DEFAULT '1',
  `coursetype` varchar(5) NOT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuoc_customer
-- ----------------------------
INSERT INTO `tuoc_customer` VALUES ('1', '18801043607', 'c33367701511b4f6020ec61ded352059', '老师', '1', '小学课程', '腰立辉', null, null, '正常', '腰立辉', '腰立辉', '1478415695', '2016-11-13 17:19:33');
INSERT INTO `tuoc_customer` VALUES ('3', '13333333333', 'f379eaf3c831b04de153469d1bec345e', '老师', '1', '中学课程', '张三', null, null, '正常', '腰立辉', '腰立辉', '1478415695', '2016-11-13 17:22:42');
INSERT INTO `tuoc_customer` VALUES ('4', '13222222222', 'f379eaf3c831b04de153469d1bec345e', '助教', '1', '兴趣拓展', '李四', null, null, '正常', '腰立辉', '腰立辉', '1478415695', '2016-11-13 17:22:20');
INSERT INTO `tuoc_customer` VALUES ('5', '13426179579', 'f379eaf3c831b04de153469d1bec345e', '学生', '0', '小学课程', '王五', null, null, '正常', '腰立辉', '腰立辉', '1478415748', '2016-11-13 17:18:21');
INSERT INTO `tuoc_customer` VALUES ('6', '15323473621', 'f379eaf3c831b04de153469d1bec345e', '学生', '0', '学前少儿', '赵六', null, null, '正常', '腰立辉', '腰立辉', '1478442421', '2016-11-13 17:22:03');
INSERT INTO `tuoc_customer` VALUES ('12', '12314242342', 'f379eaf3c831b04de153469d1bec345e', '学生', '0', '小学课程', 'werer', null, null, '正常', '腰立辉', '腰立辉', '1479042931', '2016-11-13 21:17:14');

-- ----------------------------
-- Table structure for `tuoc_date`
-- ----------------------------
DROP TABLE IF EXISTS `tuoc_date`;
CREATE TABLE `tuoc_date` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `riqi` date DEFAULT NULL,
  `xingqi` varchar(5) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuoc_date
-- ----------------------------
INSERT INTO `tuoc_date` VALUES ('3', '2016-11-11', '星期五', '2016-11-12 13:59:40');
INSERT INTO `tuoc_date` VALUES ('4', '2016-11-14', '星期一', '2016-11-13 22:15:33');
INSERT INTO `tuoc_date` VALUES ('5', '2016-11-15', '星期二', '2016-11-13 22:15:41');

-- ----------------------------
-- Table structure for `tuoc_dict`
-- ----------------------------
DROP TABLE IF EXISTS `tuoc_dict`;
CREATE TABLE `tuoc_dict` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `k` smallint(2) DEFAULT NULL,
  `v` varchar(20) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `state` varchar(5) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuoc_dict
-- ----------------------------
INSERT INTO `tuoc_dict` VALUES ('1', '1', '正常', 'state', '正常', null, '腰立辉', '腰立辉', '2016-10-27 15:54:22', '2016-10-30 17:51:36');
INSERT INTO `tuoc_dict` VALUES ('2', '3', '作废', 'state', '正常', null, '腰立辉', '腰立辉', '2016-10-27 15:54:17', '2016-10-27 17:16:57');
INSERT INTO `tuoc_dict` VALUES ('5', '2', '发布', 'state', '正常', null, '腰立辉', '腰立辉', '2016-10-27 17:16:20', '2016-10-30 17:51:11');
INSERT INTO `tuoc_dict` VALUES ('16', '4', '设置', 'menu_admin', '正常', null, '腰立辉', '腰立辉', '2016-11-06 11:43:49', '2016-11-06 11:53:27');
INSERT INTO `tuoc_dict` VALUES ('15', '3', '师资', 'menu_admin', '正常', null, '腰立辉', '腰立辉', '2016-11-06 11:43:40', '2016-11-06 11:53:15');
INSERT INTO `tuoc_dict` VALUES ('14', '2', '课程', 'menu_admin', '正常', null, '腰立辉', '腰立辉', '2016-11-06 11:43:25', '2016-11-06 11:46:52');
INSERT INTO `tuoc_dict` VALUES ('13', '1', '首页', 'menu_admin', '正常', null, '腰立辉', '腰立辉', '2016-11-06 11:42:56', '2016-11-06 11:46:25');
INSERT INTO `tuoc_dict` VALUES ('17', '1', '首页', 'menu_home', '正常', null, '腰立辉', '腰立辉', '2016-11-06 11:54:40', '2016-11-06 11:54:40');
INSERT INTO `tuoc_dict` VALUES ('18', '2', '课程导航', 'menu_home', '正常', null, '腰立辉', '腰立辉', '2016-11-06 11:54:57', '2016-11-06 11:55:18');
INSERT INTO `tuoc_dict` VALUES ('19', '3', '师资力量', 'menu_home', '正常', null, '腰立辉', '腰立辉', '2016-11-06 11:55:41', '2016-11-06 11:55:41');
INSERT INTO `tuoc_dict` VALUES ('20', '4', '关于我们', 'menu_home', '正常', null, '腰立辉', '腰立辉', '2016-11-06 11:55:53', '2016-11-06 11:55:53');
INSERT INTO `tuoc_dict` VALUES ('21', '1', '老师', 'custype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 13:22:33', '2016-11-06 13:22:33');
INSERT INTO `tuoc_dict` VALUES ('22', '2', '助教', 'custype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 13:22:50', '2016-11-06 13:22:50');
INSERT INTO `tuoc_dict` VALUES ('23', '3', '学生', 'custype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 13:22:58', '2016-11-06 13:22:58');
INSERT INTO `tuoc_dict` VALUES ('24', '1', '学前少儿', 'coursetype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 15:20:45', '2016-11-06 16:17:22');
INSERT INTO `tuoc_dict` VALUES ('25', '2', '小学课程', 'coursetype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 15:22:34', '2016-11-06 16:17:46');
INSERT INTO `tuoc_dict` VALUES ('26', '3', '中学课程', 'coursetype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 15:22:49', '2016-11-06 16:17:57');
INSERT INTO `tuoc_dict` VALUES ('27', '4', '作业托管', 'coursetype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 15:23:00', '2016-11-06 16:18:12');
INSERT INTO `tuoc_dict` VALUES ('28', '5', '兴趣拓展', 'coursetype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 15:23:09', '2016-11-06 16:18:26');
INSERT INTO `tuoc_dict` VALUES ('37', '1', '8:00-10:00', 'sktime', '正常', '', '腰立辉', '腰立辉', '2016-11-11 23:30:52', '2016-11-11 23:30:52');
INSERT INTO `tuoc_dict` VALUES ('38', '2', '10:00-12:00', 'sktime', '正常', '', '腰立辉', '腰立辉', '2016-11-11 23:31:16', '2016-11-11 23:31:16');
INSERT INTO `tuoc_dict` VALUES ('39', '3', '13:00-15:00', 'sktime', '正常', '', '腰立辉', '腰立辉', '2016-11-11 23:31:31', '2016-11-11 23:31:31');
INSERT INTO `tuoc_dict` VALUES ('40', '4', '15:00-17:00', 'sktime', '正常', '', '腰立辉', '腰立辉', '2016-11-11 23:32:36', '2016-11-11 23:32:36');
INSERT INTO `tuoc_dict` VALUES ('41', '1', '在职', 'adminst', '正常', '', '腰立辉', '腰立辉', '2016-11-12 16:03:08', '2016-11-12 16:03:08');
INSERT INTO `tuoc_dict` VALUES ('42', '2', '离职', 'adminst', '正常', '', '腰立辉', '腰立辉', '2016-11-12 16:03:34', '2016-11-12 16:03:34');

-- ----------------------------
-- Table structure for `tuoc_hr`
-- ----------------------------
DROP TABLE IF EXISTS `tuoc_hr`;
CREATE TABLE `tuoc_hr` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `state` varchar(5) DEFAULT '发布',
  `desc` text,
  `salary` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuoc_hr
-- ----------------------------
INSERT INTO `tuoc_hr` VALUES ('3', '公司CEO', '发布', '\r\n', '面议', '2016-10-03', '安顺汽修', '腰立辉', '腰立辉', null, '2016-11-06 10:04:55');
INSERT INTO `tuoc_hr` VALUES ('4', '首席财务官', '作废', '<p>\r\n	融入融入人</p>\r\n', '面议', '2016-10-03', '安顺汽修', '腰立辉', '腰立辉', null, '2016-10-29 20:12:52');

-- ----------------------------
-- Table structure for `tuoc_menu`
-- ----------------------------
DROP TABLE IF EXISTS `tuoc_menu`;
CREATE TABLE `tuoc_menu` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` smallint(2) DEFAULT NULL,
  `list` varchar(5) DEFAULT NULL,
  `menu` varchar(20) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `namesp` varchar(15) DEFAULT NULL,
  `contr` varchar(50) DEFAULT NULL,
  `fubc` varchar(50) DEFAULT NULL,
  `argum1` varchar(15) DEFAULT NULL,
  `value1` varchar(15) DEFAULT NULL,
  `argum2` varchar(15) DEFAULT NULL,
  `value2` varchar(15) DEFAULT NULL,
  `argum3` varchar(15) DEFAULT NULL,
  `value3` varchar(15) DEFAULT NULL,
  `argum4` varchar(15) DEFAULT NULL,
  `value4` varchar(15) DEFAULT NULL,
  `argum5` varchar(15) DEFAULT NULL,
  `value5` varchar(15) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuoc_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `tuoc_plan`
-- ----------------------------
DROP TABLE IF EXISTS `tuoc_plan`;
CREATE TABLE `tuoc_plan` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `skdate` date DEFAULT NULL,
  `skweek` smallint(6) DEFAULT NULL,
  `sktime` varchar(20) DEFAULT NULL,
  `teacherid` smallint(6) DEFAULT NULL,
  `courseid` smallint(6) DEFAULT NULL,
  `adress` varchar(100) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuoc_plan
-- ----------------------------

-- ----------------------------
-- Table structure for `tuoc_setting`
-- ----------------------------
DROP TABLE IF EXISTS `tuoc_setting`;
CREATE TABLE `tuoc_setting` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `qq` varchar(12) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `keywords` varchar(200) NOT NULL,
  `desc` text,
  `adress` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `hpath` varchar(200) DEFAULT NULL,
  `himg` varchar(48) DEFAULT NULL,
  `apath` varchar(200) DEFAULT NULL,
  `aimg` varchar(200) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuoc_setting
-- ----------------------------
INSERT INTO `tuoc_setting` VALUES ('1', '0311-898493', '285981407', '石家庄-拓才教育', '', '1231231231231', '石家庄1', 'www.tuocaijiaoyu.com', '/Setting/home/2016-11-08/', '5821e25512af5.jpg', '/Setting/adress/2016-11-08/', '5821e242d22c5.jpg', '腰立辉', '2016-11-12 20:48:04');

-- ----------------------------
-- Table structure for `tuoc_studentcla`
-- ----------------------------
DROP TABLE IF EXISTS `tuoc_studentcla`;
CREATE TABLE `tuoc_studentcla` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `studentid` smallint(6) DEFAULT NULL,
  `student` varchar(11) DEFAULT NULL,
  `sphone` varchar(11) DEFAULT NULL,
  `coursetype` varchar(5) DEFAULT NULL,
  `techclassid` smallint(6) DEFAULT NULL,
  `teacher` varchar(10) DEFAULT NULL,
  `tphone` varchar(11) DEFAULT NULL,
  `courseid` smallint(6) DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuoc_studentcla
-- ----------------------------
INSERT INTO `tuoc_studentcla` VALUES ('4', '5', '王五', '13426179579', '小学课程', '4', '腰立辉', '18801043607', '6', '小学英语', null, '腰立辉', '腰立辉', '1479043222', '2016-11-13 21:20:22');

-- ----------------------------
-- Table structure for `tuoc_techclass`
-- ----------------------------
DROP TABLE IF EXISTS `tuoc_techclass`;
CREATE TABLE `tuoc_techclass` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `teacherid` smallint(6) DEFAULT NULL,
  `teacher` varchar(10) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `courseid` smallint(6) DEFAULT NULL,
  `coursetype` varchar(5) NOT NULL,
  `course` varchar(50) NOT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuoc_techclass
-- ----------------------------
INSERT INTO `tuoc_techclass` VALUES ('4', '1', '腰立辉', '18801043607', '6', '小学课程', '小学英语', null, '腰立辉', '腰立辉', '1479027130', '2016-11-13 18:39:09');
INSERT INTO `tuoc_techclass` VALUES ('5', '1', '腰立辉', '18801043607', '6', '小学课程', '小学英语', null, '腰立辉', '腰立辉', '1479031833', '2016-11-13 18:23:41');
INSERT INTO `tuoc_techclass` VALUES ('6', '4', '李四', '13222222222', '10', '兴趣拓展', '跆拳道', null, '腰立辉', '腰立辉', '1479032021', '2016-11-13 18:23:56');
INSERT INTO `tuoc_techclass` VALUES ('7', '3', '张三', '13333333333', '11', '中学课程', '九年级物理', null, '腰立辉', '腰立辉', '1479034059', '2016-11-13 18:47:39');
