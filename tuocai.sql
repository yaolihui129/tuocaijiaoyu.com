-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-11-08 16:21:44
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
(2, 'liangxw', '梁小伟', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '13426179579', '在职', NULL, '腰立辉', '腰立辉', 2016, '2016-11-05 10:17:38');

-- --------------------------------------------------------

--
-- 表的结构 `tuoc_course`
--

CREATE TABLE `tuoc_course` (
  `id` smallint(6) NOT NULL,
  `sn` smallint(6) DEFAULT NULL,
  `course` varchar(30) DEFAULT NULL,
  `coursetype` varchar(5) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
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

INSERT INTO `tuoc_course` (`id`, `sn`, `course`, `coursetype`, `phone`, `desc`, `path`, `img`, `state`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(6, 1, '小学英语', '小学课程', NULL, NULL, NULL, NULL, '正常', '腰立辉', '腰立辉', NULL, '2016-11-06 08:18:36'),
(7, NULL, '百家姓', '学前少儿', '18801043607', '12312', NULL, NULL, '正常', '腰立辉', '腰立辉', 1478422638, '2016-11-06 09:10:59'),
(8, NULL, 'asdas', '小学课程', '18801043607', 'asdsa', NULL, NULL, '正常', '腰立辉', '腰立辉', 1478530851, '2016-11-07 15:00:51'),
(9, NULL, 'qweqw', '小学课程', 'qweq', 'qweqw', NULL, NULL, '正常', '腰立辉', '腰立辉', 1478530883, '2016-11-07 15:01:23');

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
  `realname` varchar(10) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tuoc_customer`
--

INSERT INTO `tuoc_customer` (`id`, `phone`, `password`, `custype`, `isteacher`, `realname`, `path`, `img`, `state`, `adder`, `moder`, `createTime`, `updateTime`) VALUES
(1, '18801043607', 'c33367701511b4f6020ec61ded352059', '老师', 1, '腰立辉', NULL, NULL, '正常', '腰立辉', '腰立辉', 1478415695, '2016-11-06 14:03:17'),
(3, '13333333333', 'f379eaf3c831b04de153469d1bec345e', '老师', 1, '张三', NULL, NULL, '正常', '腰立辉', '腰立辉', 1478415695, '2016-11-06 13:51:38'),
(4, '13222222222', 'f379eaf3c831b04de153469d1bec345e', '助教', 1, '李四', NULL, NULL, '正常', '腰立辉', '腰立辉', 1478415695, '2016-11-06 13:51:39'),
(5, '13426179579', 'f379eaf3c831b04de153469d1bec345e', '学生', 0, '王五', NULL, NULL, '正常', '腰立辉', '腰立辉', 1478415748, '2016-11-06 14:27:17'),
(6, '15323473621', 'f379eaf3c831b04de153469d1bec345e', '学生', 0, '赵六', NULL, NULL, '正常', '腰立辉', '腰立辉', 1478442421, '2016-11-06 14:27:01');

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
(28, 5, '兴趣拓展', 'coursetype', '正常', '', '腰立辉', '腰立辉', '2016-11-06 07:23:09', '2016-11-06 08:18:26');

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
(1, '0311-898493', '285981407', '石家庄-拓才教育', '', '1231231231231', '石家庄', 'www.tuocaijiaoyu.com', '/Setting/home/2016-11-08/', '5821e25512af5.jpg', '/Setting/adress/2016-11-08/', '5821e242d22c5.jpg', '腰立辉', '2016-11-08 14:33:57');

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
-- Indexes for table `tuoc_setting`
--
ALTER TABLE `tuoc_setting`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tuoc_admin`
--
ALTER TABLE `tuoc_admin`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `tuoc_course`
--
ALTER TABLE `tuoc_course`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `tuoc_customer`
--
ALTER TABLE `tuoc_customer`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `tuoc_dict`
--
ALTER TABLE `tuoc_dict`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
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
-- 使用表AUTO_INCREMENT `tuoc_setting`
--
ALTER TABLE `tuoc_setting`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
