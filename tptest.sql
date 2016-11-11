/*
Navicat MySQL Data Transfer

Source Server         : 3306
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : tptest

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2016-11-11 17:36:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tp_case`
-- ----------------------------
DROP TABLE IF EXISTS `tp_case`;
CREATE TABLE `tp_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `level` varchar(1) DEFAULT NULL,
  `main` varchar(50) DEFAULT NULL,
  `steps` text,
  `expected` varchar(200) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dstate` varchar(5) DEFAULT '',
  `num1` varchar(255) DEFAULT NULL,
  `num2` varchar(255) DEFAULT NULL,
  `num3` varchar(255) DEFAULT NULL,
  `num4` varchar(255) DEFAULT NULL,
  `num5` varchar(255) DEFAULT NULL,
  `num6` varchar(255) DEFAULT NULL,
  `num7` varchar(255) DEFAULT NULL,
  `num8` varchar(255) DEFAULT NULL,
  `num9` varchar(255) DEFAULT NULL,
  `num10` varchar(255) DEFAULT NULL,
  `num11` varchar(255) DEFAULT NULL,
  `num12` varchar(255) DEFAULT NULL,
  `num13` varchar(255) DEFAULT NULL,
  `num14` varchar(255) DEFAULT NULL,
  `num16` varchar(255) DEFAULT NULL,
  `num17` varchar(255) DEFAULT NULL,
  `num18` varchar(255) DEFAULT NULL,
  `num19` varchar(255) DEFAULT NULL,
  `num20` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_case
-- ----------------------------
INSERT INTO `tp_case` VALUES ('10000', '1', '', '正常登陆', '', '登入系统，并显示用户姓名', '正常', '45', '10000', '产品库', null, '腰立辉', '腰立辉', '2016-10-28 15:50:05', '2016-10-14 10:13:49', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10001', '2', null, '用户名不存在', '', '报错', '正常', '45', '10000', '产品库', null, '腰立辉', '腰立辉', '2016-09-22 14:33:33', '2016-09-22 14:33:33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10002', '1', null, '正常注销', '', '登出系统', '正常', '45', '10001', '产品库', null, '腰立辉', '腰立辉', '2016-09-22 14:36:58', '2016-09-22 14:36:58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10003', '1', null, '正常添加测试产品', '', '添加成功', '正常', '45', '10003', '产品库', null, '腰立辉', '腰立辉', '2016-10-20 16:59:08', '2016-10-20 16:59:08', '已完成', '点击', '惠买车', '惠买车', '点击', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `tp_case` VALUES ('10004', '2', null, '产品名为空', '', '添加失败', '正常', '45', '10003', '产品库', null, '腰立辉', '腰立辉', '2016-10-20 17:31:47', '2016-10-20 17:31:47', '待维护', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `tp_case` VALUES ('10005', '3', null, '产品简称为空', '', '添加失败', '正常', '45', '10003', '产品库', null, '腰立辉', '腰立辉', '2016-10-20 16:42:46', '2016-10-20 16:42:46', '待维护', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `tp_case` VALUES ('10006', '4', null, '产品名重复', '', '添加失败', '正常', '45', '10003', '产品库', null, '腰立辉', '腰立辉', '2016-10-20 16:42:49', '2016-10-20 16:42:49', '待维护', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `tp_case` VALUES ('10007', '5', null, '产品简称重复', '', '添加失败', '正常', '45', '10003', '产品库', null, '腰立辉', '腰立辉', '2016-10-20 16:42:53', '2016-10-20 16:42:53', '待维护', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `tp_case` VALUES ('10008', '1', '2', '添加车型，不配置买顾和电销', '', '添加成功', '正常', '46', '10206', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:24:49', '2016-09-28 10:09:16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10009', '2', '2', '添加车型，配置买顾不配置电销', '', '添加成功', '正常', '46', '10206', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:24:52', '2016-09-28 10:09:54', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10010', '3', '2', '添加车型，配置电销不配置买顾', '', '添加成功', '正常', '46', '10206', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:24:54', '2016-09-28 10:10:18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10011', '4', '2', '添加车型，不勾选车型', '', '添加失败', '正常', '46', '10206', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:24:56', '2016-09-28 10:10:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10012', '1', '2', '查看车型报价配置表', '', '查到相关配置表', '正常', '46', '10201', '产品库', '', '腰立辉', '腰立辉', '2016-09-28 16:03:42', '2016-09-28 11:48:55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10013', '1', '2', '选择已配置车型的城市', '', '查到相关配置表', '正常', '46', '10202', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:30:55', '2016-09-28 10:30:55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10014', '2', '2', '选择未配置的城市', '', '配置表为空', '正常', '46', '10202', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:31:21', '2016-09-28 10:31:21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10015', '1', '2', '选择买顾配置状态查询', '', '查询到结果', '正常', '46', '10203', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:48:28', '2016-09-28 10:48:28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10016', '1', '2', '按电销配置状态查询', '', '查询到结果', '正常', '46', '10204', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:48:55', '2016-09-28 10:48:55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10017', '1', '2', '不选主品牌查询', '', '查到所有相关', '正常', '46', '10205', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 11:49:49', '2016-09-28 11:49:49', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10018', '2', '2', '选择主品牌，不选品牌', '', '查到所有相关', '正常', '46', '10205', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 11:49:53', '2016-09-28 11:49:53', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10019', '3', '2', '选择主品牌，品牌不选车型', '', '查出该品牌下的符合条件的车款', '正常', '46', '10205', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:19:28', '2016-10-09 15:19:28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10020', '4', '2', '选择主品牌，品牌，车型', '', '查出符合条件的车款', '正常', '46', '10205', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:19:41', '2016-10-09 15:19:41', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10021', '1', '2', '全选-批量配置买顾', '', '配置成功', '正常', '46', '10207', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:19:58', '2016-10-09 15:19:58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10022', '2', '2', '不选-批量配置买顾', '', '报错', '正常', '46', '10207', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:20:07', '2016-10-09 15:20:07', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10023', '1', '2', '全选-批量配置电销', '', '配置成功', '正常', '46', '10208', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:20:35', '2016-10-09 15:20:35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10024', '2', '2', '不选-批量配置电销', '', '报错', '正常', '46', '10208', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:20:43', '2016-10-09 15:20:43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10025', '3', '2', '选单个-批量配置电销', '', '配置成功', '正常', '46', '10208', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:20:53', '2016-10-09 15:20:53', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10026', '4', '2', '选多个-批量配置电销', '', '配置成功', '正常', '46', '10208', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:21:00', '2016-10-09 15:21:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10027', '3', '2', '选单个-批量配置买顾', '', '配置成功', '正常', '46', '10207', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:20:19', '2016-10-09 15:20:19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10028', '4', '2', '选多个-批量配置买顾', '', '配置成功', '正常', '46', '10207', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:20:28', '2016-10-09 15:20:28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10029', '1', '2', '取消全部车型', '', '报错', '正常', '46', '10209', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:57:46', '2016-09-28 10:57:46', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10030', '2', '2', '修改车型', '', '修改成功', '正常', '46', '10209', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:21:22', '2016-10-09 15:21:22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10031', '3', '2', '修改买顾', '', '修改成功', '正常', '46', '10209', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:21:28', '2016-10-09 15:21:28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10032', '4', '2', '修改电销', '', '修改成功', '正常', '46', '10209', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:21:34', '2016-10-09 15:21:34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10033', '1', '2', '置空勾选', '', '报错', '正常', '46', '10210', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:21:43', '2016-10-09 15:21:43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10034', '2', '2', '更换买顾', '', '修改成功', '正常', '46', '10210', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:21:58', '2016-10-09 15:21:58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10035', '3', '2', '勾选多个买顾', '', '修改成功', '正常', '46', '10210', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:22:04', '2016-10-09 15:22:04', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10036', '1', '2', '置空电销', '', '报错', '正常', '46', '10211', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:22:13', '2016-10-09 15:22:13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10037', '2', '2', '更换电销', '', '修改成功', '正常', '46', '10211', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:22:20', '2016-10-09 15:22:20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10038', '3', '2', '不做修改，直接保存', '', '报错', '正常', '46', '10211', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:22:32', '2016-10-09 15:22:32', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10039', '1', '2', '查看车型价格库', '', '打开车型价格列表', '正常', '46', '10221', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:23:00', '2016-10-09 15:23:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10040', '1', '2', '选择已添加配置车款的城市', '', '有结果', '正常', '46', '10222', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 11:08:57', '2016-09-28 11:08:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10041', '2', '2', '选择未配置车款的城市', '', '无结果', '正常', '46', '10222', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 11:09:11', '2016-09-28 11:09:11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10042', '1', '2', '选择全部', '', '显示符合条件的车型价格', '正常', '46', '10223', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:23:35', '2016-10-09 15:23:35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10043', '2', '2', '选择有效', '', '显示符合条件的车型价格', '正常', '46', '10223', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:23:41', '2016-10-09 15:23:41', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10044', '3', '2', '选择已过期', '', '显示符合条件的车型价格', '正常', '46', '10223', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:23:47', '2016-10-09 15:23:47', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10045', '1', '2', '不选择主品牌', '', '报错', '正常', '46', '10224', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:23:57', '2016-10-09 15:23:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10046', '2', '2', '选择主品牌，不选择品牌', '', '报错', '正常', '46', '10224', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:24:05', '2016-10-09 15:24:05', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10047', '3', '2', '选择主品牌，品牌，不选择车款', '', '显示符合条件的车型价格', '正常', '46', '10224', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:24:14', '2016-10-09 15:24:14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10048', '4', '2', '选全主品牌，品牌和车款', '', '显示符合条件的车型价格', '正常', '46', '10224', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:24:21', '2016-10-09 15:24:21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10049', '1', '2', '设置要显示的列', '', '添加成功，显示新添加的列', '正常', '46', '10226', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:30:20', '2016-10-09 15:30:20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10050', '2', '2', '取消已显示的列', '', '移除成功，不再显示新移除的列', '正常', '46', '10226', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:30:42', '2016-10-09 15:30:42', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10051', '1', '2', '添加车款价格', '', '打开车款配置的常规页面', '正常', '46', '10225', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:25:38', '2016-10-09 15:25:38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10052', '1', '2', '查看买顾业务收集表', '<p>\r\n	11</p>\r\n', '显示买顾负责车款报价情况', '正常', '46', '10212', '产品库', 'yyy', '腰立辉', '腰立辉', '2016-10-10 13:49:45', '2016-10-28 16:35:26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10053', '1', '2', '选择城市查询', '', '查到对应城市的买顾', '正常', '46', '10213', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 15:57:07', '2016-10-08 15:57:07', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10054', '1', '2', '不选城市，先选买顾', '', '提示“先选城市”', '正常', '46', '10214', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 15:57:40', '2016-10-08 15:57:40', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10055', '2', '2', '选择城市后，再选买顾，查询', '', '查到对应买顾的单条数据', '正常', '46', '10214', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 15:59:15', '2016-10-08 15:59:15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10056', '1', '2', '点击买顾名字', '', '进入该买顾负责的车款报价列表', '正常', '46', '10215', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:00:39', '2016-10-08 16:00:39', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10057', '1', '2', '点击未报价的车款数（为0时）', '', '不允许进入如“提示没有需要报价的车款”', '正常', '46', '10216', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:02:20', '2016-10-08 16:02:20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10058', '2', '2', '点击未报价的车款数（不为0时）', '', '显示买顾负责，未报价的车款列表', '正常', '46', '10216', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:07:24', '2016-10-08 16:07:24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10059', '1', '2', '点击顾问过期车款数（为0时）', '', '不允许进入（提示没有过期车款）', '正常', '46', '10217', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:15:06', '2016-10-08 16:15:06', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10060', '2', '2', '点击顾问过期车款数（不为0时）', '', '进入顾问负责的车款过期价格列表', '正常', '46', '10217', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:24:17', '2016-10-08 16:24:17', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10061', '1', '2', '在顾问车款明细列表，选择城市查询', '', '取消顾问的限制，显示该城市下所有的', '正常', '46', '10218', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:25:50', '2016-10-08 16:25:50', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10062', '1', '2', '只选主品牌', '', '显示符合条件的所有', '正常', '46', '10219', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:32:45', '2016-10-08 16:32:45', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10063', '2', '2', '不选车款', '', '显示符合条件的所有', '正常', '46', '10219', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:33:09', '2016-10-08 16:33:09', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10064', '3', '2', '选择主品牌，品牌车款', '', '显示符合条件的所有', '正常', '46', '10219', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:34:01', '2016-10-08 16:34:01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10065', '1', '2', '选择全部（默认）查询', '', '显示全部状态', '正常', '46', '10220', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:34:48', '2016-10-08 16:34:48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10066', '2', '2', '选择“有效”', '', '查询后，显示有效报价', '正常', '46', '10220', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:06:29', '2016-10-09 15:06:29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10067', '3', '2', '选择“已过期”', '', '查询后，显示已过期报价', '正常', '46', '10220', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:06:44', '2016-10-09 15:06:44', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10068', '4', '2', '选择“待提交”', '', '查询后，显示待提交报价', '正常', '46', '10220', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:07:03', '2016-10-09 15:07:03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10069', '1', '2', '查看即将过期的车款列表', '', '显示即将过期的车款价格列表', '正常', '46', '10227', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:38:42', '2016-10-09 15:38:42', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10070', '1', '2', '不填信息【提交】', '', '报错', '正常', '46', '10244', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:07:50', '2016-10-09 15:07:50', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10071', '2', '2', '只选主品牌【提交】', '', '提示“选择车型品牌”', '正常', '46', '10240', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 10:59:59', '2016-10-08 17:09:53', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10072', '3', '1', '正常报价', '', '提交成功', '正常', '46', '10244', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 11:00:07', '2016-10-08 17:37:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10073', '4', '2', '不选报价商家', '', '报错', '正常', '46', '10244', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 11:00:57', '2016-10-08 17:37:22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10074', '5', '2', '不选价格有效期', '', '报错', '正常', '46', '10244', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 11:01:08', '2016-10-08 17:37:42', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10075', '6', '2', '不选颜色', '', '报错', '正常', '46', '10244', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 11:01:15', '2016-10-08 17:38:15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10076', '7', '2', '选多个颜色', '', '保存成功，返回', '正常', '46', '10244', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:08:15', '2016-10-09 15:08:15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10077', '8', '2', '选全部颜色', '', '保存成功，返回', '正常', '46', '10244', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:08:21', '2016-10-09 15:08:21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10078', '9', '2', '全款优惠（按元）', '', '保存成功，返回', '正常', '46', '10242', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:08:41', '2016-10-09 15:08:41', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10079', '10', '2', '全款优惠（按点）', '', '保存成功，返回', '正常', '46', '10243', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:08:35', '2016-10-09 15:08:35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10080', '1', '2', '从即将过期入口提交报价', '', '进入常规添加车款价格页面', '正常', '46', '10228', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:37:22', '2016-10-09 15:37:22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10081', '1', '2', '从新增车款入口提交报价', '', '进入常规添加车款价格页面', '正常', '46', '10230', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:37:40', '2016-10-09 15:37:40', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10082', '1', '2', '查看新增车款的列表', '', '显示新增的车款为添加价格的车款列表', '正常', '46', '10229', '产品库', '', '腰立辉', '腰立辉', '2016-10-28 12:33:00', '2016-10-09 15:39:24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10083', '1', '2', '查看我的报价列表', '', '显示我负责报价的的车款列表', '正常', '46', '10231', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:39:51', '2016-10-09 15:39:51', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10084', '1', '2', '按有效查询', '', '显示符合条件的车型价格', '正常', '46', '10232', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:40:09', '2016-10-09 15:40:09', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10085', '2', '2', '按全部查询', '', '显示符合条件的车型价格', '正常', '46', '10232', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:40:15', '2016-10-09 15:40:15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10086', '3', '2', '按已过期查询', '', '显示符合条件的车型价格', '正常', '46', '10232', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:40:24', '2016-10-09 15:40:24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10087', '1', '2', '不选任何车型车款信息查询', '', '显示符合条件的车型价格', '正常', '46', '10233', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:40:39', '2016-10-09 15:40:39', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10088', '2', '2', '只选主品牌查询', '', '显示符合条件的车型价格', '正常', '46', '10233', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:40:32', '2016-10-09 15:40:32', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10089', '3', '2', '不选车款查询', '', '进入常规添加车款价格页面', '正常', '46', '10233', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:38:15', '2016-10-09 15:38:15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10090', '4', '2', '选全主品牌、品牌、车款查询', '', '进入常规添加车款价格页面', '正常', '46', '10233', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:38:04', '2016-10-09 15:38:04', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10091', '1', '2', '从我的报价入口添加车款价格', '', '进入常规添加车款价格页面', '正常', '46', '10234', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:37:01', '2016-10-09 15:37:01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10092', '1', '2', '添加显示列', '', '添加成功，显示新添加的列', '正常', '46', '10235', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:35:58', '2016-10-09 15:35:58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10093', '2', '2', '隐藏显示列', '', '移除成功，不再显示新移除的列', '正常', '46', '10235', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:36:19', '2016-10-09 15:36:19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10094', '1', '2', '从我的报价入口进入编辑车款价格', '', '打开车款价格编辑页面', '正常', '46', '10236', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:36:34', '2016-10-09 15:36:34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10095', '1', '2', '创建车款报价后继续添加', '', '创建成功并打开一个空白的新建页', '正常', '46', '10245', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 14:52:43', '2016-10-09 14:52:43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10096', '1', '2', '查看待确定价格车款列表', '', '显示待确定车款价格信息', '正常', '46', '10237', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:35:35', '2016-10-09 15:35:35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10097', '1', '2', '确定车款价格', '', '确定成功，待确定列表里不再显示该条信息', '正常', '46', '10238', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:35:16', '2016-10-09 15:35:16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10098', '1', '2', '查看车款报价城市', '', '显示符合条件的车款列表', '正常', '46', '10239', '产品库', null, '腰立辉', '腰立辉', '2016-10-28 15:20:32', '2016-10-09 15:09:15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10099', '1', '2', '选择主品牌、品牌后级联选择车款', '', '选择成功', '正常', '46', '10241', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:02:33', '2016-10-09 15:02:33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10100', '1', '2', '正常登陆', '', '', '正常', '45', '10266', '产品库', null, '腰立辉', '腰立辉', '2016-10-14 10:49:16', '2016-10-14 10:49:16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10101', '1', '2', '正常修改密码', '', '修改成功1', '正常', '45', '10005', '产品库', null, '腰立辉', '腰立辉', '2016-10-14 15:53:28', '2016-10-14 15:53:28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10102', '1', '2', '查看产品列表', '', '', '正常', '45', '10002', '产品库', null, '腰立辉', '腰立辉', '2016-10-14 17:02:38', '2016-10-14 17:02:38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10103', '1', '2', '正常添加项目', '', '添加成功', '正常', '47', '10007', '产品库', null, '腰立辉', '腰立辉', '2016-10-17 16:28:08', '2016-10-17 16:28:08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tp_dict`
-- ----------------------------
DROP TABLE IF EXISTS `tp_dict`;
CREATE TABLE `tp_dict` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `k` smallint(2) DEFAULT NULL,
  `v` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `adder` varchar(10) DEFAULT '腰立辉',
  `moder` varchar(10) DEFAULT '腰立辉',
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_dict
-- ----------------------------
INSERT INTO `tp_dict` VALUES ('1', '1', '正常', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:14', null);
INSERT INTO `tp_dict` VALUES ('2', '2', '待确认', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:15', null);
INSERT INTO `tp_dict` VALUES ('3', '3', '已搁置', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:17', null);
INSERT INTO `tp_dict` VALUES ('4', '4', '作废', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:18', null);
INSERT INTO `tp_dict` VALUES ('5', '1', '未开始', 'prost', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:19', null);
INSERT INTO `tp_dict` VALUES ('6', '2', '进行中', 'prost', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:20', null);
INSERT INTO `tp_dict` VALUES ('7', '3', '已完成', 'prost', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:21', '2016-11-11 16:49:34');
INSERT INTO `tp_dict` VALUES ('8', '8', '仿真验证通过', 'prost', '作废', '腰立辉', '腰立辉', '2016-10-27 11:34:05', '2016-11-11 16:50:28');
INSERT INTO `tp_dict` VALUES ('9', '6', '已取消', 'prost', '正常', '腰立辉', '腰立辉', '2016-10-27 11:34:11', '2016-11-11 16:50:20');
INSERT INTO `tp_dict` VALUES ('15', '1', 'C', 'testgp', '正常', '腰立辉', '腰立辉', '2016-09-13 23:17:10', '2016-09-13 23:17:10');
INSERT INTO `tp_dict` VALUES ('16', '2', 'B', 'testgp', '正常', '腰立辉', '腰立辉', '2016-09-13 23:17:18', '2016-09-13 23:17:18');
INSERT INTO `tp_dict` VALUES ('17', '3', 'OP', 'testgp', '正常', '腰立辉', '腰立辉', '2016-09-13 23:17:22', '2016-09-13 23:17:22');
INSERT INTO `tp_dict` VALUES ('18', '4', 'Auto', 'testgp', '正常', '腰立辉', '腰立辉', '2016-09-13 23:17:24', '2016-09-13 23:17:24');
INSERT INTO `tp_dict` VALUES ('29', '5', 'GD', 'testgp', '已搁置', '腰立辉', '腰立辉', '2016-09-25 13:18:52', '2016-09-25 13:18:52');
INSERT INTO `tp_dict` VALUES ('30', '1', '简要', 'ptype', '正常', '腰立辉', '腰立辉', '2016-09-16 22:23:30', null);
INSERT INTO `tp_dict` VALUES ('31', '2', '常规', 'ptype', '正常', '腰立辉', '腰立辉', '2016-09-16 22:23:48', '2016-09-16 22:23:48');
INSERT INTO `tp_dict` VALUES ('32', '1', '新项目', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:19:51', '2016-10-24 09:19:51');
INSERT INTO `tp_dict` VALUES ('33', '2', '升级版本', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:20:04', '2016-10-24 09:20:04');
INSERT INTO `tp_dict` VALUES ('34', '3', '临时修正程序', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:20:19', '2016-10-24 09:20:19');
INSERT INTO `tp_dict` VALUES ('35', '1', '紧急需求', 'reLevel', '正常', '腰立辉', '腰立辉', '2016-09-17 14:28:53', '2016-09-17 14:28:53');
INSERT INTO `tp_dict` VALUES ('36', '2', '一般需求', 'reLevel', '正常', '腰立辉', '腰立辉', '2016-09-17 14:28:44', '2016-09-17 14:28:44');
INSERT INTO `tp_dict` VALUES ('37', '1', '测试工程师', 'position', '正常', '腰立辉', '腰立辉', '2016-09-17 15:31:57', '2016-09-17 15:31:57');
INSERT INTO `tp_dict` VALUES ('38', '2', '初级测试工程师', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:01', '2016-09-17 15:32:01');
INSERT INTO `tp_dict` VALUES ('39', '3', '高级测试工程师', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:04', '2016-09-17 15:32:04');
INSERT INTO `tp_dict` VALUES ('40', '4', '测试经理', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:07', '2016-09-17 15:32:07');
INSERT INTO `tp_dict` VALUES ('41', '5', '高级测试经理', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:13', '2016-09-17 15:32:13');
INSERT INTO `tp_dict` VALUES ('42', '6', '质量总监', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:17', '2016-09-17 15:32:17');
INSERT INTO `tp_dict` VALUES ('43', '1', '无文档', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:09:39', '2016-09-17 16:09:39');
INSERT INTO `tp_dict` VALUES ('44', '2', '测试计划', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:08:42', '2016-09-17 16:08:42');
INSERT INTO `tp_dict` VALUES ('45', '3', '测试用例', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:08:55', '2016-09-17 16:08:55');
INSERT INTO `tp_dict` VALUES ('46', '4', 'BUG分析报告', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:09:28', '2016-09-17 16:09:28');
INSERT INTO `tp_dict` VALUES ('47', '5', '测试综合报告', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:09:23', '2016-09-17 16:09:23');
INSERT INTO `tp_dict` VALUES ('48', '1', '打开', 'rstate', '正常', '腰立辉', '腰立辉', '2016-09-17 16:18:15', null);
INSERT INTO `tp_dict` VALUES ('49', '2', '关闭', 'rstate', '正常', '腰立辉', '腰立辉', '2016-09-17 16:18:30', '2016-09-17 16:18:30');
INSERT INTO `tp_dict` VALUES ('50', '1', 'A', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 16:19:42', '2016-09-17 16:19:42');
INSERT INTO `tp_dict` VALUES ('51', '2', 'B', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 16:19:21', '2016-09-17 16:19:21');
INSERT INTO `tp_dict` VALUES ('52', '3', 'C', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 16:19:27', '2016-09-17 16:19:27');
INSERT INTO `tp_dict` VALUES ('53', '4', 'D', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 16:19:34', '2016-09-17 16:19:34');
INSERT INTO `tp_dict` VALUES ('54', '1', 'M', 'sceneType', '正常', '腰立辉', '腰立辉', '2016-09-23 21:11:13', '2016-09-23 21:11:13');
INSERT INTO `tp_dict` VALUES ('55', '2', 'A', 'sceneType', '正常', '腰立辉', '腰立辉', '2016-09-23 21:11:19', '2016-09-23 21:11:19');
INSERT INTO `tp_dict` VALUES ('56', '1', '未测试', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 16:22:01', null);
INSERT INTO `tp_dict` VALUES ('57', '2', '通过', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 16:22:33', '2016-10-10 16:22:33');
INSERT INTO `tp_dict` VALUES ('58', '3', '失败', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 16:22:39', '2016-10-10 16:22:39');
INSERT INTO `tp_dict` VALUES ('59', '4', '场景错', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 16:22:45', '2016-10-10 16:22:45');
INSERT INTO `tp_dict` VALUES ('60', '1', '操作', 'typeset', '正常', '腰立辉', '腰立辉', '2016-10-20 15:08:41', '2016-10-20 15:08:41');
INSERT INTO `tp_dict` VALUES ('61', '2', '检查', 'typeset', '正常', '腰立辉', '腰立辉', '2016-10-20 15:08:52', '2016-10-20 15:08:52');
INSERT INTO `tp_dict` VALUES ('62', '1', '待维护', 'dstate', '正常', '腰立辉', '腰立辉', '2016-10-20 16:21:49', '2016-10-20 16:21:49');
INSERT INTO `tp_dict` VALUES ('63', '2', '已完成', 'dstate', '正常', '腰立辉', '腰立辉', '2016-10-20 16:22:03', '2016-10-20 16:22:03');
INSERT INTO `tp_dict` VALUES ('64', '4', '功能优化', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:20:29', '2016-10-24 09:20:29');
INSERT INTO `tp_dict` VALUES ('65', '5', '性能优化', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:20:37', '2016-10-24 09:20:37');
INSERT INTO `tp_dict` VALUES ('66', '6', '用户体验优化', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:20:47', '2016-10-24 09:20:47');
INSERT INTO `tp_dict` VALUES ('67', '4', '已上线', 'prost', '正常', '腰立辉', '腰立辉', '2016-10-27 11:33:53', '2016-11-11 16:50:05');
INSERT INTO `tp_dict` VALUES ('68', '5', '已搁置', 'prost', '正常', '腰立辉', '腰立辉', '2016-11-09 14:21:09', '2016-11-11 16:50:15');

-- ----------------------------
-- Table structure for `tp_element`
-- ----------------------------
DROP TABLE IF EXISTS `tp_element`;
CREATE TABLE `tp_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `typeset` varchar(4) DEFAULT NULL,
  `control` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `ios` varchar(50) DEFAULT NULL,
  `android` varchar(50) DEFAULT NULL,
  `bytype` varchar(10) DEFAULT NULL,
  `form` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `data` varchar(50) DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10012 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_element
-- ----------------------------
INSERT INTO `tp_element` VALUES ('10000', '1', '操作', '用户名', '正常', '10000', null, null, null, null, null, null, 'num1', null, '腰立辉', '腰立辉', '2016-10-28 15:27:06', '2016-10-14 11:26:30');
INSERT INTO `tp_element` VALUES ('10004', '3', '操作', '【登录】', '正常', '10000', null, null, null, null, null, null, 'num3', null, '腰立辉', '腰立辉', '2016-10-20 16:57:27', '2016-10-20 16:57:27');
INSERT INTO `tp_element` VALUES ('10003', '2', '操作', '密码', '正常', '10000', null, null, null, null, null, null, 'num2', null, '腰立辉', '腰立辉', '2016-10-20 14:19:04', '2016-10-14 11:26:38');
INSERT INTO `tp_element` VALUES ('10005', '1', '操作', '用户名', '正常', '10116', null, null, null, null, null, null, 'num1', null, '腰立辉', '腰立辉', '2016-10-20 14:19:05', '2016-10-14 13:37:27');
INSERT INTO `tp_element` VALUES ('10006', '2', '操作', '密码', '正常', '10116', null, null, null, null, null, null, 'num2', null, '腰立辉', '腰立辉', '2016-10-20 14:19:05', '2016-10-14 13:37:33');
INSERT INTO `tp_element` VALUES ('10007', '3', '操作', '【登录】', '正常', '10116', null, null, null, null, null, null, 'num3', null, '腰立辉', '腰立辉', '2016-10-20 14:19:06', '2016-10-14 13:37:41');
INSERT INTO `tp_element` VALUES ('10008', '1', '操作', '【添加】', '正常', '10003', null, null, null, null, null, null, 'num1', null, '腰立辉', '腰立辉', '2016-10-20 14:19:07', '2016-10-20 14:07:13');
INSERT INTO `tp_element` VALUES ('10009', '2', '检查', '简称', '正常', '10003', null, null, null, null, null, null, 'num2', null, '腰立辉', '腰立辉', '2016-10-20 15:14:30', '2016-10-20 15:14:30');
INSERT INTO `tp_element` VALUES ('10010', '3', '操作', '名称', '正常', '10003', null, null, null, null, null, null, 'num3', null, '腰立辉', '腰立辉', '2016-10-20 14:19:09', '2016-10-20 14:07:31');
INSERT INTO `tp_element` VALUES ('10011', '4', '操作', '【提交】', '正常', '10003', null, null, null, null, null, null, 'num4', null, '腰立辉', '腰立辉', '2016-10-20 14:19:12', '2016-10-20 14:07:39');

-- ----------------------------
-- Table structure for `tp_exefunc`
-- ----------------------------
DROP TABLE IF EXISTS `tp_exefunc`;
CREATE TABLE `tp_exefunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `exesceneid` int(11) DEFAULT NULL,
  `funcid` int(50) DEFAULT NULL,
  `sysno` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `func` varchar(255) DEFAULT NULL,
  `funcremarks` varchar(200) DEFAULT NULL,
  `casemain` varchar(255) DEFAULT NULL,
  `caseexpected` varchar(255) DEFAULT NULL,
  `bugid` varchar(8) DEFAULT NULL,
  `result` varchar(50) DEFAULT '未测试',
  `remark` varchar(100) DEFAULT NULL,
  `num1` varchar(255) DEFAULT NULL,
  `num2` varchar(255) DEFAULT NULL,
  `num3` varchar(255) DEFAULT NULL,
  `num4` varchar(255) DEFAULT NULL,
  `num5` varchar(255) DEFAULT NULL,
  `num6` varchar(255) DEFAULT NULL,
  `num7` varchar(255) DEFAULT NULL,
  `num8` varchar(255) DEFAULT NULL,
  `num9` varchar(255) DEFAULT NULL,
  `num10` varchar(255) DEFAULT NULL,
  `num11` varchar(255) DEFAULT NULL,
  `num12` varchar(255) DEFAULT NULL,
  `num13` varchar(255) DEFAULT NULL,
  `num14` varchar(255) DEFAULT NULL,
  `num15` varchar(255) DEFAULT NULL,
  `num16` varchar(255) DEFAULT NULL,
  `num17` varchar(255) DEFAULT NULL,
  `num18` varchar(255) DEFAULT NULL,
  `num19` varchar(255) DEFAULT NULL,
  `num20` varchar(255) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10437 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_exefunc
-- ----------------------------
INSERT INTO `tp_exefunc` VALUES ('10174', '1', '10036', '10000', 'Auto.Access', '登陆模块', '登录', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:12:40', '2016-10-13 10:12:40');
INSERT INTO `tp_exefunc` VALUES ('10175', '2', '10036', '10001', 'Auto.Access', '登陆模块', '注销', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:16:07', '2016-10-13 10:16:07');
INSERT INTO `tp_exefunc` VALUES ('10176', '3', '10036', '10005', 'Auto.Access', '登陆模块', '改密', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:16:09', '2016-10-13 10:16:09');
INSERT INTO `tp_exefunc` VALUES ('10177', '1', '10037', '10002', 'Auto.Access', '产品库', '产品列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:45:09', '2016-10-13 10:45:09');
INSERT INTO `tp_exefunc` VALUES ('10178', '2', '10037', '10003', 'Auto.Access', '产品库', '产品-添加', null, null, null, null, '失败', '左侧切换列表过于繁琐，没有返回按钮', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:46:30', '2016-10-13 10:46:30');
INSERT INTO `tp_exefunc` VALUES ('10179', '3', '10037', '10004', 'Auto.Access', '产品库', '产品-编辑', null, null, null, null, '失败', '左侧切换列表过于繁琐，没有返回按钮', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:46:34', '2016-10-13 10:46:34');
INSERT INTO `tp_exefunc` VALUES ('10180', '4', '10037', '10006', 'Auto.Access', '产品库', '系统-入口', null, null, null, null, '失败', '没有返回按钮', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:47:00', '2016-10-13 10:47:00');
INSERT INTO `tp_exefunc` VALUES ('10181', '1', '10038', '10010', 'Auto.Access', '测试项目', '分组项目列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:20:35', '2016-10-13 10:20:35');
INSERT INTO `tp_exefunc` VALUES ('10182', '2', '10038', '10011', 'Auto.Access', '测试项目', '切换分组', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:20:40', '2016-10-13 10:20:40');
INSERT INTO `tp_exefunc` VALUES ('10183', '3', '10038', '10007', 'Auto.Access', '测试项目', '项目-添加', null, null, null, null, '通过', '产品建议默认“惠买车”，状态默认“进行中”', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:21:27', '2016-10-13 10:21:27');
INSERT INTO `tp_exefunc` VALUES ('10184', '4', '10038', '10008', 'Auto.Access', '测试项目', '项目-编辑', null, null, null, null, '通过', '建议锁死，产品和分组，不允许修改', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:22:53', '2016-10-13 10:22:53');
INSERT INTO `tp_exefunc` VALUES ('10045', '1', '10021', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10046', '2', '10021', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10047', '3', '10021', '10203', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10048', '4', '10021', '10204', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10049', '5', '10021', '10205', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10050', '6', '10021', '10206', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10051', '7', '10021', '10207', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10052', '8', '10021', '10208', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10053', '9', '10021', '10209', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10054', '10', '10021', '10210', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10055', '11', '10021', '10211', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10056', '1', '10022', '10212', 'OP.HmcDSCRM', '业务管理-价格收集管理', '城市买顾价格收集表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10057', '2', '10022', '10213', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按城市', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10058', '3', '10022', '10214', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按买顾', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10059', '4', '10022', '10215', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-买顾入口', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10060', '5', '10022', '10216', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-未报价车款入口', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10061', '6', '10022', '10217', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-价格过期车款入口', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10062', '7', '10022', '10218', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按选择城市', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10063', '8', '10022', '10219', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按车型车款', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10064', '9', '10022', '10220', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按价格状态', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10065', '1', '10023', '10221', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '车型价格列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:54', '2016-10-10 13:39:54');
INSERT INTO `tp_exefunc` VALUES ('10066', '2', '10023', '10222', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按选择城市', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:54', '2016-10-10 13:39:54');
INSERT INTO `tp_exefunc` VALUES ('10067', '3', '10023', '10223', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按价格状态', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:54', '2016-10-10 13:39:54');
INSERT INTO `tp_exefunc` VALUES ('10068', '4', '10023', '10224', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按车型车款', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:54', '2016-10-10 13:39:54');
INSERT INTO `tp_exefunc` VALUES ('10069', '5', '10023', '10225', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '添加价格信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:54', '2016-10-10 13:39:54');
INSERT INTO `tp_exefunc` VALUES ('10070', '6', '10023', '10226', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '设置显示列', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:54', '2016-10-10 13:39:54');
INSERT INTO `tp_exefunc` VALUES ('10071', '1', '10024', '10227', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '价格即将过期-车款列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10072', '2', '10024', '10228', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '提交报价入口', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10073', '3', '10024', '10229', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '价格新增车款-车款列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10074', '4', '10024', '10230', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '提交报价-入口', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10075', '5', '10024', '10231', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '报价列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10076', '6', '10024', '10232', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按价格状态', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10077', '7', '10024', '10233', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按车型车款', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10078', '8', '10024', '10234', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '添加价格信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10079', '9', '10024', '10235', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '设置显示列', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10080', '10', '10024', '10236', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '价格修改', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10081', '11', '10024', '10237', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '待确定价格-车款列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10082', '12', '10024', '10238', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '确认价格', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10083', '1', '10025', '10239', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '显示报价城市', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '曹玉芳', '2016-10-10 13:50:13', '2016-10-10 13:50:13');
INSERT INTO `tp_exefunc` VALUES ('10084', '2', '10025', '10240', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择品牌车型报价（NO车款）', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:07', '2016-10-10 13:40:07');
INSERT INTO `tp_exefunc` VALUES ('10085', '3', '10025', '10241', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择车款报价', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:07', '2016-10-10 13:40:07');
INSERT INTO `tp_exefunc` VALUES ('10086', '4', '10025', '10242', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠金额报价', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:07', '2016-10-10 13:40:07');
INSERT INTO `tp_exefunc` VALUES ('10087', '5', '10025', '10243', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠百分比报价', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:07', '2016-10-10 13:40:07');
INSERT INTO `tp_exefunc` VALUES ('10088', '6', '10025', '10244', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存报价', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:07', '2016-10-10 13:40:07');
INSERT INTO `tp_exefunc` VALUES ('10089', '7', '10025', '10245', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存并创建下一条', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:07', '2016-10-10 13:40:07');
INSERT INTO `tp_exefunc` VALUES ('10090', '3', '10026', '10206', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:03:05', '2016-10-10 16:03:05');
INSERT INTO `tp_exefunc` VALUES ('10091', '4', '10026', '10209', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', null, null, null, null, '失败', '提示请选择车型', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:04:03', '2016-10-10 16:04:03');
INSERT INTO `tp_exefunc` VALUES ('10092', '1', '10026', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', null, null, null, null, '通过', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:00:59', '2016-10-10 16:00:59');
INSERT INTO `tp_exefunc` VALUES ('10093', '2', '10026', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:02:51', '2016-10-10 16:02:51');
INSERT INTO `tp_exefunc` VALUES ('10094', '5', '10026', '10210', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', null, null, null, null, '失败', '翻页后，不修改内容直接关闭弹窗，无反应', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:07:18', '2016-10-10 16:07:18');
INSERT INTO `tp_exefunc` VALUES ('10095', '6', '10026', '10211', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', null, null, null, null, '失败', '翻页后，不修改内容直接关闭弹窗，无反应', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:07:26', '2016-10-10 16:07:26');
INSERT INTO `tp_exefunc` VALUES ('10096', '1', '10027', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:07:41', '2016-10-10 16:07:41');
INSERT INTO `tp_exefunc` VALUES ('10097', '2', '10027', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:07:43', '2016-10-10 16:07:43');
INSERT INTO `tp_exefunc` VALUES ('10098', '6', '10027', '10207', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', '', null, null, null, '失败', '不显示勾选，即便是单个修改也不显示', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:08:28', '2016-10-10 16:08:28');
INSERT INTO `tp_exefunc` VALUES ('10099', '7', '10027', '10208', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:36:19', '2016-10-10 16:36:19');
INSERT INTO `tp_exefunc` VALUES ('10100', '3', '10027', '10203', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:07:52', '2016-10-10 16:07:52');
INSERT INTO `tp_exefunc` VALUES ('10101', '4', '10027', '10204', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:07:54', '2016-10-10 16:07:54');
INSERT INTO `tp_exefunc` VALUES ('10102', '5', '10027', '10205', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:08:01', '2016-10-10 16:08:01');
INSERT INTO `tp_exefunc` VALUES ('10103', '1', '10028', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10104', '2', '10028', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10105', '3', '10028', '10203', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10106', '4', '10028', '10204', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10107', '5', '10028', '10205', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10108', '6', '10028', '10206', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10109', '7', '10028', '10207', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10110', '8', '10028', '10208', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10111', '9', '10028', '10209', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10112', '10', '10028', '10210', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10113', '11', '10028', '10211', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10114', '1', '10029', '10212', 'OP.HmcDSCRM', '业务管理-价格收集管理', '城市买顾价格收集表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10115', '2', '10029', '10213', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按城市', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10116', '3', '10029', '10214', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按买顾', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10117', '4', '10029', '10215', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-买顾入口', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10118', '5', '10029', '10216', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-未报价车款入口', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10119', '6', '10029', '10217', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-价格过期车款入口', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10120', '7', '10029', '10218', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按选择城市', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10121', '8', '10029', '10219', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按车型车款', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10122', '9', '10029', '10220', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按价格状态', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10123', '1', '10030', '10221', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '车型价格列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:31', '2016-10-10 13:40:31');
INSERT INTO `tp_exefunc` VALUES ('10124', '2', '10030', '10222', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按选择城市', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:31', '2016-10-10 13:40:31');
INSERT INTO `tp_exefunc` VALUES ('10125', '3', '10030', '10223', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按价格状态', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:31', '2016-10-10 13:40:31');
INSERT INTO `tp_exefunc` VALUES ('10126', '4', '10030', '10224', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按车型车款', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:31', '2016-10-10 13:40:31');
INSERT INTO `tp_exefunc` VALUES ('10127', '5', '10030', '10225', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '添加价格信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:31', '2016-10-10 13:40:31');
INSERT INTO `tp_exefunc` VALUES ('10128', '6', '10030', '10226', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '设置显示列', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:31', '2016-10-10 13:40:31');
INSERT INTO `tp_exefunc` VALUES ('10129', '1', '10031', '10227', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '价格即将过期-车款列表', null, null, null, null, '失败', '只显示已经过期从车库价格', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:32:33', '2016-10-10 17:32:33');
INSERT INTO `tp_exefunc` VALUES ('10130', '2', '10031', '10228', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '提交报价入口', null, null, null, null, '失败', '（未提BUG）没有带入经销商信息', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:34:05', '2016-10-10 17:34:05');
INSERT INTO `tp_exefunc` VALUES ('10131', '3', '10031', '10229', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '价格新增车款-车款列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:19:52', '2016-10-10 17:19:52');
INSERT INTO `tp_exefunc` VALUES ('10132', '4', '10031', '10230', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '提交报价-入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:20:07', '2016-10-10 17:20:07');
INSERT INTO `tp_exefunc` VALUES ('10133', '5', '10031', '10231', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '报价列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:34:17', '2016-10-10 17:34:17');
INSERT INTO `tp_exefunc` VALUES ('10134', '6', '10031', '10232', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按价格状态', null, null, null, null, '失败', '不起作用', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:40:20', '2016-10-10 17:40:20');
INSERT INTO `tp_exefunc` VALUES ('10135', '7', '10031', '10233', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按车型车款', null, null, null, null, '失败', '不起作用', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:40:23', '2016-10-10 17:40:23');
INSERT INTO `tp_exefunc` VALUES ('10136', '8', '10031', '10234', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '添加价格信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:41:03', '2016-10-10 17:41:03');
INSERT INTO `tp_exefunc` VALUES ('10137', '9', '10031', '10235', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '设置显示列', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:40:34', '2016-10-10 17:40:34');
INSERT INTO `tp_exefunc` VALUES ('10138', '10', '10031', '10236', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '价格修改', null, null, null, null, '失败', '有个请选择一个颜色的提示', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:44:37', '2016-10-10 17:44:37');
INSERT INTO `tp_exefunc` VALUES ('10139', '11', '10031', '10237', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '待确定价格-车款列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:33', '2016-10-10 13:40:33');
INSERT INTO `tp_exefunc` VALUES ('10140', '12', '10031', '10238', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '确认价格', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:33', '2016-10-10 13:40:33');
INSERT INTO `tp_exefunc` VALUES ('10141', '1', '10032', '10239', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '显示报价城市', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:45:14', '2016-10-10 17:45:14');
INSERT INTO `tp_exefunc` VALUES ('10142', '2', '10032', '10240', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择品牌车型报价（NO车款）', null, null, null, null, '失败', '不选车款，无法先经销商', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:50:17', '2016-10-10 17:50:17');
INSERT INTO `tp_exefunc` VALUES ('10143', '3', '10032', '10241', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择车款报价', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:45:34', '2016-10-10 17:45:34');
INSERT INTO `tp_exefunc` VALUES ('10144', '4', '10032', '10242', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠金额报价', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:45:31', '2016-10-10 17:45:31');
INSERT INTO `tp_exefunc` VALUES ('10145', '5', '10032', '10243', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠百分比报价', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:45:28', '2016-10-10 17:45:28');
INSERT INTO `tp_exefunc` VALUES ('10146', '6', '10032', '10244', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存报价', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:45:25', '2016-10-10 17:45:25');
INSERT INTO `tp_exefunc` VALUES ('10147', '7', '10032', '10245', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存并创建下一条', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:45:22', '2016-10-10 17:45:22');
INSERT INTO `tp_exefunc` VALUES ('10148', '1', '10033', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:55:42', '2016-10-10 16:55:42');
INSERT INTO `tp_exefunc` VALUES ('10149', '2', '10033', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:55:46', '2016-10-10 16:55:46');
INSERT INTO `tp_exefunc` VALUES ('10150', '3', '10033', '10203', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:55:49', '2016-10-10 16:55:49');
INSERT INTO `tp_exefunc` VALUES ('10151', '4', '10033', '10204', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:55:56', '2016-10-10 16:55:56');
INSERT INTO `tp_exefunc` VALUES ('10152', '5', '10033', '10205', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:55:59', '2016-10-10 16:55:59');
INSERT INTO `tp_exefunc` VALUES ('10153', '6', '10033', '10206', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:56:07', '2016-10-10 16:56:07');
INSERT INTO `tp_exefunc` VALUES ('10154', '7', '10033', '10207', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', null, null, null, null, '失败', '翻页后，不能直接关闭，修改成功后会跳转到首页', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:58:32', '2016-10-10 16:58:32');
INSERT INTO `tp_exefunc` VALUES ('10155', '8', '10033', '10208', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', null, null, null, null, '失败', '翻页后，不能直接关闭，修改成功后会跳转到首页', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:58:35', '2016-10-10 16:58:35');
INSERT INTO `tp_exefunc` VALUES ('10156', '9', '10033', '10209', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', null, null, null, null, '失败', '提示请选择车型', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:58:50', '2016-10-10 16:58:50');
INSERT INTO `tp_exefunc` VALUES ('10157', '10', '10033', '10210', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', null, null, null, null, '失败', '翻页后，不能直接关闭，修改成功后会跳转到首页', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:58:56', '2016-10-10 16:58:56');
INSERT INTO `tp_exefunc` VALUES ('10158', '11', '10033', '10211', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', null, null, null, null, '失败', '翻页后，不能直接关闭，修改成功后会跳转到首页', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:58:59', '2016-10-10 16:58:59');
INSERT INTO `tp_exefunc` VALUES ('10159', '1', '10034', '10212', 'OP.HmcDSCRM', '业务管理-价格收集管理', '城市买顾价格收集表', null, null, null, null, '失败', '有效价格率为负数', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:03:39', '2016-10-10 17:03:39');
INSERT INTO `tp_exefunc` VALUES ('10160', '2', '10034', '10213', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按城市', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:03:53', '2016-10-10 17:03:53');
INSERT INTO `tp_exefunc` VALUES ('10161', '3', '10034', '10214', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按买顾', null, null, null, null, '失败', '买顾没有按城市级联', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:04:07', '2016-10-10 17:04:07');
INSERT INTO `tp_exefunc` VALUES ('10162', '4', '10034', '10215', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-买顾入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:04:52', '2016-10-10 17:04:52');
INSERT INTO `tp_exefunc` VALUES ('10163', '5', '10034', '10216', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-未报价车款入口', null, null, null, null, '失败', '未带入查询条件', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:05:03', '2016-10-10 17:05:03');
INSERT INTO `tp_exefunc` VALUES ('10164', '6', '10034', '10217', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-价格过期车款入口', null, null, null, null, '失败', '未带入查询条件', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:57:28', '2016-10-10 16:57:28');
INSERT INTO `tp_exefunc` VALUES ('10165', '7', '10034', '10218', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按选择城市', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:05:09', '2016-10-10 17:05:09');
INSERT INTO `tp_exefunc` VALUES ('10166', '8', '10034', '10219', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按车型车款', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:05:12', '2016-10-10 17:05:12');
INSERT INTO `tp_exefunc` VALUES ('10167', '9', '10034', '10220', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按价格状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:05:15', '2016-10-10 17:05:15');
INSERT INTO `tp_exefunc` VALUES ('10168', '1', '10035', '10221', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '车型价格列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:55:04', '2016-10-10 16:55:04');
INSERT INTO `tp_exefunc` VALUES ('10169', '2', '10035', '10222', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按选择城市', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:06:56', '2016-10-10 17:06:56');
INSERT INTO `tp_exefunc` VALUES ('10170', '3', '10035', '10223', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按价格状态', null, null, null, null, '失败', '按已过期查询，查出两条未过期的数据', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:11:25', '2016-10-10 17:11:25');
INSERT INTO `tp_exefunc` VALUES ('10171', '4', '10035', '10224', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按车型车款', null, null, null, null, '失败', '选择的品牌车型，和查出的不一致', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:12:31', '2016-10-10 17:12:31');
INSERT INTO `tp_exefunc` VALUES ('10172', '5', '10035', '10225', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '添加价格信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:55:04', '2016-10-10 16:55:04');
INSERT INTO `tp_exefunc` VALUES ('10173', '6', '10035', '10226', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '设置显示列', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:56:39', '2016-10-10 16:56:39');
INSERT INTO `tp_exefunc` VALUES ('10185', '5', '10038', '10009', 'Auto.Access', '测试项目', '项目-详情', null, null, null, null, '失败', '需求类型用下拉框，给默认值，日期给默认值“项目结束时间”，简介区域用文本编辑器', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:37:24', '2016-10-13 10:37:24');
INSERT INTO `tp_exefunc` VALUES ('10186', '6', '10038', '10012', 'Auto.Access', '测试项目', '快速标记状态', null, null, null, null, '失败', '已完成后，再点无反应就行，不用给出提示', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:38:36', '2016-10-13 10:38:36');
INSERT INTO `tp_exefunc` VALUES ('10187', '7', '10038', '10013', 'Auto.Access', '测试项目', '项目-里程碑入口', null, null, null, null, '失败', '左侧列表过于繁琐，没有返回', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:40:10', '2016-10-13 10:40:10');
INSERT INTO `tp_exefunc` VALUES ('10188', '8', '10038', '10014', 'Auto.Access', '测试项目', '项目-风险入口', null, null, null, null, '失败', '暂无', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:40:37', '2016-10-13 10:40:37');
INSERT INTO `tp_exefunc` VALUES ('10189', '9', '10038', '10015', 'Auto.Access', '测试项目', '项目-系统入口', null, null, null, null, '失败', '无返回', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:41:12', '2016-10-13 10:41:12');
INSERT INTO `tp_exefunc` VALUES ('10190', '10', '10038', '10016', 'Auto.Access', '测试项目', '项目-功能点入口', null, null, null, null, '失败', '无返回，不能切换项目', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:41:49', '2016-10-13 10:41:49');
INSERT INTO `tp_exefunc` VALUES ('10191', '11', '10038', '10017', 'Auto.Access', '测试项目', '项目-范围入口', null, null, null, null, '失败', '无返回，不能切换项目', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:42:58', '2016-10-13 10:42:58');
INSERT INTO `tp_exefunc` VALUES ('10192', '12', '10038', '10018', 'Auto.Access', '测试项目', '项目-场景入口', null, null, null, null, '失败', '无返回，不能切换项目', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:43:40', '2016-10-13 10:43:40');
INSERT INTO `tp_exefunc` VALUES ('10193', '13', '10038', '10019', 'Auto.Access', '测试项目', '项目-控件库入口', null, null, null, null, '失败', '无返回', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:44:27', '2016-10-13 10:44:27');
INSERT INTO `tp_exefunc` VALUES ('10194', '14', '10038', '10020', 'Auto.Access', '测试项目', '项目-用例库入口', null, null, null, null, '失败', '无返回', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:44:51', '2016-10-13 10:44:51');
INSERT INTO `tp_exefunc` VALUES ('10195', '1', '10039', '10022', 'Auto.Access', '项目-里程碑', '里程碑列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-17 10:10:26', '2016-10-17 10:10:26');
INSERT INTO `tp_exefunc` VALUES ('10196', '2', '10039', '10023', 'Auto.Access', '项目-里程碑', '切换项目', null, null, null, null, '失败', '左侧切换列表过去复杂', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-17 10:11:04', '2016-10-17 10:11:04');
INSERT INTO `tp_exefunc` VALUES ('10197', '3', '10039', '10024', 'Auto.Access', '项目-里程碑', '里程碑-添加', null, null, null, null, '失败', '没有按照左右结构的模式展开，在添加是，看不到已有的内容', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-17 10:11:46', '2016-10-17 10:11:46');
INSERT INTO `tp_exefunc` VALUES ('10198', '4', '10039', '10025', 'Auto.Access', '项目-里程碑', '里程碑-修改', null, null, null, null, '失败', '阶段名称不对“测试计划”变成了“未测计划”，另外编辑时阶段名称不建议用下拉框，左侧列表过于复杂', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-17 10:13:57', '2016-10-17 10:13:57');
INSERT INTO `tp_exefunc` VALUES ('10199', '5', '10039', '10027', 'Auto.Access', '项目-里程碑', '快速标记状态', null, null, null, null, '失败', '已完成后的提示有些多余', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-17 10:18:27', '2016-10-17 10:18:27');
INSERT INTO `tp_exefunc` VALUES ('10200', '6', '10039', '10198', 'Auto.Access', '项目-里程碑', 'M人员-入口（手工）', null, null, null, null, '失败', '名字选其中之一即可', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-17 10:18:55', '2016-10-17 10:18:55');
INSERT INTO `tp_exefunc` VALUES ('10201', '7', '10039', '10026', 'Auto.Access', '项目-里程碑', 'A人员-入口（自动化）', null, null, null, null, '失败', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-17 10:18:31', '2016-10-17 10:18:31');
INSERT INTO `tp_exefunc` VALUES ('10205', '1', '10056', '10074', null, 'Access客户端-项目-里程碑-列队', '（M/A）人员列队场景列表', null, null, null, null, '失败', '后改的需求，未完成', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 09:20:00', '2016-10-25 09:20:00');
INSERT INTO `tp_exefunc` VALUES ('10206', '2', '10056', '10075', null, 'Access客户端-项目-里程碑-列队', '切换阶段人员', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-18 09:15:52', '2016-10-18 09:15:52');
INSERT INTO `tp_exefunc` VALUES ('10207', '3', '10056', '10076', null, 'Access客户端-项目-里程碑-列队', '场景库-入口', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-18 09:15:52', '2016-10-18 09:15:52');
INSERT INTO `tp_exefunc` VALUES ('10208', '4', '10056', '10077', null, 'Access客户端-项目-里程碑-列队', '场景功能-入口', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-18 09:15:52', '2016-10-18 09:15:52');
INSERT INTO `tp_exefunc` VALUES ('10209', '5', '10056', '10078', null, 'Access客户端-项目-里程碑-列队', '列队场景-编辑', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-18 09:15:52', '2016-10-18 09:15:52');
INSERT INTO `tp_exefunc` VALUES ('10210', '6', '10056', '10079', null, 'Access客户端-项目-里程碑-列队', '列队场景-移除', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-18 09:15:52', '2016-10-18 09:15:52');
INSERT INTO `tp_exefunc` VALUES ('10211', '1', '10057', '10028', null, 'Access客户端-项目-系统', '项目涉及系统列表', null, null, null, null, '失败', '没有进入下一级的路径和环境', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-19 09:51:01', '2016-10-19 09:51:01');
INSERT INTO `tp_exefunc` VALUES ('10212', '2', '10057', '10029', null, 'Access客户端-项目-系统', '待关联系统列表', null, null, null, null, '失败', '不必要有路径和环境（这两个列表搞反了）', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-19 09:51:41', '2016-10-19 09:51:41');
INSERT INTO `tp_exefunc` VALUES ('10213', '3', '10057', '10030', null, 'Access客户端-项目-系统', '关联系统到本项目', null, null, null, null, '失败', '不必要有弹窗，直接关联就好', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-19 09:52:22', '2016-10-19 09:52:22');
INSERT INTO `tp_exefunc` VALUES ('10214', '4', '10057', '10031', null, 'Access客户端-项目-系统', '待关联系统-添加', null, null, null, null, '失败', '没找到该功能', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-19 09:54:22', '2016-10-19 09:54:22');
INSERT INTO `tp_exefunc` VALUES ('10215', '5', '10057', '10032', null, 'Access客户端-项目-系统', '待关联系统-修改', null, null, null, null, '失败', '修改的提交按钮是“添加”', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-19 09:55:04', '2016-10-19 09:55:04');
INSERT INTO `tp_exefunc` VALUES ('10216', '6', '10057', '10033', null, 'Access客户端-项目-系统', '已关联系统-配置环境', null, null, null, null, '失败', '没找到', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-19 09:56:24', '2016-10-19 09:56:24');
INSERT INTO `tp_exefunc` VALUES ('10217', '7', '10057', '10034', null, 'Access客户端-项目-系统', '已关联系统-路径入口', null, null, null, null, '失败', '没找到', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-19 09:56:34', '2016-10-19 09:56:34');
INSERT INTO `tp_exefunc` VALUES ('10218', '8', '10057', '10035', null, 'Access客户端-项目-系统', '已关联系统-移除关联', null, null, null, null, '通过', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-19 09:52:40', '2016-10-19 09:52:40');
INSERT INTO `tp_exefunc` VALUES ('10219', '1', '10058', '10338', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:04:49', '2016-10-25 17:04:49');
INSERT INTO `tp_exefunc` VALUES ('10220', '2', '10058', '10339', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户手机', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:04:51', '2016-10-25 17:04:51');
INSERT INTO `tp_exefunc` VALUES ('10221', '3', '10058', '10340', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按订单编号', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:05:21', '2016-10-25 17:05:21');
INSERT INTO `tp_exefunc` VALUES ('10222', '4', '10058', '10341', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按媒体单号', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:02:25', '2016-10-25 17:02:25');
INSERT INTO `tp_exefunc` VALUES ('10223', '5', '10058', '10342', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按订单状态', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:02:25', '2016-10-25 17:02:25');
INSERT INTO `tp_exefunc` VALUES ('10224', '6', '10058', '10343', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按订单来源', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:02:25', '2016-10-25 17:02:25');
INSERT INTO `tp_exefunc` VALUES ('10225', '7', '10058', '10344', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按订单车型', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:02:25', '2016-10-25 17:02:25');
INSERT INTO `tp_exefunc` VALUES ('10226', '8', '10058', '10345', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按下单时间', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:02:25', '2016-10-25 17:02:25');
INSERT INTO `tp_exefunc` VALUES ('10227', '9', '10058', '10346', null, '惠买车电商CRM-订单管理-全部新车订单', '订单列表', null, null, null, null, '失败', '历史数据创建人为空，样式堆叠', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:05:55', '2016-10-25 17:05:55');
INSERT INTO `tp_exefunc` VALUES ('10228', '10', '10058', '10347', null, '惠买车电商CRM-订单管理-全部新车订单', '【客户手机号】客户跟进', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:02:25', '2016-10-25 17:02:25');
INSERT INTO `tp_exefunc` VALUES ('10229', '11', '10058', '10348', null, '惠买车电商CRM-订单管理-全部新车订单', '详情', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:02:25', '2016-10-25 17:02:25');
INSERT INTO `tp_exefunc` VALUES ('10230', '12', '10058', '10349', null, '惠买车电商CRM-订单管理-全部新车订单', '赠送随手礼', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:02:25', '2016-10-25 17:02:25');
INSERT INTO `tp_exefunc` VALUES ('10231', '13', '10058', '10350', null, '惠买车电商CRM-订单管理-全部新车订单', '跟进', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:02:25', '2016-10-25 17:02:25');
INSERT INTO `tp_exefunc` VALUES ('10232', '14', '10058', '10351', null, '惠买车电商CRM-订单管理-全部新车订单', '查看金融产品', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:02:25', '2016-10-25 17:02:25');
INSERT INTO `tp_exefunc` VALUES ('10233', '1', '10059', '10323', null, '惠买车电商CRM-任务管理-任务管理-跟进', '客户信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:03:41', '2016-10-25 17:03:41');
INSERT INTO `tp_exefunc` VALUES ('10234', '2', '10059', '10324', null, '惠买车电商CRM-任务管理-任务管理-跟进', '转移', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:02:36', '2016-10-25 17:02:36');
INSERT INTO `tp_exefunc` VALUES ('10235', '3', '10059', '10325', null, '惠买车电商CRM-任务管理-任务管理-跟进', '战败', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:02:36', '2016-10-25 17:02:36');
INSERT INTO `tp_exefunc` VALUES ('10236', '4', '10059', '10326', null, '惠买车电商CRM-任务管理-任务管理-跟进', '创建待办', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:03:55', '2016-10-25 17:03:55');
INSERT INTO `tp_exefunc` VALUES ('10237', '5', '10059', '10327', null, '惠买车电商CRM-任务管理-任务管理-跟进', '免打扰', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:02:36', '2016-10-25 17:02:36');
INSERT INTO `tp_exefunc` VALUES ('10238', '6', '10059', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', null, null, null, null, '失败', '没有提示，全部是禁用状态', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:04:19', '2016-10-25 17:04:19');
INSERT INTO `tp_exefunc` VALUES ('10239', '7', '10059', '10329', null, '惠买车电商CRM-任务管理-任务管理-跟进', '外出计划入口', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:02:36', '2016-10-25 17:02:36');
INSERT INTO `tp_exefunc` VALUES ('10240', '8', '10059', '10330', null, '惠买车电商CRM-任务管理-任务管理-跟进', '订单列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:04:25', '2016-10-25 17:04:25');
INSERT INTO `tp_exefunc` VALUES ('10241', '9', '10059', '10331', null, '惠买车电商CRM-任务管理-任务管理-跟进', '查看已绑定礼包', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:02:36', '2016-10-25 17:02:36');
INSERT INTO `tp_exefunc` VALUES ('10242', '10', '10059', '10332', null, '惠买车电商CRM-任务管理-任务管理-跟进', '查看金融产品', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:02:36', '2016-10-25 17:02:36');
INSERT INTO `tp_exefunc` VALUES ('10243', '11', '10059', '10333', null, '惠买车电商CRM-任务管理-任务管理-跟进', '跟进待办', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:04:34', '2016-10-25 17:04:34');
INSERT INTO `tp_exefunc` VALUES ('10244', '12', '10059', '10334', null, '惠买车电商CRM-任务管理-任务管理-跟进', '客户基本信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:04:36', '2016-10-25 17:04:36');
INSERT INTO `tp_exefunc` VALUES ('10245', '1', '10060', '10335', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:06:05', '2016-10-25 17:06:05');
INSERT INTO `tp_exefunc` VALUES ('10246', '2', '10060', '10336', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户姓名调整信息页', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:06:22', '2016-10-25 17:06:22');
INSERT INTO `tp_exefunc` VALUES ('10247', '3', '10060', '10337', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', null, null, null, null, '失败', '报500，提示少图片', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:06:46', '2016-10-25 17:06:46');
INSERT INTO `tp_exefunc` VALUES ('10248', '2', '10061', '10277', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '查询-按待办来源', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:31:47', '2016-10-25 17:31:47');
INSERT INTO `tp_exefunc` VALUES ('10249', '1', '10061', '10273', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '数量统计', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:28:46', '2016-10-25 17:28:46');
INSERT INTO `tp_exefunc` VALUES ('10250', '3', '10061', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:31:49', '2016-10-25 17:31:49');
INSERT INTO `tp_exefunc` VALUES ('10251', '4', '10061', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:31:52', '2016-10-25 17:31:52');
INSERT INTO `tp_exefunc` VALUES ('10252', '5', '10061', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:31:54', '2016-10-25 17:31:54');
INSERT INTO `tp_exefunc` VALUES ('10253', null, '10062', '10277', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '查询-按待办来源', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:32:14', '2016-10-25 17:32:14');
INSERT INTO `tp_exefunc` VALUES ('10254', null, '10062', '10273', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '数量统计', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:32:16', '2016-10-25 17:32:16');
INSERT INTO `tp_exefunc` VALUES ('10255', null, '10062', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:32:18', '2016-10-25 17:32:18');
INSERT INTO `tp_exefunc` VALUES ('10256', null, '10062', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:32:21', '2016-10-25 17:32:21');
INSERT INTO `tp_exefunc` VALUES ('10257', null, '10062', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:32:25', '2016-10-25 17:32:25');
INSERT INTO `tp_exefunc` VALUES ('10258', '6', '10062', '10335', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:32:27', '2016-10-25 17:32:27');
INSERT INTO `tp_exefunc` VALUES ('10259', '7', '10062', '10336', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户姓名调整信息页', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:32:30', '2016-10-25 17:32:30');
INSERT INTO `tp_exefunc` VALUES ('10260', '8', '10062', '10337', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:32:32', '2016-10-25 17:32:32');
INSERT INTO `tp_exefunc` VALUES ('10261', '9', '10062', '10389', null, '惠买车商家版-订单管理-成交确认', '查询-按客户手机', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:32:36', '2016-10-25 17:32:36');
INSERT INTO `tp_exefunc` VALUES ('10262', '10', '10062', '10396', null, '惠买车商家版-订单管理-成交确认', '订单列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:32:39', '2016-10-25 17:32:39');
INSERT INTO `tp_exefunc` VALUES ('10263', '11', '10062', '10398', null, '惠买车商家版-订单管理-成交确认', '确认成交', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:32:41', '2016-10-25 17:32:41');
INSERT INTO `tp_exefunc` VALUES ('10264', '12', '10062', '10338', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:32:43', '2016-10-25 17:32:43');
INSERT INTO `tp_exefunc` VALUES ('10265', '13', '10062', '10346', null, '惠买车电商CRM-订单管理-全部新车订单', '订单列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:32:45', '2016-10-25 17:32:45');
INSERT INTO `tp_exefunc` VALUES ('10266', null, '10063', '10277', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '查询-按待办来源', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:33:09', '2016-10-25 17:33:09');
INSERT INTO `tp_exefunc` VALUES ('10267', null, '10063', '10273', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '数量统计', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:33:11', '2016-10-25 17:33:11');
INSERT INTO `tp_exefunc` VALUES ('10268', null, '10063', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:33:13', '2016-10-25 17:33:13');
INSERT INTO `tp_exefunc` VALUES ('10269', null, '10063', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:33:16', '2016-10-25 17:33:15');
INSERT INTO `tp_exefunc` VALUES ('10270', null, '10063', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:33:18', '2016-10-25 17:33:18');
INSERT INTO `tp_exefunc` VALUES ('10271', '6', '10063', '10335', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:33:20', '2016-10-25 17:33:20');
INSERT INTO `tp_exefunc` VALUES ('10272', '7', '10063', '10336', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户姓名调整信息页', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:33:22', '2016-10-25 17:33:22');
INSERT INTO `tp_exefunc` VALUES ('10273', '8', '10063', '10337', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:33:24', '2016-10-25 17:33:24');
INSERT INTO `tp_exefunc` VALUES ('10274', '9', '10063', '10389', null, '惠买车商家版-订单管理-成交确认', '查询-按客户手机', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:33:27', '2016-10-25 17:33:27');
INSERT INTO `tp_exefunc` VALUES ('10275', '10', '10063', '10396', null, '惠买车商家版-订单管理-成交确认', '订单列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:33:29', '2016-10-25 17:33:29');
INSERT INTO `tp_exefunc` VALUES ('10276', '11', '10063', '10399', null, '惠买车商家版-订单管理-成交确认', '取消交易', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:33:31', '2016-10-25 17:33:31');
INSERT INTO `tp_exefunc` VALUES ('10277', '12', '10063', '10338', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:33:34', '2016-10-25 17:33:34');
INSERT INTO `tp_exefunc` VALUES ('10278', '13', '10063', '10346', null, '惠买车电商CRM-订单管理-全部新车订单', '订单列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:33:36', '2016-10-25 17:33:36');
INSERT INTO `tp_exefunc` VALUES ('10279', null, '10064', '10277', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '查询-按待办来源', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:03:14', '2016-10-26 10:03:14');
INSERT INTO `tp_exefunc` VALUES ('10280', null, '10064', '10273', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '数量统计', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:03:16', '2016-10-26 10:03:16');
INSERT INTO `tp_exefunc` VALUES ('10281', null, '10064', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:03:18', '2016-10-26 10:03:18');
INSERT INTO `tp_exefunc` VALUES ('10282', null, '10064', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:03:23', '2016-10-26 10:03:23');
INSERT INTO `tp_exefunc` VALUES ('10283', null, '10064', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:03:25', '2016-10-26 10:03:25');
INSERT INTO `tp_exefunc` VALUES ('10284', '6', '10064', '10335', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:03:29', '2016-10-26 10:03:29');
INSERT INTO `tp_exefunc` VALUES ('10285', '7', '10064', '10336', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户姓名调整信息页', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:03:32', '2016-10-26 10:03:32');
INSERT INTO `tp_exefunc` VALUES ('10286', '8', '10064', '10337', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', null, null, null, null, '失败', '优惠券未选择，没有提示，下拉菜单也打不开', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:04:11', '2016-10-26 10:04:11');
INSERT INTO `tp_exefunc` VALUES ('10287', '9', '10064', '10389', null, '惠买车商家版-订单管理-成交确认', '查询-按客户手机', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:43', '2016-10-26 10:02:43');
INSERT INTO `tp_exefunc` VALUES ('10288', '10', '10064', '10396', null, '惠买车商家版-订单管理-成交确认', '订单列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:43', '2016-10-26 10:02:43');
INSERT INTO `tp_exefunc` VALUES ('10289', '11', '10064', '10398', null, '惠买车商家版-订单管理-成交确认', '确认成交', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:43', '2016-10-26 10:02:43');
INSERT INTO `tp_exefunc` VALUES ('10290', '12', '10064', '10338', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:43', '2016-10-26 10:02:43');
INSERT INTO `tp_exefunc` VALUES ('10291', '13', '10064', '10346', null, '惠买车电商CRM-订单管理-全部新车订单', '订单列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:43', '2016-10-26 10:02:43');
INSERT INTO `tp_exefunc` VALUES ('10292', null, '10065', '10277', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '查询-按待办来源', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:45', '2016-10-26 10:02:45');
INSERT INTO `tp_exefunc` VALUES ('10293', null, '10065', '10273', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '数量统计', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:45', '2016-10-26 10:02:45');
INSERT INTO `tp_exefunc` VALUES ('10294', null, '10065', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:45', '2016-10-26 10:02:45');
INSERT INTO `tp_exefunc` VALUES ('10295', null, '10065', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:45', '2016-10-26 10:02:45');
INSERT INTO `tp_exefunc` VALUES ('10296', null, '10065', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:45', '2016-10-26 10:02:45');
INSERT INTO `tp_exefunc` VALUES ('10297', '6', '10065', '10335', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:45', '2016-10-26 10:02:45');
INSERT INTO `tp_exefunc` VALUES ('10298', '7', '10065', '10336', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户姓名调整信息页', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:45', '2016-10-26 10:02:45');
INSERT INTO `tp_exefunc` VALUES ('10299', '8', '10065', '10337', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:45', '2016-10-26 10:02:45');
INSERT INTO `tp_exefunc` VALUES ('10300', '9', '10065', '10389', null, '惠买车商家版-订单管理-成交确认', '查询-按客户手机', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:45', '2016-10-26 10:02:45');
INSERT INTO `tp_exefunc` VALUES ('10301', '10', '10065', '10396', null, '惠买车商家版-订单管理-成交确认', '订单列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:45', '2016-10-26 10:02:45');
INSERT INTO `tp_exefunc` VALUES ('10302', '11', '10065', '10399', null, '惠买车商家版-订单管理-成交确认', '取消交易', '', null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:45', '2016-10-26 10:02:45');
INSERT INTO `tp_exefunc` VALUES ('10303', '12', '10065', '10338', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:45', '2016-10-26 10:02:45');
INSERT INTO `tp_exefunc` VALUES ('10304', '13', '10065', '10346', null, '惠买车电商CRM-订单管理-全部新车订单', '订单列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:45', '2016-10-26 10:02:45');
INSERT INTO `tp_exefunc` VALUES ('10305', '1', '10066', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:40:54');
INSERT INTO `tp_exefunc` VALUES ('10306', '2', '10066', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:40:56');
INSERT INTO `tp_exefunc` VALUES ('10307', '3', '10066', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:40:58');
INSERT INTO `tp_exefunc` VALUES ('10308', '4', '10066', '10337', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '', null, null, null, '失败', '优惠券先车款显示出来，选择了适用车款倒不能选择了', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:41:47');
INSERT INTO `tp_exefunc` VALUES ('10309', '5', '10066', '10389', null, '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '', null, null, null, '失败', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:41:57');
INSERT INTO `tp_exefunc` VALUES ('10310', '6', '10066', '10396', null, '惠买车商家版-订单管理-成交确认', '订单列表', '', null, null, null, '失败', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:41:59');
INSERT INTO `tp_exefunc` VALUES ('10311', '7', '10066', '10398', null, '惠买车商家版-订单管理-成交确认', '确认成交', '', null, null, null, '失败', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:42:02');
INSERT INTO `tp_exefunc` VALUES ('10312', '8', '10066', '10338', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '', null, null, null, '失败', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:42:04');
INSERT INTO `tp_exefunc` VALUES ('10313', '9', '10066', '10346', null, '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '', null, null, null, '失败', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:42:06');
INSERT INTO `tp_exefunc` VALUES ('10314', '1', '10067', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:42:12');
INSERT INTO `tp_exefunc` VALUES ('10315', '2', '10067', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:42:14');
INSERT INTO `tp_exefunc` VALUES ('10316', '3', '10067', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:42:16');
INSERT INTO `tp_exefunc` VALUES ('10317', '4', '10067', '10337', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '', null, null, null, '失败', '优惠券先车款显示出来，选择了适用车款倒不能选择了', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:42:44');
INSERT INTO `tp_exefunc` VALUES ('10318', '5', '10067', '10389', null, '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '', null, null, null, '失败', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:42:25');
INSERT INTO `tp_exefunc` VALUES ('10319', '6', '10067', '10396', null, '惠买车商家版-订单管理-成交确认', '订单列表', '', null, null, null, '失败', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:42:49');
INSERT INTO `tp_exefunc` VALUES ('10320', '7', '10067', '10399', null, '惠买车商家版-订单管理-成交确认', '取消交易', '', null, null, null, '失败', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:42:47');
INSERT INTO `tp_exefunc` VALUES ('10321', '8', '10067', '10338', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '', null, null, null, '失败', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:42:52');
INSERT INTO `tp_exefunc` VALUES ('10322', '9', '10067', '10346', null, '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '', null, null, null, '失败', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:43:06');
INSERT INTO `tp_exefunc` VALUES ('10323', '1', '10068', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:43:58');
INSERT INTO `tp_exefunc` VALUES ('10324', '2', '10068', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:44:00');
INSERT INTO `tp_exefunc` VALUES ('10325', '3', '10068', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:44:02');
INSERT INTO `tp_exefunc` VALUES ('10326', '4', '10068', '10337', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:44:04');
INSERT INTO `tp_exefunc` VALUES ('10327', '5', '10068', '10389', null, '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:44:06');
INSERT INTO `tp_exefunc` VALUES ('10328', '6', '10068', '10396', null, '惠买车商家版-订单管理-成交确认', '订单列表', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:44:08');
INSERT INTO `tp_exefunc` VALUES ('10329', '7', '10068', '10398', null, '惠买车商家版-订单管理-成交确认', '确认成交', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:44:10');
INSERT INTO `tp_exefunc` VALUES ('10330', '8', '10068', '10338', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:44:12');
INSERT INTO `tp_exefunc` VALUES ('10331', '9', '10068', '10346', null, '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:44:13');
INSERT INTO `tp_exefunc` VALUES ('10332', '1', '10069', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:44:45');
INSERT INTO `tp_exefunc` VALUES ('10333', '2', '10069', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:44:46');
INSERT INTO `tp_exefunc` VALUES ('10334', '3', '10069', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:44:48');
INSERT INTO `tp_exefunc` VALUES ('10335', '4', '10069', '10337', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:44:50');
INSERT INTO `tp_exefunc` VALUES ('10336', '5', '10069', '10389', null, '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:44:52');
INSERT INTO `tp_exefunc` VALUES ('10337', '6', '10069', '10396', null, '惠买车商家版-订单管理-成交确认', '订单列表', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:44:55');
INSERT INTO `tp_exefunc` VALUES ('10338', '7', '10069', '10399', null, '惠买车商家版-订单管理-成交确认', '取消交易', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:44:56');
INSERT INTO `tp_exefunc` VALUES ('10339', '8', '10069', '10338', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:44:58');
INSERT INTO `tp_exefunc` VALUES ('10340', '9', '10069', '10346', null, '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:45:01');
INSERT INTO `tp_exefunc` VALUES ('10341', '1', '10070', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:55:25');
INSERT INTO `tp_exefunc` VALUES ('10342', '2', '10070', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:55:27');
INSERT INTO `tp_exefunc` VALUES ('10343', '3', '10070', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:55:29');
INSERT INTO `tp_exefunc` VALUES ('10344', '4', '10070', '10337', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:55:32');
INSERT INTO `tp_exefunc` VALUES ('10345', '5', '10070', '10389', null, '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:55:35');
INSERT INTO `tp_exefunc` VALUES ('10346', '6', '10070', '10396', null, '惠买车商家版-订单管理-成交确认', '订单列表', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:55:37');
INSERT INTO `tp_exefunc` VALUES ('10347', '7', '10070', '10398', null, '惠买车商家版-订单管理-成交确认', '确认成交', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:55:39');
INSERT INTO `tp_exefunc` VALUES ('10348', '8', '10070', '10338', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:55:40');
INSERT INTO `tp_exefunc` VALUES ('10349', '9', '10070', '10346', null, '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:55:42');
INSERT INTO `tp_exefunc` VALUES ('10350', '1', '10071', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:56:21');
INSERT INTO `tp_exefunc` VALUES ('10351', '2', '10071', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:56:23');
INSERT INTO `tp_exefunc` VALUES ('10352', '3', '10071', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:56:26');
INSERT INTO `tp_exefunc` VALUES ('10353', '4', '10071', '10337', null, '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:56:27');
INSERT INTO `tp_exefunc` VALUES ('10354', '5', '10071', '10389', null, '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:56:29');
INSERT INTO `tp_exefunc` VALUES ('10355', '6', '10071', '10396', null, '惠买车商家版-订单管理-成交确认', '订单列表', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:56:31');
INSERT INTO `tp_exefunc` VALUES ('10356', '7', '10071', '10399', null, '惠买车商家版-订单管理-成交确认', '取消交易', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:56:33');
INSERT INTO `tp_exefunc` VALUES ('10357', '8', '10071', '10338', null, '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:56:35');
INSERT INTO `tp_exefunc` VALUES ('10358', '9', '10071', '10346', null, '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '', null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:56:37');
INSERT INTO `tp_exefunc` VALUES ('10359', '1', '10072', '10000', null, 'Access客户端-登陆模块', '登录', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:26', '2016-11-04 09:29:04');
INSERT INTO `tp_exefunc` VALUES ('10360', '2', '10072', '10001', null, 'Access客户端-登陆模块', '注销', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:26', '2016-11-07 09:22:08');
INSERT INTO `tp_exefunc` VALUES ('10361', '3', '10072', '10005', null, 'Access客户端-登陆模块', '改密', null, null, null, null, '失败', '先判定两次不一致，再判定的原密码，不是先上后下的顺序判定的；没有返回，如果不修改就不能退出这个页面', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:26', '2016-11-07 09:24:51');
INSERT INTO `tp_exefunc` VALUES ('10362', '1', '10073', '10002', null, 'Access客户端-产品库', '产品列表', null, null, null, null, '失败', '作废的产品不用显示', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:28', '2016-11-07 09:39:29');
INSERT INTO `tp_exefunc` VALUES ('10363', '2', '10073', '10003', null, 'Access客户端-产品库', '产品-添加', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:28', '2016-11-07 09:43:21');
INSERT INTO `tp_exefunc` VALUES ('10364', '3', '10073', '10004', null, 'Access客户端-产品库', '产品-编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:28', '2016-11-07 09:43:24');
INSERT INTO `tp_exefunc` VALUES ('10365', '4', '10073', '10006', null, 'Access客户端-产品库', '系统-入口', null, null, null, null, '失败', '添加或修改系统，返回报错', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:28', '2016-11-07 09:45:46');
INSERT INTO `tp_exefunc` VALUES ('10366', '1', '10074', '10010', null, 'Access客户端-测试项目', '分组项目列表', null, null, null, null, '失败', '登录时选择的是C，跳转模块再回到项目列表就变成了自动化', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:31', '2016-11-07 09:47:45');
INSERT INTO `tp_exefunc` VALUES ('10367', '2', '10074', '10011', null, 'Access客户端-测试项目', '切换分组', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:31', '2016-11-07 09:47:50');
INSERT INTO `tp_exefunc` VALUES ('10368', '3', '10074', '10007', null, 'Access客户端-测试项目', '项目-添加', null, null, null, null, '失败', '产品没有给出默认值', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:31', '2016-11-07 09:48:15');
INSERT INTO `tp_exefunc` VALUES ('10369', '4', '10074', '10008', null, 'Access客户端-测试项目', '项目-编辑', null, null, null, null, '失败', '产品不允许修改', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:31', '2016-11-07 09:58:13');
INSERT INTO `tp_exefunc` VALUES ('10370', '5', '10074', '10009', null, 'Access客户端-测试项目', '项目-详情', null, null, null, null, '失败', '需求类型，按最新的上线通知书改', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:31', '2016-11-07 10:48:12');
INSERT INTO `tp_exefunc` VALUES ('10371', '6', '10074', '10012', null, 'Access客户端-测试项目', '快速标记状态', null, null, null, null, '失败', '完成后，不用给出状态，点击无反应即可', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:31', '2016-11-07 10:52:07');
INSERT INTO `tp_exefunc` VALUES ('10372', '7', '10074', '10013', null, 'Access客户端-测试项目', '项目-里程碑入口', null, null, null, null, '失败', '把多个返回合并成一个，放到明显的位置', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:31', '2016-11-07 11:05:24');
INSERT INTO `tp_exefunc` VALUES ('10373', '8', '10074', '10014', null, 'Access客户端-测试项目', '项目-风险入口', null, null, null, null, '失败', '无返回', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:31', '2016-11-07 10:54:47');
INSERT INTO `tp_exefunc` VALUES ('10374', '9', '10074', '10015', null, 'Access客户端-测试项目', '项目-系统入口', null, null, null, null, '失败', '无返回', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:31', '2016-11-07 10:58:17');
INSERT INTO `tp_exefunc` VALUES ('10375', '10', '10074', '10016', null, 'Access客户端-测试项目', '项目-功能点入口', null, null, null, null, '失败', '无返回', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:31', '2016-11-07 10:58:20');
INSERT INTO `tp_exefunc` VALUES ('10376', '11', '10074', '10017', null, 'Access客户端-测试项目', '项目-范围入口', null, null, null, null, '失败', '无返回', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:31', '2016-11-07 10:58:24');
INSERT INTO `tp_exefunc` VALUES ('10377', '12', '10074', '10018', null, 'Access客户端-测试项目', '项目-场景入口', null, null, null, null, '失败', '把多个返回合并成一个', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:31', '2016-11-07 10:56:47');
INSERT INTO `tp_exefunc` VALUES ('10378', '13', '10074', '10019', null, 'Access客户端-测试项目', '项目-控件库入口', null, null, null, null, '失败', '把多个返回合并成一个', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:31', '2016-11-07 10:57:16');
INSERT INTO `tp_exefunc` VALUES ('10379', '14', '10074', '10020', null, 'Access客户端-测试项目', '项目-用例库入口', null, null, null, null, '失败', '把多个返回合并成一个', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:31', '2016-11-07 10:57:20');
INSERT INTO `tp_exefunc` VALUES ('10380', '15', '10074', '10021', null, 'Access客户端-测试项目', '项目-报告入口', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:31', '2016-11-04 09:19:31');
INSERT INTO `tp_exefunc` VALUES ('10381', '1', '10075', '10022', null, 'Access客户端-项目-里程碑', '里程碑列表', null, null, null, null, '失败', '左侧列表，太繁琐，提供标识，切换功能即可', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:35', '2016-11-07 10:59:24');
INSERT INTO `tp_exefunc` VALUES ('10382', '2', '10075', '10023', null, 'Access客户端-项目-里程碑', '切换项目', null, null, null, null, '失败', '可以实现，建议用项目名称当链接', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:35', '2016-11-07 11:00:43');
INSERT INTO `tp_exefunc` VALUES ('10383', '3', '10075', '10024', null, 'Access客户端-项目-里程碑', '里程碑-添加', null, null, null, null, '失败', '没有按左右布局的形式实现', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:35', '2016-11-07 11:01:24');
INSERT INTO `tp_exefunc` VALUES ('10384', '4', '10075', '10025', null, 'Access客户端-项目-里程碑', '里程碑-修改', null, null, null, null, '失败', '按钮用“修改”即可；', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:35', '2016-11-07 11:09:57');
INSERT INTO `tp_exefunc` VALUES ('10385', '5', '10075', '10027', null, 'Access客户端-项目-里程碑', '快速标记状态', null, null, null, null, '失败', '完成后，无需再提示，无反应即可', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:35', '2016-11-07 11:10:26');
INSERT INTO `tp_exefunc` VALUES ('10386', '6', '10075', '10198', null, 'Access客户端-项目-里程碑', 'M人员-入口（手工）', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:35', '2016-11-04 09:19:35');
INSERT INTO `tp_exefunc` VALUES ('10387', '7', '10075', '10026', null, 'Access客户端-项目-里程碑', 'A人员-入口（自动化）', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:35', '2016-11-04 09:19:35');
INSERT INTO `tp_exefunc` VALUES ('10388', '1', '10076', '10074', null, 'Access客户端-项目-里程碑-列队', '（M/A）人员列队场景列表', null, null, null, null, '失败', '后修正的需求，未实现', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:49', '2016-11-07 14:27:25');
INSERT INTO `tp_exefunc` VALUES ('10389', '2', '10076', '10075', null, 'Access客户端-项目-里程碑-列队', '切换阶段人员', null, null, null, null, '失败', '建议用左侧列表的方式实现', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:49', '2016-11-07 14:27:54');
INSERT INTO `tp_exefunc` VALUES ('10390', '3', '10076', '10076', null, 'Access客户端-项目-里程碑-列队', '场景库-入口', null, null, null, null, '失败', '建议用跳转页面的方式展开，不要把所有功能集中到一个页面，在这里场景就不用刻意修改了', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:49', '2016-11-07 14:30:22');
INSERT INTO `tp_exefunc` VALUES ('10391', '4', '10076', '10077', null, 'Access客户端-项目-里程碑-列队', '场景功能-入口', null, null, null, null, '失败', '报错', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:49', '2016-11-07 14:31:10');
INSERT INTO `tp_exefunc` VALUES ('10392', '5', '10076', '10078', null, 'Access客户端-项目-里程碑-列队', '列队场景-编辑', null, null, null, null, '失败', '没有实现', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:49', '2016-11-07 14:31:25');
INSERT INTO `tp_exefunc` VALUES ('10393', '6', '10076', '10079', null, 'Access客户端-项目-里程碑-列队', '列队场景-移除', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:19:49', '2016-11-07 14:31:27');
INSERT INTO `tp_exefunc` VALUES ('10394', '1', '10077', '10084', null, 'Access客户端-项目-里程碑-列队-场景功能', '场景功能列表', null, null, null, null, '失败', '未实现', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:06', '2016-11-07 14:31:53');
INSERT INTO `tp_exefunc` VALUES ('10395', '2', '10077', '10085', null, 'Access客户端-项目-里程碑-列队-场景功能', '切换场景', null, null, null, null, '失败', '未实现', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:06', '2016-11-07 14:31:59');
INSERT INTO `tp_exefunc` VALUES ('10396', '3', '10077', '10086', null, 'Access客户端-项目-里程碑-列队-场景功能', '标记场景测试结果', null, null, null, null, '失败', '未实现', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:06', '2016-11-07 14:32:02');
INSERT INTO `tp_exefunc` VALUES ('10397', '1', '10078', '10028', null, 'Access客户端-项目-系统', '项目涉及系统列表', null, null, null, null, '失败', '不可以有待确认的，', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:11', '2016-11-07 11:17:20');
INSERT INTO `tp_exefunc` VALUES ('10398', '2', '10078', '10029', null, 'Access客户端-项目-系统', '待关联系统列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:11', '2016-11-07 11:15:19');
INSERT INTO `tp_exefunc` VALUES ('10399', '3', '10078', '10030', null, 'Access客户端-项目-系统', '关联系统到本项目', null, null, null, null, '失败', '待确认的系统不允许关联使用；不允许重复关联', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:11', '2016-11-07 11:14:22');
INSERT INTO `tp_exefunc` VALUES ('10400', '4', '10078', '10031', null, 'Access客户端-项目-系统', '待关联系统-添加', null, null, null, null, '失败', '添加页面还有添加，点击后，再返回报错', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:11', '2016-11-07 11:17:50');
INSERT INTO `tp_exefunc` VALUES ('10401', '5', '10078', '10032', null, 'Access客户端-项目-系统', '待关联系统-修改', null, null, null, null, '失败', '页面还有添加，点击后，再返回报错', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:11', '2016-11-07 11:18:14');
INSERT INTO `tp_exefunc` VALUES ('10402', '6', '10078', '10033', null, 'Access客户端-项目-系统', '已关联系统-配置环境', null, null, null, null, '失败', '环境只是修改数据。按钮名不可以用【添加】，两排无数个返回按钮', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:11', '2016-11-07 11:20:02');
INSERT INTO `tp_exefunc` VALUES ('10403', '7', '10078', '10034', null, 'Access客户端-项目-系统', '已关联系统-路径入口', null, null, null, null, '失败', '就叫“路径”就可以，如果做得精细一点可以统计出路径的个数', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:11', '2016-11-07 11:22:28');
INSERT INTO `tp_exefunc` VALUES ('10404', '8', '10078', '10035', null, 'Access客户端-项目-系统', '已关联系统-移除关联', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:11', '2016-11-07 11:21:03');
INSERT INTO `tp_exefunc` VALUES ('10405', '1', '10079', '10040', null, 'Access客户端-项目-系统路径', '系统路径列表', null, null, null, null, '失败', '左侧无数个返回按钮，留一个放到最明显是位置即可；右侧编号只留一个最主要的既可', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:15', '2016-11-07 11:25:25');
INSERT INTO `tp_exefunc` VALUES ('10406', '2', '10079', '10041', null, 'Access客户端-项目-系统路径', '切换关联系统', null, null, null, null, '通过', '切换列表过于繁琐，', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:15', '2016-11-07 11:26:25');
INSERT INTO `tp_exefunc` VALUES ('10407', '3', '10079', '10042', null, 'Access客户端-项目-系统路径', '路径-添加', null, null, null, null, '失败', '没有按左右布局；删除系统编号，无法排序', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:15', '2016-11-07 11:29:17');
INSERT INTO `tp_exefunc` VALUES ('10408', '4', '10079', '10043', null, 'Access客户端-项目-系统路径', '路径-修改', null, null, null, null, '失败', '左侧切换过于繁琐，左侧不能提供切换功能', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:15', '2016-11-07 11:31:11');
INSERT INTO `tp_exefunc` VALUES ('10409', '5', '10079', '10044', null, 'Access客户端-项目-系统路径', '路径-功能点入口', null, null, null, null, '失败', '进入后，返回有无数个', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:15', '2016-11-07 11:27:58');
INSERT INTO `tp_exefunc` VALUES ('10410', '1', '10080', '10045', null, 'Access客户端-项目-系统路径-功能点', '路径功能点列表', null, null, null, null, '失败', '左侧切换列表过于繁琐，合并成一列即可；只留一个返回按钮', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:22', '2016-11-07 11:38:10');
INSERT INTO `tp_exefunc` VALUES ('10411', '2', '10080', '10046', null, 'Access客户端-项目-系统路径-功能点', '切换路径', null, null, null, null, '失败', '切换链接，建议用路径名，也可以节省空间', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:22', '2016-11-07 11:40:17');
INSERT INTO `tp_exefunc` VALUES ('10412', '3', '10080', '10047', null, 'Access客户端-项目-系统路径-功能点', '功能点-添加（默认当前项目）', null, null, null, null, '失败', '没有按左右布局，添加成功后留在添加页面，以便继续添加', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:22', '2016-11-07 11:39:30');
INSERT INTO `tp_exefunc` VALUES ('10413', '4', '10080', '10048', null, 'Access客户端-项目-系统路径-功能点', '功能点-修改', null, null, null, null, '失败', '按钮名【修改】即可；左侧列表过于繁琐', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:22', '2016-11-07 11:41:23');
INSERT INTO `tp_exefunc` VALUES ('10414', '5', '10080', '10049', null, 'Access客户端-项目-系统路径-功能点', '功能点-用例入口', null, null, null, null, '失败', '没实现', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:22', '2016-11-07 11:42:29');
INSERT INTO `tp_exefunc` VALUES ('10415', '6', '10080', '10050', null, 'Access客户端-项目-系统路径-功能点', '功能点-规则入口', null, null, null, null, '失败', '没实现', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:22', '2016-11-07 11:42:23');
INSERT INTO `tp_exefunc` VALUES ('10416', '7', '10080', '10051', null, 'Access客户端-项目-系统路径-功能点', '快速标记当前项目', null, null, null, null, '失败', '没实现', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:22', '2016-11-07 11:42:16');
INSERT INTO `tp_exefunc` VALUES ('10417', '1', '10081', '10123', null, 'Access客户端-项目-场景', '项目-场景列表', null, null, null, null, '失败', '上下有两个添加按钮，不按SN排序', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:27', '2016-11-07 11:47:26');
INSERT INTO `tp_exefunc` VALUES ('10418', '2', '10081', '10124', null, 'Access客户端-项目-场景', '切换项目', null, null, null, null, '失败', '左侧列表过于繁琐，合并成一列即可，只留一个返回', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:27', '2016-11-07 11:44:36');
INSERT INTO `tp_exefunc` VALUES ('10419', '3', '10081', '10125', null, 'Access客户端-项目-场景', '场景-添加', null, null, null, null, '失败', '没有按左右布局；', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:27', '2016-11-07 11:48:27');
INSERT INTO `tp_exefunc` VALUES ('10420', '4', '10081', '10126', null, 'Access客户端-项目-场景', '场景-编辑', null, null, null, null, '失败', '没有按左右布局；SN不可以修改', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:27', '2016-11-07 11:48:22');
INSERT INTO `tp_exefunc` VALUES ('10421', '5', '10081', '10128', null, 'Access客户端-项目-场景', '场景-复制', null, null, null, null, '失败', '第一次复制，没有返回，第二次复制会添加两条', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:27', '2016-11-07 11:45:28');
INSERT INTO `tp_exefunc` VALUES ('10422', '6', '10081', '10127', null, 'Access客户端-项目-场景', '场景功能-入口', null, null, null, null, '失败', '无返回', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:27', '2016-11-07 11:50:13');
INSERT INTO `tp_exefunc` VALUES ('10423', '1', '10082', '10164', null, 'Access客户端-项目-控件库', '功能控件列表', null, null, null, null, '失败', '页面太过花哨，建议分几个页面来实现，不要把所有功能集中到一个页面', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:35', '2016-11-07 14:16:59');
INSERT INTO `tp_exefunc` VALUES ('10424', '2', '10082', '10165', null, 'Access客户端-项目-控件库', '切换功能', null, null, null, null, '失败', '功能列表太过繁琐，精简合并成一列，提供切换功能即可', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:35', '2016-11-07 14:17:42');
INSERT INTO `tp_exefunc` VALUES ('10425', '3', '10082', '10166', null, 'Access客户端-项目-控件库', '控件-添加', null, null, null, null, '失败', '左侧为功能下的控件列表，完全看不清楚我在哪个功能下添加控件', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:35', '2016-11-07 14:19:26');
INSERT INTO `tp_exefunc` VALUES ('10426', '4', '10082', '10167', null, 'Access客户端-项目-控件库', '控件-维护', null, null, null, null, '失败', '左侧控件列表太繁琐，精简成一列', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:35', '2016-11-07 14:20:23');
INSERT INTO `tp_exefunc` VALUES ('10427', '5', '10082', '10168', null, 'Access客户端-项目-控件库', '控件状态快速标记', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:35', '2016-11-07 14:21:56');
INSERT INTO `tp_exefunc` VALUES ('10428', '6', '10082', '10169', null, 'Access客户端-项目-控件库', '功能控件状态维护', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:35', '2016-11-07 14:22:11');
INSERT INTO `tp_exefunc` VALUES ('10429', '7', '10082', '10170', null, 'Access客户端-项目-控件库', '项目控件展开列表', null, null, null, null, '失败', '展开后，就不要有功能列表了，他的主分类是项目', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:35', '2016-11-07 14:22:50');
INSERT INTO `tp_exefunc` VALUES ('10430', '8', '10082', '10195', null, 'Access客户端-项目-控件库', '切换项目', null, null, null, null, '失败', '精简成一列', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:35', '2016-11-07 14:23:06');
INSERT INTO `tp_exefunc` VALUES ('10431', '9', '10082', '10171', null, 'Access客户端-项目-控件库', '控件展开列表-维护', null, null, null, null, '失败', '返回是想去哪去哪', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:35', '2016-11-07 14:24:07');
INSERT INTO `tp_exefunc` VALUES ('10432', '10', '10082', '10196', null, 'Access客户端-项目-控件库', '展开-控件状态快速标记', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:35', '2016-11-07 14:24:34');
INSERT INTO `tp_exefunc` VALUES ('10433', '11', '10082', '10197', null, 'Access客户端-项目-控件库', '展开-功能控件状态快速标记', null, null, null, null, '失败', '未实现', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 09:20:35', '2016-11-07 14:24:55');
INSERT INTO `tp_exefunc` VALUES ('10434', '1', '10083', '10000', null, 'Access客户端-登陆模块', '登录', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 10:15:14', '2016-11-04 10:15:14');
INSERT INTO `tp_exefunc` VALUES ('10435', '2', '10083', '10001', null, 'Access客户端-登陆模块', '注销', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 10:15:14', '2016-11-04 10:15:14');
INSERT INTO `tp_exefunc` VALUES ('10436', '3', '10083', '10005', null, 'Access客户端-登陆模块', '改密', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 10:15:14', '2016-11-04 10:15:14');

-- ----------------------------
-- Table structure for `tp_exescene`
-- ----------------------------
DROP TABLE IF EXISTS `tp_exescene`;
CREATE TABLE `tp_exescene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `type` varchar(8) DEFAULT 'Manual',
  `stagetesterid` int(11) DEFAULT NULL,
  `pathid` int(11) DEFAULT '0',
  `sceneid` int(11) DEFAULT '0',
  `level` smallint(1) DEFAULT NULL,
  `swho` varchar(20) DEFAULT NULL,
  `swhen` varchar(20) DEFAULT NULL,
  `scene` varchar(50) DEFAULT NULL,
  `results` varchar(5) DEFAULT '未测试',
  `flow` varchar(300) DEFAULT NULL,
  `testip` varchar(200) DEFAULT NULL,
  `isrunning` int(11) DEFAULT NULL,
  `testtime` timestamp NULL DEFAULT NULL,
  `runningip` varchar(20) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10084 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_exescene
-- ----------------------------
INSERT INTO `tp_exescene` VALUES ('10038', '3', 'M', '10016', '0', '10019', '2', '【功能】', '默认', '项目管理', '失败', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:47:20', '2016-10-13 10:47:20');
INSERT INTO `tp_exescene` VALUES ('10039', '4', 'M', '10016', '0', '10021', '2', '【功能】', '默认', '项目-里程碑', '失败', '里程碑下所有子功能', '', null, null, null, '腰立辉', '腰立辉', '2016-10-17 10:19:09', '2016-10-17 10:19:09');
INSERT INTO `tp_exescene` VALUES ('10036', '1', 'M', '10016', '0', '10017', '2', '【功能】', '默认', '登陆模块', '通过', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-28 15:45:51', '2016-10-13 10:45:57');
INSERT INTO `tp_exescene` VALUES ('10037', '2', 'M', '10016', '0', '10018', '2', '【功能】', '默认', '产品库-产品管理', '失败', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:47:12', '2016-10-13 10:47:12');
INSERT INTO `tp_exescene` VALUES ('10021', '1', 'M', '10027', '0', '10012', '2', '默认', '默认', '【功能】车型及报价员配置管理', '未测试', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exescene` VALUES ('10022', '2', 'M', '10027', '0', '10013', '2', '默认', '默认', '【功能】价格收集管理（业务管理）', '未测试', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exescene` VALUES ('10023', '3', 'M', '10027', '0', '10014', '2', '默认', '默认', '【功能】车型价格库', '未测试', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:54', '2016-10-10 13:39:54');
INSERT INTO `tp_exescene` VALUES ('10026', '1', 'M', '10028', '0', '10010', '2', '管理员', '默认', '添加TOP100车款', '失败', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:35:59', '2016-10-10 16:35:59');
INSERT INTO `tp_exescene` VALUES ('10027', '2', 'M', '10028', '0', '10011', '2', '管理员', '默认', '给TOP100车款批量配置电销和买顾', '通过', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:36:28', '2016-10-10 16:36:28');
INSERT INTO `tp_exescene` VALUES ('10033', '5', 'M', '10028', '0', '10012', '2', '默认', '默认', '【功能】车型及报价员配置管理', '失败', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:59:05', '2016-10-10 16:59:05');
INSERT INTO `tp_exescene` VALUES ('10034', '6', 'M', '10028', '0', '10013', '2', '默认', '默认', '【功能】价格收集管理（业务管理）', '失败', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:05:44', '2016-10-10 17:05:44');
INSERT INTO `tp_exescene` VALUES ('10035', '7', 'M', '10028', '0', '10014', '2', '默认', '默认', '【功能】车型价格库', '失败', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:12:42', '2016-10-10 17:12:42');
INSERT INTO `tp_exescene` VALUES ('10031', '6', 'M', '10028', '0', '10015', '2', '默认', '默认', '【功能】价格库存管理', '未配置电销', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:44:44', '2016-10-10 17:44:44');
INSERT INTO `tp_exescene` VALUES ('10032', '7', 'M', '10028', '0', '10016', '2', '默认', '默认', '【功能】库存价格收集', '失败', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:50:24', '2016-10-10 17:50:24');
INSERT INTO `tp_exescene` VALUES ('10056', '5', 'M', '10016', '10029', '0', '2', '【功能】', '默认', 'Access客户端-项目-里程碑-列队', '未测试', '“Access客户端-项目-里程碑-列队“下所有功能点', null, null, null, null, null, '腰立辉', '2016-10-18 09:15:52', '2016-10-18 09:15:52');
INSERT INTO `tp_exescene` VALUES ('10054', '1', 'M', '10030', '0', '10008', '2', '默认', '默认', '正常创建测试项目并制定里程碑选定测试系统', '未测试', '登录-建项目-建里程碑', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', null, null, null, '腰立辉', '腰立辉', '2016-10-17 15:59:38', '2016-10-17 15:59:38');
INSERT INTO `tp_exescene` VALUES ('10055', '2', 'M', '10030', '0', '10008', '2', '默认', '默认', '正常创建测试项目并制定里程碑选定测试系统', '未测试', '登录-建项目-建里程碑', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', null, null, null, '腰立辉', '腰立辉', '2016-10-17 15:59:42', '2016-10-17 15:59:42');
INSERT INTO `tp_exescene` VALUES ('10057', '6', 'M', '10016', '10003', '0', '2', '【功能】', '默认', 'Access客户端-项目-系统', '失败', '“Access客户端-项目-系统“下所有功能点', null, null, null, null, null, '腰立辉', '2016-10-19 09:56:43', '2016-10-19 09:56:43');
INSERT INTO `tp_exescene` VALUES ('10058', '1', 'M', '10033', '10052', '0', '2', '【功能】', '默认', '惠买车电商CRM-订单管理-全部新车订单', '失败', '“惠买车电商CRM-订单管理-全部新车订单“下所有功能点', null, null, null, null, null, '腰立辉', '2016-10-25 17:07:08', '2016-10-25 17:07:08');
INSERT INTO `tp_exescene` VALUES ('10059', '2', 'M', '10033', '10115', '0', '2', '【功能】', '默认', '惠买车电商CRM-任务管理-任务管理-跟进', '失败', '“惠买车电商CRM-任务管理-任务管理-跟进“下所有功能点', null, null, null, null, null, '腰立辉', '2016-10-25 17:07:21', '2016-10-25 17:07:21');
INSERT INTO `tp_exescene` VALUES ('10060', '3', 'M', '10033', '10116', '0', '2', '【功能】', '默认', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '失败', '“惠买车电商CRM-任务管理-任务管理-跟进-推送商家“下所有功能点', null, null, null, null, null, '腰立辉', '2016-10-25 17:06:59', '2016-10-25 17:06:59');
INSERT INTO `tp_exescene` VALUES ('10061', '1', 'M', '10034', '0', '10026', '2', '买顾', '客户未注册', '推送商家', '通过', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:32:01', '2016-10-25 17:32:01');
INSERT INTO `tp_exescene` VALUES ('10062', '2', 'M', '10034', '0', '10027', '2', '买顾', '客户已注册', '推送商家商家确认', '通过', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:32:52', '2016-10-25 17:32:52');
INSERT INTO `tp_exescene` VALUES ('10063', '3', 'M', '10034', '0', '10028', '2', '买顾', '客户已注册', '推送商家商家取消交易', '通过', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:34:03', '2016-10-25 17:34:03');
INSERT INTO `tp_exescene` VALUES ('10064', '4', 'M', '10034', '0', '10029', '2', '买顾', '客户已注册', '推送商家-使用优惠券-商家确认', '失败', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:04:38', '2016-10-26 10:04:38');
INSERT INTO `tp_exescene` VALUES ('10065', '5', 'M', '10034', '0', '10030', '2', '买顾', '客户已注册', '推送商家-使用优惠券-商家取消交易', '未测试', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:02:45', '2016-10-26 10:02:45');
INSERT INTO `tp_exescene` VALUES ('10066', '1', 'M', '10037', '0', '10031', '2', '买顾', '客户已注册', '推送商家-使用优惠券-商家确认', '失败', '', '', null, null, null, '腰立辉', '腰立辉', '2016-11-02 09:39:46', '2016-11-02 15:59:46');
INSERT INTO `tp_exescene` VALUES ('10067', '2', 'M', '10037', '0', '10032', '2', '买顾', '客户已注册', '推送商家-使用优惠券-商家取消交易', '失败', '', '', null, null, null, '腰立辉', '腰立辉', '2016-11-02 09:39:48', '2016-11-02 09:43:22');
INSERT INTO `tp_exescene` VALUES ('10068', '1', 'M', '10038', '0', '10031', '2', '买顾', '客户已注册', '推送商家-使用优惠券-商家确认', '通过', '', '', null, null, null, '腰立辉', '腰立辉', '2016-11-02 09:39:58', '2016-11-02 09:44:21');
INSERT INTO `tp_exescene` VALUES ('10069', '2', 'M', '10038', '0', '10032', '2', '买顾', '客户已注册', '推送商家-使用优惠券-商家取消交易', '通过', '', '', null, null, null, '腰立辉', '腰立辉', '2016-11-02 09:40:00', '2016-11-02 09:45:11');
INSERT INTO `tp_exescene` VALUES ('10070', '1', 'M', '10039', '0', '10031', '2', '买顾', '客户已注册', '推送商家-使用优惠券-商家确认', '通过', '', '', null, null, null, '腰立辉', '腰立辉', '2016-11-02 09:53:40', '2016-11-02 09:55:52');
INSERT INTO `tp_exescene` VALUES ('10071', '2', 'M', '10039', '0', '10032', '2', '买顾', '客户已注册', '推送商家-使用优惠券-商家取消交易', '通过', '', '', null, null, null, '腰立辉', '腰立辉', '2016-11-02 09:53:42', '2016-11-02 09:56:43');
INSERT INTO `tp_exescene` VALUES ('10072', '1', 'M', '10029', '10000', '0', '2', '【功能】', '默认', 'Access客户端-登陆模块', '失败', '“Access客户端-登陆模块“下所有功能点', null, null, '2016-11-07 09:24:03', '172.20.100.47', null, '腰立辉', null, '2016-11-07 09:24:03');
INSERT INTO `tp_exescene` VALUES ('10073', '2', 'M', '10029', '10001', '0', '2', '【功能】', '默认', 'Access客户端-产品库', '失败', '“Access客户端-产品库“下所有功能点', null, null, '2016-11-07 09:44:09', '172.20.100.47', null, '腰立辉', null, '2016-11-07 09:44:09');
INSERT INTO `tp_exescene` VALUES ('10074', '3', 'M', '10029', '10002', '0', '2', '【功能】', '默认', 'Access客户端-测试项目', '失败', '“Access客户端-测试项目“下所有功能点', null, null, '2016-11-07 10:57:32', '172.20.100.47', null, '腰立辉', null, '2016-11-07 10:57:32');
INSERT INTO `tp_exescene` VALUES ('10075', '4', 'M', '10029', '10028', '0', '2', '【功能】', '默认', 'Access客户端-项目-里程碑', '失败', '“Access客户端-项目-里程碑“下所有功能点', null, null, '2016-11-07 11:00:48', '172.20.100.47', null, '腰立辉', null, '2016-11-07 11:00:48');
INSERT INTO `tp_exescene` VALUES ('10076', '5', 'M', '10029', '10029', '0', '2', '【功能】', '默认', 'Access客户端-项目-里程碑-列队', '失败', '“Access客户端-项目-里程碑-列队“下所有功能点', null, null, '2016-11-07 14:31:31', '172.20.100.47', null, '腰立辉', null, '2016-11-07 14:31:31');
INSERT INTO `tp_exescene` VALUES ('10077', '6', 'M', '10029', '10032', '0', '2', '【功能】', '默认', 'Access客户端-项目-里程碑-列队-场景功能', '失败', '“Access客户端-项目-里程碑-列队-场景功能“下所有功能点', null, null, '2016-11-07 14:32:05', '172.20.100.47', null, '腰立辉', null, '2016-11-07 14:32:05');
INSERT INTO `tp_exescene` VALUES ('10078', '7', 'M', '10029', '10003', '0', '2', '【功能】', '默认', 'Access客户端-项目-系统', '失败', '“Access客户端-项目-系统“下所有功能点', null, null, '2016-11-07 11:22:48', '172.20.100.47', null, '腰立辉', null, '2016-11-07 11:22:48');
INSERT INTO `tp_exescene` VALUES ('10079', '8', 'M', '10029', '10004', '0', '2', '【功能】', '默认', 'Access客户端-项目-系统路径', '失败', '“Access客户端-项目-系统路径“下所有功能点', null, null, '2016-11-07 11:31:22', '172.20.100.47', null, '腰立辉', null, '2016-11-07 11:31:22');
INSERT INTO `tp_exescene` VALUES ('10080', '9', 'M', '10029', '10005', '0', '2', '【功能】', '默认', 'Access客户端-项目-系统路径-功能点', '失败', '“Access客户端-项目-系统路径-功能点“下所有功能点', null, null, '2016-11-07 11:42:38', '172.20.100.47', null, '腰立辉', null, '2016-11-07 11:42:38');
INSERT INTO `tp_exescene` VALUES ('10081', '10', 'M', '10029', '10017', '0', '2', '【功能】', '默认', 'Access客户端-项目-场景', '失败', '“Access客户端-项目-场景“下所有功能点', null, null, '2016-11-07 11:48:31', '172.20.100.47', null, '腰立辉', null, '2016-11-07 11:48:31');
INSERT INTO `tp_exescene` VALUES ('10082', '11', 'M', '10029', '10023', '0', '2', '【功能】', '默认', 'Access客户端-项目-控件库', '失败', '“Access客户端-项目-控件库“下所有功能点', null, null, '2016-11-07 14:25:18', '172.20.100.47', null, '腰立辉', null, '2016-11-07 14:25:18');
INSERT INTO `tp_exescene` VALUES ('10083', '3', 'M', '10030', '10000', '0', '2', '【功能】', '默认', 'Access客户端-登陆模块', '未测试', '“Access客户端-登陆模块“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-11-04 10:15:14', '2016-11-04 10:15:14');

-- ----------------------------
-- Table structure for `tp_func`
-- ----------------------------
DROP TABLE IF EXISTS `tp_func`;
CREATE TABLE `tp_func` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `func` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `pathid` int(11) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `result` varchar(5) DEFAULT '未测试',
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10401 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_func
-- ----------------------------
INSERT INTO `tp_func` VALUES ('10000', '1', '登录', '正常', '10000', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:02', '2016-09-22 10:45:46');
INSERT INTO `tp_func` VALUES ('10001', '2', '注销', '正常', '10000', '49', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:04', '2016-09-24 22:17:12');
INSERT INTO `tp_func` VALUES ('10002', '1', '产品列表', '正常', '10001', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 15:47:57', '2016-11-07 09:39:29');
INSERT INTO `tp_func` VALUES ('10003', '2', '产品-添加', '正常', '10001', '45', '通过', '腰立辉', '腰立辉', '2016-10-25 09:08:05', '2016-11-07 10:30:30');
INSERT INTO `tp_func` VALUES ('10004', '3', '产品-编辑', '正常', '10001', '45', '通过', '腰立辉', '腰立辉', '2016-10-25 09:08:06', '2016-11-07 10:30:39');
INSERT INTO `tp_func` VALUES ('10005', '3', '改密', '已搁置', '10000', '24', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:07', '2016-11-07 09:24:51');
INSERT INTO `tp_func` VALUES ('10006', '4', '系统-入口', '正常', '10001', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:08', '2016-11-07 09:45:46');
INSERT INTO `tp_func` VALUES ('10007', '3', '项目-添加', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 15:57:07', '2016-11-07 09:48:15');
INSERT INTO `tp_func` VALUES ('10008', '4', '项目-编辑', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 15:57:17', '2016-11-07 09:58:13');
INSERT INTO `tp_func` VALUES ('10009', '5', '项目-详情', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:10', '2016-11-07 10:48:12');
INSERT INTO `tp_func` VALUES ('10010', '1', '分组项目列表', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 15:57:28', '2016-11-07 09:47:45');
INSERT INTO `tp_func` VALUES ('10011', '2', '切换分组', '正常', '10002', '45', '通过', '腰立辉', '腰立辉', '2016-10-24 15:57:33', '2016-10-24 15:57:33');
INSERT INTO `tp_func` VALUES ('10012', '6', '快速标记状态', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:11', '2016-11-07 10:52:07');
INSERT INTO `tp_func` VALUES ('10013', '7', '项目-里程碑入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:12', '2016-11-07 11:05:24');
INSERT INTO `tp_func` VALUES ('10014', '8', '项目-风险入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:13', '2016-11-07 10:54:47');
INSERT INTO `tp_func` VALUES ('10015', '9', '项目-系统入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:14', '2016-11-07 10:58:17');
INSERT INTO `tp_func` VALUES ('10016', '10', '项目-功能点入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:15', '2016-11-07 10:58:20');
INSERT INTO `tp_func` VALUES ('10017', '11', '项目-范围入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:16', '2016-11-07 10:58:24');
INSERT INTO `tp_func` VALUES ('10018', '12', '项目-场景入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:17', '2016-11-07 10:56:47');
INSERT INTO `tp_func` VALUES ('10019', '13', '项目-控件库入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:19', '2016-11-07 10:57:16');
INSERT INTO `tp_func` VALUES ('10020', '14', '项目-用例库入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:20', '2016-11-07 10:57:20');
INSERT INTO `tp_func` VALUES ('10021', '15', '项目-报告入口', '已搁置', '10002', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:22', '2016-09-22 17:46:11');
INSERT INTO `tp_func` VALUES ('10022', '1', '里程碑列表', '正常', '10028', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 15:57:57', '2016-11-07 10:59:24');
INSERT INTO `tp_func` VALUES ('10023', '2', '切换项目', '正常', '10028', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 16:03:31', '2016-11-07 11:00:43');
INSERT INTO `tp_func` VALUES ('10024', '3', '里程碑-添加', '正常', '10028', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:23', '2016-11-07 11:01:24');
INSERT INTO `tp_func` VALUES ('10025', '4', '里程碑-修改', '正常', '10028', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:24', '2016-11-07 11:09:57');
INSERT INTO `tp_func` VALUES ('10026', '7', 'A人员-入口（自动化）', '正常', '10028', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:26', '2016-09-25 13:36:43');
INSERT INTO `tp_func` VALUES ('10027', '5', '快速标记状态', '正常', '10028', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:27', '2016-11-07 11:10:26');
INSERT INTO `tp_func` VALUES ('10028', '1', '项目涉及系统列表', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:29', '2016-11-07 11:17:20');
INSERT INTO `tp_func` VALUES ('10029', '2', '待关联系统列表', '正常', '10003', '45', '通过', '腰立辉', '腰立辉', '2016-10-25 09:08:30', '2016-11-07 14:33:57');
INSERT INTO `tp_func` VALUES ('10030', '3', '关联系统到本项目', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:32', '2016-11-07 11:14:22');
INSERT INTO `tp_func` VALUES ('10031', '4', '待关联系统-添加', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:33', '2016-11-07 11:17:50');
INSERT INTO `tp_func` VALUES ('10032', '5', '待关联系统-修改', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:34', '2016-11-07 11:18:14');
INSERT INTO `tp_func` VALUES ('10033', '6', '已关联系统-配置环境', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:35', '2016-11-07 11:20:02');
INSERT INTO `tp_func` VALUES ('10034', '7', '已关联系统-路径入口', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:36', '2016-11-07 11:22:28');
INSERT INTO `tp_func` VALUES ('10035', '8', '已关联系统-移除关联', '正常', '10003', '45', '通过', '腰立辉', '腰立辉', '2016-10-24 15:58:27', '2016-10-24 15:58:27');
INSERT INTO `tp_func` VALUES ('10036', '1', '项目风险列表', '正常', '10030', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:46', '2016-09-22 17:52:20');
INSERT INTO `tp_func` VALUES ('10037', '2', '切换项目', '正常', '10030', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:47', '2016-09-22 17:52:27');
INSERT INTO `tp_func` VALUES ('10038', '3', '风险-添加', '正常', '10030', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:48', '2016-09-22 17:52:43');
INSERT INTO `tp_func` VALUES ('10039', '4', '风险-维护', '正常', '10030', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:49', '2016-09-22 17:52:59');
INSERT INTO `tp_func` VALUES ('10040', '1', '系统路径列表', '正常', '10004', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:50', '2016-11-07 11:25:25');
INSERT INTO `tp_func` VALUES ('10041', '2', '切换关联系统', '正常', '10004', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:51', '2016-11-07 11:26:22');
INSERT INTO `tp_func` VALUES ('10042', '3', '路径-添加', '正常', '10004', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:52', '2016-11-07 11:29:17');
INSERT INTO `tp_func` VALUES ('10043', '4', '路径-修改', '正常', '10004', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:53', '2016-11-07 11:31:11');
INSERT INTO `tp_func` VALUES ('10044', '5', '路径-功能点入口', '正常', '10004', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:54', '2016-11-07 11:27:58');
INSERT INTO `tp_func` VALUES ('10045', '1', '路径功能点列表', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:56', '2016-11-07 11:38:10');
INSERT INTO `tp_func` VALUES ('10046', '2', '切换路径', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:57', '2016-11-07 11:40:17');
INSERT INTO `tp_func` VALUES ('10047', '3', '功能点-添加（默认当前项目）', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:58', '2016-11-07 11:39:30');
INSERT INTO `tp_func` VALUES ('10048', '4', '功能点-修改', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:59', '2016-11-07 11:41:23');
INSERT INTO `tp_func` VALUES ('10049', '5', '功能点-用例入口', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:09:00', '2016-11-07 11:42:29');
INSERT INTO `tp_func` VALUES ('10050', '6', '功能点-规则入口', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:09:01', '2016-11-07 11:42:23');
INSERT INTO `tp_func` VALUES ('10051', '7', '快速标记当前项目', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:09:02', '2016-11-07 11:42:16');
INSERT INTO `tp_func` VALUES ('10052', '1', '功能点用例列表', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:03', '2016-09-22 17:58:03');
INSERT INTO `tp_func` VALUES ('10053', '2', '切换功能点', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:05', '2016-09-22 17:58:13');
INSERT INTO `tp_func` VALUES ('10054', '3', '用例-添加', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:06', '2016-09-22 17:58:30');
INSERT INTO `tp_func` VALUES ('10055', '4', '用例-维护', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:07', '2016-09-22 17:58:37');
INSERT INTO `tp_func` VALUES ('10056', '5', '快速标记当前项目', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:08', '2016-09-22 17:59:13');
INSERT INTO `tp_func` VALUES ('10057', '6', '数据模板-编辑', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:09', '2016-09-23 13:40:21');
INSERT INTO `tp_func` VALUES ('10058', '1', '功能点规则列表', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:10', '2016-09-22 17:59:51');
INSERT INTO `tp_func` VALUES ('10059', '2', '切换功能点', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:12', '2016-09-22 18:00:04');
INSERT INTO `tp_func` VALUES ('10060', '3', '规则-添加', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:13', '2016-09-22 18:00:15');
INSERT INTO `tp_func` VALUES ('10061', '4', '规则-修改', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:14', '2016-09-22 18:00:27');
INSERT INTO `tp_func` VALUES ('10062', '5', '来源-维护', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:15', '2016-09-22 18:00:45');
INSERT INTO `tp_func` VALUES ('10063', '6', '快速标记当前项目', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:17', '2016-09-22 18:00:58');
INSERT INTO `tp_func` VALUES ('10064', '1', '项目-功能点列表', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:19', '2016-09-22 18:01:32');
INSERT INTO `tp_func` VALUES ('10065', '2', '切换项目', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:55', '2016-09-22 18:01:41');
INSERT INTO `tp_func` VALUES ('10066', '3', '添加路径', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:55', '2016-09-22 18:02:05');
INSERT INTO `tp_func` VALUES ('10067', '4', '维护路径', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:56', '2016-09-22 18:02:13');
INSERT INTO `tp_func` VALUES ('10068', '5', '添加功能点', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:57', '2016-09-22 18:02:20');
INSERT INTO `tp_func` VALUES ('10069', '6', '维护功能点', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:58', '2016-09-22 18:02:27');
INSERT INTO `tp_func` VALUES ('10070', '7', '快速标记当前项目', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:59', '2016-09-22 18:02:34');
INSERT INTO `tp_func` VALUES ('10071', '8', '功能点-用例入口', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:00', '2016-09-23 13:32:47');
INSERT INTO `tp_func` VALUES ('10072', '9', '功能点-规则入口', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:02', '2016-09-22 18:03:07');
INSERT INTO `tp_func` VALUES ('10073', '10', '功能点-模板入口', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:03', '2016-09-23 13:32:57');
INSERT INTO `tp_func` VALUES ('10074', '1', '（M/A）人员列队场景列表', '正常', '10029', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:20:00', '2016-11-07 14:27:25');
INSERT INTO `tp_func` VALUES ('10075', '2', '切换阶段人员', '正常', '10029', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:05', '2016-11-07 14:27:54');
INSERT INTO `tp_func` VALUES ('10076', '3', '场景库-入口', '正常', '10029', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:05', '2016-11-07 14:30:22');
INSERT INTO `tp_func` VALUES ('10077', '4', '场景功能-入口', '正常', '10029', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:06', '2016-11-07 14:31:10');
INSERT INTO `tp_func` VALUES ('10078', '5', '列队场景-编辑', '正常', '10029', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:07', '2016-11-07 14:31:25');
INSERT INTO `tp_func` VALUES ('10079', '6', '列队场景-移除', '正常', '10029', '45', '通过', '腰立辉', '腰立辉', '2016-10-25 09:11:08', '2016-11-07 14:33:32');
INSERT INTO `tp_func` VALUES ('10080', '1', '已分派场景列表', '已搁置', '10031', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:09', '2016-09-24 15:15:08');
INSERT INTO `tp_func` VALUES ('10081', '2', '切换测试人员', '已搁置', '10031', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:10', '2016-09-24 15:15:43');
INSERT INTO `tp_func` VALUES ('10082', '3', '待分派场景列表（含次数）', '已搁置', '10031', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:11', '2016-09-23 09:57:09');
INSERT INTO `tp_func` VALUES ('10083', '4', '场景分派', '正常', '10031', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:13', '2016-09-23 09:56:52');
INSERT INTO `tp_func` VALUES ('10084', '1', '场景功能列表', '正常', '10032', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:14', '2016-11-07 14:31:53');
INSERT INTO `tp_func` VALUES ('10085', '2', '切换场景', '正常', '10032', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:15', '2016-11-07 14:31:59');
INSERT INTO `tp_func` VALUES ('10086', '3', '标记场景测试结果', '正常', '10032', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:16', '2016-11-07 14:32:02');
INSERT INTO `tp_func` VALUES ('10115', '1', '功能点-控件列表', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:17', '2016-09-23 10:56:43');
INSERT INTO `tp_func` VALUES ('10116', '2', '控件-添加', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:18', '2016-09-23 10:54:55');
INSERT INTO `tp_func` VALUES ('10117', '3', '控件-维护', '正常', '10033', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:19', '2016-09-23 10:52:35');
INSERT INTO `tp_func` VALUES ('10118', '4', '功能点-数据模板列表', '正常', '10033', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:20', '2016-09-23 10:52:57');
INSERT INTO `tp_func` VALUES ('10119', '5', '标记-数据状态', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:21', '2016-09-23 11:01:05');
INSERT INTO `tp_func` VALUES ('10120', '6', '模板数据-清除', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:22', '2016-09-23 15:11:00');
INSERT INTO `tp_func` VALUES ('10121', '7', '模板数据-维护（更多）', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:23', '2016-09-23 15:11:07');
INSERT INTO `tp_func` VALUES ('10122', '8', '编写用例入口', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:24', '2016-09-23 11:02:11');
INSERT INTO `tp_func` VALUES ('10123', '1', '项目-场景列表', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:25', '2016-11-07 11:47:26');
INSERT INTO `tp_func` VALUES ('10124', '2', '切换项目', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:26', '2016-11-07 11:44:36');
INSERT INTO `tp_func` VALUES ('10099', '1', '项目-测试范围列表', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:27', '2016-09-23 10:07:01');
INSERT INTO `tp_func` VALUES ('10100', '2', '功能点-编辑', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:28', '2016-09-23 10:07:27');
INSERT INTO `tp_func` VALUES ('10101', '3', '范围-用例入口', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:29', '2016-09-23 10:08:56');
INSERT INTO `tp_func` VALUES ('10102', '4', '范围-规则入口', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:30', '2016-09-23 10:09:08');
INSERT INTO `tp_func` VALUES ('10103', '5', '范围-数据模板入口', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:32', '2016-09-23 10:10:18');
INSERT INTO `tp_func` VALUES ('10104', '1', '执行阶段场景列队', '正常', '10024', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:37', '2016-09-23 10:12:05');
INSERT INTO `tp_func` VALUES ('10105', '2', '切换阶段', '正常', '10024', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:39', '2016-09-23 10:12:27');
INSERT INTO `tp_func` VALUES ('10106', '3', '执行测试-入口', '正常', '10024', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:40', '2016-09-23 10:12:49');
INSERT INTO `tp_func` VALUES ('10107', '1', '执行场景功能点列表', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:41', '2016-09-23 10:18:35');
INSERT INTO `tp_func` VALUES ('10108', '2', '切换执行场景', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:43', '2016-09-23 10:18:44');
INSERT INTO `tp_func` VALUES ('10109', '3', '测试结果-标记通过', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:44', '2016-09-23 10:20:21');
INSERT INTO `tp_func` VALUES ('10110', '4', '测试结果-标记失败（说明）', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:45', '2016-09-23 10:23:12');
INSERT INTO `tp_func` VALUES ('10111', '5', '测试结果-重置', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:46', '2016-09-23 10:21:06');
INSERT INTO `tp_func` VALUES ('10112', '6', '用例库-入口', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:47', '2016-09-23 10:22:30');
INSERT INTO `tp_func` VALUES ('10113', '7', '规则-入口', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:50', '2016-09-23 10:22:42');
INSERT INTO `tp_func` VALUES ('10114', '9', '标记-场景执行结果', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:52', '2016-09-23 14:08:13');
INSERT INTO `tp_func` VALUES ('10125', '3', '场景-添加', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:53', '2016-11-07 11:48:27');
INSERT INTO `tp_func` VALUES ('10126', '4', '场景-编辑', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:54', '2016-11-07 11:48:22');
INSERT INTO `tp_func` VALUES ('10127', '6', '场景功能-入口', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:55', '2016-11-07 11:50:13');
INSERT INTO `tp_func` VALUES ('10128', '5', '场景-复制', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:56', '2016-11-07 11:45:28');
INSERT INTO `tp_func` VALUES ('10129', '1', '场景功能列表', '正常', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:57', '2016-09-23 11:13:12');
INSERT INTO `tp_func` VALUES ('10130', '2', '场景功能-编辑', '正常', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:58', '2016-09-23 11:14:32');
INSERT INTO `tp_func` VALUES ('10131', '3', '场景功能-移除', '正常', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:59', '2016-09-23 11:14:44');
INSERT INTO `tp_func` VALUES ('10132', '4', '功能库-入口', '正常', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:00', '2016-09-23 11:14:56');
INSERT INTO `tp_func` VALUES ('10133', '5', '场景数据-入口', '正常', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:02', '2016-09-23 11:15:07');
INSERT INTO `tp_func` VALUES ('10134', '6', '功能用例库-入口', '已搁置', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:03', '2016-09-24 15:14:45');
INSERT INTO `tp_func` VALUES ('10135', '1', '功能库-功能列表', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:04', '2016-09-23 11:17:04');
INSERT INTO `tp_func` VALUES ('10136', '2', '切换系统路径', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:05', '2016-09-23 11:17:15');
INSERT INTO `tp_func` VALUES ('10137', '3', '功能-加入场景', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:11', '2016-09-23 11:17:43');
INSERT INTO `tp_func` VALUES ('10138', '4', '功能-加入缓存', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:14', '2016-09-23 11:17:56');
INSERT INTO `tp_func` VALUES ('10139', '5', '场景功能列表', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:15', '2016-09-23 11:18:14');
INSERT INTO `tp_func` VALUES ('10140', '6', '场景功能-编辑', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:16', '2016-09-23 11:18:31');
INSERT INTO `tp_func` VALUES ('10141', '7', '场景功能-移除', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:17', '2016-09-23 11:18:48');
INSERT INTO `tp_func` VALUES ('10142', '8', '场景功能-加入缓存', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:18', '2016-09-23 11:19:01');
INSERT INTO `tp_func` VALUES ('10143', '9', '场景功能-全部加入缓存', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:19', '2016-09-23 11:19:12');
INSERT INTO `tp_func` VALUES ('10144', '10', '缓存功能列表', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:20', '2016-09-23 11:19:26');
INSERT INTO `tp_func` VALUES ('10145', '11', '缓存功能-编辑', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:21', '2016-09-23 11:19:52');
INSERT INTO `tp_func` VALUES ('10146', '12', '缓存功能-移除', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:34', '2016-09-23 11:20:09');
INSERT INTO `tp_func` VALUES ('10147', '13', '缓存功能-全部移除', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:35', '2016-09-23 11:20:26');
INSERT INTO `tp_func` VALUES ('10148', '14', '缓存功能-加入场景', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:36', '2016-09-23 11:20:42');
INSERT INTO `tp_func` VALUES ('10149', '15', '缓存功能-全部加入场景', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:37', '2016-09-23 11:20:59');
INSERT INTO `tp_func` VALUES ('10150', '1', '功能用例列表（库）', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:37', '2016-09-23 11:26:12');
INSERT INTO `tp_func` VALUES ('10151', '2', '绑定用例', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:38', '2016-09-23 11:24:27');
INSERT INTO `tp_func` VALUES ('10152', '3', '用例-添加', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:41', '2016-09-23 11:24:48');
INSERT INTO `tp_func` VALUES ('10153', '4', '用例-编辑', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:42', '2016-09-23 11:24:58');
INSERT INTO `tp_func` VALUES ('10154', '5', '用例-数据', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:43', '2016-09-23 11:25:31');
INSERT INTO `tp_func` VALUES ('10155', '6', '场景用例列表', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:44', '2016-09-23 11:26:28');
INSERT INTO `tp_func` VALUES ('10156', '7', '场景用例-移除', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:44', '2016-09-23 11:27:01');
INSERT INTO `tp_func` VALUES ('10157', '1', '场景模板数据列表', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:45', '2016-09-23 11:29:59');
INSERT INTO `tp_func` VALUES ('10158', '2', '场景模板数据-维护', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:46', '2016-09-23 11:30:15');
INSERT INTO `tp_func` VALUES ('10159', '3', '模板状态快速标记', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:47', '2016-09-23 11:30:56');
INSERT INTO `tp_func` VALUES ('10160', '4', '场景数据-列表', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:48', '2016-09-23 11:32:06');
INSERT INTO `tp_func` VALUES ('10161', '5', '场景数据-锁定', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:50', '2016-09-23 11:32:20');
INSERT INTO `tp_func` VALUES ('10162', '6', '场景数据-模板同步', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:51', '2016-09-23 11:32:41');
INSERT INTO `tp_func` VALUES ('10163', '7', '场景数据-维护', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:53', '2016-09-23 11:32:53');
INSERT INTO `tp_func` VALUES ('10164', '1', '功能控件列表', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:12:53', '2016-11-07 14:16:59');
INSERT INTO `tp_func` VALUES ('10165', '2', '切换功能', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:12:54', '2016-11-07 14:17:42');
INSERT INTO `tp_func` VALUES ('10166', '3', '控件-添加', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:12:56', '2016-11-07 14:19:26');
INSERT INTO `tp_func` VALUES ('10167', '4', '控件-维护', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:12:57', '2016-11-07 14:20:23');
INSERT INTO `tp_func` VALUES ('10168', '5', '控件状态快速标记', '正常', '10023', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:58', '2016-09-23 11:37:51');
INSERT INTO `tp_func` VALUES ('10169', '6', '功能控件状态维护', '正常', '10023', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:01', '2016-09-23 11:38:08');
INSERT INTO `tp_func` VALUES ('10170', '7', '项目控件展开列表', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:13:09', '2016-11-07 14:22:50');
INSERT INTO `tp_func` VALUES ('10171', '9', '控件展开列表-维护', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:13:17', '2016-11-07 14:24:07');
INSERT INTO `tp_func` VALUES ('10172', '1', '项目-用例库列表', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:18', '2016-09-23 11:39:51');
INSERT INTO `tp_func` VALUES ('10173', '2', '切换项目', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:19', '2016-09-23 11:40:21');
INSERT INTO `tp_func` VALUES ('10174', '3', '查询-按级别', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:21', '2016-09-23 11:40:35');
INSERT INTO `tp_func` VALUES ('10175', '6', '用例-导出', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:23', '2016-09-23 11:41:23');
INSERT INTO `tp_func` VALUES ('10176', '4', '用例-添加', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:24', '2016-09-23 11:41:29');
INSERT INTO `tp_func` VALUES ('10177', '5', '用例-维护', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:25', '2016-09-23 11:41:35');
INSERT INTO `tp_func` VALUES ('10178', '1', '列队场景列表', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:26', '2016-09-23 12:20:10');
INSERT INTO `tp_func` VALUES ('10179', '2', '导入场景数据', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:27', '2016-09-23 12:20:31');
INSERT INTO `tp_func` VALUES ('10180', '3', '查看场景数据-入口', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:28', '2016-09-23 12:20:57');
INSERT INTO `tp_func` VALUES ('10181', '4', '执行数据-清除', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:29', '2016-09-23 14:09:50');
INSERT INTO `tp_func` VALUES ('10182', '6', '执行测试', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:30', '2016-09-23 12:24:20');
INSERT INTO `tp_func` VALUES ('10183', '7', '停止测试', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:40', '2016-09-23 12:24:29');
INSERT INTO `tp_func` VALUES ('10184', '8', '暂停测试', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:41', '2016-09-23 12:24:35');
INSERT INTO `tp_func` VALUES ('10185', '1', '场景-执行数据列表', '正常', '10027', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:42', '2016-09-23 12:23:15');
INSERT INTO `tp_func` VALUES ('10186', '2', '执行数据维护', '正常', '10027', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:43', '2016-09-23 12:23:27');
INSERT INTO `tp_func` VALUES ('10187', '5', '选择执行场景', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:44', '2016-09-23 12:24:13');
INSERT INTO `tp_func` VALUES ('10188', '1', '阶段执行人员列表', '正常', '10034', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:44', '2016-09-23 12:25:00');
INSERT INTO `tp_func` VALUES ('10189', '2', '执行人员-从列表选择', '正常', '10034', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:45', '2016-09-24 15:08:23');
INSERT INTO `tp_func` VALUES ('10190', '3', '执行人员-编辑', '正常', '10034', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:46', '2016-09-23 13:02:35');
INSERT INTO `tp_func` VALUES ('10191', '4', '人员列队-入口', '正常', '10034', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:49', '2016-09-23 12:25:56');
INSERT INTO `tp_func` VALUES ('10192', '11', '项目-功能点-导出', '正常', '10008', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:50', '2016-09-23 13:33:12');
INSERT INTO `tp_func` VALUES ('10193', '6', '测试范围-导出', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:51', '2016-09-23 13:34:56');
INSERT INTO `tp_func` VALUES ('10194', '8', '数据模板-入口', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:52', '2016-09-23 14:08:19');
INSERT INTO `tp_func` VALUES ('10195', '8', '切换项目', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:13:53', '2016-11-07 14:23:06');
INSERT INTO `tp_func` VALUES ('10196', '10', '展开-控件状态快速标记', '正常', '10023', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:55', '2016-09-23 14:19:54');
INSERT INTO `tp_func` VALUES ('10197', '11', '展开-功能控件状态快速标记', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:13:56', '2016-11-07 14:24:55');
INSERT INTO `tp_func` VALUES ('10198', '6', 'M人员-入口（手工）', '正常', '10028', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:58', '2016-09-25 13:36:07');
INSERT INTO `tp_func` VALUES ('10200', '1', 'dfdf', '正常', '10035', '49', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:59', '2016-09-24 21:18:06');
INSERT INTO `tp_func` VALUES ('10199', '5', '测试人员列表', '正常', '10034', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:01', '2016-09-24 15:08:09');
INSERT INTO `tp_func` VALUES ('10201', '1', '车型报价员配置列表', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:02', '2016-09-26 10:24:45');
INSERT INTO `tp_func` VALUES ('10202', '2', '查询-按城市', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:03', '2016-09-26 10:24:59');
INSERT INTO `tp_func` VALUES ('10203', '3', '查询-按买顾配置状态', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:05', '2016-09-26 10:25:10');
INSERT INTO `tp_func` VALUES ('10204', '4', '查询-按电销配置状态', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:07', '2016-09-26 10:25:22');
INSERT INTO `tp_func` VALUES ('10205', '5', '查询-按品牌车型', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:08', '2016-09-26 10:25:51');
INSERT INTO `tp_func` VALUES ('10206', '6', '新增车型', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:09', '2016-09-26 10:26:05');
INSERT INTO `tp_func` VALUES ('10207', '7', '批量配置买顾报价员', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:10', '2016-09-26 10:27:04');
INSERT INTO `tp_func` VALUES ('10208', '8', '批量配置电销报价员', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:11', '2016-09-26 10:27:22');
INSERT INTO `tp_func` VALUES ('10209', '9', '编辑车型', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:14', '2016-09-26 10:28:45');
INSERT INTO `tp_func` VALUES ('10210', '10', '修改买顾', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:15', '2016-09-26 10:28:53');
INSERT INTO `tp_func` VALUES ('10211', '11', '修改电销', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:16', '2016-09-26 10:29:03');
INSERT INTO `tp_func` VALUES ('10212', '1', '城市买顾价格收集表', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:17', '2016-09-26 10:38:39');
INSERT INTO `tp_func` VALUES ('10213', '2', '查询-按城市', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:18', '2016-09-26 10:38:48');
INSERT INTO `tp_func` VALUES ('10214', '3', '查询-按买顾', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:19', '2016-09-26 10:38:58');
INSERT INTO `tp_func` VALUES ('10215', '4', '明细-买顾入口', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:43', '2016-09-26 10:39:22');
INSERT INTO `tp_func` VALUES ('10216', '5', '明细-未报价车款入口', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:41', '2016-09-26 10:39:49');
INSERT INTO `tp_func` VALUES ('10217', '6', '明细-价格过期车款入口', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:40', '2016-09-26 10:40:03');
INSERT INTO `tp_func` VALUES ('10218', '7', '明细-查询按选择城市', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:39', '2016-09-26 10:40:41');
INSERT INTO `tp_func` VALUES ('10219', '8', '明细-查询按车型车款', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:37', '2016-09-26 10:40:50');
INSERT INTO `tp_func` VALUES ('10220', '9', '明细-查询按价格状态', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:36', '2016-09-26 10:40:59');
INSERT INTO `tp_func` VALUES ('10221', '1', '车型价格列表', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:34', '2016-09-26 10:45:23');
INSERT INTO `tp_func` VALUES ('10222', '2', '查询-按选择城市', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:32', '2016-09-26 10:46:02');
INSERT INTO `tp_func` VALUES ('10223', '3', '查询-按价格状态', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:31', '2016-09-26 10:46:12');
INSERT INTO `tp_func` VALUES ('10224', '4', '查询-按车型车款', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:30', '2016-09-26 11:06:15');
INSERT INTO `tp_func` VALUES ('10225', '5', '添加价格信息', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:28', '2016-09-26 11:06:27');
INSERT INTO `tp_func` VALUES ('10226', '6', '设置显示列', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:27', '2016-09-26 11:06:56');
INSERT INTO `tp_func` VALUES ('10227', '1', '价格即将过期-车款列表', '正常', '10070', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:26', '2016-09-26 13:32:18');
INSERT INTO `tp_func` VALUES ('10228', '2', '提交报价入口', '正常', '10070', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:25', '2016-09-26 13:32:48');
INSERT INTO `tp_func` VALUES ('10229', '1', '价格新增车款-车款列表', '正常', '10072', '46', '未测试', '腰立辉', '腰立辉', '2016-10-28 11:52:34', '2016-09-26 13:33:37');
INSERT INTO `tp_func` VALUES ('10230', '2', '提交报价-入口', '正常', '10072', '46', '未测试', '腰立辉', '腰立辉', '2016-10-28 11:52:34', '2016-09-26 13:33:50');
INSERT INTO `tp_func` VALUES ('10231', '1', '报价列表', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:22', '2016-09-26 13:41:17');
INSERT INTO `tp_func` VALUES ('10232', '2', '查询-按价格状态', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:21', '2016-09-26 13:41:36');
INSERT INTO `tp_func` VALUES ('10233', '3', '查询-按车型车款', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:20', '2016-09-26 13:41:46');
INSERT INTO `tp_func` VALUES ('10234', '4', '添加价格信息', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:19', '2016-09-26 13:42:03');
INSERT INTO `tp_func` VALUES ('10235', '5', '设置显示列', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:18', '2016-09-26 13:42:17');
INSERT INTO `tp_func` VALUES ('10236', '6', '价格修改', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:09', '2016-09-26 13:42:35');
INSERT INTO `tp_func` VALUES ('10237', '1', '待确定价格-车款列表', '正常', '10074', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:08', '2016-09-26 13:50:35');
INSERT INTO `tp_func` VALUES ('10238', '2', '确认价格', '正常', '10074', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:07', '2016-09-26 13:51:00');
INSERT INTO `tp_func` VALUES ('10239', '1', '显示报价城市', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:06', '2016-09-26 13:52:59');
INSERT INTO `tp_func` VALUES ('10240', '2', '选择品牌车型报价（NO车款）', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:05', '2016-09-26 13:56:29');
INSERT INTO `tp_func` VALUES ('10241', '3', '选择车款报价', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:04', '2016-09-26 13:53:45');
INSERT INTO `tp_func` VALUES ('10242', '4', '选择优惠金额报价', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:03', '2016-09-26 13:54:27');
INSERT INTO `tp_func` VALUES ('10243', '5', '选择优惠百分比报价', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:02', '2016-09-26 13:54:42');
INSERT INTO `tp_func` VALUES ('10244', '6', '保存报价', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:01', '2016-09-26 13:55:52');
INSERT INTO `tp_func` VALUES ('10245', '7', '保存并创建下一条', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:00', '2016-09-26 13:56:13');
INSERT INTO `tp_func` VALUES ('10246', '1', '登录', '正常', '10076', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:58', '2016-09-26 16:29:42');
INSERT INTO `tp_func` VALUES ('10247', '2', '注销', '正常', '10076', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:57', '2016-09-26 16:29:48');
INSERT INTO `tp_func` VALUES ('10248', '3', '修改密码', '正常', '10076', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:56', '2016-09-26 16:29:55');
INSERT INTO `tp_func` VALUES ('10249', '1', '角色列表', '正常', '10077', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:55', '2016-09-26 16:30:26');
INSERT INTO `tp_func` VALUES ('10250', '2', '角色-添加', '正常', '10077', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:54', '2016-09-26 16:30:34');
INSERT INTO `tp_func` VALUES ('10251', '3', '角色-修改', '正常', '10077', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:52', '2016-09-26 16:30:45');
INSERT INTO `tp_func` VALUES ('10252', '4', '角色-分配权限', '正常', '10077', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:51', '2016-09-26 16:31:13');
INSERT INTO `tp_func` VALUES ('10253', '5', '角色-更改状态', '正常', '10077', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:50', '2016-09-26 16:31:27');
INSERT INTO `tp_func` VALUES ('10254', '6', '角色-删除', '正常', '10077', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:49', '2016-09-26 16:31:35');
INSERT INTO `tp_func` VALUES ('10255', '1', '用户列表', '正常', '10078', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:48', '2016-09-26 16:33:50');
INSERT INTO `tp_func` VALUES ('10256', '2', '查询-按工号', '正常', '10078', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:47', '2016-09-26 16:34:00');
INSERT INTO `tp_func` VALUES ('10257', '3', '查询-按姓名', '正常', '10078', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:46', '2016-09-26 16:34:09');
INSERT INTO `tp_func` VALUES ('10258', '4', '查询-按状态', '正常', '10078', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:44', '2016-09-26 16:34:17');
INSERT INTO `tp_func` VALUES ('10259', '5', '用户-添加', '正常', '10078', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:45', '2016-09-26 16:34:24');
INSERT INTO `tp_func` VALUES ('10260', '6', '用户-修改', '正常', '10078', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:42', '2016-09-26 16:34:32');
INSERT INTO `tp_func` VALUES ('10261', '7', '用户-变更状态', '正常', '10078', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:43', '2016-09-26 16:34:47');
INSERT INTO `tp_func` VALUES ('10262', '1', '产品列表', '正常', '10079', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:34', '2016-09-26 16:35:24');
INSERT INTO `tp_func` VALUES ('10263', '2', '产品-添加', '正常', '10079', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:33', '2016-09-26 16:35:35');
INSERT INTO `tp_func` VALUES ('10264', '3', '产品-编辑', '正常', '10079', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:32', '2016-09-26 16:35:42');
INSERT INTO `tp_func` VALUES ('10265', '4', '系统-入口', '正常', '10079', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:31', '2016-09-26 16:35:52');
INSERT INTO `tp_func` VALUES ('10266', '1', '登录', '正常', '10106', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:31', '2016-09-27 17:16:17');
INSERT INTO `tp_func` VALUES ('10267', '2', '记住密码', '正常', '10106', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:30', '2016-09-27 17:16:24');
INSERT INTO `tp_func` VALUES ('10268', '3', '个人信息', '正常', '10106', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:29', '2016-09-27 17:16:37');
INSERT INTO `tp_func` VALUES ('10269', '4', '修改个人信息', '正常', '10106', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:28', '2016-09-27 17:16:44');
INSERT INTO `tp_func` VALUES ('10270', '5', '退出', '正常', '10106', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:26', '2016-09-27 17:16:53');
INSERT INTO `tp_func` VALUES ('10271', '1', '权限管理-入口', '正常', '10107', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:27', '2016-09-27 17:17:36');
INSERT INTO `tp_func` VALUES ('10272', '2', '惠买车电商CRM-入口', '正常', '10107', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:25', '2016-09-27 17:18:05');
INSERT INTO `tp_func` VALUES ('10273', '1', '数量统计', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:31:12', '2016-10-25 10:31:12');
INSERT INTO `tp_func` VALUES ('10274', '2', '查询-按客户姓名', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:31:30', '2016-10-25 10:31:30');
INSERT INTO `tp_func` VALUES ('10275', '3', '查询-按客户手机', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:31:37', '2016-10-25 10:31:37');
INSERT INTO `tp_func` VALUES ('10276', '4', '查询-按待办类型', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:32:03', '2016-10-25 10:32:03');
INSERT INTO `tp_func` VALUES ('10277', '5', '查询-按待办来源', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:32:14', '2016-10-25 10:32:14');
INSERT INTO `tp_func` VALUES ('10278', '6', '查询-按客户级别', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:32:22', '2016-10-25 10:32:22');
INSERT INTO `tp_func` VALUES ('10279', '7', '查询-按跟进阶段', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:32:41', '2016-10-25 10:32:41');
INSERT INTO `tp_func` VALUES ('10280', '8', '查询-按是否成交', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:32:50', '2016-10-25 10:32:50');
INSERT INTO `tp_func` VALUES ('10281', '9', '查询-按是否置换', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:33:55', '2016-10-25 10:33:55');
INSERT INTO `tp_func` VALUES ('10282', '10', '查询-按购车城市', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:03', '2016-10-25 10:34:03');
INSERT INTO `tp_func` VALUES ('10283', '11', '查询-按客户来源', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:10', '2016-10-25 10:34:10');
INSERT INTO `tp_func` VALUES ('10284', '12', '上牌城市', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:18', '2016-10-25 10:34:18');
INSERT INTO `tp_func` VALUES ('10285', '13', '按手机归属地', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:34', '2016-10-25 10:34:34');
INSERT INTO `tp_func` VALUES ('10286', '14', '查询-按待办时间', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:45', '2016-10-25 10:34:45');
INSERT INTO `tp_func` VALUES ('10287', '15', '查询-按意向车型', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:55', '2016-10-25 10:34:55');
INSERT INTO `tp_func` VALUES ('10288', '16', '查询-按客户标签', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:35:05', '2016-10-25 10:35:05');
INSERT INTO `tp_func` VALUES ('10289', '17', '今日待办列表', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:35:28', '2016-10-25 10:35:28');
INSERT INTO `tp_func` VALUES ('10290', '18', '添加客户入口', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:36:34', '2016-10-25 10:36:34');
INSERT INTO `tp_func` VALUES ('10291', '19', '查看外出计划', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:36:14', '2016-10-25 10:36:14');
INSERT INTO `tp_func` VALUES ('10292', '20', '客户跟进入口', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:36:49', '2016-10-25 10:36:49');
INSERT INTO `tp_func` VALUES ('10293', '1', '查询', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:38:38', '2016-10-25 10:38:38');
INSERT INTO `tp_func` VALUES ('10294', '2', '添加客户入口', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:38:46', '2016-10-25 10:38:46');
INSERT INTO `tp_func` VALUES ('10299', '1', '查询', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:39:34', '2016-10-25 13:39:34');
INSERT INTO `tp_func` VALUES ('10296', '4', '查看外出计划入口', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:38:12', '2016-10-25 13:38:12');
INSERT INTO `tp_func` VALUES ('10297', '5', '过期待办列表', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:38:26', '2016-10-25 13:38:26');
INSERT INTO `tp_func` VALUES ('10298', '6', '跟进入口', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:38:39', '2016-10-25 13:38:39');
INSERT INTO `tp_func` VALUES ('10300', '2', '添加客户入口', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:39:41', '2016-10-25 13:39:41');
INSERT INTO `tp_func` VALUES ('10301', '3', '查看外出计划入口', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:39:55', '2016-10-25 13:39:55');
INSERT INTO `tp_func` VALUES ('10302', '4', '全部待办列表', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:40:13', '2016-10-25 13:40:13');
INSERT INTO `tp_func` VALUES ('10303', '5', '跟进入口', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:41:24', '2016-10-25 13:41:24');
INSERT INTO `tp_func` VALUES ('10304', '0', '待办数统计', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:42:40', '2016-10-25 13:42:40');
INSERT INTO `tp_func` VALUES ('10305', '0', '待办数统计', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:43:06', '2016-10-25 13:43:06');
INSERT INTO `tp_func` VALUES ('10306', '1', '待办数统计', '正常', '10110', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:48:16', '2016-10-25 13:48:16');
INSERT INTO `tp_func` VALUES ('10307', '2', '金融待办列表', '正常', '10110', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:48:33', '2016-10-25 13:48:33');
INSERT INTO `tp_func` VALUES ('10308', '3', '跟进入口', '正常', '10110', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:48:47', '2016-10-25 13:48:47');
INSERT INTO `tp_func` VALUES ('10309', '1', '客户数统计', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:49:21', '2016-10-25 13:49:21');
INSERT INTO `tp_func` VALUES ('10310', '2', '常规查询', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:49:36', '2016-10-25 13:49:36');
INSERT INTO `tp_func` VALUES ('10311', '3', '查询-按订单类型', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:49:53', '2016-10-25 13:49:53');
INSERT INTO `tp_func` VALUES ('10312', '4', '客户列表', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:50:00', '2016-10-25 13:50:00');
INSERT INTO `tp_func` VALUES ('10313', '5', '添加客户入口', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:50:09', '2016-10-25 13:50:09');
INSERT INTO `tp_func` VALUES ('10314', '6', '赠送优惠券', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:50:28', '2016-10-25 13:50:28');
INSERT INTO `tp_func` VALUES ('10315', '7', '查看全部金融产品', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:50:43', '2016-10-25 13:50:43');
INSERT INTO `tp_func` VALUES ('10316', '1', '客户统计数', '正常', '10112', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:51:25', '2016-10-25 13:51:25');
INSERT INTO `tp_func` VALUES ('10317', '2', '常规查询', '正常', '10112', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:51:37', '2016-10-25 13:51:37');
INSERT INTO `tp_func` VALUES ('10318', '3', '查询-按订单类型', '正常', '10112', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 14:00:48', '2016-10-25 14:00:48');
INSERT INTO `tp_func` VALUES ('10319', '4', '客户列表', '正常', '10112', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 14:00:59', '2016-10-25 14:00:59');
INSERT INTO `tp_func` VALUES ('10320', '1', '号码查询', '正常', '10113', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:10:05', '2016-10-25 15:10:05');
INSERT INTO `tp_func` VALUES ('10321', '2', '添加客户', '正常', '10113', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:10:20', '2016-10-25 15:10:20');
INSERT INTO `tp_func` VALUES ('10322', '1', '外出计划', '正常', '10114', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:11:11', '2016-10-25 15:11:11');
INSERT INTO `tp_func` VALUES ('10323', '1', '客户信息', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-28 15:20:10', '2016-10-25 15:12:32');
INSERT INTO `tp_func` VALUES ('10324', '2', '转移', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:12:39', '2016-10-25 15:12:39');
INSERT INTO `tp_func` VALUES ('10325', '3', '战败', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:12:45', '2016-10-25 15:12:45');
INSERT INTO `tp_func` VALUES ('10326', '4', '创建待办', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:12:54', '2016-10-25 15:12:54');
INSERT INTO `tp_func` VALUES ('10327', '5', '免打扰', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:13:04', '2016-10-25 15:13:04');
INSERT INTO `tp_func` VALUES ('10328', '6', '推送商家入口', '正常', '10115', '51', '通过', '腰立辉', '腰立辉', '2016-10-25 17:35:12', '2016-10-25 17:35:12');
INSERT INTO `tp_func` VALUES ('10329', '7', '外出计划入口', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:13:21', '2016-10-25 15:13:21');
INSERT INTO `tp_func` VALUES ('10330', '8', '订单列表', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:13:40', '2016-10-25 15:13:40');
INSERT INTO `tp_func` VALUES ('10331', '9', '查看已绑定礼包', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:14:08', '2016-10-25 15:14:08');
INSERT INTO `tp_func` VALUES ('10332', '10', '查看金融产品', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:14:21', '2016-10-25 15:14:21');
INSERT INTO `tp_func` VALUES ('10333', '11', '跟进待办', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:14:36', '2016-10-25 15:14:36');
INSERT INTO `tp_func` VALUES ('10334', '12', '客户基本信息', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:14:48', '2016-10-25 15:14:48');
INSERT INTO `tp_func` VALUES ('10335', '1', '客户信息', '正常', '10116', '51', '通过', '腰立辉', '腰立辉', '2016-10-25 17:35:23', '2016-10-25 17:35:23');
INSERT INTO `tp_func` VALUES ('10336', '2', '客户姓名调整信息页', '正常', '10116', '51', '通过', '腰立辉', '腰立辉', '2016-10-25 17:35:27', '2016-10-25 17:35:27');
INSERT INTO `tp_func` VALUES ('10337', '3', '创建买顾订单', '正常', '10116', '80', '通过', '腰立辉', '腰立辉', '2016-10-26 10:04:11', '2016-11-02 10:10:10');
INSERT INTO `tp_func` VALUES ('10338', '1', '查询-按客户姓名', '正常', '10052', '50', '失败', '腰立辉', '腰立辉', '2016-10-25 16:37:30', '2016-11-02 09:42:52');
INSERT INTO `tp_func` VALUES ('10339', '2', '查询-按客户手机', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:37:46', '2016-10-25 16:37:46');
INSERT INTO `tp_func` VALUES ('10340', '3', '查询-按订单编号', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:38:06', '2016-10-25 16:38:06');
INSERT INTO `tp_func` VALUES ('10341', '4', '查询-按媒体单号', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:38:24', '2016-10-25 16:38:24');
INSERT INTO `tp_func` VALUES ('10342', '5', '查询-按订单状态', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:38:40', '2016-10-25 16:38:40');
INSERT INTO `tp_func` VALUES ('10343', '6', '查询-按订单来源', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:38:51', '2016-10-25 16:38:51');
INSERT INTO `tp_func` VALUES ('10344', '7', '查询-按订单车型', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:39:09', '2016-10-25 16:39:09');
INSERT INTO `tp_func` VALUES ('10345', '8', '查询-按下单时间', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:39:19', '2016-10-25 16:39:19');
INSERT INTO `tp_func` VALUES ('10346', '9', '订单列表', '正常', '10052', '51', '失败', '腰立辉', '腰立辉', '2016-10-25 17:35:41', '2016-11-02 09:43:06');
INSERT INTO `tp_func` VALUES ('10347', '10', '【客户手机号】客户跟进', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:40:12', '2016-10-25 16:40:12');
INSERT INTO `tp_func` VALUES ('10348', '11', '详情', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:40:24', '2016-10-25 16:40:24');
INSERT INTO `tp_func` VALUES ('10349', '12', '赠送随手礼', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:40:38', '2016-10-25 16:40:38');
INSERT INTO `tp_func` VALUES ('10350', '13', '跟进', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:40:49', '2016-10-25 16:40:49');
INSERT INTO `tp_func` VALUES ('10351', '14', '查看金融产品', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:40:58', '2016-10-25 16:40:58');
INSERT INTO `tp_func` VALUES ('10352', '1', '查询-按客户姓名', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:45:10', '2016-10-25 16:45:10');
INSERT INTO `tp_func` VALUES ('10353', '2', '查询-按客户手机号', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:45:19', '2016-10-25 16:45:19');
INSERT INTO `tp_func` VALUES ('10354', '3', '查询-按车主姓名', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:45:32', '2016-10-25 16:45:32');
INSERT INTO `tp_func` VALUES ('10355', '4', '查询-按订单编号', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:45:44', '2016-10-25 16:45:44');
INSERT INTO `tp_func` VALUES ('10356', '5', '查询-按订单来源', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:45:54', '2016-10-25 16:45:54');
INSERT INTO `tp_func` VALUES ('10357', '6', '查询-按订单品牌', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:05', '2016-10-25 16:46:05');
INSERT INTO `tp_func` VALUES ('10358', '7', '查询-按订单车型', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:16', '2016-10-25 16:46:16');
INSERT INTO `tp_func` VALUES ('10359', '8', '查询-按信息状态', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:24', '2016-10-25 16:46:24');
INSERT INTO `tp_func` VALUES ('10360', '9', '查询-按买顾大区', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:33', '2016-10-25 16:46:33');
INSERT INTO `tp_func` VALUES ('10361', '10', '查询-按买顾城市', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:41', '2016-10-25 16:46:41');
INSERT INTO `tp_func` VALUES ('10362', '11', '查询-按买顾姓名', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:52', '2016-10-25 16:46:52');
INSERT INTO `tp_func` VALUES ('10363', '12', '查询-按成交状态', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:47:04', '2016-10-25 16:47:04');
INSERT INTO `tp_func` VALUES ('10364', '13', '查询-按成交时间', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:47:21', '2016-10-25 16:47:21');
INSERT INTO `tp_func` VALUES ('10365', '14', '成交订单列表', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:47:33', '2016-10-25 16:47:33');
INSERT INTO `tp_func` VALUES ('10366', '15', '【订单ID】订单详情', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:47:48', '2016-10-25 16:47:48');
INSERT INTO `tp_func` VALUES ('10367', '16', '【客户手机号】跟进', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:48:11', '2016-10-25 16:48:11');
INSERT INTO `tp_func` VALUES ('10368', '17', '填写成交信息', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:48:26', '2016-10-25 16:48:26');
INSERT INTO `tp_func` VALUES ('10369', '18', '转顾问', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:48:32', '2016-10-25 16:48:32');
INSERT INTO `tp_func` VALUES ('10370', '1', '查询-按借贷人姓名', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:55:44', '2016-10-25 16:55:44');
INSERT INTO `tp_func` VALUES ('10371', '2', '查询-按借贷人手机号', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:55:58', '2016-10-25 16:55:58');
INSERT INTO `tp_func` VALUES ('10372', '3', '查询-按融资单ID', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:56:15', '2016-10-25 16:56:15');
INSERT INTO `tp_func` VALUES ('10373', '4', '查询-按状态', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:56:24', '2016-10-25 16:56:24');
INSERT INTO `tp_func` VALUES ('10374', '5', '查询-按融资单车型', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:56:38', '2016-10-25 16:56:38');
INSERT INTO `tp_func` VALUES ('10375', '6', '查询-按下单时间', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:56:46', '2016-10-25 16:56:46');
INSERT INTO `tp_func` VALUES ('10376', '7', '金融订单列表', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:57:23', '2016-10-25 16:57:23');
INSERT INTO `tp_func` VALUES ('10377', '8', '【关联订单】', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:57:37', '2016-10-25 16:57:37');
INSERT INTO `tp_func` VALUES ('10378', '9', '详情', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:57:46', '2016-10-25 16:57:46');
INSERT INTO `tp_func` VALUES ('10379', '1', '查询-按借贷人姓名', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:58:17', '2016-10-25 16:58:17');
INSERT INTO `tp_func` VALUES ('10380', '2', '查询-按借贷人手机号', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:58:30', '2016-10-25 16:58:30');
INSERT INTO `tp_func` VALUES ('10381', '3', '查询-按维保单ID', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:58:42', '2016-10-25 16:58:42');
INSERT INTO `tp_func` VALUES ('10382', '4', '查询-按维保单状态', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:58:52', '2016-10-25 16:58:52');
INSERT INTO `tp_func` VALUES ('10383', '5', '查询-按维保单车型', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:00:18', '2016-10-25 17:00:18');
INSERT INTO `tp_func` VALUES ('10384', '6', '查询-按下单时间', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:00:26', '2016-10-25 17:00:26');
INSERT INTO `tp_func` VALUES ('10385', '7', '维保订单列表', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:00:40', '2016-10-25 17:00:40');
INSERT INTO `tp_func` VALUES ('10386', '1', '待确认订单统计', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:18:04', '2016-10-25 17:18:04');
INSERT INTO `tp_func` VALUES ('10387', '2', '待结算定金汇总', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:18:24', '2016-10-25 17:18:24');
INSERT INTO `tp_func` VALUES ('10388', '3', '【立即结算】', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:18:32', '2016-10-25 17:18:32');
INSERT INTO `tp_func` VALUES ('10389', '4', '查询-按客户手机', '正常', '10124', '50', '失败', '腰立辉', '腰立辉', '2016-10-25 17:18:49', '2016-11-02 09:42:25');
INSERT INTO `tp_func` VALUES ('10390', '5', '查询-按订单类型', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:19:07', '2016-10-25 17:19:07');
INSERT INTO `tp_func` VALUES ('10391', '6', '查询-按定金状态', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:19:17', '2016-10-25 17:19:17');
INSERT INTO `tp_func` VALUES ('10392', '7', '查询-按订单编号', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:19:29', '2016-10-25 17:19:29');
INSERT INTO `tp_func` VALUES ('10393', '8', '查询-按订单来源', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:19:37', '2016-10-25 17:19:37');
INSERT INTO `tp_func` VALUES ('10394', '9', '查询-按订单状态', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:20:05', '2016-10-25 17:20:05');
INSERT INTO `tp_func` VALUES ('10395', '10', '查询-按顾问', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:20:15', '2016-10-25 17:20:15');
INSERT INTO `tp_func` VALUES ('10396', '11', '订单列表', '正常', '10124', '50', '失败', '腰立辉', '腰立辉', '2016-10-25 17:20:26', '2016-11-02 09:42:49');
INSERT INTO `tp_func` VALUES ('10397', '12', '导出列表', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:20:32', '2016-10-25 17:20:32');
INSERT INTO `tp_func` VALUES ('10398', '13', '确认成交', '正常', '10124', '50', '失败', '腰立辉', '腰立辉', '2016-10-25 17:20:44', '2016-11-02 09:42:02');
INSERT INTO `tp_func` VALUES ('10399', '14', '取消交易', '正常', '10124', '50', '失败', '腰立辉', '腰立辉', '2016-10-25 17:20:51', '2016-11-02 09:42:47');
INSERT INTO `tp_func` VALUES ('10400', '15', '详情', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:20:59', '2016-10-25 17:20:59');

-- ----------------------------
-- Table structure for `tp_hcfunc`
-- ----------------------------
DROP TABLE IF EXISTS `tp_hcfunc`;
CREATE TABLE `tp_hcfunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` smallint(2) DEFAULT NULL,
  `funcid` smallint(6) DEFAULT NULL,
  `sysno` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `func` varchar(255) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `caseid` int(11) DEFAULT NULL,
  `casestate` varchar(255) DEFAULT NULL,
  `casemain` varchar(255) DEFAULT NULL,
  `caseexpected` varchar(255) DEFAULT NULL,
  `num1` varchar(255) DEFAULT NULL,
  `num2` varchar(255) DEFAULT NULL,
  `num3` varchar(255) DEFAULT NULL,
  `num4` varchar(255) DEFAULT NULL,
  `num5` varchar(255) DEFAULT NULL,
  `num6` varchar(255) DEFAULT NULL,
  `num7` varchar(255) DEFAULT NULL,
  `num8` varchar(255) DEFAULT NULL,
  `num9` varchar(255) DEFAULT NULL,
  `num10` varchar(255) DEFAULT NULL,
  `num11` varchar(255) DEFAULT NULL,
  `num12` varchar(255) DEFAULT NULL,
  `num13` varchar(255) DEFAULT NULL,
  `num14` varchar(255) DEFAULT NULL,
  `num15` varchar(255) DEFAULT NULL,
  `num16` varchar(255) DEFAULT NULL,
  `num17` varchar(255) DEFAULT NULL,
  `num18` varchar(255) DEFAULT NULL,
  `num19` varchar(255) DEFAULT NULL,
  `num20` varchar(255) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_hcfunc
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_path`
-- ----------------------------
DROP TABLE IF EXISTS `tp_path`;
CREATE TABLE `tp_path` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `pstate` varchar(5) DEFAULT NULL,
  `sysid` int(11) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10140 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_path
-- ----------------------------
INSERT INTO `tp_path` VALUES ('10000', '1', '登陆模块', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 10:35:12', '2016-09-22 10:35:12');
INSERT INTO `tp_path` VALUES ('10001', '2', '产品库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 14:21:56', '2016-09-23 14:21:56');
INSERT INTO `tp_path` VALUES ('10002', '3', '测试项目', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 10:40:44', '2016-09-22 10:40:44');
INSERT INTO `tp_path` VALUES ('10003', '10', '项目-系统', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:45', '2016-09-23 12:34:45');
INSERT INTO `tp_path` VALUES ('10004', '11', '项目-系统路径', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:41:33', '2016-09-23 10:41:33');
INSERT INTO `tp_path` VALUES ('10005', '12', '项目-系统路径-功能点', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:41:27', '2016-09-23 10:41:27');
INSERT INTO `tp_path` VALUES ('10006', '15', '功能点-用例', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:38:09', '2016-09-23 10:38:09');
INSERT INTO `tp_path` VALUES ('10007', '17', '功能点-规则', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:44:38', '2016-09-23 10:44:38');
INSERT INTO `tp_path` VALUES ('10008', '13', '项目-功能点', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:23', '2016-09-22 10:49:52');
INSERT INTO `tp_path` VALUES ('10034', '6', '项目-里程碑-人员', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:19', '2016-09-23 12:34:19');
INSERT INTO `tp_path` VALUES ('10013', '14', '项目-范围', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:37:57', '2016-09-23 10:37:57');
INSERT INTO `tp_path` VALUES ('10033', '16', '功能点-模板', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:44:31', '2016-09-23 10:44:31');
INSERT INTO `tp_path` VALUES ('10017', '18', '项目-场景', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:23', '2016-09-23 10:45:23');
INSERT INTO `tp_path` VALUES ('10018', '19', '项目-场景-场景功能', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:30', '2016-09-23 10:45:30');
INSERT INTO `tp_path` VALUES ('10019', '20', '项目-场景-场景功能-功能库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:38', '2016-09-23 10:45:38');
INSERT INTO `tp_path` VALUES ('10020', '21', '项目-场景-场景功能-用例库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:44', '2016-09-23 10:45:44');
INSERT INTO `tp_path` VALUES ('10021', '22', '项目-场景-场景功能-场景数据', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:51', '2016-09-23 10:45:51');
INSERT INTO `tp_path` VALUES ('10022', '27', '项目-用例库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:47:07', '2016-09-23 10:47:07');
INSERT INTO `tp_path` VALUES ('10023', '28', '项目-控件库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:47:15', '2016-09-23 10:47:15');
INSERT INTO `tp_path` VALUES ('10024', '23', '手工测试', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:46:42', '2016-09-23 10:46:42');
INSERT INTO `tp_path` VALUES ('10025', '24', '手工测试-执行', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:46:48', '2016-09-23 10:46:48');
INSERT INTO `tp_path` VALUES ('10026', '25', '自动化测试', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:46:53', '2016-09-23 10:46:53');
INSERT INTO `tp_path` VALUES ('10027', '26', '自动化测试-测试数据', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:46:59', '2016-09-23 10:46:59');
INSERT INTO `tp_path` VALUES ('10028', '5', '项目-里程碑', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:14', '2016-09-23 12:34:14');
INSERT INTO `tp_path` VALUES ('10029', '7', '项目-里程碑-列队', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:24', '2016-09-23 12:34:24');
INSERT INTO `tp_path` VALUES ('10030', '4', '项目-风险', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:05', '2016-09-23 12:34:05');
INSERT INTO `tp_path` VALUES ('10031', '8', '项目-里程碑-列队-场景库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 13:08:34', '2016-09-23 13:08:34');
INSERT INTO `tp_path` VALUES ('10032', '9', '项目-里程碑-列队-场景功能', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:38', '2016-09-23 12:34:38');
INSERT INTO `tp_path` VALUES ('10035', '1', 'yyyy', '正常', '56', '腰立辉', '腰立辉', '2016-09-24 21:17:47', '2016-09-24 21:17:47');
INSERT INTO `tp_path` VALUES ('10036', '1', '工作台', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 15:19:54', '2016-09-26 10:04:06');
INSERT INTO `tp_path` VALUES ('10037', '2', '客户管理-全部客户', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:22:35', '2016-09-26 10:04:48');
INSERT INTO `tp_path` VALUES ('10038', '3', '客户管理-公共客户', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:07', '2016-09-26 10:04:59');
INSERT INTO `tp_path` VALUES ('10039', '4', '客户管理-30天未跟进客户', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:09', '2016-09-26 10:05:15');
INSERT INTO `tp_path` VALUES ('10040', '5', '业务管理-买车顾问管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:11', '2016-09-26 10:09:21');
INSERT INTO `tp_path` VALUES ('10041', '6', '业务管理-外呼录音', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:12', '2016-09-26 10:09:51');
INSERT INTO `tp_path` VALUES ('10042', '7', '业务管理-签到与倒休', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:14', '2016-09-26 10:10:02');
INSERT INTO `tp_path` VALUES ('10043', '8', '业务管理-免打扰客户', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:17', '2016-09-26 10:10:25');
INSERT INTO `tp_path` VALUES ('10044', '9', '业务管理-商家位置管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:19', '2016-09-26 10:10:47');
INSERT INTO `tp_path` VALUES ('10045', '11', '统计报表-城市业绩统计', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:37', '2016-09-26 10:11:28');
INSERT INTO `tp_path` VALUES ('10046', '12', '统计报表-分配与跟进客户统计', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:39', '2016-09-26 10:11:49');
INSERT INTO `tp_path` VALUES ('10047', '13', '统计报表-买顾业绩统计', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:41', '2016-09-26 10:12:00');
INSERT INTO `tp_path` VALUES ('10048', '14', '线索管理-全部线索', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:44', '2016-09-26 10:12:36');
INSERT INTO `tp_path` VALUES ('10049', '15', '线索管理-线索来源配置', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:47', '2016-09-26 10:13:00');
INSERT INTO `tp_path` VALUES ('10050', '16', '任务管理-添加客户', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:50', '2016-09-26 10:14:51');
INSERT INTO `tp_path` VALUES ('10051', '22', '任务管理-任务管理-今日待办', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:26:25', '2016-10-25 10:26:25');
INSERT INTO `tp_path` VALUES ('10052', '32', '订单管理-全部新车订单', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 16:35:44');
INSERT INTO `tp_path` VALUES ('10053', '36', '权限管理-角色类型管理', '已搁置', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:56:14');
INSERT INTO `tp_path` VALUES ('10054', '37', '权限管理-系统资源管理', '已搁置', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:56:05');
INSERT INTO `tp_path` VALUES ('10055', '38', '权限管理-角色管理', '已搁置', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:55:56');
INSERT INTO `tp_path` VALUES ('10056', '39', '权限管理-用户管理', '已搁置', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:55:47');
INSERT INTO `tp_path` VALUES ('10057', '40', '消息中心-待办提醒', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:55:40');
INSERT INTO `tp_path` VALUES ('10058', '41', '消息中心-订单提醒', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:55:30');
INSERT INTO `tp_path` VALUES ('10059', '42', '消息中心-评价投诉', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:41:25');
INSERT INTO `tp_path` VALUES ('10060', '43', '消息中心-系统公告', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:41:18');
INSERT INTO `tp_path` VALUES ('10061', '44', '公告管理-公告管理', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:41:10');
INSERT INTO `tp_path` VALUES ('10062', '45', '公告管理-系统消息管理', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:41:03');
INSERT INTO `tp_path` VALUES ('10063', '46', '在线顾问管理-在线顾问', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:54');
INSERT INTO `tp_path` VALUES ('10064', '47', '消息中心-品牌分配', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:45');
INSERT INTO `tp_path` VALUES ('10065', '48', '基盘客户管理-待办任务', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:28');
INSERT INTO `tp_path` VALUES ('10066', '49', '基盘客户管理-短信推送', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:16');
INSERT INTO `tp_path` VALUES ('10067', '50', '价格库存管理-车型及报价配置管理', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:08');
INSERT INTO `tp_path` VALUES ('10072', '20', '任务管理-报价收集-新增车款', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:25:14', '2016-10-25 10:25:14');
INSERT INTO `tp_path` VALUES ('10069', '51', '价格库存管理-车型价格库', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:00');
INSERT INTO `tp_path` VALUES ('10070', '19', '任务管理-报价收集-即将过期', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:25:06', '2016-10-25 10:25:06');
INSERT INTO `tp_path` VALUES ('10071', '10', '业务管理-价格收集管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:35', '2016-09-26 11:10:39');
INSERT INTO `tp_path` VALUES ('10073', '18', '任务管理-报价收集-我的报价', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:24:59', '2016-10-25 10:24:59');
INSERT INTO `tp_path` VALUES ('10074', '17', '任务管理-报价收集-待确定价格', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:24:51', '2016-10-25 10:24:51');
INSERT INTO `tp_path` VALUES ('10075', '21', '任务管理-报价收集-库存价格收集', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:25:22', '2016-10-25 10:25:22');
INSERT INTO `tp_path` VALUES ('10076', '1', '登陆模块', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:19:26', '2016-09-26 16:19:26');
INSERT INTO `tp_path` VALUES ('10077', '2', '设置-角色管理', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:20:09', '2016-09-26 16:20:09');
INSERT INTO `tp_path` VALUES ('10078', '3', '设置-用户管理', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:33:20', '2016-09-26 16:33:20');
INSERT INTO `tp_path` VALUES ('10079', '4', '测试库-产品库', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:21:00', '2016-09-26 16:21:00');
INSERT INTO `tp_path` VALUES ('10080', '5', '项目-风险', '已搁置', '54', '腰立辉', '腰立辉', '2016-09-26 16:22:25', '2016-09-26 16:22:25');
INSERT INTO `tp_path` VALUES ('10081', '6', '项目-里程碑', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:22:46', '2016-09-26 16:22:46');
INSERT INTO `tp_path` VALUES ('10082', '7', '项目-里程碑-人员', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:22:59', '2016-09-26 16:22:59');
INSERT INTO `tp_path` VALUES ('10083', '8', '项目-里程碑-人员-列队', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:23:20', '2016-09-26 16:23:20');
INSERT INTO `tp_path` VALUES ('10084', '9', '项目-里程碑-人员-列队-场景库', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:23:32', '2016-09-26 16:23:32');
INSERT INTO `tp_path` VALUES ('10085', '10', '项目-里程碑-人员-列队-场景功能', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:23:47', '2016-09-26 16:23:47');
INSERT INTO `tp_path` VALUES ('10086', '11', '项目-系统', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:24:01', '2016-09-26 16:24:01');
INSERT INTO `tp_path` VALUES ('10087', '12', '项目-系统-关联系统', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:24:30', '2016-09-26 16:24:30');
INSERT INTO `tp_path` VALUES ('10088', '13', '项目-系统-路径', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:24:39', '2016-09-26 16:24:39');
INSERT INTO `tp_path` VALUES ('10089', '14', '项目-系统-路径-功能点', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:24:50', '2016-09-26 16:24:50');
INSERT INTO `tp_path` VALUES ('10090', '15', '项目-功能点', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:25:00', '2016-09-26 16:25:00');
INSERT INTO `tp_path` VALUES ('10091', '16', '项目-测试范围', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:25:10', '2016-09-26 16:25:10');
INSERT INTO `tp_path` VALUES ('10092', '17', '功能点-用例', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:25:25', '2016-09-26 16:25:25');
INSERT INTO `tp_path` VALUES ('10093', '18', '功能点-数据模板', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:25:33', '2016-09-26 16:25:33');
INSERT INTO `tp_path` VALUES ('10094', '19', '功能点-规则', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:25:40', '2016-09-26 16:25:40');
INSERT INTO `tp_path` VALUES ('10095', '20', '项目-场景', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:25:49', '2016-09-26 16:25:49');
INSERT INTO `tp_path` VALUES ('10096', '21', '项目-场景-场景功能', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:26:13', '2016-09-26 16:26:13');
INSERT INTO `tp_path` VALUES ('10097', '22', '项目-场景-场景功能-功能库', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:26:25', '2016-09-26 16:26:25');
INSERT INTO `tp_path` VALUES ('10098', '23', '项目-场景-场景功能-用例库', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:26:41', '2016-09-26 16:26:41');
INSERT INTO `tp_path` VALUES ('10099', '24', '项目-场景-场景功能-场景数据', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:26:54', '2016-09-26 16:26:54');
INSERT INTO `tp_path` VALUES ('10100', '25', '手工测试', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:27:11', '2016-09-26 16:27:11');
INSERT INTO `tp_path` VALUES ('10101', '26', '手工测试-执行', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:27:22', '2016-09-26 16:27:22');
INSERT INTO `tp_path` VALUES ('10102', '27', '自动化测试', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:27:29', '2016-09-26 16:27:29');
INSERT INTO `tp_path` VALUES ('10103', '28', '自动化测试-测试数据', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:28:12', '2016-09-26 16:28:12');
INSERT INTO `tp_path` VALUES ('10104', '4', '测试库-项目用例库', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:28:43', '2016-09-26 16:28:43');
INSERT INTO `tp_path` VALUES ('10105', '4', '测试库-项目控件库', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:29:09', '2016-09-26 16:29:09');
INSERT INTO `tp_path` VALUES ('10106', '1', '登录模块', '正常', '57', '腰立辉', '腰立辉', '2016-09-27 17:15:49', '2016-09-27 17:15:49');
INSERT INTO `tp_path` VALUES ('10107', '2', '我的工作台', '正常', '57', '腰立辉', '腰立辉', '2016-09-27 17:16:06', '2016-09-27 17:16:06');
INSERT INTO `tp_path` VALUES ('10108', '23', '任务管理-任务管理-过期待办', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 10:26:48');
INSERT INTO `tp_path` VALUES ('10109', '24', '任务管理-任务管理-全部待办', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 10:27:04');
INSERT INTO `tp_path` VALUES ('10110', '25', '任务管理-任务管理-金融待办', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 10:27:25');
INSERT INTO `tp_path` VALUES ('10111', '26', '任务管理-任务管理-全部客户', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 10:27:42');
INSERT INTO `tp_path` VALUES ('10112', '27', '任务管理-任务管理-投诉客户', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 10:28:05');
INSERT INTO `tp_path` VALUES ('10113', '28', '任务管理-任务管理-添加客户', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 14:02:43');
INSERT INTO `tp_path` VALUES ('10114', '29', '任务管理-任务管理-查看外出计划', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 14:03:05');
INSERT INTO `tp_path` VALUES ('10115', '30', '任务管理-任务管理-跟进', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 14:03:23');
INSERT INTO `tp_path` VALUES ('10116', '31', '任务管理-任务管理-跟进-推送商家', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 15:16:12');
INSERT INTO `tp_path` VALUES ('10117', '33', '订单管理-成交订单', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 16:36:17');
INSERT INTO `tp_path` VALUES ('10118', '34', '订单管理-金融订单', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 16:36:34');
INSERT INTO `tp_path` VALUES ('10119', '35', '订单管理-维保订单', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 16:36:47');
INSERT INTO `tp_path` VALUES ('10120', '1', '登陆模块', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:11:33', '2016-10-25 17:11:33');
INSERT INTO `tp_path` VALUES ('10121', '2', '首页', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:11:58', '2016-10-25 17:11:58');
INSERT INTO `tp_path` VALUES ('10122', '3', '订单管理', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:12:22', '2016-10-25 17:12:22');
INSERT INTO `tp_path` VALUES ('10123', '4', '订单管理-竞价订单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:12:43', '2016-10-25 17:12:43');
INSERT INTO `tp_path` VALUES ('10124', '5', '订单管理-成交确认', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:12:56', '2016-10-25 17:12:56');
INSERT INTO `tp_path` VALUES ('10125', '6', '交易佣金-本月账单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:13:43', '2016-10-25 17:13:43');
INSERT INTO `tp_path` VALUES ('10126', '7', '交易佣金-历史账单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:13:51', '2016-10-25 17:13:51');
INSERT INTO `tp_path` VALUES ('10127', '8', '交易佣金-交易明细', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:13:59', '2016-10-25 17:13:59');
INSERT INTO `tp_path` VALUES ('10128', '9', '金牌商家计划-本月账单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:14:31', '2016-10-25 17:14:31');
INSERT INTO `tp_path` VALUES ('10129', '10', '金牌商家计划-历史账单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:14:47', '2016-10-25 17:14:47');
INSERT INTO `tp_path` VALUES ('10130', '11', '金融服务-金融订单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:15:08', '2016-10-25 17:15:08');
INSERT INTO `tp_path` VALUES ('10131', '12', '金融服务-订单结算', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:15:23', '2016-10-25 17:15:23');
INSERT INTO `tp_path` VALUES ('10132', '13', '维修保养', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:15:54', '2016-10-25 17:15:54');
INSERT INTO `tp_path` VALUES ('10133', '14', '基本设置-人员管理', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:16:11', '2016-10-25 17:16:11');
INSERT INTO `tp_path` VALUES ('10134', '15', '基本设置-车型管理', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:16:26', '2016-10-25 17:16:26');
INSERT INTO `tp_path` VALUES ('10135', '16', '基本设置-位置管理', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:16:34', '2016-10-25 17:16:34');
INSERT INTO `tp_path` VALUES ('10136', '17', '基本设置-结算账户', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:16:41', '2016-10-25 17:16:41');
INSERT INTO `tp_path` VALUES ('10137', '18', '统计报表', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:16:49', '2016-10-25 17:16:49');
INSERT INTO `tp_path` VALUES ('10138', '19', '信用评价', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:17:12', '2016-10-25 17:17:12');
INSERT INTO `tp_path` VALUES ('10139', '20', '专题活动', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:17:28', '2016-10-25 17:17:28');

-- ----------------------------
-- Table structure for `tp_product`
-- ----------------------------
DROP TABLE IF EXISTS `tp_product`;
CREATE TABLE `tp_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short` varchar(10) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product
-- ----------------------------
INSERT INTO `tp_product` VALUES ('1', '惠买车', '惠买车平台', '正常', '腰立辉', '腰立辉', '2016-09-16 22:04:58', '2016-09-16 22:04:58');
INSERT INTO `tp_product` VALUES ('2', '自动化', '自动化平台', '正常', '腰立辉', '腰立辉', '2016-09-16 22:07:52', '2016-09-16 22:07:52');
INSERT INTO `tp_product` VALUES ('10', '阿斯达', '水电费212', '正常', '腰立辉', '腰立辉', '2016-11-10 17:17:26', '2016-11-11 16:30:10');

-- ----------------------------
-- Table structure for `tp_program`
-- ----------------------------
DROP TABLE IF EXISTS `tp_program`;
CREATE TABLE `tp_program` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `prono` varchar(30) DEFAULT '',
  `program` varchar(50) DEFAULT NULL,
  `prodid` int(11) DEFAULT NULL,
  `prost` varchar(6) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT '0000-00-00',
  `manager` varchar(10) DEFAULT NULL,
  `testgp` varchar(50) DEFAULT NULL,
  `ptype` varchar(8) DEFAULT '简要',
  `pm` varchar(10) DEFAULT NULL,
  `develop` varchar(10) DEFAULT NULL,
  `retype` varchar(10) DEFAULT '需求新增',
  `relevel` varchar(5) DEFAULT '一般需求',
  `exponline` date DEFAULT '0000-00-00',
  `profile` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_program
-- ----------------------------
INSERT INTO `tp_program` VALUES ('45', 'Auto1609.2', '王鑫彤测试管理验收', '2', '进行中', '2016-09-22', '2016-10-31', '腰立辉', 'Auto', '简要', '腰立辉', '王鑫彤', '新项目', '一般需求', '2016-10-31', '																																																															asdasd																																																																		', '腰立辉', '腰立辉', '2016-10-13 09:54:53', '2016-11-11 15:31:34');
INSERT INTO `tp_program` VALUES ('46', 'OP1609.1', '热销车型价格库', '1', '已上线', '2016-09-22', '2016-10-14', '曹玉芳', 'OP', '简要', '王艳梅', null, '需求新增', '一般需求', '2016-10-14', '<p>\r\n	1、 热销车型车款维护：支持绑定买车顾问及电销顾问，支持手工添加车型车款；</p>\r\n<p>\r\n	2、 报价师报价功能：买车顾问需要定时提交已分配车型的价格信息，可查看自己已报的价格及状态；电销顾问可以确认买顾的报价；</p>\r\n<p>\r\n	3、 价格库：城市+车况+颜色+商家为一条价格，用户客户在价格库中查询车型车款的价格信息；</p>\r\n<p>\r\n	4、 城市管理者可查看买顾完成报价的情况；</p>\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n	</tbody>\r\n</table>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:39:39', '2016-10-27 11:39:39');
INSERT INTO `tp_program` VALUES ('24', 'Auto1608.1', '自动化平台一期', '2', '进行中', '2016-07-21', '2016-09-30', '孟军良', 'Auto', '简要', '腰立辉', null, '需求新增', '一般需求', '2016-08-13', '<p>\r\n	简介</p>\r\n', '腰立辉', '腰立辉', '2016-09-23 10:55:09', '2016-11-02 16:17:57');
INSERT INTO `tp_program` VALUES ('47', 'Auto1609.3', 'Access原型设计', '2', '进行中', '2016-09-23', '2016-09-30', '腰立辉', 'Auto', '简要', null, null, '需求新增', '一般需求', '0000-00-00', null, '腰立辉', '腰立辉', '2016-09-23 09:42:22', '2016-09-23 09:42:07');
INSERT INTO `tp_program` VALUES ('52', 'OP1610.4', '银行产品接入金融结算优化', '1', '已上线', '2016-10-20', '2016-10-25', '曹玉芳', 'OP', '简要', '胡春阳', null, '新项目', '一般需求', '2016-10-27', '<p>\r\n	涉及系统：惠买车商家运营系统、惠买车商家订金管理系统</p>\r\n<p>\r\n	需求原因：银行金融产品接入，引入金融类别概念，金融政策需要支持按照金融类别配置，同时丰富金融类别政策配置项。</p>\r\n<p>\r\n	1、 金融类别政策配置；</p>\r\n<p>\r\n	2、 经销商政策配置；</p>\r\n<p>\r\n	3、 经销商类别配置；</p>\r\n<p>\r\n	4、 收款账户维护；</p>\r\n<p>\r\n	5、 金融奖励政策配置；</p>\r\n<p>\r\n	6、 生成账单逻辑调整；</p>\r\n<p>\r\n	7、 金融服务开通逻辑调整。&nbsp;&nbsp;</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:39:56', '2016-10-27 11:39:56');
INSERT INTO `tp_program` VALUES ('53', 'B1610.1', '电销二期-客户转出给商家', '1', '已上线', '2016-10-20', '2016-10-27', '郭佩佩', 'B', '简要', null, null, '需求新增', '一般需求', '2016-10-27', null, '腰立辉', '腰立辉', '2016-10-27 11:41:48', '2016-10-27 11:41:48');
INSERT INTO `tp_program` VALUES ('54', 'OP1610.5', '电商CRM基盘客户运营', '1', '已上线', '2016-10-18', '2016-10-18', '李小梅', 'OP', '简要', '田鑫', null, '需求新增', '一般需求', '2016-10-25', '<p>\r\n	1.增加基盘客户运营模块，包括任务列表和任务创建两部分。</p>\r\n<p>\r\n	2.基盘客户创建分为：任务设置、客户筛选和客户过滤三个步骤。</p>\r\n<p>\r\n	3.支持创建买车顾问待办任务和推送短信两种任务类型。</p>\r\n<p>\r\n	4.新增特别任务待办，提供活动说明作为待办内容，沿用常规待办的处理操作方式。</p>\r\n<p>\r\n	5.规范CRM待办提醒消息跳转规则和落地页。</p>\r\n<p>\r\n	6.调整成交客户收集的相关权限，区域总监和城市经理可以填写成交信息。订单成交状态会影响信息填写入口开关。</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:39:44', '2016-10-27 11:39:44');
INSERT INTO `tp_program` VALUES ('50', 'OP1610.2', '营买分工二期', '1', '已完成', '2016-10-19', '2016-11-01', '曹玉芳', 'OP', '简要', '胡春阳', null, '需求新增', '一般需求', '2016-11-08', '', '腰立辉', '腰立辉', '2016-10-20 15:04:57', '2016-11-09 09:30:35');
INSERT INTO `tp_program` VALUES ('51', 'OP1610.3', '买顾创建顾问订单', '1', '已上线', '2016-10-19', '2016-10-27', '腰立辉', 'OP', '简要', '田鑫', null, '新项目', '紧急需求', '0000-00-00', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"td1\" valign=\"middle\">\r\n				<p class=\"p1\">\r\n					<span class=\"s1\">1.</span><span class=\"s2\">&nbsp; </span><span class=\"s1\">电商CRM买顾端的客户详情和常规待办页增加&ldquo;推送商家&rdquo;按钮，对应创建买顾订单操作。</span></p>\r\n				<p class=\"p1\">\r\n					<span class=\"s1\">2.</span><span class=\"s2\">&nbsp; </span><span class=\"s1\">新增创建买顾订单页面，由买顾完善客户信息后提交，订单会直接推送商家确认。</span></p>\r\n				<p class=\"p1\">\r\n					<span class=\"s1\">3.</span><span class=\"s2\">&nbsp; </span><span class=\"s1\">订单管理模块的订单列表增加创建人列，区分创建订单的角色，呈现创建人姓名。</span></p>\r\n			</td>\r\n			<td class=\"td2\" valign=\"middle\">\r\n				<p class=\"p2\">\r\n					&nbsp;</p>\r\n			</td>\r\n			<td class=\"td2\" valign=\"middle\">\r\n				<p class=\"p2\">\r\n					&nbsp;</p>\r\n			</td>\r\n			<td class=\"td2\" valign=\"middle\">\r\n				<p class=\"p2\">\r\n					&nbsp;</p>\r\n			</td>\r\n			<td class=\"td2\" valign=\"middle\">\r\n				<p class=\"p2\">\r\n					&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:44:39', '2016-11-10 14:07:45');
INSERT INTO `tp_program` VALUES ('55', 'C1610.1', '惠买车PC站点拆分以及车源页SEO优化', '1', '已上线', '2016-09-28', '2016-10-13', '王朋', 'C', '简要', '无', null, '需求变更', '一般需求', '2016-10-13', '<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" hspace=\"0\" vspace=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"left\">\r\n				<p style=\"margin-left:42.0pt;\">\r\n					1、订单流程、订单列表、订单报价等；</p>\r\n				<p style=\"margin-left:42.0pt;\">\r\n					2、支付功能、支付宝、微信、快捷支付等；</p>\r\n				<p style=\"margin-left:42.0pt;\">\r\n					3、用户中心、修改密码、修改个人信息等；</p>\r\n				<p style=\"margin-left:42.0pt;\">\r\n					4、车源页SEO优化。</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:41:23', '2016-10-27 11:41:23');
INSERT INTO `tp_program` VALUES ('56', 'B1610.2', '金融平台对接广发银行类金融产品', '1', '已上线', '2016-10-20', '2016-10-27', '郭佩佩', 'B', '简要', '赵爽', null, '需求新增', '一般需求', '2016-10-18', '<p align=\"left\" style=\"margin-left:18pt;\">\r\n	1、同步广发银行金融套餐基础数据</p>\r\n<p align=\"left\" style=\"margin-left:18pt;\">\r\n	2、新增业务类别管理页面</p>\r\n<p align=\"left\" style=\"margin-left:18pt;\">\r\n	3、优化套餐管理页面，根据套餐修改类别等功能</p>\r\n<p align=\"left\" style=\"margin-left:18pt;\">\r\n	4、优化订单管理页面及功能，广发类金融订单不推送易鑫，支持修改订单状态，新增导出订单详情功能等</p>\r\n<p align=\"left\" style=\"margin-left:18pt;\">\r\n	5、兼容广发银行金融产品及订单</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	6、金融平台提供各系统的接口修改等</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:41:54', '2016-10-27 11:41:54');
INSERT INTO `tp_program` VALUES ('57', 'OP1610.6', '预充值超时挂接优化', '1', '已上线', '2016-10-20', '2016-10-11', '曹玉芳', 'OP', '简要', '胡春阳', null, '需求变更', '一般需求', '2016-10-11', '<p>\r\n	业务方面不限制预充值合同金额超时使用，所以在生成预月结单时去除合同在有效期的限制，只要合同金额有剩余，就拆单挂合同；已被确认成月结单的保持不变，不可调整</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:39:32', '2016-10-27 11:39:32');
INSERT INTO `tp_program` VALUES ('58', 'B1610.3', 'OP直销管理优化', '1', '已上线', '2016-10-20', '2016-10-11', '田亮', 'B', '简要', '王侃', null, '需求变更', '一般需求', '2016-10-11', '<p>\r\n	1. 核销项目-易湃结算账号对接及红包金额提现</p>\r\n<p>\r\n	&nbsp;&nbsp; 1) 项目新建及编辑新增是否结算、是否结算审核</p>\r\n<p>\r\n	&nbsp;&nbsp; 2) 订单管理发票审核通过后显示结算审核按钮</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:42:14', '2016-10-27 11:42:14');
INSERT INTO `tp_program` VALUES ('59', 'C1610.2', 'wap新支付站点', '1', '已上线', '2016-10-20', '2016-10-11', '师冬冬', 'C', '简要', '无', null, '需求变更', '一般需求', '2016-10-11', '<p>\r\n	wap、H5下单支付、订单详情支付地址调整</p>\r\n<p>\r\n	以前支付地址：<a href=\"http://i.m.huimaiche.com/order/payable2.aspx\">http://i.m.huimaiche.com/order/payable2.aspx</a></p>\r\n<p>\r\n	现在支付地址：<a href=\"http://i.m.huimaiche.com/pay/payable2.aspx\">http://i.m.huimaiche.com/pay/payable2.aspx</a></p>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:41:28', '2016-10-27 11:41:28');
INSERT INTO `tp_program` VALUES ('60', 'B1610.4', '电销系统增加客户转出给买顾功能', '1', '已上线', '2016-10-20', '2016-10-11', '郭佩佩', 'B', '简要', '王艳梅', null, '需求新增', '一般需求', '2016-10-11', '<p align=\"left\" style=\"margin-left:18pt;\">\r\n	1、电销坐席客户捂热成H级以后，增加转出给买顾顾问的功能；</p>\r\n<p align=\"left\" style=\"margin-left:18pt;\">\r\n	2、新增买顾订单下单功能，电销顾问在客户转出页面填写相关内容并生成买顾订单，同时完成一次报价；</p>\r\n<p align=\"left\" style=\"margin-left:18pt;\">\r\n	3、客户转出给买顾后，生成&ldquo;电销客户&rdquo;待办，由买顾跳转进买车顾问订单详情页进行处理；客户转出后，有买顾完成客户后续跟进；</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	4、增加&ldquo;电销客户&rdquo;待办系统消息。</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:42:19', '2016-10-27 11:42:19');
INSERT INTO `tp_program` VALUES ('62', 'B1610.5', '买顾、电销客户分配规则优化', '1', '已上线', '2016-10-20', '2016-10-17', '郭佩佩', 'B', '简要', '王艳梅', null, '需求变更', '一般需求', '2016-10-17', '<p>\r\n	1、买顾顾问分单规则中，增加&ldquo;同城下单分配&rdquo;节点，同城订单（购车城市、上牌城市一直的订单）下单时分配，非同城订单支付后分配买车顾问；</p>\r\n<p>\r\n	2、电销顾问分单规则调整为：当天新客户平均分配给接单的电销坐席</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:42:09', '2016-10-27 11:42:09');
INSERT INTO `tp_program` VALUES ('63', 'C1610.3', '团购页面礼品修改', '1', '已上线', '2016-10-20', '2016-10-10', '王梦蝶', 'C', '简要', '任宝生', null, '需求变更', '一般需求', '2016-10-10', '<p class=\"p1\">\r\n	<span class=\"s1\">由于冰箱奖品的库存告急，需要团购页面针对以下城市的冰箱礼品进行下线，辛苦将团购详情页中&ldquo;现场抽冰箱&rdquo;礼品删除，另下图冰箱图片还请麻烦调整，感谢</span><span class=\"s2\">~</span></p>\r\n<p class=\"p1\">\r\n	<span class=\"s2\">&nbsp;&nbsp;&nbsp;&nbsp;<b>&nbsp;&nbsp;&nbsp;&nbsp; </b></span><span class=\"s3\"><b>冰箱下线城市：</b>哈尔滨、沈阳、长春、大连、长沙、武汉、济南、青岛、潍坊、郑州、苏州、合肥、南京、成都、重庆、昆明。</span></p>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:41:33', '2016-10-27 11:41:33');
INSERT INTO `tp_program` VALUES ('64', 'OP1610.7', '营买分工功能优化一期', '1', '已上线', '2016-10-20', '2016-10-08', '李小梅', 'OP', '简要', '胡春阳', null, '需求变更', '一般需求', '2016-10-08', '<p style=\"margin-left:18.0pt;\">\r\n	1、经销商与营顾、买顾的权限配置&amp;数据初始化；</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	2、预付费月结单增加上传附件功能；</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	3、后付费月结单生成合同传参调整&amp;增加对应营顾信息；</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	4、同步集团CRM主账号及失败报警邮件；</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	5、ERP签约地区下线；</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	6、经销商黑名单功能优化。</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 13:17:23', '2016-10-27 13:17:23');
INSERT INTO `tp_program` VALUES ('65', 'C1610.4', '惠买车App 3.3.1版本', '1', '已上线', '2016-10-20', '2016-10-21', '王梦蝶', 'C', '简要', '郭嘉', null, '升级版本', '一般需求', '2016-10-21', '<p>\r\n	更换惠买车App logo，在logo右下角加上双十一标识</p>\r\n<p>\r\n	以上内容测试通过。</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:41:13', '2016-10-27 11:41:13');
INSERT INTO `tp_program` VALUES ('66', 'B1610.6', '惠买车顾问版APP-金融产品查询接口优化', '1', '已上线', '2016-10-25', '2016-10-25', '郭佩佩', 'B', '简要', '王艳梅', null, '新项目', '一般需求', '2016-10-25', '<p style=\"margin-left:18.0pt;\">\r\n	金融产品查询接口优化，金融订单下单页面，筛选金融方案处增加&ldquo;经销商&rdquo;判断，依据买顾已选&ldquo;城市+车款+商家&rdquo;进行筛选呈现金融产品</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:41:59', '2016-10-27 11:41:59');
INSERT INTO `tp_program` VALUES ('67', 'OP1610.8', '订单增加商家及运营操作历史', '1', '已上线', '2016-10-27', '2016-10-25', '孔洋', 'OP', '简要', '王艳梅', null, '功能优化', '一般需求', '2016-10-25', '<p style=\"margin-left:18.0pt;\">\r\n	1.&nbsp; 网销通、订金管理系统中由商家、运营对订单（或订金）进行的操作，导致订单状态发生变化（成交或驳回、退单）时，记录操作历史。。</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:39:49', '2016-10-27 11:39:49');
INSERT INTO `tp_program` VALUES ('68', 'B1610.7', '纳智捷项目惠买车及京东落地', '1', '已上线', '2016-10-25', '2016-10-25', '田亮', 'B', '简要', '赵爽', null, '功能优化', '一般需求', '2016-10-25', '<p style=\"margin-left:21.0pt;\">\r\n	1.&nbsp;&nbsp; 创建京东PC与WAP端站点</p>\r\n<p style=\"margin-left:21.0pt;\">\r\n	2.&nbsp;&nbsp; 将惠买车PC、WAP端页面全部功能移植到京东站点下，替换京东页头和页尾</p>\r\n<p style=\"margin-left:21.0pt;\">\r\n	3.&nbsp;&nbsp; 通过tracker区分线索来源</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:42:04', '2016-10-27 11:42:04');
INSERT INTO `tp_program` VALUES ('69', 'C1610.5', '惠买车移动站团购信息调整', '1', '已上线', '2016-10-27', '2016-10-25', '王朋', 'C', '简要', '任宝生', null, '临时修正程序', '一般需求', '2016-10-25', '<p style=\"margin-left:42.0pt;\">\r\n	1、Wap站、APP站；</p>\r\n<p style=\"margin-left:42.0pt;\">\r\n	当历史最低折扣小于5折或者大于9折时，团购列表、详情不显示历史最低折扣；</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:41:03', '2016-10-27 11:41:03');
INSERT INTO `tp_program` VALUES ('70', 'C1610.6', 'wap站精准投放二期', '1', '已上线', '2016-10-27', '2016-10-25', '师冬冬', 'C', '简要', '', null, '功能优化', '一般需求', '2016-10-25', '<p>\r\n	精准投放二期下单页调整</p>\r\n<p>\r\n	1、调整吸底提交订单按钮</p>\r\n<p>\r\n	2、增加底部介绍信息</p>\r\n<p>\r\n	3、调整页面布局</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:41:08', '2016-10-27 11:41:08');
INSERT INTO `tp_program` VALUES ('71', 'C1610.7', '购车分享加精增加抽奖机会', '1', '已上线', '2016-10-27', '2016-10-21', '高小欠', 'C', '简要', '赵晔', null, '功能优化', '一般需求', '2016-10-21', '<p>\r\n	购车分享活动抽奖机会获得：</p>\r\n<p>\r\n	原来：</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	1.&nbsp; 审核通过</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	2.&nbsp; 添加推荐块</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	3.&nbsp; 分享积赞审核通过</p>\r\n<p>\r\n	改为：</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	4.&nbsp; 审核通过</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	5.&nbsp; 推送状态为已推送</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	6.&nbsp; 分享积赞审核通过</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 11:41:19', '2016-10-27 11:41:19');
INSERT INTO `tp_program` VALUES ('72', 'B1610.8', '惠买车客服系统二期电销转出客户给商家', '1', '已上线', '2016-10-27', '2016-10-20', '郭佩佩', 'B', '简要', '王艳梅', null, '新项目', '一般需求', '2016-10-20', '<p align=\"left\" style=\"margin-left:18pt;\">\r\n	1、电销系统增加客户转出给商家的功能，支持电销顾问创建订单并推送给商家，订单转出时支持使用优惠券；订单创建后状态为&ldquo;待商家确认&rdquo;；</p>\r\n<p align=\"left\" style=\"margin-left:18pt;\">\r\n	2、增加电销订单管理功能，电销顾问可查看自己已创建的买顾订单及详情；管理者可查款全部电销的订单。电销顾问可分别查看&ldquo;我的订单&rdquo;、&ldquo;待商家确认订单&rdquo;、&ldquo;成交订单&rdquo;</p>\r\n<p align=\"left\" style=\"margin-left:18pt;\">\r\n	3、新增买车顾问订单历史；</p>\r\n<p align=\"left\" style=\"margin-left:18pt;\">\r\n	4、电销顾问对转出给买顾的订单无操作权，对转给商家的订单有操作权，各状态下的操作同买顾处理订单流程一致；</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	5、电销顾问创建并推送给商家的订单，在商家端呈现电销顾问的信息。</p>\r\n<p>\r\n	底层逻辑优化</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 12:53:37', '2016-10-27 12:53:37');
INSERT INTO `tp_program` VALUES ('73', 'C1610.8', 'IM系统底层优化', '1', '已上线', '2016-10-27', '2016-10-20', '张霞', 'C', '简要', '郭嘉', null, '功能优化', '一般需求', '2016-10-20', '<p align=\"left\">\r\n	发送接收消息</p>\r\n<p align=\"left\">\r\n	2、获取历史消息</p>\r\n<p align=\"left\">\r\n	3、Push消息</p>\r\n<p align=\"left\">\r\n	4、黑名单测试</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 12:56:04', '2016-10-27 12:56:04');
INSERT INTO `tp_program` VALUES ('74', 'C1610.9', '惠买车Wap端订单流程接口化', '1', '已上线', '2016-10-27', '2016-10-20', '王梦蝶', 'C', '简要', '王明知', null, '功能优化', '一般需求', '2016-10-20', '<p>\r\n	惠买车Wap端订单接口化</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 12:57:52', '2016-10-27 12:57:52');
INSERT INTO `tp_program` VALUES ('75', 'B1610.9', '直销后台优化', '1', '已上线', '2016-10-27', '2016-10-08', '郑阿旬', 'B', '简要', '王侃', null, '功能优化', '一般需求', '2016-10-08', '<p>\r\n	直销后台及网销通：</p>\r\n<p style=\"margin-left:21.0pt;\">\r\n	1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 直销管理op中项目类型配置中新增&ldquo;易增量&rdquo;的项目类型；</p>\r\n<p style=\"margin-left:21.0pt;\">\r\n	2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 项目类型为&ldquo;易增量&rdquo;的项目，在网销通促销活动列表中不显示该类型的项目活动。</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 13:00:47', '2016-10-27 13:00:47');
INSERT INTO `tp_program` VALUES ('76', 'C1610.10', 'PC支付页实时数据提醒，优惠券文案调整', '1', '已上线', '2016-10-27', '2016-10-27', '岳丹丹', 'C', '简要', '钱丽梅、谢芳', null, '新项目', '一般需求', '2016-10-27', '<p style=\"margin-left:18.0pt;\">\r\n	1.&nbsp; 支付页实时数据提醒</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	2.&nbsp; 优惠券文案调整</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 13:10:20', '2016-11-02 10:52:01');
INSERT INTO `tp_program` VALUES ('77', 'C1610.11', '导购图片效果优化', '1', '已上线', '2016-10-27', '2016-09-29', '王朋', 'C', '简要', '任宝生', null, '功能优化', '一般需求', '2016-09-29', '<p>\r\n	首页列表、车主分享，标签页列表、正文页相关文章，相应图片原图自适应，不做图片拉伸效果；</p>\r\n', '腰立辉', '腰立辉', '2016-10-27 13:18:46', '2016-10-27 13:18:46');
INSERT INTO `tp_program` VALUES ('78', 'C1610.12', '大客户内购', '1', '已上线', '2016-10-27', '2016-09-29', '王朋', 'C', '简要', '赵爽', null, '新项目', '一般需求', '2016-09-29', '<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" hspace=\"0\" vspace=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"left\">\r\n				<p style=\"margin-left:42.0pt;\">\r\n					1、PC端内购平台搭建；</p>\r\n				<p style=\"margin-left:42.0pt;\">\r\n					2、完成登录、身份认证、邮箱认证、礼品卡活动报名、上传购车申请表申请领取礼品等功能；</p>\r\n				<p style=\"margin-left:42.0pt;\">\r\n					3、管理后台优化企业管理，新增活动管理、内购用户信息查看功能；</p>\r\n				<p style=\"margin-left:42.0pt;\">\r\n					4、优化客户报名线索，新增审核购车申请表功能，及相关细节优化；</p>\r\n				<p style=\"margin-left:42.0pt;\">\r\n					5、调用礼品接口发放京东卡功能；</p>\r\n				<p style=\"margin-left:42.0pt;\">\r\n					6、礼品投放接口以及文案调整。</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '腰立辉', '腰立辉', '2016-10-27 13:20:01', '2016-10-27 13:20:01');
INSERT INTO `tp_program` VALUES ('79', 'OP1610.9', '易鑫融资款代收代付需求评审', '1', '已完成', '2016-10-31', '2016-11-07', '孔洋', 'OP', '简要', '胡春阳', null, '新项目', '一般需求', '2016-11-07', '', '腰立辉', '腰立辉', '2016-10-31 09:45:41', '2016-11-11 15:57:56');
INSERT INTO `tp_program` VALUES ('80', 'OP1611.10', '买顾创建顾问订单（优惠券样式调整）', '1', '已上线', '2016-11-01', '2016-11-01', '腰立辉', 'OP', '简要', null, null, '需求新增', '一般需求', '2016-11-01', null, '腰立辉', '腰立辉', '2016-11-02 09:36:28', '2016-11-04 09:50:02');
INSERT INTO `tp_program` VALUES ('81', 'C1611.13', 'pc支付页优化', '1', '已上线', '2016-11-02', '2016-11-01', '师冬冬', 'C', '简要', '王明知', null, '功能优化', '一般需求', '2016-11-01', '<p>\r\n	1、支付页面布局调整</p>\r\n<p>\r\n	2、增加XX人支付订金、评价X分钟获得底价</p>\r\n<p>\r\n	3、增加订单详情弹层显示</p>\r\n', '腰立辉', '腰立辉', '2016-11-02 10:47:32', '2016-11-02 10:49:16');
INSERT INTO `tp_program` VALUES ('82', 'C1611.14', '礼品系统bug修复', '1', '已上线', '2016-11-01', '2016-11-01', '岳丹丹', 'C', '简要', '谢芳', null, '临时修正程序', '一般需求', '2016-11-01', '<p>\r\n	&nbsp;PC,WAP,APP 惠买车前端礼品，领取规则，换行处理</p>\r\n', '腰立辉', '腰立辉', '2016-11-02 10:50:18', '2016-11-02 10:50:54');
INSERT INTO `tp_program` VALUES ('83', 'C1611.15', '惠买车App 3.3.2', '1', '已上线', '2016-11-02', '2016-11-09', '王梦蝶', 'C', '简要', '郭嘉、涂湾湾', null, '新项目', '紧急需求', '2016-11-09', '<p>\r\n	订单详情页-报价列表</p>\r\n<p>\r\n	2、订单详情页-成交状态增加口碑入口</p>\r\n<p>\r\n	3、礼品后置需求</p>\r\n<p>\r\n	4、车源页增加评测导购文章</p>\r\n<p>\r\n	5、支付页面优化</p>\r\n<p>\r\n	6、异地订单限制</p>\r\n<p>\r\n	7、买顾订单显示</p>\r\n<p>\r\n	8、底价订阅</p>\r\n<p>\r\n	9、热销排行</p>\r\n<p>\r\n	10、车源页购车须知&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n<p>\r\n	11、启动页广告加&ldquo;跳过广告&rdquo;</p>\r\n', '腰立辉', '腰立辉', '2016-11-02 10:51:44', '2016-11-10 14:03:06');
INSERT INTO `tp_program` VALUES ('92', 'OP1611.11', '营买分工变更二期—OP功能优化', '1', '已上线', '2016-11-04', '2016-11-08', '李小梅', 'OP', '简要', '胡春阳', null, '功能优化', '一般需求', '2016-11-08', '<p style=\"margin-left:18.0pt;\">\r\n	1、经销商管理权限优化；</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	2、月结单生成合同增加逻辑限制；</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	3、预月结单和月结单详情增加买顾信息；</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	4、月结单关联合同状态及存档状态；</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	5、权限配置增加批量和导出功能；</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	6、预收入推送ERP增加手工汇总和标记已推送功能；</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	7、金融政策配置批量导入增加条数限制；</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	8、网销通排期和导出增加排期号；</p>\r\n<p>\r\n	9、金牌合同作废重出自动替换每日邮件提醒</p>\r\n', '腰立辉', '腰立辉', '2016-11-09 09:30:20', '2016-11-09 09:30:20');
INSERT INTO `tp_program` VALUES ('85', 'C1611.17', '双11专题（pc，wap）', '1', '已上线', '2016-10-31', '2016-10-31', '高小欠', 'C', '简要', '刘佳', null, '升级版本', '一般需求', '2016-10-31', '<p>\r\n	双十一专题：</p>\r\n<p>\r\n	PC版</p>\r\n<p>\r\n	WAP版（APP兼容）</p>\r\n', '腰立辉', '腰立辉', '2016-11-02 10:53:54', '2016-11-02 10:54:31');
INSERT INTO `tp_program` VALUES ('86', 'B1611.10', '惠买车电销系统', '1', '已上线', '2016-10-31', '2016-10-31', '郭佩佩', 'B', '简要', '张莹莹', null, '新项目', '一般需求', '2016-10-31', '<p style=\"margin-left:18.0pt;\">\r\n	1. 针对F0和F客户的级别变更在客户下单时即进行判断，无需等到客户分配。具体规则为：F0级客户，再次下单级别变更为C；F级客户订单未支付级别不变，订单已支付级别变更为H直接分配给买车顾问</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	2. 当客户已有电销顾问的时候，再次下单无需悬停一小时，直接分配给专属电销顾问即可</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	3.当电销顾问拨打三次未接通/接通后挂断/空号停机 时，直接将客户标记为F0级，解除客户与电顾的关系并关闭待办。</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	4.当客户被电销顾问转出给买车顾问后，如买车顾问将客户战败，需为客户新生成一个电销待办并分配给原有电销顾问</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	5.新生成的F0电销待办落地页中，客户级别选项去掉F0，增加F</p>\r\n<p style=\"margin-left:18.0pt;\">\r\n	6.新生成的F0电销待办，如3次无法联系，直接标记为F级，关闭电销待办并解除与客户的关系</p>\r\n', '腰立辉', '腰立辉', '2016-11-02 10:55:38', '2016-11-02 10:56:01');
INSERT INTO `tp_program` VALUES ('87', 'C1611.18', 'Wap 11月常规专题', '1', '已上线', '2016-10-31', '2016-10-31', '岳丹丹', 'C', '简要', '赵晔', null, '新项目', '一般需求', '2016-10-31', '<p style=\"margin-left:18.0pt;\">\r\n	1.&nbsp; 11月常规专题</p>\r\n', '腰立辉', '腰立辉', '2016-11-02 10:58:43', '2016-11-02 10:59:19');
INSERT INTO `tp_program` VALUES ('88', 'B1611.11', '核销项目OP订单分权限管理', '1', '已上线', '2016-10-27', '2016-10-27', '田亮', 'B', '简要', '王侃', null, '升级版本', '一般需求', '2016-10-27', '<p style=\"margin-left:21.0pt;\">\r\n	1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 核销项目OP中订单管理增加权限设置，可根据角色的权限设置，分别查看和管理惠买车或易车惠项目的订单；</p>\r\n<p style=\"margin-left:21.0pt;\">\r\n	2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 京东抵扣券发码功能中增加订金金额的输入项；</p>\r\n<p style=\"margin-left:21.0pt;\">\r\n	3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 订单发票审核通过后，增加查看发票功能；</p>\r\n<p style=\"margin-left:21.0pt;\">\r\n	4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 订单列表中取消经纪人字段的显示；</p>\r\n', '腰立辉', '腰立辉', '2016-11-02 11:04:54', '2016-11-02 11:05:26');
INSERT INTO `tp_program` VALUES ('89', 'B1611.12', '核销项目OP京东卡发放增加短信通道的设置', '1', '已上线', '2016-10-31', '2016-11-03', '田亮', 'B', '简要', '王侃', null, '功能优化', '紧急需求', '2016-11-03', '<p>\r\n	核销项目OP京东卡发放增加短信通道的设置</p>\r\n', '腰立辉', '腰立辉', '2016-11-03 16:43:14', '2016-11-03 16:43:14');
INSERT INTO `tp_program` VALUES ('90', 'C1611.19', '团购历史最低字段修改', '1', '已上线', '2016-11-01', '2016-11-02', '王朋', 'C', '简要', '任宝生', null, '临时修正程序', '紧急需求', '2016-11-02', '<p class=\"p1\">\r\n	<span class=\"s1\">PC</span><span class=\"s2\">站、</span><span class=\"s1\">Wap</span><span class=\"s2\">站、</span><span class=\"s1\">H5</span><span class=\"s2\">团购列表以及团购详情、</span><span class=\"s1\">APP</span><span class=\"s2\">团购详情历史折扣文案调整线上验证通过。</span></p>\r\n<p class=\"p2\">\r\n	<span class=\"s2\">&nbsp;</span></p>\r\n<p class=\"p1\">\r\n	<span class=\"s1\">APP</span><span class=\"s2\">站团购列表为原生页面，需</span><span class=\"s1\">APP</span><span class=\"s2\">发版进行调整。</span></p>\r\n<p class=\"p2\">\r\n	<span class=\"s2\">&nbsp;</span></p>\r\n', '腰立辉', '腰立辉', '2016-11-09 09:16:20', '2016-11-09 09:16:20');
INSERT INTO `tp_program` VALUES ('91', 'C1611.20', '惠买车Wap站-大客户内购', '1', '已上线', '2016-10-31', '2016-11-03', '王朋', 'C', '简要', '赵爽', null, '新项目', '一般需求', '2016-11-03', '<p class=\"p1\">\r\n	<span class=\"s1\">本次大客户内购</span><span class=\"s2\">Wap</span><span class=\"s1\">功能如下：</span></p>\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"t1\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"td1\" valign=\"top\">\r\n				<p class=\"p2\">\r\n					<span class=\"s3\">1、</span><span class=\"s4\"> </span><span class=\"s3\">Wap端内购平台搭建；</span></p>\r\n				<p class=\"p3\">\r\n					<span class=\"s1\">2、</span><span class=\"s4\"> </span><span class=\"s1\">Wap站登录、身份认证、邮箱认证、礼品卡活动报名、上传购车申请表申请领取礼品等功能；</span></p>\r\n				<p class=\"p2\">\r\n					<span class=\"s3\">3、</span><span class=\"s4\"> </span><span class=\"s3\">内购OP增加wap站</span><span class=\"s6\">banner</span><span class=\"s7\">、礼品卡图片字段；</span></p>\r\n				<p class=\"p2\">\r\n					<span class=\"s3\">4、</span><span class=\"s4\"> </span><span class=\"s7\">地址录入适配优化。</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"p4\">\r\n	<span class=\"s1\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p>\r\n<p class=\"p5\">\r\n	<span class=\"s1\">遗留问题：</span></p>\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"t2\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"td2\" valign=\"top\">\r\n				<p class=\"p2\">\r\n					<span class=\"s1\">1、</span><span class=\"s4\">&nbsp; </span><span class=\"s3\">部分</span><span class=\"s1\">IOS8.0</span><span class=\"s3\">系统上传图片后无法回调，产品确定不作处理；</span></p>\r\n				<p class=\"p2\">\r\n					<span class=\"s1\">2、</span><span class=\"s4\">&nbsp; </span><span class=\"s3\">本次上线后老内购与新内购并行进行，本次不做跳转兼容。</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '腰立辉', '腰立辉', '2016-11-09 09:21:29', '2016-11-09 09:21:29');
INSERT INTO `tp_program` VALUES ('93', 'OP1611.12', '网销通排期增加字段&金牌作废合同替换增加邮件', '1', '已完成', '2016-11-07', '2016-11-16', '孔洋', 'OP', '简要', '胡春阳', null, '功能优化', '一般需求', '2016-11-16', '<p class=\"p1\">\r\n	<span class=\"s1\">1、</span><span class=\"s2\">&nbsp; </span><span class=\"s3\">网销通排期和导出增加排期号字段：</span></p>\r\n<p class=\"p1\">\r\n	<span class=\"s1\">2、</span><span class=\"s2\">&nbsp; </span><span class=\"s3\">金牌合同作废重出自动替换每日汇总发邮件给运营同学：</span></p>\r\n<p class=\"p2\">\r\n	<span class=\"s4\">收件人：</span><span class=\"s3\">jiangyifan; huyang; linl; hucy</span></p>\r\n<p class=\"p1\">\r\n	&nbsp;</p>\r\n<p class=\"p3\">\r\n	<span class=\"s3\">字段：预月结单</span><span class=\"s1\">ID</span><span class=\"s3\">，账单</span><span class=\"s1\">ID</span><span class=\"s3\">，账期，应提合同金额，会员</span><span class=\"s1\">ID</span><span class=\"s3\">，作废合同号，新合同号</span></p>\r\n', '腰立辉', '腰立辉', '2016-11-09 09:32:30', '2016-11-11 16:47:53');
INSERT INTO `tp_program` VALUES ('94', 'C1611.20', '惠买车C端- pc支付优化一期02', '1', '已上线', '2016-11-03', '2016-11-07', '师冬冬', 'C', '简要', '王明知', null, '功能优化', '一般需求', '2016-11-07', '<p>\r\n	Pc支付页优化：</p>\r\n<p>\r\n	1、支付页面布局调整</p>\r\n<p>\r\n	2、增加报价商家信息展示</p>\r\n', '腰立辉', '腰立辉', '2016-11-09 10:35:32', '2016-11-09 10:35:32');
INSERT INTO `tp_program` VALUES ('95', 'B1611.13', '电销三期-电销客户管理', '1', '进行中', '2016-11-07', '2016-11-16', '郭佩佩', 'B', '简要', '', null, '新项目', '一般需求', '2016-11-16', '\r\n', '腰立辉', '腰立辉', '2016-11-09 10:36:42', '2016-11-09 10:36:42');
INSERT INTO `tp_program` VALUES ('96', 'Auto1611.4', '易车首页提供接口 性能测试', '1', '已上线', '2016-11-03', '2016-11-08', '岳丹丹', 'Auto', '简要', '廖为，田尚讯', null, '性能优化', '一般需求', '2016-11-08', '<p>\r\n	一般情况下，测试易车首页接口的并发用户数情况</p>\r\n<p>\r\n	1、多个用户同时访问</p>\r\n<p>\r\n	2、多个用户同时在线，统计服务器的CPU占用率和内存占用率。</p>\r\n<p>\r\n	3、系统响应时间</p>\r\n<p>\r\n	4、TPS大于1200</p>\r\n', '腰立辉', '腰立辉', '2016-11-09 10:38:55', '2016-11-09 10:39:46');
INSERT INTO `tp_program` VALUES ('97', 'OP1611.13', '网销通电销买顾订单增加自动关闭规则', '1', '已上线', '2016-11-09', '2016-11-16', '李小梅', 'OP', '简要', '王侃', null, '功能优化', '一般需求', '2016-11-16', '<p style=\"margin-left:18.0pt;\">\r\n	1、网销通中电销推送的买顾订单，3天商家未确认成交，订单将自动关闭；</p>\r\n<p>\r\n	2、初始化电销的买顾订单。</p>\r\n', '腰立辉', '腰立辉', '2016-11-09 10:41:35', '2016-11-09 10:41:35');
INSERT INTO `tp_program` VALUES ('98', 'C1611.21', 'OP 内容管理系统优化', '1', '已上线', '2016-11-07', '2016-11-08', '岳丹丹', 'C', '简要', '钱丽梅', null, '功能优化', '一般需求', '2016-11-16', '<p style=\"margin-left:21.0pt;\">\r\n	1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 将查看买顾评论权限拆分到区域，以便配置各区域分别查看C端客户点评内容的权限；</p>\r\n<p style=\"margin-left:21.0pt;\">\r\n	2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在审核页面底部增加&ldquo;批量通过&rdquo;、&ldquo;批量驳回&ldquo;按钮；或者是&ldquo;批量通过&rdquo;&ldquo;批量驳回&rdquo;可以吸顶；</p>\r\n<p style=\"margin-left:21.0pt;\">\r\n	3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在驳回原因中，增加一项&ldquo;无效评论&rdquo;选项；</p>\r\n<p style=\"margin-left:21.0pt;\">\r\n	4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 使用火狐浏览器时，点击通过，会出现以下对话框，请处理；</p>\r\n<p>\r\n	笔记本电脑屏幕宽度有限，&ldquo;评价内容&rdquo;不能完全显示，如下图；把&ldquo;评价内容&rdquo;放在第一列，且宽度增加，&ldquo;服务选项&rdquo;宽度也可以增加。其它如&ldquo;星级&rdquo;等宽度可以减少。</p>\r\n', '腰立辉', '腰立辉', '2016-11-09 10:43:34', '2016-11-09 10:44:03');

-- ----------------------------
-- Table structure for `tp_prosys`
-- ----------------------------
DROP TABLE IF EXISTS `tp_prosys`;
CREATE TABLE `tp_prosys` (
  `prosysid` smallint(5) NOT NULL AUTO_INCREMENT,
  `sysid` smallint(6) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`prosysid`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_prosys
-- ----------------------------
INSERT INTO `tp_prosys` VALUES ('56', '54', '24', '腰立辉', '腰立辉', '2016-09-22 10:06:44', '2016-09-22 10:06:44');
INSERT INTO `tp_prosys` VALUES ('67', '4', '45', '腰立辉', '腰立辉', '2016-09-25 19:12:47', '2016-09-25 19:12:47');
INSERT INTO `tp_prosys` VALUES ('61', '4', '47', '腰立辉', '腰立辉', '2016-09-23 09:46:13', '2016-09-23 09:46:13');
INSERT INTO `tp_prosys` VALUES ('68', '11', '46', '腰立辉', '腰立辉', '2016-09-26 11:26:22', '2016-09-26 11:26:22');
INSERT INTO `tp_prosys` VALUES ('62', '56', '48', '腰立辉', '腰立辉', '2016-09-24 20:47:58', '2016-09-24 20:47:58');
INSERT INTO `tp_prosys` VALUES ('63', '4', '48', '腰立辉', '腰立辉', '2016-09-24 20:48:09', '2016-09-24 20:48:09');
INSERT INTO `tp_prosys` VALUES ('64', '56', '49', '腰立辉', '腰立辉', '2016-09-24 21:16:03', '2016-09-24 21:16:03');
INSERT INTO `tp_prosys` VALUES ('65', '4', '49', '腰立辉', '腰立辉', '2016-09-24 21:16:05', '2016-09-24 21:16:05');
INSERT INTO `tp_prosys` VALUES ('69', '11', '50', '腰立辉', '腰立辉', '2016-10-19 12:50:06', '2016-10-19 12:50:06');
INSERT INTO `tp_prosys` VALUES ('70', '54', '45', '王鑫彤', '王鑫彤', '2016-10-21 10:27:07', '2016-10-21 10:27:07');
INSERT INTO `tp_prosys` VALUES ('71', '4', '47', '王鑫彤', '王鑫彤', '2016-10-21 10:57:01', '2016-10-21 10:57:01');
INSERT INTO `tp_prosys` VALUES ('74', '11', '51', '腰立辉', '腰立辉', '2016-10-25 15:17:08', '2016-10-25 15:17:08');
INSERT INTO `tp_prosys` VALUES ('73', '3', '65', '腰立辉', '腰立辉', '2016-10-24 09:21:35', '2016-10-24 09:21:35');
INSERT INTO `tp_prosys` VALUES ('75', '6', '51', '腰立辉', '腰立辉', '2016-10-25 17:11:04', '2016-10-25 17:11:04');
INSERT INTO `tp_prosys` VALUES ('76', '11', '80', '腰立辉', '腰立辉', null, '2016-11-02 09:59:42');

-- ----------------------------
-- Table structure for `tp_risk`
-- ----------------------------
DROP TABLE IF EXISTS `tp_risk`;
CREATE TABLE `tp_risk` (
  `id` smallint(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `risk` text,
  `level` varchar(2) DEFAULT NULL,
  `amethod` text,
  `proid` smallint(6) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `remaks` varchar(200) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_risk
-- ----------------------------
INSERT INTO `tp_risk` VALUES ('1000', '1', '不提交测试，无法完成验收', 'A', '<p>\r\n	暂无方案</p>\r\n', '45', '打开', '', '腰立辉', '腰立辉', '2016-10-28 15:47:24', '2016-09-27 21:07:26');
INSERT INTO `tp_risk` VALUES ('1001', '2', '11', 'C', '<p>\r\n	暂无方案</p>\r\n', '45', '打开', '', '腰立辉', '腰立辉', '2016-11-03 10:44:26', '2016-11-03 11:00:42');

-- ----------------------------
-- Table structure for `tp_rules`
-- ----------------------------
DROP TABLE IF EXISTS `tp_rules`;
CREATE TABLE `tp_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `rules` varchar(300) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `remark` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10039 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_rules
-- ----------------------------
INSERT INTO `tp_rules` VALUES ('10000', '1', '用户名用自己的域账号，密码默认为123456', '需求文档', '10000', '正常', '45', '', '腰立辉', '腰立辉', '2016-10-28 15:21:25', '2016-09-22 15:09:32');
INSERT INTO `tp_rules` VALUES ('10001', '1', '正常注销', '需求文档', '10001', '正常', '45', '', '腰立辉', '腰立辉', '2016-09-22 16:43:37', '2016-09-22 16:43:37');
INSERT INTO `tp_rules` VALUES ('10002', '1', '222', '需求文档', '10116', '正常', '47', '', '腰立辉', '腰立辉', '2016-10-14 14:00:15', '2016-10-14 14:00:15');
INSERT INTO `tp_rules` VALUES ('10003', '1', '未注册客户，按钮禁用，鼠标悬停有提示', '需求原型', '10328', '正常', '51', '', '腰立辉', '腰立辉', '2016-10-25 15:20:04', '2016-10-25 15:20:04');
INSERT INTO `tp_rules` VALUES ('10004', '1', '点击姓名，跳转客户详情', '需求文档', '10336', '正常', '51', '', '腰立辉', '腰立辉', '2016-10-25 15:21:19', '2016-10-25 15:21:19');
INSERT INTO `tp_rules` VALUES ('10005', '1', '车主姓名  限制20个汉字', '需求文档', '10337', '正常', '51', '', '腰立辉', '腰立辉', '2016-10-25 15:36:06', '2016-10-25 15:36:06');
INSERT INTO `tp_rules` VALUES ('10006', '2', '创建订单除优惠券外，各项信息均为必填，需验证信息准确性。  未填写和填写不合法时的提示', '需求文档', '10337', '正常', '51', '', '腰立辉', '腰立辉', '2016-10-25 15:35:48', '2016-10-25 15:35:48');
INSERT INTO `tp_rules` VALUES ('10007', '3', '车主手机11位手机号码', '需求文档', '10337', '正常', '51', '', '腰立辉', '腰立辉', '2016-10-25 15:36:30', '2016-10-25 15:36:30');
INSERT INTO `tp_rules` VALUES ('10008', '4', '上牌城市范围全国，省份城市级联，均必选', '需求文档', '10337', '正常', '51', '', '腰立辉', '腰立辉', '2016-10-25 15:36:56', '2016-10-25 15:36:56');
INSERT INTO `tp_rules` VALUES ('10009', '5', '意向车型品牌、车型、车款级联，品牌影响商家范围', '需求文档', '10337', '正常', '51', '', '腰立辉', '腰立辉', '2016-10-25 15:37:18', '2016-10-25 15:37:18');
INSERT INTO `tp_rules` VALUES ('10010', '6', '购车时间日期选择控件，不可选择早于当前时间', '需求文档', '10337', '正常', '51', '', '腰立辉', '腰立辉', '2016-10-25 15:37:48', '2016-10-25 15:37:48');
INSERT INTO `tp_rules` VALUES ('10011', '7', '选择商家 受购车城市和品牌影响，更换品牌时重置商家', '需求文档', '10337', '正常', '51', '', '腰立辉', '腰立辉', '2016-10-25 15:39:04', '2016-10-25 15:39:04');
INSERT INTO `tp_rules` VALUES ('10012', '8', '商家报价  限制填写0以上整数数字', '需求文档', '10337', '正常', '51', '', '腰立辉', '腰立辉', '2016-10-25 15:38:49', '2016-10-25 15:38:49');
INSERT INTO `tp_rules` VALUES ('10013', '9', '优惠券显示为{金额（有效期）}', '需求文档', '10337', '正常', '80', '', '腰立辉', '腰立辉', '2016-11-02 10:26:05', '2016-11-02 10:31:28');
INSERT INTO `tp_rules` VALUES ('10014', '1', '作废产品不显示', '需求文档', '10002', '正常', '50', '', '腰立辉', '腰立辉', '2016-11-07 09:40:30', '2016-11-07 09:40:30');
INSERT INTO `tp_rules` VALUES ('10015', '1', '所属产品，给出默认值：惠买车', '需求文档', '10007', '正常', '50', '', '腰立辉', '腰立辉', '2016-11-07 09:49:17', '2016-11-07 09:49:17');
INSERT INTO `tp_rules` VALUES ('10016', '2', '分组默认为，当前所在分组', '需求文档', '10007', '正常', '50', '', '腰立辉', '腰立辉', '2016-11-07 09:49:40', '2016-11-07 09:49:40');
INSERT INTO `tp_rules` VALUES ('10017', '3', '项目名称留空', '需求文档', '10007', '正常', '50', '', '腰立辉', '腰立辉', '2016-11-07 09:49:55', '2016-11-07 09:49:55');
INSERT INTO `tp_rules` VALUES ('10018', '4', '负责人默认为自己，下拉选项为当前分组的人员', '需求文档', '10007', '正常', '50', '', '腰立辉', '腰立辉', '2016-11-07 09:50:26', '2016-11-07 09:50:26');
INSERT INTO `tp_rules` VALUES ('10019', '5', '类型，默认为：简要', '需求文档', '10007', '正常', '50', '', '腰立辉', '腰立辉', '2016-11-07 09:50:52', '2016-11-07 09:50:52');
INSERT INTO `tp_rules` VALUES ('10020', '6', '状态，默认为：进行中', '需求文档', '10007', '正常', '50', '', '腰立辉', '腰立辉', '2016-11-07 09:51:08', '2016-11-07 09:51:08');
INSERT INTO `tp_rules` VALUES ('10021', '7', '开始时间，默认为当天', '需求文档', '10007', '正常', '50', '', '腰立辉', '腰立辉', '2016-11-07 09:51:34', '2016-11-07 09:51:34');
INSERT INTO `tp_rules` VALUES ('10022', '8', '结束时间默认为7天后', '需求文档', '10007', '正常', '50', '', '腰立辉', '腰立辉', '2016-11-07 09:51:45', '2016-11-07 09:51:45');
INSERT INTO `tp_rules` VALUES ('10023', '9', '取消，备注字段', '需求文档', '10007', '正常', '50', '', '腰立辉', '腰立辉', '2016-11-07 09:52:00', '2016-11-07 09:52:00');
INSERT INTO `tp_rules` VALUES ('10024', '10', '返回，回到当前分组的项目列表', '需求文档', '10007', '正常', '50', '', '腰立辉', '腰立辉', '2016-11-07 09:52:18', '2016-11-07 09:52:18');
INSERT INTO `tp_rules` VALUES ('10025', '1', '产品不允许修改', '需求文档', '10008', '正常', '50', '', '腰立辉', '腰立辉', '2016-11-07 09:58:25', '2016-11-07 09:58:25');
INSERT INTO `tp_rules` VALUES ('10026', '2', '所在分组不允许修改', '需求文档', '10008', '正常', '50', '', '腰立辉', '腰立辉', '2016-11-07 09:59:21', '2016-11-07 09:59:21');
INSERT INTO `tp_rules` VALUES ('10027', '1', '需求类型，按最新的上线通知书改', '需求文档', '10009', '正常', '45', '', '腰立辉', '腰立辉', '2016-11-07 10:48:48', '2016-11-07 10:48:48');
INSERT INTO `tp_rules` VALUES ('10028', '2', '需求级别要用下拉可选', '需求文档', '10009', '正常', '45', '', '腰立辉', '腰立辉', '2016-11-07 10:49:13', '2016-11-07 10:49:13');
INSERT INTO `tp_rules` VALUES ('10029', '3', '期望上线日期，在项目创建时默认给出，为结束日期', '需求文档', '10009', '正常', '45', '', '腰立辉', '腰立辉', '2016-11-07 10:50:21', '2016-11-07 10:50:21');
INSERT INTO `tp_rules` VALUES ('10030', '1', ' 布局按左右布局，本项目的里程碑列表和添加窗口', '需求文档', '10024', '正常', '45', '', '腰立辉', '腰立辉', '2016-11-07 11:02:34', '2016-11-07 11:02:34');
INSERT INTO `tp_rules` VALUES ('10031', '2', '开始时间默认为当天', '需求文档', '10024', '正常', '45', '', '腰立辉', '腰立辉', '2016-11-07 11:03:01', '2016-11-07 11:03:01');
INSERT INTO `tp_rules` VALUES ('10032', '3', '结束时间默认为明天', '需求文档', '10024', '正常', '45', '', '腰立辉', '腰立辉', '2016-11-07 11:03:19', '2016-11-07 11:03:19');
INSERT INTO `tp_rules` VALUES ('10033', '4', 'ISO文档默认为无文档', '需求文档', '10024', '正常', '45', '', '腰立辉', '腰立辉', '2016-11-07 11:03:44', '2016-11-07 11:03:44');
INSERT INTO `tp_rules` VALUES ('10034', '5', '状态默认为未开始', '需求文档', '10024', '正常', '45', '', '腰立辉', '腰立辉', '2016-11-07 11:03:57', '2016-11-07 11:03:57');
INSERT INTO `tp_rules` VALUES ('10035', '6', '添加成功后，留在添加页面，准备继续添加', '需求文档', '10024', '正常', '45', '', '腰立辉', '腰立辉', '2016-11-07 11:04:35', '2016-11-07 11:04:35');
INSERT INTO `tp_rules` VALUES ('10036', '1', '待确认的系统不允许关联使用', '需求文档', '10030', '正常', '45', '', '腰立辉', '腰立辉', '2016-11-07 11:13:10', '2016-11-07 11:13:10');
INSERT INTO `tp_rules` VALUES ('10037', '2', '关联操作的按钮，放到左侧，最好是用系统编号和名称', '需求文档', '10030', '正常', '45', '', '腰立辉', '腰立辉', '2016-11-07 11:13:43', '2016-11-07 11:13:43');
INSERT INTO `tp_rules` VALUES ('10038', '3', '关联成功后，右侧列表消失，防止重复关联', '需求文档', '10030', '正常', '45', '', '腰立辉', '腰立辉', '2016-11-07 11:14:03', '2016-11-07 11:14:03');

-- ----------------------------
-- Table structure for `tp_scene`
-- ----------------------------
DROP TABLE IF EXISTS `tp_scene`;
CREATE TABLE `tp_scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `type` varchar(8) DEFAULT 'Manual',
  `level` smallint(1) DEFAULT NULL,
  `swho` varchar(20) DEFAULT NULL,
  `swhen` varchar(20) DEFAULT NULL,
  `testip` varchar(200) DEFAULT NULL,
  `scene` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `flow` varchar(300) DEFAULT NULL,
  `sourceid` smallint(6) DEFAULT '0',
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10033 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scene
-- ----------------------------
INSERT INTO `tp_scene` VALUES ('10000', '1', 'A', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建项目-建里程碑', '0', '腰立辉', '腰立辉', '2016-10-28 15:52:35', '2016-09-27 16:25:28');
INSERT INTO `tp_scene` VALUES ('10001', '2', 'M', '2', '默认', '无对应产品时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建产品-建项目-建里程碑-选系统', '0', '腰立辉', '腰立辉', '2016-09-24 00:40:02', '2016-09-24 00:40:02');
INSERT INTO `tp_scene` VALUES ('10002', '3', 'M', '2', '默认', '无被测系统时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建项目-建里程碑-建系统-选系统', '0', '腰立辉', '腰立辉', '2016-09-24 00:40:09', '2016-09-24 00:40:09');
INSERT INTO `tp_scene` VALUES ('10003', '1', 'M', '2', '默认', '空白数据库', '', '建立测试项目', '正常', '48', '登录-件产品-建项目--详情-里程碑-关联系统-', '0', '腰立辉', '腰立辉', '2016-09-24 21:23:31', '2016-09-24 21:23:31');
INSERT INTO `tp_scene` VALUES ('10004', '1', 'M', '2', '默认', '默认', '', '11', '正常', '24', '', '0', '腰立辉', '腰立辉', '2016-09-25 21:23:05', '2016-09-25 21:23:05');
INSERT INTO `tp_scene` VALUES ('10005', '4', 'M', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建项目-建里程碑', '10000', '腰立辉', '腰立辉', '2016-09-25 21:39:18', '2016-09-25 21:38:12');
INSERT INTO `tp_scene` VALUES ('10006', '5', 'M', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目', '正常', '45', '登录-建项目-建里程碑', '10000', '腰立辉', '腰立辉', '2016-09-25 21:42:14', '2016-09-25 21:42:14');
INSERT INTO `tp_scene` VALUES ('10007', '6', 'M', '2', '默认', '无对应产品时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建产品-建项目-建里程碑-选系统', '10001', '腰立辉', null, '2016-09-25 21:46:13', '0000-00-00 00:00:00');
INSERT INTO `tp_scene` VALUES ('10008', '1', 'M', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '47', '登录-建项目-建里程碑', '10000', '腰立辉', null, '2016-09-25 21:53:23', '0000-00-00 00:00:00');
INSERT INTO `tp_scene` VALUES ('10027', '2', 'M', '2', '买顾', '客户已注册', '', '推送商家商家确认', '正常', '51', '', '0', '腰立辉', '腰立辉', '2016-10-25 17:08:33', '2016-10-25 17:08:33');
INSERT INTO `tp_scene` VALUES ('10010', '1', 'M', '2', '管理员', '默认', '', '添加TOP100车款', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-09-27 16:47:46', '2016-09-27 16:47:46');
INSERT INTO `tp_scene` VALUES ('10011', '2', 'M', '2', '管理员', '默认', '', '给TOP100车款批量配置电销和买顾', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-09-27 16:57:28', '2016-09-27 16:57:28');
INSERT INTO `tp_scene` VALUES ('10012', '3', 'M', '2', '默认', '默认', '', '【功能】车型及报价员配置管理', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:32:31', '2016-10-10 13:32:31');
INSERT INTO `tp_scene` VALUES ('10013', '4', 'M', '2', '默认', '默认', '', '【功能】价格收集管理（业务管理）', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:33:14', '2016-10-10 13:33:14');
INSERT INTO `tp_scene` VALUES ('10014', '5', 'M', '2', '默认', '默认', '', '【功能】车型价格库', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:33:49', '2016-10-10 13:33:49');
INSERT INTO `tp_scene` VALUES ('10015', '6', 'M', '2', '默认', '默认', '', '【功能】价格库存管理', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:34:32', '2016-10-10 13:34:32');
INSERT INTO `tp_scene` VALUES ('10016', '7', 'M', '2', '默认', '默认', '', '【功能】库存价格收集', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:34:51', '2016-10-10 13:34:51');
INSERT INTO `tp_scene` VALUES ('10017', '8', 'M', '2', '【功能】', '默认', '', '登陆模块', '正常', '45', '', '0', '腰立辉', '腰立辉', '2016-10-13 09:56:38', '2016-10-13 09:56:38');
INSERT INTO `tp_scene` VALUES ('10018', '9', 'M', '2', '【功能】', '默认', '', '产品库-产品管理', '正常', '45', '', '0', '腰立辉', '腰立辉', '2016-10-13 09:57:06', '2016-10-13 09:57:06');
INSERT INTO `tp_scene` VALUES ('10019', '10', 'M', '2', '【功能】', '默认', '', '项目管理', '正常', '45', '', '0', '腰立辉', '腰立辉', '2016-10-13 09:57:21', '2016-10-13 09:57:21');
INSERT INTO `tp_scene` VALUES ('10021', '11', 'M', '2', '【功能】', '默认', '', '项目-里程碑', '正常', '45', '里程碑下所有子功能', '0', '腰立辉', '腰立辉', '2016-10-17 09:40:20', '2016-10-17 09:40:20');
INSERT INTO `tp_scene` VALUES ('10026', '1', 'M', '2', '买顾', '客户未注册', '', '推送商家', '正常', '51', '', '0', '腰立辉', '腰立辉', '2016-10-25 17:08:03', '2016-10-25 17:08:03');
INSERT INTO `tp_scene` VALUES ('10028', '3', 'M', '2', '买顾', '客户已注册', '', '推送商家商家取消交易', '正常', '51', '', '10027', '腰立辉', '腰立辉', '2016-10-25 17:24:30', '2016-10-25 17:24:30');
INSERT INTO `tp_scene` VALUES ('10029', '4', 'M', '2', '买顾', '客户已注册', '', '推送商家-使用优惠券-商家确认', '正常', '51', '', '10027', '腰立辉', '腰立辉', '2016-10-26 10:01:56', '2016-10-26 10:01:56');
INSERT INTO `tp_scene` VALUES ('10030', '5', 'M', '2', '买顾', '客户已注册', '', '推送商家-使用优惠券-商家取消交易', '正常', '51', '', '10028', '腰立辉', '腰立辉', '2016-10-26 10:02:20', '2016-10-26 10:02:20');
INSERT INTO `tp_scene` VALUES ('10031', '1', 'M', '2', '买顾', '客户已注册', '', '推送商家-使用优惠券-商家确认', '正常', '80', '', '10029', '腰立辉', '腰立辉', '2016-11-02 09:38:51', '2016-11-02 09:39:11');
INSERT INTO `tp_scene` VALUES ('10032', '2', 'M', '2', '买顾', '客户已注册', '', '推送商家-使用优惠券-商家取消交易', '正常', '80', '', '10030', '腰立辉', '腰立辉', '2016-11-02 09:38:56', '2016-11-02 09:39:16');

-- ----------------------------
-- Table structure for `tp_scenefunc`
-- ----------------------------
DROP TABLE IF EXISTS `tp_scenefunc`;
CREATE TABLE `tp_scenefunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `sysno` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `func` varchar(255) DEFAULT NULL,
  `sceneid` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `sourceid` int(11) DEFAULT '0',
  `caseid` int(11) DEFAULT NULL,
  `casestate` varchar(3) DEFAULT '未绑定',
  `casemain` varchar(50) DEFAULT NULL,
  `caseexpected` varchar(200) DEFAULT NULL,
  `num1` varchar(255) DEFAULT NULL,
  `num2` varchar(255) DEFAULT NULL,
  `num3` varchar(255) DEFAULT NULL,
  `num4` varchar(255) DEFAULT NULL,
  `num5` varchar(255) DEFAULT NULL,
  `num6` varchar(255) DEFAULT NULL,
  `num7` varchar(255) DEFAULT NULL,
  `num8` varchar(255) DEFAULT NULL,
  `num9` varchar(255) DEFAULT NULL,
  `num10` varchar(255) DEFAULT NULL,
  `num11` varchar(255) DEFAULT NULL,
  `num12` varchar(255) DEFAULT NULL,
  `num13` varchar(255) DEFAULT NULL,
  `num14` varchar(255) DEFAULT NULL,
  `num15` varchar(255) DEFAULT NULL,
  `num16` varchar(255) DEFAULT NULL,
  `num17` varchar(255) DEFAULT NULL,
  `num18` varchar(255) DEFAULT NULL,
  `num19` varchar(255) DEFAULT NULL,
  `num20` varchar(255) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10222 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scenefunc
-- ----------------------------
INSERT INTO `tp_scenefunc` VALUES ('10038', '3', '10206', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:09', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10039', '4', '10209', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:13', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10036', '1', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:55:50', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10033', '3', '10003', 'Auto.Access', '产品库', '产品-添加', '10000', null, '0', '10003', '已绑定', '正常添加测试产品', '添加成功', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:02:09', '2016-10-14 17:02:09');
INSERT INTO `tp_scenefunc` VALUES ('10031', '1', '10000', 'Auto.Access', '登陆模块', '登录', '10000', '1231', '0', '10000', '已绑定', '正常登陆', '登入系统，并显示用户姓名', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-28 16:10:57', '2016-10-28 16:10:57');
INSERT INTO `tp_scenefunc` VALUES ('10032', '4', '10002', 'Auto.Access', '产品库', '产品列表', '10000', '', '0', '10102', '已绑定', '查看产品列表', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:02:43', '2016-10-14 17:02:43');
INSERT INTO `tp_scenefunc` VALUES ('10037', '2', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:04', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10034', '4', '10001', 'Auto.Access', '登陆模块', '注销', '10000', null, '0', '10002', '已绑定', '正常注销', '登出系统', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:02:19', '2016-10-14 17:02:19');
INSERT INTO `tp_scenefunc` VALUES ('10040', '5', '10210', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:22', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10041', '6', '10211', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:24', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10042', '1', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', '10011', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:57:55', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10043', '2', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', '10011', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:57:57', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10044', '6', '10207', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:03:02', '2016-09-27 17:03:02');
INSERT INTO `tp_scenefunc` VALUES ('10045', '7', '10208', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:03:08', '2016-09-27 17:03:08');
INSERT INTO `tp_scenefunc` VALUES ('10046', '3', '10203', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:02:44', '2016-09-27 17:02:44');
INSERT INTO `tp_scenefunc` VALUES ('10047', '4', '10204', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:02:50', '2016-09-27 17:02:50');
INSERT INTO `tp_scenefunc` VALUES ('10048', '5', '10205', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:02:54', '2016-09-27 17:02:54');
INSERT INTO `tp_scenefunc` VALUES ('10049', '1', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:39', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10050', '2', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:43', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10051', '3', '10203', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:45', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10052', '4', '10204', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:48', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10053', '5', '10205', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:54', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10054', '6', '10206', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:56', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10055', '7', '10207', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:00', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10056', '8', '10208', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:06', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10057', '9', '10209', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:09', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10058', '10', '10210', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:11', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10059', '11', '10211', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:13', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10060', '1', '10212', 'OP.HmcDSCRM', '业务管理-价格收集管理', '城市买顾价格收集表', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:33', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10061', '2', '10213', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按城市', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:35', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10062', '3', '10214', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按买顾', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:37', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10063', '4', '10215', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-买顾入口', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:40', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10064', '5', '10216', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-未报价车款入口', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:42', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10065', '6', '10217', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-价格过期车款入口', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:44', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10066', '7', '10218', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按选择城市', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:46', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10067', '8', '10219', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按车型车款', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:50', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10068', '9', '10220', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按价格状态', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:52', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10069', '1', '10221', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '车型价格列表', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:18', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10070', '2', '10222', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按选择城市', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:20', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10071', '3', '10223', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按价格状态', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:24', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10072', '4', '10224', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按车型车款', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:27', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10073', '5', '10225', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '添加价格信息', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:29', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10074', '6', '10226', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '设置显示列', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:31', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10075', '1', '10227', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '价格即将过期-车款列表', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:52', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10076', '2', '10228', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '提交报价入口', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:54', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10077', '3', '10229', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '价格新增车款-车款列表', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:00', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10078', '4', '10230', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '提交报价-入口', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:03', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10079', '5', '10231', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '报价列表', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:08', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10080', '6', '10232', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按价格状态', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:10', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10081', '7', '10233', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按车型车款', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:12', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10082', '8', '10234', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '添加价格信息', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:14', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10083', '9', '10235', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '设置显示列', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:16', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10084', '10', '10236', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '价格修改', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:18', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10085', '11', '10237', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '待确定价格-车款列表', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:30', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10086', '12', '10238', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '确认价格', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:33', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10087', '1', '10239', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '显示报价城市', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:46', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10088', '2', '10240', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择品牌车型报价（NO车款）', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:48', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10089', '3', '10241', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择车款报价', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:50', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10090', '4', '10242', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠金额报价', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:52', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10091', '5', '10243', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠百分比报价', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:55', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10092', '6', '10244', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存报价', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:57', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10093', '7', '10245', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存并创建下一条', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:39:00', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10094', '1', '10000', 'Auto.Access', '登陆模块', '登录', '10017', '123', '0', '10000', '已绑定', '正常登陆', '登入系统，并显示用户姓名', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 16:58:31', '2016-10-14 16:58:31');
INSERT INTO `tp_scenefunc` VALUES ('10095', '2', '10001', 'Auto.Access', '登陆模块', '注销', '10017', null, '0', '10002', '已绑定', '正常注销', '登出系统', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 16:59:00', '2016-10-14 16:59:00');
INSERT INTO `tp_scenefunc` VALUES ('10096', '3', '10005', 'Auto.Access', '登陆模块', '改密', '10017', null, '0', '10101', '已绑定', '正常修改密码', '修改成功1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:00:29', '2016-10-14 17:00:29');
INSERT INTO `tp_scenefunc` VALUES ('10097', '1', '10002', 'Auto.Access', '产品库', '产品列表', '10018', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:39', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10098', '2', '10003', 'Auto.Access', '产品库', '产品-添加', '10018', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:41', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10099', '3', '10004', 'Auto.Access', '产品库', '产品-编辑', '10018', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:44', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10100', '4', '10006', 'Auto.Access', '产品库', '系统-入口', '10018', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:46', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10101', '1', '10010', 'Auto.Access', '测试项目', '分组项目列表', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:58', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10102', '2', '10011', 'Auto.Access', '测试项目', '切换分组', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:01', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10103', '3', '10007', 'Auto.Access', '测试项目', '项目-添加', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:03', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10104', '4', '10008', 'Auto.Access', '测试项目', '项目-编辑', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:05', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10105', '5', '10009', 'Auto.Access', '测试项目', '项目-详情', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:07', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10106', '6', '10012', 'Auto.Access', '测试项目', '快速标记状态', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:12', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10107', '7', '10013', 'Auto.Access', '测试项目', '项目-里程碑入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:14', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10108', '8', '10014', 'Auto.Access', '测试项目', '项目-风险入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:17', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10109', '9', '10015', 'Auto.Access', '测试项目', '项目-系统入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:19', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10110', '10', '10016', 'Auto.Access', '测试项目', '项目-功能点入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:21', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10111', '11', '10017', 'Auto.Access', '测试项目', '项目-范围入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:24', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10112', '12', '10018', 'Auto.Access', '测试项目', '项目-场景入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:31', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10113', '13', '10019', 'Auto.Access', '测试项目', '项目-控件库入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:35', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10114', '14', '10020', 'Auto.Access', '测试项目', '项目-用例库入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:37', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10116', '1', '10000', 'Auto.Access', '登陆模块', '登录', '10008', null, '0', '10000', '已绑定', '正常登陆', '登入系统，并显示用户姓名', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-17 16:27:08', '2016-10-17 16:27:08');
INSERT INTO `tp_scenefunc` VALUES ('10117', '1', '10000', 'Auto.Access', '登陆模块', '登录', '10006', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-14 14:51:03', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10118', '1', '10022', 'Auto.Access', '项目-里程碑', '里程碑列表', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:12', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10119', '2', '10023', 'Auto.Access', '项目-里程碑', '切换项目', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:14', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10120', '3', '10024', 'Auto.Access', '项目-里程碑', '里程碑-添加', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:16', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10121', '4', '10025', 'Auto.Access', '项目-里程碑', '里程碑-修改', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:19', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10122', '5', '10027', 'Auto.Access', '项目-里程碑', '快速标记状态', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:21', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10123', '6', '10198', 'Auto.Access', '项目-里程碑', 'M人员-入口（手工）', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:24', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10124', '7', '10026', 'Auto.Access', '项目-里程碑', 'A人员-入口（自动化）', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:27', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10125', '2', '10007', 'Auto.Access', 'Access客户端-测试项目', '项目-添加', '10008', null, '0', '10103', '已绑定', '正常添加项目', '添加成功', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-17 16:28:15', '2016-10-17 16:28:15');
INSERT INTO `tp_scenefunc` VALUES ('10147', '2', '10277', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-今日待办', '查询-按待办来源', '10026', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:09:05', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10146', '1', '10273', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-今日待办', '数量统计', '10026', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:09:00', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10148', '3', '10289', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10026', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:09:16', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10149', '4', '10292', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10026', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:09:21', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10150', '5', '10328', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10026', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:09:41', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10151', null, '10277', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '查询-按待办来源', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:10:14', '2016-10-25 17:10:14');
INSERT INTO `tp_scenefunc` VALUES ('10152', null, '10273', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '数量统计', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:10:14', '2016-10-25 17:10:14');
INSERT INTO `tp_scenefunc` VALUES ('10153', null, '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:10:14', '2016-10-25 17:10:14');
INSERT INTO `tp_scenefunc` VALUES ('10154', null, '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:10:14', '2016-10-25 17:10:14');
INSERT INTO `tp_scenefunc` VALUES ('10155', null, '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:10:14', '2016-10-25 17:10:14');
INSERT INTO `tp_scenefunc` VALUES ('10156', '6', '10335', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户信息', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:10:35', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10157', '7', '10336', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户姓名调整信息页', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:10:37', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10158', '8', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:10:40', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10159', '9', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:23:06', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10160', '10', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:23:15', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10161', '11', '10398', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '确认成交', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:23:25', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10162', '12', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:23:53', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10163', '13', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:23:57', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10166', '1', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:05:35', '2016-10-26 10:05:35');
INSERT INTO `tp_scenefunc` VALUES ('10167', '2', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:05:43', '2016-10-26 10:05:43');
INSERT INTO `tp_scenefunc` VALUES ('10168', '3', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:05:47', '2016-10-26 10:05:47');
INSERT INTO `tp_scenefunc` VALUES ('10171', '4', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:05:53', '2016-10-26 10:05:53');
INSERT INTO `tp_scenefunc` VALUES ('10172', '5', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:05:57', '2016-10-26 10:05:57');
INSERT INTO `tp_scenefunc` VALUES ('10173', '6', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:06:02', '2016-10-26 10:06:02');
INSERT INTO `tp_scenefunc` VALUES ('10177', '7', '10399', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '取消交易', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:06:07', '2016-10-26 10:06:07');
INSERT INTO `tp_scenefunc` VALUES ('10175', '8', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:06:13', '2016-10-26 10:06:13');
INSERT INTO `tp_scenefunc` VALUES ('10176', '9', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:06:18', '2016-10-26 10:06:18');
INSERT INTO `tp_scenefunc` VALUES ('10180', '1', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:15', '2016-10-26 10:07:15');
INSERT INTO `tp_scenefunc` VALUES ('10181', '2', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:10', '2016-10-26 10:07:10');
INSERT INTO `tp_scenefunc` VALUES ('10182', '3', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:06', '2016-10-26 10:07:06');
INSERT INTO `tp_scenefunc` VALUES ('10185', '4', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:21', '2016-10-26 10:07:21');
INSERT INTO `tp_scenefunc` VALUES ('10186', '5', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:25', '2016-10-26 10:07:25');
INSERT INTO `tp_scenefunc` VALUES ('10187', '6', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:30', '2016-10-26 10:07:30');
INSERT INTO `tp_scenefunc` VALUES ('10188', '7', '10398', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '确认成交', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:35', '2016-10-26 10:07:35');
INSERT INTO `tp_scenefunc` VALUES ('10189', '8', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:39', '2016-10-26 10:07:39');
INSERT INTO `tp_scenefunc` VALUES ('10190', '9', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:45', '2016-10-26 10:07:45');
INSERT INTO `tp_scenefunc` VALUES ('10193', '1', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:08:46', '2016-10-26 10:08:46');
INSERT INTO `tp_scenefunc` VALUES ('10194', '2', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:08:42', '2016-10-26 10:08:42');
INSERT INTO `tp_scenefunc` VALUES ('10195', '3', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:08:38', '2016-10-26 10:08:38');
INSERT INTO `tp_scenefunc` VALUES ('10198', '4', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:08:54', '2016-10-26 10:08:54');
INSERT INTO `tp_scenefunc` VALUES ('10199', '5', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:08:59', '2016-10-26 10:08:59');
INSERT INTO `tp_scenefunc` VALUES ('10200', '6', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:09:06', '2016-10-26 10:09:06');
INSERT INTO `tp_scenefunc` VALUES ('10201', '7', '10399', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '取消交易', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:09:11', '2016-10-26 10:09:11');
INSERT INTO `tp_scenefunc` VALUES ('10202', '8', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:09:16', '2016-10-26 10:09:16');
INSERT INTO `tp_scenefunc` VALUES ('10203', '9', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:09:21', '2016-10-26 10:09:21');
INSERT INTO `tp_scenefunc` VALUES ('10204', '1', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10205', '2', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10206', '3', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10207', '4', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10208', '5', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10209', '6', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10210', '7', '10398', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '确认成交', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10211', '8', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10212', '9', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10213', '1', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10214', '2', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10215', '3', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10216', '4', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10217', '5', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10218', '6', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10219', '7', '10399', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '取消交易', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10220', '8', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10221', '9', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');

-- ----------------------------
-- Table structure for `tp_stage`
-- ----------------------------
DROP TABLE IF EXISTS `tp_stage`;
CREATE TABLE `tp_stage` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `stage` varchar(50) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT '0000-00-00',
  `state` varchar(5) DEFAULT NULL,
  `document` varchar(20) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1046 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_stage
-- ----------------------------
INSERT INTO `tp_stage` VALUES ('1000', '1', '功能验证', '24', '2016-09-26', '2016-09-27', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:45:00', '2016-09-22 16:45:00');
INSERT INTO `tp_stage` VALUES ('1001', '2', '第一轮测试', '24', '2016-09-27', '2016-09-28', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:45:15', '2016-09-22 16:45:15');
INSERT INTO `tp_stage` VALUES ('1002', '3', '第二轮测试', '24', '2016-09-28', '2016-09-29', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:45:29', '2016-09-22 16:45:29');
INSERT INTO `tp_stage` VALUES ('1003', '1', '功能验证', '45', '2016-09-26', '2016-09-27', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-28 15:38:30', '2016-11-04 09:16:52');
INSERT INTO `tp_stage` VALUES ('1004', '2', '第一轮测试', '45', '2016-11-04', '2016-11-08', '进行中', '无文档', '腰立辉', '腰立辉', '2016-10-26 10:17:33', '2016-11-04 09:17:21');
INSERT INTO `tp_stage` VALUES ('1005', '3', '第二轮测试', '45', '2016-09-28', '2016-09-29', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:49:43', '2016-09-22 16:49:43');
INSERT INTO `tp_stage` VALUES ('1006', '1', '编写测试计划', '47', '2016-09-24', '2016-09-25', '进行中', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:00', '2016-11-04 10:07:48');
INSERT INTO `tp_stage` VALUES ('1007', '2', '编写测试用例', '47', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:05', '2016-09-24 14:50:05');
INSERT INTO `tp_stage` VALUES ('1008', '3', '功能验证', '47', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:08', '2016-09-24 14:50:08');
INSERT INTO `tp_stage` VALUES ('1009', '4', '第一轮测试', '47', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:12', '2016-09-24 14:50:12');
INSERT INTO `tp_stage` VALUES ('1010', '5', '第二轮测试', '47', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:19', '2016-09-24 14:50:19');
INSERT INTO `tp_stage` VALUES ('1011', '1', '编写测试计划', '48', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 20:44:20', '2016-09-24 20:44:20');
INSERT INTO `tp_stage` VALUES ('1012', '2', '编写测试用例', '48', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 20:44:27', '2016-09-24 20:44:27');
INSERT INTO `tp_stage` VALUES ('1013', '3', '第一轮测试', '48', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 20:44:35', '2016-09-24 20:44:35');
INSERT INTO `tp_stage` VALUES ('1014', '4', '第二轮测试', '48', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 20:44:38', '2016-09-24 20:44:38');
INSERT INTO `tp_stage` VALUES ('1015', '1', '编写测试计划', '46', '2016-09-26', '2016-09-27', '已完成', '无文档', '腰立辉', '腰立辉', '2016-09-28 15:47:40', '2016-09-28 15:47:40');
INSERT INTO `tp_stage` VALUES ('1016', '2', '编写测试用例', '46', '2016-09-26', '2016-10-09', '已完成', '测试用例', '腰立辉', '腰立辉', '2016-10-10 13:28:07', '2016-10-10 13:28:07');
INSERT INTO `tp_stage` VALUES ('1017', '3', '功能验证', '46', '2016-10-11', '2016-10-11', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-26 10:18:01', '2016-09-28 15:48:17');
INSERT INTO `tp_stage` VALUES ('1018', '4', '第一轮测试', '46', '2016-10-11', '2016-10-12', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-26 10:18:05', '2016-09-28 15:48:36');
INSERT INTO `tp_stage` VALUES ('1019', '1', '第一轮测试', '54', '2016-09-23', '2016-09-27', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-20 10:13:25', '2016-10-20 10:13:25');
INSERT INTO `tp_stage` VALUES ('1020', '2', '第二轮测试', '54', '2016-10-09', '2016-10-11', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-20 10:12:39', '2016-10-20 10:12:39');
INSERT INTO `tp_stage` VALUES ('1021', '3', '第三轮测试', '54', '2016-10-15', '2016-10-18', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-20 10:13:15', '2016-10-20 10:13:15');
INSERT INTO `tp_stage` VALUES ('1022', '1', '第一轮测试', '59', '2016-10-10', '2016-10-11', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-20 10:47:57', '2016-10-20 10:47:52');
INSERT INTO `tp_stage` VALUES ('1023', '1', '编写测试计划', '50', '2016-10-20', '2016-10-21', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-26 10:17:03', '2016-10-20 14:59:52');
INSERT INTO `tp_stage` VALUES ('1024', '2', '编写测试用例', '50', '2016-10-20', '2016-11-02', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 15:00:07', '2016-10-20 15:00:07');
INSERT INTO `tp_stage` VALUES ('1025', '3', '功能验证', '50', '2016-11-02', '2016-11-03', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 15:00:18', '2016-10-20 15:00:18');
INSERT INTO `tp_stage` VALUES ('1026', '4', '第一轮测试', '50', '2016-11-03', '2016-11-04', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 15:00:28', '2016-10-20 15:00:28');
INSERT INTO `tp_stage` VALUES ('1027', '5', '第二轮测试', '50', '2016-11-04', '2016-11-05', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 15:00:43', '2016-10-20 15:00:43');
INSERT INTO `tp_stage` VALUES ('1028', '6', '线上验证测试', '50', '2016-11-05', '2016-11-06', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 15:01:01', '2016-10-20 15:01:01');
INSERT INTO `tp_stage` VALUES ('1029', '1', '编写测试计划', '51', '2016-10-21', '2016-10-22', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-21 11:32:27', '2016-10-21 11:32:27');
INSERT INTO `tp_stage` VALUES ('1030', '2', '编写测试用例', '51', '2016-10-21', '2016-10-25', '已完成', '测试用例', '腰立辉', '腰立辉', '2016-10-25 17:03:06', '2016-10-21 11:32:46');
INSERT INTO `tp_stage` VALUES ('1031', '3', '功能验证', '51', '2016-10-24', '2016-10-24', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-25 17:26:01', '2016-10-21 11:33:11');
INSERT INTO `tp_stage` VALUES ('1032', '4', '第一轮测试', '51', '2016-10-24', '2016-10-25', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-28 16:15:00', '2016-10-21 11:33:24');
INSERT INTO `tp_stage` VALUES ('1033', '5', '第二轮测试', '51', '2016-10-25', '2016-10-26', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-28 16:15:07', '2016-10-21 11:33:37');
INSERT INTO `tp_stage` VALUES ('1034', '6', '线上验证测试', '51', '2016-10-27', '2016-10-27', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-28 16:15:10', '2016-10-21 11:33:48');
INSERT INTO `tp_stage` VALUES ('1035', '1', '功能验证', '80', '2016-11-01', '2016-11-01', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-02 09:37:06', '2016-11-02 09:45:51');
INSERT INTO `tp_stage` VALUES ('1036', '3', '线上验证测试', '80', '2016-11-01', '2016-11-01', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-02 09:37:19', '2016-11-02 09:55:14');
INSERT INTO `tp_stage` VALUES ('1037', '2', '第一轮测试', '80', '2016-11-01', '2016-11-01', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-02 09:45:45', '2016-11-04 09:50:09');
INSERT INTO `tp_stage` VALUES ('1038', '1', '第一轮测试', '89', '2016-11-02', '2016-11-03', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-03 16:43:50', '2016-11-03 16:43:50');
INSERT INTO `tp_stage` VALUES ('1039', '1', '第一轮测试', '92', '2016-11-02', '2016-11-03', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-09 09:33:29', '2016-11-09 09:33:29');
INSERT INTO `tp_stage` VALUES ('1040', '2', '第二轮测试', '92', '2016-11-04', '2016-11-07', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-09 09:33:42', '2016-11-09 09:33:42');
INSERT INTO `tp_stage` VALUES ('1041', '3', '第三轮测试', '92', '2016-11-08', '2016-11-08', '已上线', '无文档', '腰立辉', '腰立辉', '2016-11-09 09:34:01', '2016-11-09 09:34:01');
INSERT INTO `tp_stage` VALUES ('1042', '1', '第一轮测试', '97', '2016-11-07', '2016-11-08', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-09 10:42:09', '2016-11-09 10:42:09');
INSERT INTO `tp_stage` VALUES ('1043', '1', '第一轮测试', '83', '2016-10-28', '2016-11-02', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-10 13:57:32', '2016-11-10 13:57:32');
INSERT INTO `tp_stage` VALUES ('1044', '2', '第二轮测试', '83', '2016-11-03', '2016-11-04', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-10 13:57:53', '2016-11-10 13:57:53');
INSERT INTO `tp_stage` VALUES ('1045', '3', '第三轮测试', '83', '2016-11-07', '2016-11-09', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-10 13:58:11', '2016-11-10 13:58:11');

-- ----------------------------
-- Table structure for `tp_stagetester`
-- ----------------------------
DROP TABLE IF EXISTS `tp_stagetester`;
CREATE TABLE `tp_stagetester` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `type` varchar(10) DEFAULT 'M',
  `stageid` smallint(6) DEFAULT NULL,
  `tester` varchar(10) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `plan` float DEFAULT NULL,
  `actual` float DEFAULT '0',
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10042 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_stagetester
-- ----------------------------
INSERT INTO `tp_stagetester` VALUES ('10031', '1', 'C', '1029', '腰立辉', '2016-10-21', '2016-10-22', '1', '0', '腰立辉', '腰立辉', '2016-10-21 11:34:14', '2016-10-21 11:34:14');
INSERT INTO `tp_stagetester` VALUES ('10032', '1', 'C', '1030', '腰立辉', '2016-10-21', '2016-10-24', '8', '0', '腰立辉', '腰立辉', '2016-10-21 11:34:40', '2016-10-21 11:34:40');
INSERT INTO `tp_stagetester` VALUES ('10033', '1', 'M', '1031', '腰立辉', '2016-10-24', '2016-10-24', '5', '0', '腰立辉', '腰立辉', '2016-10-21 11:37:18', '2016-10-21 11:35:02');
INSERT INTO `tp_stagetester` VALUES ('10009', '1', 'M', '1011', '腰立辉', '2016-09-24', '2016-09-25', '8', '0', '腰立辉', '腰立辉', '2016-09-24 20:45:23', '2016-09-24 20:45:23');
INSERT INTO `tp_stagetester` VALUES ('10010', '1', 'M', '1013', '李小梅', '2016-09-24', '2016-09-25', '8', '0', '腰立辉', '腰立辉', '2016-09-24 20:45:46', '2016-09-24 20:45:46');
INSERT INTO `tp_stagetester` VALUES ('10011', '2', 'M', '1013', '曹玉芳', '2016-09-24', '2016-09-25', '8', '0', '腰立辉', '腰立辉', '2016-09-24 20:45:49', '2016-09-24 20:45:49');
INSERT INTO `tp_stagetester` VALUES ('10012', '1', 'M', '1000', '腰立辉', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 13:38:02', '2016-09-25 13:38:02');
INSERT INTO `tp_stagetester` VALUES ('10030', '1', 'M', '1006', '腰立辉', '2016-10-17', '2016-10-18', '8', '0', '腰立辉', '腰立辉', '2016-10-17 15:59:29', '2016-10-17 15:59:29');
INSERT INTO `tp_stagetester` VALUES ('10029', '1', 'M', '1004', '腰立辉', '2016-11-04', '2016-11-08', '16', '0', '腰立辉', '腰立辉', '2016-10-17 10:24:06', '2016-11-04 09:17:51');
INSERT INTO `tp_stagetester` VALUES ('10015', '1', 'M', '1008', '腰立辉', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 13:45:45', '2016-09-25 13:45:45');
INSERT INTO `tp_stagetester` VALUES ('10016', '1', 'M', '1003', '腰立辉', '2016-10-13', '2016-10-14', '8', '0', '腰立辉', '腰立辉', '2016-10-28 15:38:37', '2016-10-13 09:53:48');
INSERT INTO `tp_stagetester` VALUES ('10036', '1', 'M', '1034', '腰立辉', '2016-10-27', '2016-10-27', '8', '0', '腰立辉', '腰立辉', '2016-10-21 11:37:35', '2016-10-21 11:36:00');
INSERT INTO `tp_stagetester` VALUES ('10034', '1', 'M', '1032', '腰立辉', '2016-10-24', '2016-10-25', '8', '0', '腰立辉', '腰立辉', '2016-10-21 11:37:20', '2016-10-21 11:35:23');
INSERT INTO `tp_stagetester` VALUES ('10035', '1', 'M', '1033', '腰立辉', '2016-10-25', '2016-10-26', '8', '0', '腰立辉', '腰立辉', '2016-10-21 11:37:22', '2016-10-21 11:35:42');
INSERT INTO `tp_stagetester` VALUES ('10025', '1', 'M', '1015', '曹玉芳', '2016-09-28', '2016-09-29', '8', '0', '腰立辉', '腰立辉', '2016-09-28 15:48:49', '2016-09-28 15:48:49');
INSERT INTO `tp_stagetester` VALUES ('10026', '1', 'M', '1016', '腰立辉', '2016-09-26', '2016-10-09', '24', '0', '腰立辉', '腰立辉', '2016-09-28 15:49:25', '2016-09-28 15:49:25');
INSERT INTO `tp_stagetester` VALUES ('10027', '1', 'M', '1017', '曹玉芳', '2016-10-10', '2016-10-11', '8', '0', '腰立辉', '腰立辉', '2016-10-10 13:28:24', '2016-10-10 13:28:24');
INSERT INTO `tp_stagetester` VALUES ('10028', '2', 'M', '1017', '腰立辉', '2016-10-10', '2016-10-11', '8', '0', '腰立辉', '腰立辉', '2016-10-10 13:28:28', '2016-10-10 13:28:28');
INSERT INTO `tp_stagetester` VALUES ('10037', '1', 'M', '1035', '腰立辉', '2016-11-02', '2016-11-01', '2', '0', '腰立辉', '腰立辉', null, '2016-11-02 09:37:52');
INSERT INTO `tp_stagetester` VALUES ('10038', '1', 'M', '1036', '腰立辉', '2016-11-01', '2016-11-01', '1', '0', '腰立辉', '腰立辉', null, '2016-11-02 09:38:07');
INSERT INTO `tp_stagetester` VALUES ('10039', '1', 'M', '1037', '腰立辉', '2016-11-01', '2016-11-01', '1', '0', '腰立辉', '腰立辉', null, '2016-11-02 09:53:32');
INSERT INTO `tp_stagetester` VALUES ('10040', '1', 'M', '1038', '田亮', '2016-11-02', '2016-11-03', '8', '0', '腰立辉', '腰立辉', null, '2016-11-03 16:44:18');
INSERT INTO `tp_stagetester` VALUES ('10041', '2', 'M', '1008', '曹玉芳', '2016-11-10', '2016-11-11', '8', '0', '腰立辉', '腰立辉', null, '2016-11-10 11:04:46');

-- ----------------------------
-- Table structure for `tp_system`
-- ----------------------------
DROP TABLE IF EXISTS `tp_system`;
CREATE TABLE `tp_system` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sysno` varchar(30) DEFAULT '',
  `system` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `prodid` int(11) DEFAULT NULL,
  `useversion` varchar(50) DEFAULT NULL,
  `testversion` varchar(50) DEFAULT NULL,
  `testip` varchar(200) DEFAULT NULL,
  `testuser` varchar(50) DEFAULT NULL,
  `testpass` varchar(50) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_system
-- ----------------------------
INSERT INTO `tp_system` VALUES ('3', 'APP.HMC', '惠买车APP', '正常', '1', null, null, null, null, null, null, '腰立辉', '2016-09-21 10:17:05', '2016-09-21 10:17:05');
INSERT INTO `tp_system` VALUES ('4', 'Auto.Access', 'Access客户端', '正常', '2', null, 'V1.10', '192.168.43.61：easypass', '姓名', '123456', '腰立辉', '王鑫彤', '2016-10-21 10:29:12', '2016-10-21 10:29:12');
INSERT INTO `tp_system` VALUES ('6', 'dealer.huimaiche.com', '惠买车商家版', '正常', '1', null, null, null, null, null, null, '腰立辉', '2016-10-28 11:46:57', '2016-10-28 11:46:57');
INSERT INTO `tp_system` VALUES ('54', 'ydd.autoTest1', '自动化管理平台', '正常', '2', '暂无', '', 'http://192.168.43.12:8018/main/index', 'yaolh', '888888', '腰立辉', '王鑫彤', '2016-10-21 14:26:31', '2016-10-21 14:26:31');
INSERT INTO `tp_system` VALUES ('55', 'wxt.Test', '测试管理', '正常', '2', '暂无', '', '192.168.84.55:8011', 'yaolh', '123456', '腰立辉', '腰立辉', '2016-09-22 10:30:02', '2016-09-22 10:30:02');
INSERT INTO `tp_system` VALUES ('10', 'OP.Counselor', '买车顾问管理后台', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:14:53', '2016-09-21 10:14:53');
INSERT INTO `tp_system` VALUES ('11', 'OP.HmcDSCRM', '惠买车电商CRM', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-26 11:28:46', '2016-09-26 11:28:46');
INSERT INTO `tp_system` VALUES ('12', 'OP.DealerCRM', '惠买车商家运营系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:15', '2016-09-21 10:15:15');
INSERT INTO `tp_system` VALUES ('13', 'OP.DealerOP', '经销商信息管理', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:26', '2016-09-21 10:15:26');
INSERT INTO `tp_system` VALUES ('14', 'OP.Deposit', '商家订金管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:35', '2016-09-21 10:15:35');
INSERT INTO `tp_system` VALUES ('15', 'OP.Gift', '买车网礼品管理后台', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:41', '2016-09-21 10:15:41');
INSERT INTO `tp_system` VALUES ('16', 'OP.Giftop', '惠买车礼品管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:54', '2016-09-21 10:15:54');
INSERT INTO `tp_system` VALUES ('17', 'OP.Groupon', '团购管理后台', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:48', '2016-09-21 10:15:48');
INSERT INTO `tp_system` VALUES ('18', 'OP.HMCcrm', '惠买车CRM', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:16:04', '2016-09-21 10:16:04');
INSERT INTO `tp_system` VALUES ('19', 'OP.HmcCrmOp', '电商CRM后台管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:14:01', '2016-09-21 10:14:01');
INSERT INTO `tp_system` VALUES ('20', 'OP.Ipayment', '惠买车支付管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:16:14', '2016-09-21 10:16:14');
INSERT INTO `tp_system` VALUES ('21', 'OP.Security', 'OP权限系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:16:55', '2016-09-21 10:16:55');
INSERT INTO `tp_system` VALUES ('22', 'OP.User', '惠买车用户管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:16:22', '2016-09-21 10:16:22');
INSERT INTO `tp_system` VALUES ('23', 'Web.hmc', '惠买车', '正常', '1', null, null, null, null, null, null, '腰立辉', '2016-09-13 13:35:06', '2016-09-13 13:35:06');
INSERT INTO `tp_system` VALUES ('46', 'yao.tpTest', '测试管理平台', '正常', '2', '暂无', 'V1.00', 'http://192.168.43.61:81/tpTest/autotest.php', 'yaolh', '654321', '腰立辉', '腰立辉', '2016-09-22 10:29:31', '2016-09-22 10:29:31');
INSERT INTO `tp_system` VALUES ('56', 'GDAPP', '信用卡APP', '正常', '2', null, null, null, null, null, '腰立辉', '王鑫彤', '2016-10-21 10:28:13', '2016-10-21 10:28:13');
INSERT INTO `tp_system` VALUES ('57', 'OP.maiche', '易车运营支持中心', '正常', '1', null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:15:00', '2016-09-27 17:15:00');
INSERT INTO `tp_system` VALUES ('58', '2341212', '234', '正常', '2', null, null, null, null, null, '王鑫彤', '王鑫彤', '2016-10-21 14:24:01', '2016-10-21 14:24:01');
INSERT INTO `tp_system` VALUES ('59', '水电费', '水电费', '正常', '10', null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-10 17:17:42', '2016-11-10 17:17:42');

-- ----------------------------
-- Table structure for `tp_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `headpath` varchar(200) DEFAULT NULL,
  `head` varchar(18) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `userno` int(5) DEFAULT NULL,
  `team` varchar(50) DEFAULT NULL,
  `usergp` varchar(10) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES ('1', 'caoyf', '曹玉芳', null, '', 'e10adc3949ba59abbe56e057f20f883e', '离职', '0', '惠买车-产品研发中心-质量管理部', 'OP', '', '', 'caoyf@yiche.com', '测试工程师', '腰立辉', '腰立辉', '2016-09-26 17:12:02', '2016-11-11 14:41:20');
INSERT INTO `tp_user` VALUES ('2', 'gaoxq', '高小欠', null, null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '5945', '惠买车-产品研发中心-质量管理部', 'C', '15011217715', null, 'gaoxq@bitauto.com', '高级测试经理', '腰立辉', '腰立辉', '2016-09-12 11:34:16', '2016-10-28 16:32:07');
INSERT INTO `tp_user` VALUES ('3', 'guopp', '郭佩佩', null, null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '354', '惠买车-产品研发中心-质量管理部', 'B', null, null, null, '测试工程师', '腰立辉', '腰立辉', '2016-10-14 17:27:39', '2016-10-28 16:32:09');
INSERT INTO `tp_user` VALUES ('11', 'yaolh', '腰立辉', null, '57dcf1cd1186b.jpeg', 'c33367701511b4f6020ec61ded352059', '在职', '6270', '惠买车-产品研发中心-质量管理部', 'OP', '18801043607', '', 'yaolh@yiche.com', '高级测试经理', '腰立辉', '腰立辉', '2016-09-22 16:54:21', '2016-11-11 11:13:04');
INSERT INTO `tp_user` VALUES ('5', 'kongy', '孔洋', null, null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '8028', '惠买车-产品研发中心-质量管理部', 'OP', '13641171889', null, 'kongy@bitauto.com', '高级测试工程师', '腰立辉', '腰立辉', '2016-09-12 11:34:09', '2016-10-28 16:32:11');
INSERT INTO `tp_user` VALUES ('6', 'lixm', '李小梅', null, null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '354', '惠买车-产品研发中心-质量管理部', 'OP', null, null, null, '测试工程师', '腰立辉', '腰立辉', '2016-10-14 17:30:10', '2016-10-28 16:32:13');
INSERT INTO `tp_user` VALUES ('8', 'mengjl', '孟军良', null, '5816a9713cc6e.png', 'e10adc3949ba59abbe56e057f20f883e', '在职', '5714', '惠买车-产品研发中心-质量管理部', 'Auto', '13717659790', '323', 'mengjl@bitauto.com', '质量总监', '腰立辉', '腰立辉', '2016-10-19 16:56:39', '2016-10-31 10:16:17');
INSERT INTO `tp_user` VALUES ('9', 'shidd', '师冬冬', null, '', 'e10adc3949ba59abbe56e057f20f883e', '在职', '9204', '惠买车-产品研发中心-质量管理部', 'C', '', '', '', '测试工程师', '腰立辉', '腰立辉', '2016-09-26 17:13:48', '2016-10-28 16:33:22');
INSERT INTO `tp_user` VALUES ('10', 'tianl', '田亮', null, '', 'e10adc3949ba59abbe56e057f20f883e', '在职', '6851', '惠买车-产品研发中心-质量管理部', 'B', '15811407311', '', 'tianl@bitauto.com', '测试工程师', '腰立辉', '腰立辉', '2016-09-22 09:25:01', '2016-09-16 18:59:52');
INSERT INTO `tp_user` VALUES ('24', 'wangp', '王朋', null, null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '10520', '惠买车-产品研发中心-质量管理部', 'C', null, null, null, null, '腰立辉', '腰立辉', '2016-09-26 17:17:47', '2016-10-28 16:31:55');
INSERT INTO `tp_user` VALUES ('25', 'yuedd', '岳丹丹', null, null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '9841', '惠买车-产品研发中心-质量管理部', 'C', null, null, null, null, '腰立辉', '腰立辉', '2016-09-26 17:18:02', '2016-10-28 16:31:53');
INSERT INTO `tp_user` VALUES ('26', 'zhengax', '郑阿旬', null, null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '8110', '惠买车-产品研发中心-质量管理部', 'B', null, null, null, null, '腰立辉', '腰立辉', '2016-09-26 17:18:13', '2016-10-28 16:31:51');
INSERT INTO `tp_user` VALUES ('27', 'wangmd', '王梦蝶', null, null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '7174', '惠买车-产品研发中心-质量管理部', 'C', null, null, null, null, '腰立辉', '腰立辉', '2016-10-19 12:47:30', '2016-10-28 16:31:50');
INSERT INTO `tp_user` VALUES ('28', 'zhangxia', '张霞', null, null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '5715', '惠买车-产品研发中心-质量管理部', 'C', null, null, null, null, '腰立辉', '腰立辉', '2016-09-26 17:22:34', '2016-10-28 16:31:48');
INSERT INTO `tp_user` VALUES ('29', 'wangxt', '王鑫彤', null, null, 'e10adc3949ba59abbe56e057f20f883e', '在职', null, '惠买车-产品研发中心-质量管理部', 'B', null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:30:23', '2016-10-28 16:31:46');
