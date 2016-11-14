-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-11-14 17:02:57
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tuocai`
--

-- --------------------------------------------------------

--
-- 表的结构 `tuoc_admin`
--

CREATE TABLE `tuoc_admin` (
  `id` smallint(6) NOT NULL,
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
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tuoc_admin`
--

INSERT INTO `tuoc_admin` (`id`, `username`, `realname`, `password`, `path`, `photo`, `phone`, `state`, `tech`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(1, 'yaolh', '腰立辉', 'c33367701511b4f6020ec61ded352059', '/Admin/user/image/2016-11-05/', '581de638ca86c.jpg', '18801043607', '在职', NULL, '腰立辉', '腰立辉', NULL, '2016-11-06 10:01:08'),
(2, 'liangxw', '梁小伟', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '13426179579', '在职', NULL, '腰立辉', '腰立辉', 2016, '2016-11-12 08:09:56');

-- --------------------------------------------------------

--
-- 表的结构 `tuoc_course`
--

CREATE TABLE `tuoc_course` (
  `id` smallint(6) NOT NULL,
  `course` varchar(30) DEFAULT NULL,
  `coursetype` varchar(5) DEFAULT NULL,
  `desc` text,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tuoc_course`
--

INSERT INTO `tuoc_course` (`id`, `course`, `coursetype`, `desc`, `path`, `img`, `state`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(6, '小学英语', '小学课程', NULL, '/Course/2016-11-13/', '5828142cd61aa.jpg', '正常', '腰立辉', '腰立辉', NULL, '2016-11-13 07:20:12'),
(7, '百家姓', '学前少儿', '12312', '/Course/2016-11-13/', '58280bc662aaa.jpg', '正常', '腰立辉', '腰立辉', 1478422638, '2016-11-13 06:44:22'),
(9, '小学自然', '小学课程', 'qweqw11', '/Course/2016-11-13/', '5828056fe2b19.jpeg', '正常', '腰立辉', '腰立辉', 1478530883, '2016-11-13 06:17:19'),
(10, '跆拳道', '兴趣拓展', '', '/Course/2016-11-13/', '58284465e15a9.jpg', '正常', '腰立辉', '腰立辉', 1479015112, '2016-11-13 10:45:57'),
(11, '九年级物理', '中学课程', '', '/Course/2016-11-13/', '58284492cc71a.png', '正常', '腰立辉', '腰立辉', 1479015398, '2016-11-13 10:46:42'),
(12, '三字经', '学前少儿', '', '/Course/2016-11-13/', '58280ae25f669.png', '正常', '腰立辉', '腰立辉', 1479015502, '2016-11-13 06:40:34');

-- --------------------------------------------------------

--
-- 表的结构 `tuoc_customer`
--

CREATE TABLE `tuoc_customer` (
  `id` smallint(6) NOT NULL,
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
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tuoc_customer`
--

INSERT INTO `tuoc_customer` (`id`, `phone`, `password`, `custype`, `isteacher`, `coursetype`, `realname`, `path`, `img`, `state`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(1, '18801043607', 'c33367701511b4f6020ec61ded352059', '老师', 1, '小学课程', '腰立辉', NULL, NULL, '正常', '腰立辉', '腰立辉', 1478415695, '2016-11-13 09:19:33'),
(3, '13333333333', 'f379eaf3c831b04de153469d1bec345e', '老师', 1, '中学课程', '张三', NULL, NULL, '正常', '腰立辉', '腰立辉', 1478415695, '2016-11-13 09:22:42'),
(4, '13222222222', 'f379eaf3c831b04de153469d1bec345e', '助教', 1, '兴趣拓展', '李四', NULL, NULL, '正常', '腰立辉', '腰立辉', 1478415695, '2016-11-13 09:22:20'),
(5, '13426179579', 'f379eaf3c831b04de153469d1bec345e', '学生', 0, '小学课程', '王五', NULL, NULL, '正常', '腰立辉', '腰立辉', 1478415748, '2016-11-13 09:18:21'),
(6, '15323473621', 'f379eaf3c831b04de153469d1bec345e', '学生', 0, '学前少儿', '赵六', NULL, NULL, '正常', '腰立辉', '腰立辉', 1478442421, '2016-11-13 09:22:03'),
(12, '12314242342', 'f379eaf3c831b04de153469d1bec345e', '学生', 0, '小学课程', 'werer', NULL, NULL, '正常', '腰立辉', '腰立辉', 1479042931, '2016-11-13 13:17:14');

-- --------------------------------------------------------

--
-- 表的结构 `tuoc_date`
--

CREATE TABLE `tuoc_date` (
  `id` smallint(6) NOT NULL,
  `riqi` date DEFAULT NULL,
  `xingqi` varchar(5) DEFAULT NULL,
  `sn` smallint(2) DEFAULT NULL,
  `sktime` varchar(20) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tuoc_date`
--

INSERT INTO `tuoc_date` (`id`, `riqi`, `xingqi`, `sn`, `sktime`, `updateTime`) VALUES
(8, '2016-11-14', '星期一', 2, '10:00-12:00', '2016-11-14 14:11:56'),
(7, '2016-11-14', '星期一', 1, '8:00-10:00', '2016-11-14 14:11:56'),
(9, '2016-11-14', '星期一', 3, '13:00-15:00', '2016-11-14 14:11:56'),
(10, '2016-11-14', '星期一', 4, '15:00-17:00', '2016-11-14 14:11:56'),
(11, '2016-11-15', '星期二', 1, '8:00-10:00', '2016-11-14 14:39:51'),
(12, '2016-11-15', '星期二', 2, '10:00-12:00', '2016-11-14 14:39:51'),
(13, '2016-11-15', '星期二', 3, '13:00-15:00', '2016-11-14 14:39:51'),
(14, '2016-11-15', '星期二', 4, '15:00-17:00', '2016-11-14 14:39:51'),
(15, '2016-11-16', '星期三', 1, '8:00-10:00', '2016-11-14 14:40:49'),
(16, '2016-11-16', '星期三', 2, '10:00-12:00', '2016-11-14 14:40:49'),
(17, '2016-11-16', '星期三', 3, '13:00-15:00', '2016-11-14 14:40:49'),
(18, '2016-11-16', '星期三', 4, '15:00-17:00', '2016-11-14 14:40:49'),
(19, '2016-11-17', '星期四', 1, '8:00-10:00', '2016-11-14 14:52:08'),
(20, '2016-11-17', '星期四', 2, '10:00-12:00', '2016-11-14 14:52:08'),
(21, '2016-11-17', '星期四', 3, '13:00-15:00', '2016-11-14 14:52:08'),
(22, '2016-11-17', '星期四', 4, '15:00-17:00', '2016-11-14 14:52:08'),
(23, '2016-11-18', '星期五', 1, '8:00-10:00', '2016-11-14 16:01:26'),
(24, '2016-11-18', '星期五', 2, '10:00-12:00', '2016-11-14 16:01:26'),
(25, '2016-11-18', '星期五', 3, '13:00-15:00', '2016-11-14 16:01:26'),
(26, '2016-11-18', '星期五', 4, '15:00-17:00', '2016-11-14 16:01:26');

-- --------------------------------------------------------

--
-- 表的结构 `tuoc_dict`
--

CREATE TABLE `tuoc_dict` (
  `id` smallint(6) NOT NULL,
  `k` smallint(2) DEFAULT NULL,
  `v` varchar(20) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `state` varchar(5) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tuoc_dict`
--

INSERT INTO `tuoc_dict` (`id`, `k`, `v`, `type`, `state`, `remark`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(1, 1, '正常', 'state', '正常', NULL, '腰立辉', '腰立辉', '2016-10-27 07:54:22', '2016-10-30 09:51:36'),
(2, 3, '作废', 'state', '正常', NULL, '腰立辉', '腰立辉', '2016-10-27 07:54:17', '2016-10-27 09:16:57'),
(5, 2, '发布', 'state', '正常', NULL, '腰立辉', '腰立辉', '2016-10-27 09:16:20', '2016-10-30 09:51:11'),
(16, 4, '设置', 'menu_admin', '正常', NULL, '腰立辉', '腰立辉', '2016-11-06 03:43:49', '2016-11-06 03:53:27'),
(15, 3, '师资', 'menu_admin', '正常', NULL, '腰立辉', '腰立辉', '2016-11-06 03:43:40', '2016-11-06 03:53:15'),
(14, 2, '课程', 'menu_admin', '正常', NULL, '腰立辉', '腰立辉', '2016-11-06 03:43:25', '2016-11-06 03:46:52'),
(13, 1, '首页', 'menu_admin', '正常', NULL, '腰立辉', '腰立辉', '2016-11-06 03:42:56', '2016-11-06 03:46:25'),
(17, 1, '首页', 'menu_home', '正常', NULL, '腰立辉', '腰立辉', '2016-11-06 03:54:40', '2016-11-06 03:54:40'),
(18, 2, '课程导航', 'menu_home', '正常', NULL, '腰立辉', '腰立辉', '2016-11-06 03:54:57', '2016-11-06 03:55:18'),
(19, 3, '师资力量', 'menu_home', '正常', NULL, '腰立辉', '腰立辉', '2016-11-06 03:55:41', '2016-11-06 03:55:41'),
(20, 4, '关于我们', 'menu_home', '正常', NULL, '腰立辉', '腰立辉', '2016-11-06 03:55:53', '2016-11-06 03:55:53'),
(21, 1, '老师', 'custype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 05:22:33', '2016-11-06 05:22:33'),
(22, 2, '助教', 'custype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 05:22:50', '2016-11-06 05:22:50'),
(23, 3, '学生', 'custype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 05:22:58', '2016-11-06 05:22:58'),
(24, 1, '学前少儿', 'coursetype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 07:20:45', '2016-11-06 08:17:22'),
(25, 2, '小学课程', 'coursetype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 07:22:34', '2016-11-06 08:17:46'),
(26, 3, '中学课程', 'coursetype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 07:22:49', '2016-11-06 08:17:57'),
(27, 4, '作业托管', 'coursetype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 07:23:00', '2016-11-06 08:18:12'),
(28, 5, '兴趣拓展', 'coursetype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 07:23:09', '2016-11-06 08:18:26'),
(37, 1, '8:00-10:00', 'sktime', '正常', '', '腰立辉', '腰立辉', '2016-11-11 15:30:52', '2016-11-11 15:30:52'),
(38, 2, '10:00-12:00', 'sktime', '正常', '', '腰立辉', '腰立辉', '2016-11-11 15:31:16', '2016-11-11 15:31:16'),
(39, 3, '13:00-15:00', 'sktime', '正常', '', '腰立辉', '腰立辉', '2016-11-11 15:31:31', '2016-11-11 15:31:31'),
(40, 4, '15:00-17:00', 'sktime', '正常', '', '腰立辉', '腰立辉', '2016-11-11 15:32:36', '2016-11-11 15:32:36'),
(41, 1, '在职', 'adminst', '正常', '', '腰立辉', '腰立辉', '2016-11-12 08:03:08', '2016-11-12 08:03:08'),
(42, 2, '离职', 'adminst', '正常', '', '腰立辉', '腰立辉', '2016-11-12 08:03:34', '2016-11-12 08:03:34');

-- --------------------------------------------------------

--
-- 表的结构 `tuoc_hr`
--

CREATE TABLE `tuoc_hr` (
  `id` smallint(6) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `state` varchar(5) DEFAULT '发布',
  `desc` text,
  `salary` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tuoc_hr`
--

INSERT INTO `tuoc_hr` (`id`, `title`, `state`, `desc`, `salary`, `date`, `place`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(3, '公司CEO', '发布', '\r\n', '面议', '2016-10-03', '安顺汽修', '腰立辉', '腰立辉', NULL, '2016-11-06 02:04:55'),
(4, '首席财务官', '作废', '<p>\r\n	融入融入人</p>\r\n', '面议', '2016-10-03', '安顺汽修', '腰立辉', '腰立辉', NULL, '2016-10-29 12:12:52');

-- --------------------------------------------------------

--
-- 表的结构 `tuoc_menu`
--

CREATE TABLE `tuoc_menu` (
  `id` smallint(6) NOT NULL,
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
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tuoc_plan`
--

CREATE TABLE `tuoc_plan` (
  `id` smallint(6) NOT NULL,
  `dateid` smallint(6) NOT NULL,
  `skdate` date DEFAULT NULL,
  `skweek` varchar(6) DEFAULT NULL,
  `sktime` varchar(20) DEFAULT NULL,
  `techclassid` smallint(6) DEFAULT NULL,
  `courseid` smallint(6) DEFAULT NULL,
  `adress` varchar(100) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tuoc_plan`
--

INSERT INTO `tuoc_plan` (`id`, `dateid`, `skdate`, `skweek`, `sktime`, `techclassid`, `courseid`, `adress`, `state`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(4, 8, '2016-11-14', '星期一', '10:00-12:00', 4, 6, 'asdasdsa', '待确认', '腰立辉', '腰立辉', 1479138089, '2016-11-14 15:41:29');

-- --------------------------------------------------------

--
-- 表的结构 `tuoc_setting`
--

CREATE TABLE `tuoc_setting` (
  `id` smallint(6) NOT NULL,
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
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tuoc_setting`
--

INSERT INTO `tuoc_setting` (`id`, `phone`, `qq`, `web`, `keywords`, `desc`, `adress`, `url`, `hpath`, `himg`, `apath`, `aimg`, `moder`, `updateTime`) VALUES
(1, '0311-898493', '285981407', '石家庄-拓才教育', '', '1231231231231', '石家庄1', 'www.tuocaijiaoyu.com', '/Setting/home/2016-11-08/', '5821e25512af5.jpg', '/Setting/adress/2016-11-08/', '5821e242d22c5.jpg', '腰立辉', '2016-11-12 12:48:04');

-- --------------------------------------------------------

--
-- 表的结构 `tuoc_studentcla`
--

CREATE TABLE `tuoc_studentcla` (
  `id` smallint(6) NOT NULL,
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
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tuoc_studentcla`
--

INSERT INTO `tuoc_studentcla` (`id`, `studentid`, `student`, `sphone`, `coursetype`, `techclassid`, `teacher`, `tphone`, `courseid`, `course`, `state`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(4, 5, '王五', '13426179579', '小学课程', 4, '腰立辉', '18801043607', 6, '小学英语', NULL, '腰立辉', '腰立辉', 1479043222, '2016-11-13 13:20:22');

-- --------------------------------------------------------

--
-- 表的结构 `tuoc_techclass`
--

CREATE TABLE `tuoc_techclass` (
  `id` smallint(6) NOT NULL,
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
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tuoc_techclass`
--

INSERT INTO `tuoc_techclass` (`id`, `teacherid`, `teacher`, `phone`, `courseid`, `coursetype`, `course`, `state`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(4, 1, '腰立辉', '18801043607', 6, '小学课程', '小学英语', NULL, '腰立辉', '腰立辉', 1479027130, '2016-11-13 10:39:09'),
(5, 1, '腰立辉', '18801043607', 6, '小学课程', '小学英语', NULL, '腰立辉', '腰立辉', 1479031833, '2016-11-13 10:23:41'),
(6, 4, '李四', '13222222222', 10, '兴趣拓展', '跆拳道', NULL, '腰立辉', '腰立辉', 1479032021, '2016-11-13 10:23:56'),
(7, 3, '张三', '13333333333', 11, '中学课程', '九年级物理', NULL, '腰立辉', '腰立辉', 1479034059, '2016-11-13 10:47:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tuoc_admin`
--
ALTER TABLE `tuoc_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuoc_course`
--
ALTER TABLE `tuoc_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuoc_customer`
--
ALTER TABLE `tuoc_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`) USING HASH;

--
-- Indexes for table `tuoc_date`
--
ALTER TABLE `tuoc_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuoc_dict`
--
ALTER TABLE `tuoc_dict`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuoc_hr`
--
ALTER TABLE `tuoc_hr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuoc_menu`
--
ALTER TABLE `tuoc_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuoc_plan`
--
ALTER TABLE `tuoc_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuoc_setting`
--
ALTER TABLE `tuoc_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuoc_studentcla`
--
ALTER TABLE `tuoc_studentcla`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuoc_techclass`
--
ALTER TABLE `tuoc_techclass`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tuoc_admin`
--
ALTER TABLE `tuoc_admin`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `tuoc_course`
--
ALTER TABLE `tuoc_course`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `tuoc_customer`
--
ALTER TABLE `tuoc_customer`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `tuoc_date`
--
ALTER TABLE `tuoc_date`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- 使用表AUTO_INCREMENT `tuoc_dict`
--
ALTER TABLE `tuoc_dict`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- 使用表AUTO_INCREMENT `tuoc_hr`
--
ALTER TABLE `tuoc_hr`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `tuoc_menu`
--
ALTER TABLE `tuoc_menu`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `tuoc_plan`
--
ALTER TABLE `tuoc_plan`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `tuoc_setting`
--
ALTER TABLE `tuoc_setting`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `tuoc_studentcla`
--
ALTER TABLE `tuoc_studentcla`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `tuoc_techclass`
--
ALTER TABLE `tuoc_techclass`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
