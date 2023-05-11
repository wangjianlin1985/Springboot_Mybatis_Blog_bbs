/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : boot_hblog

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-02-12 22:01:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `h_comment`
-- ----------------------------
DROP TABLE IF EXISTS `h_comment`;
CREATE TABLE `h_comment` (
  `id` int(11) DEFAULT NULL,
  `news_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of h_comment
-- ----------------------------
INSERT INTO `h_comment` VALUES (null, '21', '12121', '2019-08-18', '19', null, null, '0');
INSERT INTO `h_comment` VALUES (null, '21', '4645645645', '2019-08-18', '19', null, null, '0');
INSERT INTO `h_comment` VALUES (null, '22', '可以的，很好', '2019-08-18', '20', null, null, '0');

-- ----------------------------
-- Table structure for `h_link`
-- ----------------------------
DROP TABLE IF EXISTS `h_link`;
CREATE TABLE `h_link` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `description` varchar(64) NOT NULL COMMENT '描述',
  `url` varchar(255) NOT NULL COMMENT '地址',
  `sort` varchar(255) DEFAULT '0',
  `status` varchar(255) DEFAULT '0',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of h_link
-- ----------------------------
INSERT INTO `h_link` VALUES ('10', '百度', 'http://www.baidu.com', '0', '0', '2018-04-26 11:43:49', '1', '2018-04-26 17:30:36', '1');

-- ----------------------------
-- Table structure for `h_log`
-- ----------------------------
DROP TABLE IF EXISTS `h_log`;
CREATE TABLE `h_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '标题',
  `create_by` int(11) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户代理',
  `request_url` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) DEFAULT NULL COMMENT '操作方式',
  `params` text DEFAULT NULL COMMENT '操作提交的数据',
  `exception` text DEFAULT NULL COMMENT '异常信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6778 DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of h_log
-- ----------------------------
INSERT INTO `h_log` VALUES ('6177', '1', '日志管理-日志列表', '1', '2018-04-27 09:27:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/log/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6178', '1', '文章管理-文章列表', '1', '2018-04-27 09:28:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6179', '1', '日志管理-日志列表', '1', '2018-04-27 09:28:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/log/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6180', '1', '文章管理-文章添加', '1', '2018-04-27 09:28:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6181', '1', '日志管理-日志列表', '1', '2018-04-27 09:28:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/log/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6182', '1', '文章管理-文章列表', '1', '2018-04-27 09:30:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6183', '1', '数据管理-文章发表数据', '1', '2018-04-27 09:30:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/sys/data/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6184', '1', '数据管理-文章浏览数据', '1', '2018-04-27 09:30:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/sys/data/list1', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6185', '1', '链接管理-链接添加', '1', '2018-04-27 09:31:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/link/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6186', '1', '链接管理-链接列表', '1', '2018-04-27 09:31:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/link/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6187', '1', '用户管理-用户列表', '1', '2018-04-27 09:35:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6188', '1', '日志管理-日志列表', '1', '2018-04-27 09:35:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/log/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6189', '1', '用户管理-用户添加', '1', '2018-04-27 09:35:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6190', '1', '控制面板', '1', '2018-04-27 09:37:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6191', '1', '日志管理-日志列表', '1', '2018-04-27 09:37:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/log/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6192', '1', '控制面板', '1', '2018-04-27 09:48:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6193', '1', '控制面板', '1', '2018-04-27 09:52:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6194', '1', '控制面板', '1', '2018-04-27 09:53:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6195', '1', '控制面板', '1', '2018-04-27 09:54:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6196', '1', '控制面板', '1', '2018-04-27 09:55:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6197', '1', '控制面板', '1', '2018-04-27 10:00:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6198', '1', '日志管理-日志列表', '1', '2018-04-27 10:00:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/log/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6199', '1', '数据管理-文章发表数据', '1', '2018-04-27 10:00:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/sys/data/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6200', '1', '数据管理-文章浏览数据', '1', '2018-04-27 10:00:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/sys/data/list1', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6201', '1', '控制面板', '1', '2018-04-27 10:04:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6202', '1', '控制面板', '1', '2018-04-27 10:04:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6203', '1', '控制面板', '1', '2018-04-27 10:04:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6204', '1', '控制面板', '1', '2018-04-27 10:04:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6205', '1', '控制面板', '1', '2018-04-27 10:04:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6206', '1', '控制面板', '1', '2018-04-27 10:05:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6207', '1', '控制面板', '1', '2018-04-27 10:05:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6208', '1', '控制面板', '1', '2018-04-27 10:05:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6209', '1', '控制面板', '1', '2018-04-27 10:05:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6210', '1', '控制面板', '1', '2018-04-27 10:05:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6211', '1', '控制面板', '1', '2018-04-27 10:05:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6212', '1', '控制面板', '1', '2018-04-27 10:05:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6213', '1', '控制面板', '1', '2018-04-27 10:05:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6214', '1', '控制面板', '1', '2018-04-27 10:06:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6215', '1', '控制面板', '1', '2018-04-27 10:06:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6216', '1', '控制面板', '1', '2018-04-27 10:06:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6217', '1', '控制面板', '1', '2018-04-27 10:06:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6218', '1', '控制面板', '1', '2018-04-27 10:06:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6219', '1', '控制面板', '1', '2018-04-27 10:06:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6220', '1', '控制面板', '1', '2018-04-27 10:06:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6221', '1', '控制面板', '1', '2018-04-27 10:06:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6222', '1', '控制面板', '1', '2018-04-27 10:06:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6223', '1', '控制面板', '1', '2018-04-27 10:06:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6224', '1', '控制面板', '1', '2018-04-27 10:06:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6225', '1', '控制面板', '1', '2018-04-27 10:06:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6226', '1', '控制面板', '1', '2018-04-27 10:06:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6227', '1', '控制面板', '1', '2018-04-27 10:06:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6228', '1', '控制面板', '1', '2018-04-27 10:06:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6229', '1', '控制面板', '1', '2018-04-27 10:09:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6230', '1', '控制面板', '1', '2018-04-27 10:11:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6231', '1', '控制面板', '1', '2018-04-27 10:21:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6232', '1', '日志管理-日志列表', '1', '2018-04-27 10:24:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/log/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6233', '1', '数据管理-文章发表数据', '1', '2018-04-27 10:24:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/sys/data/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6234', '1', '日志管理-日志列表', '1', '2018-04-27 10:24:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/log/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6235', '1', '用户管理-用户列表', '1', '2018-04-27 10:25:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6236', '1', '用户管理-用户列表-删除', '1', '2018-04-27 10:25:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/delete', 'POST', 'id=6', '');
INSERT INTO `h_log` VALUES ('6237', '1', '用户管理-用户列表-删除', '1', '2018-04-27 10:25:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/delete', 'POST', 'id=8', '');
INSERT INTO `h_log` VALUES ('6238', '1', '日志管理-日志列表', '1', '2018-04-27 10:25:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/log/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6239', '1', '用户管理-用户添加', '1', '2018-04-27 10:25:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6240', '1', '文章管理-文章列表', '1', '2018-04-27 10:26:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6241', '1', '文章管理-文章添加', '1', '2018-04-27 10:26:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6242', '1', '文章管理-文章列表-查看', '1', '2018-04-27 10:26:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/read', 'POST', 'id=16', '');
INSERT INTO `h_log` VALUES ('6243', '1', '文章管理-文章列表-查看', '1', '2018-04-27 10:26:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/read', 'POST', 'id=16', '');
INSERT INTO `h_log` VALUES ('6244', '1', '控制面板', '1', '2018-04-27 10:28:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6245', '1', '控制面板', '1', '2018-04-27 10:53:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6246', '1', '控制面板', '1', '2018-04-27 11:08:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6247', '1', '控制面板', '1', '2018-04-27 11:09:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6248', '1', '控制面板', '1', '2018-04-27 11:10:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6249', '1', '控制面板', '1', '2018-04-27 11:11:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6250', '1', '控制面板', '1', '2018-04-27 11:16:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6251', '1', '控制面板', '1', '2018-04-27 11:16:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6252', '1', '控制面板', '1', '2018-04-27 11:17:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6253', '1', '控制面板', '1', '2018-04-27 11:18:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6254', '1', '控制面板', '1', '2018-04-27 11:19:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6255', '1', '控制面板', '1', '2018-04-27 11:20:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6256', '1', '控制面板', '1', '2018-04-27 11:22:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6257', '1', '控制面板', '1', '2018-04-27 11:24:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6258', '1', '控制面板', '1', '2018-04-27 11:24:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6259', '1', '用户管理-用户列表', '1', '2018-04-27 11:25:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6260', '1', '控制面板', '1', '2018-04-27 11:27:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6261', '1', '用户管理-用户列表', '1', '2018-04-27 11:27:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6262', '1', '控制面板', '1', '2018-04-27 11:33:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6263', '1', '用户管理-用户列表', '1', '2018-04-27 11:33:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6264', '1', '控制面板', '1', '2018-04-27 11:35:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6265', '1', '用户管理-用户列表', '1', '2018-04-27 11:35:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6266', '1', '控制面板', '1', '2018-04-27 11:35:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6267', '1', '用户管理-用户列表', '1', '2018-04-27 11:35:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6268', '1', '控制面板', '1', '2018-04-27 11:35:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6269', '1', '用户管理-用户列表', '1', '2018-04-27 11:35:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6270', '1', '控制面板', '1', '2018-04-27 11:36:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6271', '1', '用户管理-用户列表', '1', '2018-04-27 11:36:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6272', '1', '控制面板', '1', '2018-04-27 11:40:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6273', '1', '用户管理-用户列表', '1', '2018-04-27 11:40:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6274', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:40:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6275', '1', '用户管理-用户添加', '1', '2018-04-27 11:43:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6276', '1', '控制面板', '1', '2018-04-27 11:47:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6277', '1', '用户管理-用户列表', '1', '2018-04-27 11:47:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6278', '1', '控制面板', '1', '2018-04-27 11:47:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6279', '1', '用户管理-用户列表', '1', '2018-04-27 11:47:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6280', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:47:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6281', '1', '用户管理-用户添加', '1', '2018-04-27 11:48:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6282', '1', '用户管理-用户添加-增加', '1', '2018-04-27 11:48:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'POST', 'username=ruixin1&password=&repassword=&role=2&userRoles[]=1', '');
INSERT INTO `h_log` VALUES ('6283', '1', '控制面板', '1', '2018-04-27 11:50:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6284', '1', '用户管理-用户添加', '1', '2018-04-27 11:50:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6285', '1', '用户管理-用户添加-增加', '1', '2018-04-27 11:50:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'POST', 'username=ruixin2&password=&repassword=&role=2&userRoles[]=1', '');
INSERT INTO `h_log` VALUES ('6286', '1', '用户管理-用户添加', '1', '2018-04-27 11:50:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6287', '1', '控制面板', '1', '2018-04-27 11:50:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6288', '1', '用户管理-用户列表', '1', '2018-04-27 11:50:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6289', '1', '用户管理-用户添加', '1', '2018-04-27 11:50:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6290', '1', '控制面板', '1', '2018-04-27 11:51:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6291', '1', '用户管理-用户列表', '1', '2018-04-27 11:51:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6292', '1', '用户管理-用户添加', '1', '2018-04-27 11:51:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6293', '1', '控制面板', '1', '2018-04-27 11:51:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6294', '1', '用户管理-用户列表', '1', '2018-04-27 11:51:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6295', '1', '用户管理-用户添加', '1', '2018-04-27 11:51:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6296', '1', '用户管理-用户添加-增加', '1', '2018-04-27 11:51:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'POST', 'username=ruixin3&password=&repassword=&role=2&userRoles[]=1', '');
INSERT INTO `h_log` VALUES ('6297', '1', '用户管理-用户添加', '1', '2018-04-27 11:51:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6298', '1', '用户管理-用户列表', '1', '2018-04-27 11:51:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6299', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:51:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6300', '1', '控制面板', '1', '2018-04-27 11:54:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6301', '1', '用户管理-用户添加', '1', '2018-04-27 11:54:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6302', '1', '用户管理-用户列表', '1', '2018-04-27 11:54:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6303', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:54:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6304', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:54:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=10', '');
INSERT INTO `h_log` VALUES ('6305', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:54:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6306', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:54:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6307', '1', '控制面板', '1', '2018-04-27 11:56:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6308', '1', '用户管理-用户列表', '1', '2018-04-27 11:56:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6309', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:56:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6310', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:56:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6311', '1', '控制面板', '1', '2018-04-27 11:57:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6312', '1', '用户管理-用户列表', '1', '2018-04-27 11:57:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6313', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:57:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6314', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:57:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6315', '1', '控制面板', '1', '2018-04-27 11:57:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6316', '1', '用户管理-用户列表', '1', '2018-04-27 11:57:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6317', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:57:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=10', '');
INSERT INTO `h_log` VALUES ('6318', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:57:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6319', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:57:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6320', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:57:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=10', '');
INSERT INTO `h_log` VALUES ('6321', '1', '控制面板', '1', '2018-04-27 11:58:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6322', '1', '用户管理-用户列表', '1', '2018-04-27 11:58:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6323', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:58:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6324', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:58:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6325', '1', '控制面板', '1', '2018-04-27 11:59:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6326', '1', '用户管理-用户列表', '1', '2018-04-27 11:59:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6327', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:59:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6328', '1', '用户管理-用户列表-查看', '1', '2018-04-27 11:59:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=10', '');
INSERT INTO `h_log` VALUES ('6329', '1', '控制面板', '1', '2018-04-27 12:00:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6330', '1', '用户管理-用户列表', '1', '2018-04-27 12:00:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6331', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:00:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=10', '');
INSERT INTO `h_log` VALUES ('6332', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:00:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6333', '1', '控制面板', '1', '2018-04-27 12:00:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6334', '1', '用户管理-用户列表', '1', '2018-04-27 12:00:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6335', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:00:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6336', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:00:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6337', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:00:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6338', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:00:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6339', '1', '控制面板', '1', '2018-04-27 12:01:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6340', '1', '用户管理-用户列表', '1', '2018-04-27 12:01:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6341', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:01:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6342', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:01:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6343', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:01:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=10', '');
INSERT INTO `h_log` VALUES ('6344', '1', '控制面板', '1', '2018-04-27 12:02:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6345', '1', '用户管理-用户列表', '1', '2018-04-27 12:02:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6346', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:02:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6347', '1', '控制面板', '1', '2018-04-27 12:04:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6348', '1', '用户管理-用户列表', '1', '2018-04-27 12:04:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6349', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:04:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6350', '1', '控制面板', '1', '2018-04-27 12:07:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6351', '1', '用户管理-用户列表', '1', '2018-04-27 12:07:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6352', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:07:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6353', '1', '控制面板', '1', '2018-04-27 12:07:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6354', '1', '用户管理-用户列表', '1', '2018-04-27 12:07:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6355', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:07:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6356', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:08:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6357', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:08:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6358', '1', '控制面板', '1', '2018-04-27 12:08:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6359', '1', '用户管理-用户列表', '1', '2018-04-27 12:08:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6360', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:08:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6361', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:08:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6362', '1', '控制面板', '1', '2018-04-27 12:08:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6363', '1', '用户管理-用户列表', '1', '2018-04-27 12:08:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6364', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:08:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6365', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:08:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6366', '1', '控制面板', '1', '2018-04-27 12:09:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6367', '1', '控制面板', '1', '2018-04-27 12:09:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6368', '1', '控制面板', '1', '2018-04-27 12:09:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6369', '1', '控制面板', '1', '2018-04-27 12:09:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6370', '1', '用户管理-用户列表', '1', '2018-04-27 12:09:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6371', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:09:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6372', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:09:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6373', '1', '控制面板', '1', '2018-04-27 12:10:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6374', '1', '用户管理-用户列表', '1', '2018-04-27 12:10:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6375', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:10:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6376', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:10:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6377', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:10:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6378', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:11:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=10', '');
INSERT INTO `h_log` VALUES ('6379', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:11:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6380', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:11:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6381', '1', '控制面板', '1', '2018-04-27 12:11:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6382', '1', '用户管理-用户列表', '1', '2018-04-27 12:11:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6383', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:11:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6384', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:11:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=10', '');
INSERT INTO `h_log` VALUES ('6385', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:11:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6386', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:11:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6387', '1', '控制面板', '1', '2018-04-27 12:12:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6388', '1', '用户管理-用户列表', '1', '2018-04-27 12:12:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6389', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:12:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6390', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:12:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6391', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:12:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=10', '');
INSERT INTO `h_log` VALUES ('6392', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:12:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6393', '1', '控制面板', '1', '2018-04-27 12:12:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6394', '1', '用户管理-用户列表', '1', '2018-04-27 12:12:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6395', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:13:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6396', '1', '控制面板', '1', '2018-04-27 12:13:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6397', '1', '用户管理-用户列表', '1', '2018-04-27 12:13:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6398', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:13:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6399', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:13:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=10', '');
INSERT INTO `h_log` VALUES ('6400', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:13:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6401', '1', '控制面板', '1', '2018-04-27 12:15:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6402', '1', '用户管理-用户列表', '1', '2018-04-27 12:15:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6403', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:15:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6404', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:15:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=10', '');
INSERT INTO `h_log` VALUES ('6405', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:15:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6406', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:15:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6407', '1', '控制面板', '1', '2018-04-27 12:15:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6408', '1', '用户管理-用户列表', '1', '2018-04-27 12:15:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6409', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:15:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6410', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:16:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6411', '1', '控制面板', '1', '2018-04-27 12:17:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6412', '1', '用户管理-用户列表', '1', '2018-04-27 12:17:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6413', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:17:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6414', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:17:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6415', '1', '控制面板', '1', '2018-04-27 12:18:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6416', '1', '用户管理-用户列表', '1', '2018-04-27 12:18:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6417', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:18:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6418', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:19:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6419', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:19:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6420', '1', '控制面板', '1', '2018-04-27 12:19:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6421', '1', '用户管理-用户列表', '1', '2018-04-27 12:19:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6422', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:19:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6423', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:19:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6424', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:19:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6425', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:19:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6426', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:19:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6427', '1', '控制面板', '1', '2018-04-27 12:23:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6428', '1', '用户管理-用户列表', '1', '2018-04-27 12:23:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6429', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:23:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6430', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:23:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6431', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:23:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6432', '1', '控制面板', '1', '2018-04-27 12:24:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6433', '1', '用户管理-用户列表', '1', '2018-04-27 12:24:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6434', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:24:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6435', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:24:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6436', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:24:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6437', '1', '控制面板', '1', '2018-04-27 12:25:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6438', '1', '用户管理-用户列表', '1', '2018-04-27 12:26:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6439', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:26:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6440', '1', '控制面板', '1', '2018-04-27 12:26:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6441', '1', '用户管理-用户列表', '1', '2018-04-27 12:26:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6442', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:26:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6443', '1', '控制面板', '1', '2018-04-27 12:26:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6444', '1', '用户管理-用户列表', '1', '2018-04-27 12:26:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6445', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:26:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6446', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:26:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6447', '1', '控制面板', '1', '2018-04-27 12:28:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6448', '1', '用户管理-用户列表', '1', '2018-04-27 12:28:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6449', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:28:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6450', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:28:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6451', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:29:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6452', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:30:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6453', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:30:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6454', '1', '日志管理-日志列表', '1', '2018-04-27 12:32:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/log/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6455', '1', '链接管理-链接列表', '1', '2018-04-27 12:32:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/link/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6456', '1', '链接管理-链接添加', '1', '2018-04-27 12:32:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/link/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6457', '1', '数据管理-文章浏览数据', '1', '2018-04-27 12:32:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/sys/data/list1', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6458', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:34:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6459', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:35:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6460', '1', '用户管理-用户列表', '1', '2018-04-27 12:35:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6461', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:35:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6462', '1', '控制面板', '1', '2018-04-27 12:41:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6463', '1', '用户管理-用户列表', '1', '2018-04-27 12:41:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6464', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:41:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6465', '1', '控制面板', '1', '2018-04-27 12:44:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6466', '1', '用户管理-用户列表', '1', '2018-04-27 12:45:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6467', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:45:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6468', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:45:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=10', '');
INSERT INTO `h_log` VALUES ('6469', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:45:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=10', '');
INSERT INTO `h_log` VALUES ('6470', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:45:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6471', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:45:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6472', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:45:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6473', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:45:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6474', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:45:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=10', '');
INSERT INTO `h_log` VALUES ('6475', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:46:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6476', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:46:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6477', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:47:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6478', '1', '控制面板', '1', '2018-04-27 12:58:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6479', '1', '用户管理-用户列表', '1', '2018-04-27 12:58:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6480', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:58:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6481', '1', '控制面板', '1', '2018-04-27 12:59:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6482', '1', '用户管理-用户列表', '1', '2018-04-27 12:59:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6483', '1', '用户管理-用户列表-查看', '1', '2018-04-27 12:59:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6484', '1', '控制面板', '1', '2018-04-27 13:03:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6485', '1', '用户管理-用户列表', '1', '2018-04-27 13:03:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6486', '1', '用户管理-用户列表-查看', '1', '2018-04-27 13:03:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6487', '1', '控制面板', '1', '2018-04-27 13:05:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6488', '1', '用户管理-用户列表', '1', '2018-04-27 13:05:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6489', '1', '用户管理-用户列表-查看', '1', '2018-04-27 13:05:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6490', '1', '用户管理-用户列表', '1', '2018-04-27 13:05:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', 'id=1&password=&repassword=&admin=1&user=2&link=3&all_news=4&news=5&log=6&sys=7', '');
INSERT INTO `h_log` VALUES ('6491', '1', '控制面板', '1', '2018-04-27 13:05:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6492', '1', '用户管理-用户列表', '1', '2018-04-27 13:05:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6493', '1', '用户管理-用户列表-查看', '1', '2018-04-27 13:05:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6494', '1', '用户管理-用户列表', '1', '2018-04-27 13:05:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', 'id=9&password=&repassword=&admin=1&user=2', '');
INSERT INTO `h_log` VALUES ('6495', '1', '控制面板', '1', '2018-04-27 13:05:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6496', '1', '用户管理-用户列表', '1', '2018-04-27 13:05:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6497', '1', '用户管理-用户列表-查看', '1', '2018-04-27 13:05:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6498', '1', '控制面板', '1', '2018-04-27 13:12:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6499', '1', '用户管理-用户列表', '1', '2018-04-27 13:12:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6500', '1', '用户管理-用户列表-查看', '1', '2018-04-27 13:12:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6501', '1', '用户管理-用户列表-修改', '1', '2018-04-27 13:12:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/update', 'POST', 'id=11&username=ruixin3&password=&repassword=&admin=1&user=2&roleIds[]=1', '');
INSERT INTO `h_log` VALUES ('6502', '1', '用户管理-用户列表', '1', '2018-04-27 13:12:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', 'id=11&password=&repassword=&admin=1&user=2', '');
INSERT INTO `h_log` VALUES ('6503', '1', '控制面板', '1', '2018-04-27 13:13:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6504', '1', '用户管理-用户列表', '1', '2018-04-27 13:13:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6505', '1', '用户管理-用户列表-查看', '1', '2018-04-27 13:14:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6506', '1', '用户管理-用户列表-修改', '1', '2018-04-27 13:14:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/update', 'POST', 'id=1&username=ruixin&password=&repassword=&admin=1&user=2&link=3&all_news=4&news=5&log=6&sys=7&roleIds[]=1', '');
INSERT INTO `h_log` VALUES ('6507', '1', '用户管理-用户列表', '1', '2018-04-27 13:14:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', 'id=1&password=&repassword=&admin=1&user=2&link=3&all_news=4&news=5&log=6&sys=7', '');
INSERT INTO `h_log` VALUES ('6508', '1', '控制面板', '1', '2018-04-27 13:22:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6509', '1', '用户管理-用户列表', '1', '2018-04-27 13:22:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6510', '1', '用户管理-用户列表-查看', '1', '2018-04-27 13:22:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6511', '1', '用户管理-用户列表', '1', '2018-04-27 13:22:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', 'id=11&password=&repassword=&admin=1&user=2&link=3', '');
INSERT INTO `h_log` VALUES ('6512', '1', '用户管理-用户列表-修改', '1', '2018-04-27 13:22:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/update', 'POST', 'id=11&username=ruixin3&password=&repassword=&admin=1&user=2&link=3&roleIds[]=1', '');
INSERT INTO `h_log` VALUES ('6513', '1', '用户管理-用户列表-查看', '1', '2018-04-27 13:22:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6514', '1', '控制面板', '1', '2018-04-27 13:23:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6515', '1', '用户管理-用户列表', '1', '2018-04-27 13:23:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6516', '1', '用户管理-用户列表-查看', '1', '2018-04-27 13:23:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6517', '1', '用户管理-用户列表-查看', '1', '2018-04-27 13:23:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=10', '');
INSERT INTO `h_log` VALUES ('6518', '1', '用户管理-用户列表-查看', '1', '2018-04-27 13:23:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6519', '1', '用户管理-用户列表-查看', '1', '2018-04-27 13:23:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=1', '');
INSERT INTO `h_log` VALUES ('6520', '1', '控制面板', '1', '2018-04-27 13:23:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6521', '1', '用户管理-用户列表', '1', '2018-04-27 13:23:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6522', '1', '用户管理-用户列表-查看', '1', '2018-04-27 13:23:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6523', '1', '用户管理-用户列表-查看', '1', '2018-04-27 13:24:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6524', '1', '控制面板', '1', '2018-04-27 13:24:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6525', '1', '用户管理-用户列表', '1', '2018-04-27 13:24:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6526', '1', '用户管理-用户列表-查看', '1', '2018-04-27 13:25:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6527', '1', '用户管理-用户列表-查看', '1', '2018-04-27 13:25:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6528', '1', '用户管理-用户列表', '1', '2018-04-27 13:25:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', 'id=9&password=&repassword=&admin=1&user=2&link=3', '');
INSERT INTO `h_log` VALUES ('6529', '1', '用户管理-用户列表-修改', '1', '2018-04-27 13:25:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/update', 'POST', 'id=9&username=ruixin1&password=&repassword=&admin=1&user=2&link=3&roleIds[]=1', '');
INSERT INTO `h_log` VALUES ('6530', '1', '控制面板', '9', '2018-04-27 13:25:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6531', '1', '用户管理-用户列表', '9', '2018-04-27 13:25:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6532', '1', '用户管理-用户添加', '9', '2018-04-27 13:25:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6533', '1', '用户管理-用户列表-查看', '9', '2018-04-27 13:26:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=11', '');
INSERT INTO `h_log` VALUES ('6534', '1', '用户管理-用户列表-查看', '9', '2018-04-27 13:26:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/read', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6535', '1', '控制面板', '9', '2018-04-27 13:26:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6536', '1', '控制面板', '9', '2018-04-27 13:26:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6537', '1', '控制面板', '9', '2018-04-27 13:26:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6538', '1', '控制面板', '9', '2018-04-27 13:26:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6539', '1', '控制面板', '9', '2018-04-27 13:26:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6540', '1', '用户管理-用户列表', '9', '2018-04-27 13:26:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6541', '1', '控制面板', '9', '2018-04-27 13:38:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6542', '1', '链接管理-链接列表', '9', '2018-04-27 13:38:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/link/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6543', '1', '链接管理-链接添加', '9', '2018-04-27 13:38:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/link/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6544', '1', '用户管理-用户列表', '9', '2018-04-27 13:39:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6545', '1', '用户管理-用户添加', '9', '2018-04-27 13:39:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6546', '1', '控制面板', '9', '2018-04-27 13:39:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6547', '1', '控制面板', '1', '2018-04-27 13:50:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6548', '1', '控制面板', '12', '2018-04-27 14:05:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6549', '1', '文章管理-文章列表', '12', '2018-04-27 14:05:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6550', '1', '文章管理-文章添加', '12', '2018-04-27 14:05:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6551', '1', '控制面板', '12', '2018-04-27 14:06:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6552', '1', '控制面板', '12', '2018-04-27 14:06:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6553', '1', '控制面板', '12', '2018-04-27 14:06:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6554', '1', '控制面板', '1', '2018-04-27 14:06:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6555', '1', '文章管理-文章列表', '1', '2018-04-27 14:07:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6556', '1', '文章管理-文章添加', '1', '2018-04-27 14:07:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6557', '1', '用户管理-用户列表', '1', '2018-04-27 14:07:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6558', '1', '用户管理-用户添加', '1', '2018-04-27 14:07:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6559', '1', '数据管理-文章发表数据', '1', '2018-04-27 14:07:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/sys/data/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6560', '1', '日志管理-日志列表', '1', '2018-04-27 14:07:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/log/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6561', '1', '控制面板', '1', '2018-04-27 14:08:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6562', '1', '控制面板', '1', '2018-04-27 15:02:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6563', '1', '控制面板', '1', '2018-04-28 21:09:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6564', '1', '文章管理-文章列表', '1', '2018-04-28 21:09:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6565', '1', '文章管理-文章列表-查看', '1', '2018-04-28 21:09:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/read', 'POST', 'id=5', '');
INSERT INTO `h_log` VALUES ('6566', '1', '文章管理-文章列表-修改', '1', '2018-04-28 21:20:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/update', 'POST', 'id=5&title=雨声潺潺，像住在溪边&typeId=1&content=\n     “雨声潺潺，像住在溪边。宁愿天天下雨，以为你是因为下雨不来。”聪颖早熟、个性独立如张爱玲本...', '');
INSERT INTO `h_log` VALUES ('6567', '1', '控制面板', '1', '2018-04-28 21:23:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6568', '1', '文章管理-文章列表', '1', '2018-04-28 21:23:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6569', '1', '文章管理-文章列表-查看', '1', '2018-04-28 21:23:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/read', 'POST', 'id=5', '');
INSERT INTO `h_log` VALUES ('6570', '1', '文章管理-文章列表-查看', '1', '2018-04-28 21:23:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/read', 'POST', 'id=5', '');
INSERT INTO `h_log` VALUES ('6571', '1', '控制面板', '1', '2018-04-28 21:24:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6572', '1', '文章管理-文章添加', '1', '2018-04-28 21:24:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6573', '1', '文章管理-文章添加-增加', '1', '2018-04-28 21:25:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/add', 'POST', 'title=雨声潺潺，像住在溪边。宁愿天天下雨，以为你是因为下雨不来&typeId=1&content=\n     “雨声潺潺，像住在溪边。宁愿天天下雨，以为你是因为下雨不来。”聪颖早熟、个性独立如张爱玲本...', '');
INSERT INTO `h_log` VALUES ('6574', '1', '文章管理-文章列表', '1', '2018-04-28 21:25:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6575', '1', '文章管理-文章列表-查看', '1', '2018-04-28 21:25:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/read', 'POST', 'id=17', '');
INSERT INTO `h_log` VALUES ('6576', '1', '文章管理-文章列表-删除', '1', '2018-04-28 21:25:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/delete', 'POST', 'id=5', '');
INSERT INTO `h_log` VALUES ('6577', '1', '控制面板', '1', '2018-04-28 21:27:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6578', '1', '文章管理-文章列表', '1', '2018-04-28 21:27:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6579', '1', '文章管理-文章列表-查看', '1', '2018-04-28 21:27:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/read', 'POST', 'id=17', '');
INSERT INTO `h_log` VALUES ('6580', '1', '文章管理-文章列表-修改', '1', '2018-04-28 21:31:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/update', 'POST', 'id=17&title=雨声潺潺，像住在溪边。宁愿天天下雨，以为你是因为下雨不来&typeId=1&content=“雨声潺潺，像住在溪边。宁愿天天下雨，以为你是因为下雨不来。”聪颖早熟、个性独立如张爱玲本不愿选...', '');
INSERT INTO `h_log` VALUES ('6581', '1', '控制面板', '1', '2018-04-29 00:48:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6582', '1', '控制面板', '1', '2018-05-04 19:54:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6583', '1', '用户管理-用户列表', '1', '2018-05-04 19:54:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6584', '1', '文章管理-文章列表', '1', '2018-05-04 19:54:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6585', '1', '文章管理-文章添加', '1', '2018-05-04 19:57:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6586', '1', '数据管理-文章发表数据', '1', '2018-05-04 19:58:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/sys/data/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6587', '1', '数据管理-文章浏览数据', '1', '2018-05-04 19:58:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/sys/data/list1', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6588', '1', '系统管理-前台栏目列表', '1', '2018-05-04 19:59:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/sys/type/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6589', '1', '日志管理-日志列表', '1', '2018-05-04 19:59:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/log/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6590', '1', '链接管理-链接列表', '1', '2018-05-04 19:59:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/link/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6591', '1', '控制面板', '13', '2018-05-04 20:50:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6592', '1', '文章管理-文章列表', '13', '2018-05-04 20:50:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6593', '1', '文章管理-文章添加', '13', '2018-05-04 20:50:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6594', '1', '文章管理-文章添加-增加', '13', '2018-05-04 20:53:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/add', 'POST', 'title=文章测试&typeId=2&content=package com.baidu.ueditor;\n\npublic class Encoder {\n\n   public static String toUnicode ( String in...', '');
INSERT INTO `h_log` VALUES ('6595', '1', '文章管理-文章添加', '13', '2018-05-04 20:53:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6596', '1', '文章管理-文章列表', '13', '2018-05-04 20:53:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6597', '1', '文章管理-文章列表-查看', '13', '2018-05-04 20:53:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/read', 'POST', 'id=18', '');
INSERT INTO `h_log` VALUES ('6598', '1', '控制面板', '13', '2018-05-04 20:55:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6599', '1', '控制面板', '13', '2018-05-04 21:00:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6600', '1', '文章管理-文章列表', '13', '2018-05-04 21:00:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6601', '1', '文章管理-文章列表', '13', '2018-05-04 21:00:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6602', '1', '文章管理-文章列表', '13', '2018-05-04 21:00:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6603', '1', '文章管理-文章添加', '13', '2018-05-04 21:00:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6604', '1', '文章管理-文章列表', '13', '2018-05-04 21:00:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6605', '1', '文章管理-文章添加-增加', '13', '2018-05-04 21:01:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/add', 'POST', 'title=这是一个测试文章&typeId=1&content=package com.ruixin.controller;\n\nimport com.ruixin.bean.News;\nimport com.ruixin.bean.Type;\nimport ...', '');
INSERT INTO `h_log` VALUES ('6606', '1', '控制面板', '13', '2018-05-04 21:02:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6607', '1', '控制面板', '13', '2018-05-04 21:02:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6608', '1', '文章管理-文章列表', '13', '2018-05-04 21:02:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6609', '1', '文章管理-文章列表-查看', '13', '2018-05-04 21:03:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/read', 'POST', 'id=19', '');
INSERT INTO `h_log` VALUES ('6610', '1', '控制面板', '13', '2018-05-04 21:03:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6611', '1', '文章管理-文章列表', '13', '2018-05-04 21:03:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6612', '1', '文章管理-文章列表-查看', '13', '2018-05-04 21:03:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/read', 'POST', 'id=19', '');
INSERT INTO `h_log` VALUES ('6613', '1', '控制面板', '13', '2018-05-04 21:03:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6614', '1', '文章管理-文章列表', '13', '2018-05-04 21:03:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6615', '1', '控制面板', '13', '2018-05-04 21:03:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6616', '1', '控制面板', '13', '2018-05-04 21:03:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6617', '1', '控制面板', '13', '2018-05-04 21:03:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6618', '1', '控制面板', '13', '2018-05-04 21:03:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6619', '1', '控制面板', '13', '2018-05-04 21:03:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6620', '1', '控制面板', '13', '2018-05-04 21:03:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6621', '1', '控制面板', '13', '2018-05-04 21:03:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6622', '1', '控制面板', '13', '2018-05-04 21:03:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6623', '1', '文章管理-文章列表', '13', '2018-05-04 21:03:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6624', '1', '控制面板', '13', '2018-05-04 21:07:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6625', '1', '文章管理-文章列表', '13', '2018-05-04 21:07:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6626', '1', '控制面板', '13', '2018-05-04 21:07:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6627', '1', '文章管理-文章列表', '13', '2018-05-04 21:07:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6628', '1', '文章管理-文章列表-查看', '13', '2018-05-04 21:07:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/read', 'POST', 'id=19', '');
INSERT INTO `h_log` VALUES ('6629', '1', '控制面板', '13', '2018-05-04 21:07:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6630', '1', '控制面板', '1', '2018-05-04 21:36:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6631', '1', '控制面板', '1', '2018-05-04 21:37:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6632', '1', '控制面板', '1', '2018-05-04 21:38:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6633', '1', '控制面板', '1', '2018-05-04 21:57:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6634', '1', '控制面板', '1', '2018-05-04 21:58:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6635', '1', '控制面板', '1', '2018-05-04 21:58:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6636', '1', '控制面板', '1', '2018-05-04 22:02:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6637', '1', '控制面板', '1', '2018-05-04 22:03:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6638', '1', '控制面板', '1', '2018-05-04 22:05:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6639', '1', '控制面板', '1', '2018-05-04 22:06:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6640', '1', '用户管理-用户列表', '1', '2018-05-04 22:06:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6641', '1', '控制面板', '1', '2018-05-04 22:07:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6642', '1', '用户管理-用户列表', '1', '2018-05-04 22:07:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6643', '1', '用户管理-用户添加', '1', '2018-05-04 22:07:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/user/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6644', '1', '控制面板', '1', '2018-05-04 22:07:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6645', '1', '数据管理-文章发表数据', '1', '2018-05-04 22:07:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/sys/data/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6646', '1', '数据管理-文章浏览数据', '1', '2018-05-04 22:08:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/sys/data/list1', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6647', '1', '系统管理-前台栏目列表', '1', '2018-05-04 22:08:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/sys/type/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6648', '1', '控制面板', '13', '2018-05-04 22:08:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6649', '1', '文章管理-文章列表', '13', '2018-05-04 22:08:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6650', '1', '文章管理-文章添加', '13', '2018-05-04 22:08:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6651', '1', '控制面板', '13', '2018-05-04 22:08:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6652', '1', '文章管理-文章列表', '13', '2018-05-04 22:08:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6653', '1', '文章管理-文章添加', '13', '2018-05-04 22:08:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6654', '1', '控制面板', '1', '2018-05-04 22:11:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6655', '1', '文章管理-文章添加', '1', '2018-05-04 22:11:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6656', '1', '文章管理-文章添加-增加', '1', '2018-05-04 22:12:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/add', 'POST', 'title=这是一个测试css&typeId=3&content=.syntaxhighlighter a,\n.syntaxhighlighter div,\n.syntaxhighlighter code,\n.syntaxhighlighter table,\n...', '');
INSERT INTO `h_log` VALUES ('6657', '1', '文章管理-文章列表', '1', '2018-05-04 22:12:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6658', '1', '控制面板', '19', '2019-08-18 15:41:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6659', '1', '文章管理-文章列表', '19', '2019-08-18 15:41:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6660', '1', '文章管理-文章添加', '19', '2019-08-18 15:41:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6661', '1', '控制面板', '19', '2019-08-18 15:42:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6662', '1', '文章管理-文章添加', '19', '2019-08-18 15:42:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6663', '1', '文章管理-文章列表', '19', '2019-08-18 15:42:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6664', '1', '控制面板', '19', '2019-08-18 15:43:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6665', '1', '控制面板', '19', '2019-08-18 15:44:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6666', '1', '文章管理-文章列表', '19', '2019-08-18 15:44:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6667', '1', '文章管理-文章添加', '19', '2019-08-18 15:44:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6668', '1', '文章管理-文章添加-增加', '19', '2019-08-18 15:44:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'POST', 'title=基于java+swing+mysql的超市管理系统&typeId=1&content=', '');
INSERT INTO `h_log` VALUES ('6669', '1', '控制面板', '19', '2019-08-18 15:44:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6670', '1', '文章管理-文章列表', '19', '2019-08-18 15:44:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6671', '1', '文章管理-文章列表-查看', '19', '2019-08-18 15:45:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/read', 'POST', 'id=21', '');
INSERT INTO `h_log` VALUES ('6672', '1', '文章管理-文章添加', '19', '2019-08-18 15:45:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6673', '1', '文章管理-文章添加', '19', '2019-08-18 15:47:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6674', '1', '控制面板', '19', '2019-08-18 15:50:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6675', '1', '文章管理-文章列表', '19', '2019-08-18 15:50:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6676', '1', '控制面板', '19', '2019-08-18 15:56:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6677', '1', '控制面板', '19', '2019-08-18 15:56:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6678', '1', '控制面板', '1', '2019-08-18 16:07:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6679', '1', '数据管理-文章发表数据', '1', '2019-08-18 16:07:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/data/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6680', '1', '数据管理-文章浏览数据', '1', '2019-08-18 16:07:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/data/list1', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6681', '1', '系统管理-前台栏目列表', '1', '2019-08-18 16:07:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6682', '1', '日志管理-日志列表', '1', '2019-08-18 16:07:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/log/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6683', '1', '链接管理-链接列表', '1', '2019-08-18 16:07:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/link/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6684', '1', '链接管理-链接添加', '1', '2019-08-18 16:07:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/link/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6685', '1', '文章管理-文章列表', '1', '2019-08-18 16:07:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6686', '1', '文章管理-文章添加', '1', '2019-08-18 16:07:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6687', '1', '用户管理-用户列表', '1', '2019-08-18 16:07:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6688', '1', '用户管理-用户添加', '1', '2019-08-18 16:07:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/user/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6689', '1', '控制面板', '20', '2019-08-18 16:10:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6690', '1', '控制面板', '20', '2019-08-18 16:10:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6691', '1', '控制面板', '20', '2019-08-18 16:10:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6692', '1', '文章管理-文章列表', '20', '2019-08-18 16:10:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6693', '1', '文章管理-文章添加', '20', '2019-08-18 16:10:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6694', '1', '文章管理-文章添加-增加', '20', '2019-08-18 16:11:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'POST', 'title=李四公众号开始运营啦&typeId=1&content=李四公众号开始运营啦李四公众号开始运营啦李四公众号开始运营啦李四公众号开始运营啦...', '');
INSERT INTO `h_log` VALUES ('6695', '1', '控制面板', '20', '2019-08-18 16:11:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6696', '1', '文章管理-文章列表', '20', '2019-08-18 16:11:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6697', '1', '控制面板', '20', '2019-08-18 16:12:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6698', '1', '控制面板', '1', '2019-08-18 16:13:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6699', '1', '用户管理-用户列表', '1', '2019-08-18 16:13:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6700', '1', '用户管理-用户列表-删除', '1', '2019-08-18 16:13:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/user/delete', 'POST', 'id=9', '');
INSERT INTO `h_log` VALUES ('6701', '1', '用户管理-用户列表-批量删除', '1', '2019-08-18 16:13:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/user/batchDelete', 'POST', 'ids[]=10', '');
INSERT INTO `h_log` VALUES ('6702', '1', '用户管理-用户列表-删除', '1', '2019-08-18 16:13:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/user/delete', 'POST', 'id=12', '');
INSERT INTO `h_log` VALUES ('6703', '1', '用户管理-用户列表-删除', '1', '2019-08-18 16:13:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/user/delete', 'POST', 'id=13', '');
INSERT INTO `h_log` VALUES ('6704', '1', '用户管理-用户添加', '1', '2019-08-18 16:13:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/user/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6705', '1', '文章管理-文章列表', '1', '2019-08-18 16:13:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6706', '1', '链接管理-链接列表', '1', '2019-08-18 16:13:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/link/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6707', '1', '日志管理-日志列表', '1', '2019-08-18 16:14:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/log/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6708', '1', '数据管理-文章发表数据', '1', '2019-08-18 16:14:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/data/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6709', '1', '数据管理-文章浏览数据', '1', '2019-08-18 16:14:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/data/list1', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6710', '1', '系统管理-前台栏目列表', '1', '2019-08-18 16:14:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6711', '1', '系统管理-前台栏目列表-修改', '1', '2019-08-18 16:15:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/update', 'POST', 'name=4445454&sort=545454', '');
INSERT INTO `h_log` VALUES ('6712', '1', '文章管理-文章添加', '1', '2019-08-18 16:15:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6713', '1', '控制面板', '1', '2019-08-18 16:15:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6714', '1', '文章管理-文章列表', '1', '2019-08-18 16:15:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6715', '1', '文章管理-文章添加', '1', '2019-08-18 16:15:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6716', '1', '数据管理-文章浏览数据', '1', '2019-08-18 16:15:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/data/list1', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6717', '1', '数据管理-文章发表数据', '1', '2019-08-18 16:15:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/data/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6718', '1', '控制面板', '1', '2019-08-18 16:15:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6719', '1', '文章管理-文章列表', '1', '2019-08-18 16:15:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6720', '1', '文章管理-文章添加', '1', '2019-08-18 16:15:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6721', '1', '链接管理-链接添加', '1', '2019-08-18 16:15:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/link/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6722', '1', '数据管理-文章浏览数据', '1', '2019-08-18 16:15:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/data/list1', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6723', '1', '数据管理-文章发表数据', '1', '2019-08-18 16:15:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/data/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6724', '1', '系统管理-前台栏目列表', '1', '2019-08-18 16:15:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6725', '1', '系统管理-前台栏目列表-修改', '1', '2019-08-18 16:17:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/update', 'POST', 'id=5&name=4445454&sort=545454', '');
INSERT INTO `h_log` VALUES ('6726', '1', '系统管理-前台栏目列表-修改', '1', '2019-08-18 16:17:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/update', 'POST', 'id=5&name=4445454&sort=545454', '');
INSERT INTO `h_log` VALUES ('6727', '1', '控制面板', '1', '2019-08-18 16:20:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6728', '1', '数据管理-文章发表数据', '1', '2019-08-18 16:20:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/data/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6729', '1', '数据管理-文章浏览数据', '1', '2019-08-18 16:20:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/data/list1', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6730', '1', '系统管理-前台栏目列表', '1', '2019-08-18 16:20:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6731', '1', '控制面板', '1', '2019-08-18 16:20:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6732', '1', '文章管理-文章添加', '1', '2019-08-18 16:20:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6733', '1', '控制面板', '1', '2019-08-18 16:25:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6734', '1', '文章管理-文章列表', '1', '2019-08-18 16:25:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6735', '1', '系统管理-前台栏目列表', '1', '2019-08-18 16:25:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6736', '1', '系统管理-前台栏目列表-删除', '1', '2019-08-18 16:25:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/delete', 'POST', 'id=5', '');
INSERT INTO `h_log` VALUES ('6737', '1', '文章管理-文章添加', '1', '2019-08-18 16:25:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6738', '1', '控制面板', '1', '2019-08-18 16:25:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6739', '1', '文章管理-文章添加', '1', '2019-08-18 16:25:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6740', '1', '系统管理-前台栏目列表', '1', '2019-08-18 16:26:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6741', '1', '控制面板', '1', '2019-08-18 16:27:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6742', '1', '系统管理-前台栏目列表', '1', '2019-08-18 16:27:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6743', '1', '控制面板', '1', '2019-08-18 16:34:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6744', '1', '系统管理-前台栏目列表', '1', '2019-08-18 16:36:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6745', '1', '系统管理-前台栏目列表-修改', '1', '2019-08-18 16:36:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/update', 'POST', 'id=3&name=激扬文字&sort=1', '');
INSERT INTO `h_log` VALUES ('6746', '1', '控制面板', '1', '2019-08-18 16:38:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6747', '1', '文章管理-文章列表', '1', '2019-08-18 16:38:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6748', '1', '系统管理-前台栏目列表', '1', '2019-08-18 16:38:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6749', '1', '系统管理-前台栏目列表-修改', '1', '2019-08-18 16:38:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/update', 'POST', 'id=3&name=激扬文字1&sort=1', '');
INSERT INTO `h_log` VALUES ('6750', '1', '文章管理-文章添加', '1', '2019-08-18 16:38:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6751', '1', '控制面板', '1', '2019-08-18 16:40:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6752', '1', '系统管理-前台栏目列表', '1', '2019-08-18 16:40:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6753', '1', '系统管理-前台栏目列表-修改', '1', '2019-08-18 16:41:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/update', 'POST', 'id=3&name=激扬文字12&sort=1', '');
INSERT INTO `h_log` VALUES ('6754', '1', '控制面板', '1', '2019-08-18 16:41:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6755', '1', '文章管理-文章列表', '1', '2019-08-18 16:41:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6756', '1', '文章管理-文章添加', '1', '2019-08-18 16:41:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6757', '1', '系统管理-前台栏目列表', '1', '2019-08-18 16:41:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6758', '1', '系统管理-前台栏目列表-修改', '1', '2019-08-18 16:41:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/update', 'POST', 'id=3&name=激扬文字&sort=1', '');
INSERT INTO `h_log` VALUES ('6759', '1', '控制面板', '1', '2019-08-18 16:41:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6760', '1', '文章管理-文章列表', '1', '2019-08-18 16:42:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6761', '1', '文章管理-文章添加', '1', '2019-08-18 16:42:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6762', '1', '控制面板', '1', '2019-08-18 16:47:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6763', '1', '系统管理-前台栏目列表', '1', '2019-08-18 16:47:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6764', '1', '系统管理-前台栏目列表-修改', '1', '2019-08-18 16:47:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/update', 'POST', 'id=3&name=激扬文字1212&sort=1', '');
INSERT INTO `h_log` VALUES ('6765', '1', '控制面板', '1', '2019-08-18 16:47:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6766', '1', '用户管理-用户列表', '1', '2019-08-18 16:47:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/user/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6767', '1', '文章管理-文章添加', '1', '2019-08-18 16:47:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6768', '1', '系统管理-前台栏目列表', '1', '2019-08-18 16:48:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6769', '1', '控制面板', '1', '2019-08-18 16:49:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6770', '1', '文章管理-文章列表', '1', '2019-08-18 16:49:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6771', '1', '文章管理-文章添加', '1', '2019-08-18 16:49:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6772', '1', '系统管理-前台栏目列表', '1', '2019-08-18 16:49:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6773', '1', '系统管理-前台栏目列表-修改', '1', '2019-08-18 16:49:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/update', 'POST', 'id=3&name=激扬文字&sort=1', '');
INSERT INTO `h_log` VALUES ('6774', '1', '控制面板', '1', '2019-08-18 16:49:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/admin/index', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6775', '1', '系统管理-前台栏目列表', '1', '2019-08-18 16:49:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/sys/type/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6776', '1', '文章管理-文章列表', '1', '2019-08-18 16:49:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/list', 'GET', '', '');
INSERT INTO `h_log` VALUES ('6777', '1', '文章管理-文章添加', '1', '2019-08-18 16:49:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/news/add', 'GET', '', '');

-- ----------------------------
-- Table structure for `h_menu`
-- ----------------------------
DROP TABLE IF EXISTS `h_menu`;
CREATE TABLE `h_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `pid` varchar(255) DEFAULT NULL COMMENT '父类id',
  `pids` varchar(64) DEFAULT NULL COMMENT '父类分层id',
  `url` varchar(255) DEFAULT NULL COMMENT '连接地址',
  `sort` varchar(255) DEFAULT NULL COMMENT '排序',
  `permission` varchar(255) DEFAULT NULL COMMENT '权限',
  `status` varchar(255) DEFAULT '0' COMMENT '状态 0:正常 1:删除',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者id',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` datetime DEFAULT NULL COMMENT '更新者id',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of h_menu
-- ----------------------------
INSERT INTO `h_menu` VALUES ('3', '控制面板', '0', '0', '/admin/index', '0', 'base:admin:views', '2', '2018-04-16 09:30:49', '1', null, null, 'fa-cubes');
INSERT INTO `h_menu` VALUES ('4', '用户管理', '3', '3', '', '1', 'base:user:views', '0', '2018-04-26 21:54:45', '1', null, null, '&#xe613;');
INSERT INTO `h_menu` VALUES ('5', '用户列表', '4', '4', '/user/list', '10', 'base:user:views', '0', '2018-04-26 21:55:52', '1', null, null, '&#xe63c;');
INSERT INTO `h_menu` VALUES ('6', '用户添加', '4', '4', '/user/add', '11', 'base:user:views', '0', '2018-04-26 21:56:52', '1', null, null, '&#xe612;');
INSERT INTO `h_menu` VALUES ('7', '查看', '5', '4,5', '/user/read', '12', 'base:user:views', '2', '2018-04-26 21:58:42', '1', null, null, null);
INSERT INTO `h_menu` VALUES ('8', '修改', '5', '4,5', '/user/update', '13', 'base:user:edit', '2', '2018-04-26 21:59:36', '1', null, null, null);
INSERT INTO `h_menu` VALUES ('9', '删除', '5', '4,5', '/user/delete', '14', 'base:user:del', '2', '2018-04-26 22:00:13', '1', null, null, null);
INSERT INTO `h_menu` VALUES ('10', '增加', '6', '4,6', '/user/add', '15', 'base:user:edit', '2', '2018-04-26 22:03:53', '1', null, null, null);
INSERT INTO `h_menu` VALUES ('11', '文章管理', '3', '3', '', '2', 'base:news:views', '0', '2018-04-26 22:05:32', '1', null, null, '&#xe63c;');
INSERT INTO `h_menu` VALUES ('12', '文章列表', '11', '11', '/news/list', '20', 'base:news:views', '0', '2018-04-26 22:06:32', '1', null, null, 'fa-table');
INSERT INTO `h_menu` VALUES ('13', '文章添加', '11', '11', '/news/add', '21', 'base:news:views', '0', '2018-04-26 22:07:24', '1', null, null, 'fa-navicon');
INSERT INTO `h_menu` VALUES ('14', '查看', '12', '11,12', '/news/read', '22', 'base:news:views', '2', '2018-04-26 22:08:41', '1', null, null, null);
INSERT INTO `h_menu` VALUES ('15', '修改', '12', '11,12', '/news/update', '23', 'base:news:edit', '2', '2018-04-26 22:08:52', '1', null, null, null);
INSERT INTO `h_menu` VALUES ('16', '删除', '12', '11,12', '/news/delete', '24', 'base:news:del', '2', '2018-04-26 22:08:54', '1', null, null, null);
INSERT INTO `h_menu` VALUES ('17', '增加', '13', '11,13', '/news/add', '25', 'base:user:edit', '2', '2018-04-26 22:08:57', '1', null, null, null);
INSERT INTO `h_menu` VALUES ('18', '链接管理', '3', '3', null, '3', 'base:link:views', '0', '2018-04-26 22:13:45', '1', null, null, '&#xe641;');
INSERT INTO `h_menu` VALUES ('19', '链接列表', '18', '18', '/link/list', '30', 'base:link:views', '0', '2018-04-26 22:13:47', '1', null, null, 'fa-table');
INSERT INTO `h_menu` VALUES ('20', '链接添加', '18', '18', '/link/add', '31', 'base:link:views', '0', '2018-04-26 22:13:52', '1', null, null, 'fa-navicon');
INSERT INTO `h_menu` VALUES ('21', '修改', '19', '18,19', '/link/update', '32', 'base:link:edit', '2', '2018-04-26 22:13:55', '1', null, null, null);
INSERT INTO `h_menu` VALUES ('22', '删除', '19', '18,19', '/link/delete', '33', 'base:link:del', '2', '2018-04-26 22:13:57', '1', null, null, null);
INSERT INTO `h_menu` VALUES ('23', '增加', '20', '18,20', '/link/add', '34', 'base:link:edit', '2', '2018-04-26 22:13:59', '1', null, null, null);
INSERT INTO `h_menu` VALUES ('24', '日志管理', '3', '3', null, '4', 'base:log:views', '0', '2018-04-26 22:19:55', '1', null, null, '&#xe628;');
INSERT INTO `h_menu` VALUES ('25', '日志列表', '24', '24', '/log/list', '40', 'base:log:views', '0', '2018-04-26 22:19:57', '1', null, null, 'fa-table');
INSERT INTO `h_menu` VALUES ('26', '删除', '25', '24,25', '/log/delete', '41', 'base:log:del', '2', '2018-04-26 22:19:59', '1', null, null, null);
INSERT INTO `h_menu` VALUES ('27', '数据管理', '3', '3', null, '5', 'base:data:views', '0', '2018-04-26 22:33:25', '1', null, null, '&#xe62c;');
INSERT INTO `h_menu` VALUES ('28', '文章发表数据', '27', '27', '/sys/data/list', '50', 'base:data:views', '0', '2018-04-26 22:35:26', '1', null, null, '&#xe629');
INSERT INTO `h_menu` VALUES ('29', '文章浏览数据', '27', '27', '/sys/data/list1', '51', 'base:data:views', '0', '2018-04-26 22:35:30', '1', null, null, '&#xe629');
INSERT INTO `h_menu` VALUES ('30', '批量删除', '5', '4,5', '/user/batchDelete', '16', 'base:user:del', '2', '2018-04-26 22:43:33', '1', null, null, null);
INSERT INTO `h_menu` VALUES ('31', '批量删除', '12', '11,12', '/news/batchDelete', '26', 'base:news:del', '2', '2018-04-26 22:43:36', '1', null, null, null);
INSERT INTO `h_menu` VALUES ('32', '批量删除', '19', '18,19', '/link/bathDelete', '35', 'base:link:del', '2', '2018-04-26 22:43:39', '1', null, null, null);
INSERT INTO `h_menu` VALUES ('33', '批量删除', '25', '24,25', '/log/bathDelete', '42', 'base:log:del', '2', '2018-04-26 22:43:40', '1', null, null, null);
INSERT INTO `h_menu` VALUES ('34', '系统管理', '3', '3', null, '6', 'base:type:views', '0', '2018-04-27 13:41:17', '1', null, null, 'fa-cogs');
INSERT INTO `h_menu` VALUES ('35', '前台栏目列表', '34', '34', '/sys/type/list', '60', 'base:type:views', '0', '2018-04-27 13:45:35', '1', null, null, '&#xe631;');
INSERT INTO `h_menu` VALUES ('36', '删除', '35', '34,35', '/sys/type/delete', '61', 'base:type:del', '2', '2018-04-27 13:45:37', '1', null, null, null);
INSERT INTO `h_menu` VALUES ('37', '修改', '35', '34,35', '/sys/type/update', '62', 'base:type:edit', '2', '2018-04-27 13:45:40', '1', null, null, null);

-- ----------------------------
-- Table structure for `h_news`
-- ----------------------------
DROP TABLE IF EXISTS `h_news`;
CREATE TABLE `h_news` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `type_id` int(64) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `read` varchar(64) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of h_news
-- ----------------------------
INSERT INTO `h_news` VALUES ('1', '1', '这是一个测试数据', '<p>这是一个测试数据11112222222</p><pre class=\"brush:java;toolbar:false\">public&nbsp;String&nbsp;list(Model&nbsp;model){\n&nbsp;&nbsp;&nbsp;&nbsp;model.addAttribute(&quot;typeList&quot;,newsService.findTypeList());\n&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;Views.NEWS_LIST;\n}</pre><p><br/></p>', '2018-04-20 15:06:22', '1', '2018-04-21 20:20:46', '1', '0', '0');
INSERT INTO `h_news` VALUES ('2', '1', 'Highcharts Demo', '<p>这是一个测试</p>', '2018-04-21 21:11:49', '1', '2018-04-24 11:03:50', null, '0', '1');
INSERT INTO `h_news` VALUES ('3', '1', 'Highcharts Demo', '<pre class=\"brush:java;toolbar:false\">package&nbsp;com.ruixin.bean;\r\n\r\nimport&nbsp;com.ruixin.common.entity.DataEntity;\r\n\r\nimport&nbsp;java.util.List;\r\n\r\n/**\r\n&nbsp;*&nbsp;用户实体类\r\n&nbsp;*/\r\n\r\npublic&nbsp;class&nbsp;User&nbsp;extends&nbsp;DataEntity&lt;User&gt;&nbsp;{\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;int&nbsp;id;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;String&nbsp;username;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;String&nbsp;email;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;String&nbsp;password;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;String&nbsp;avatar;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;String&nbsp;code;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;UserInfo&nbsp;userInfo;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;UserRole&nbsp;userRole;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;List&lt;Role&gt;&nbsp;roles;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;@Override\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;int&nbsp;getId()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;id;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;@Override\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;void&nbsp;setId(int&nbsp;id)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this.id&nbsp;=&nbsp;id;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;UserRole&nbsp;getUserRole()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;userRole;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;void&nbsp;setUserRole(UserRole&nbsp;userRole)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this.userRole&nbsp;=&nbsp;userRole;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;UserInfo&nbsp;getUserInfo()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;userInfo;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;void&nbsp;setUserInfo(UserInfo&nbsp;userInfo)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this.userInfo&nbsp;=&nbsp;userInfo;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;List&lt;Role&gt;&nbsp;getRoles()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;roles;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;void&nbsp;setRoles(List&lt;Role&gt;&nbsp;roles)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this.roles&nbsp;=&nbsp;roles;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;String&nbsp;getUsername()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;username;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;void&nbsp;setUsername(String&nbsp;username)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this.username&nbsp;=&nbsp;username&nbsp;==&nbsp;null&nbsp;?&nbsp;null&nbsp;:&nbsp;username.trim();\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;String&nbsp;getEmail()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;email;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;void&nbsp;setEmail(String&nbsp;email)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this.email&nbsp;=&nbsp;email&nbsp;==&nbsp;null&nbsp;?&nbsp;null&nbsp;:&nbsp;email.trim();\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;String&nbsp;getPassword()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;password;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;void&nbsp;setPassword(String&nbsp;password)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this.password&nbsp;=&nbsp;password&nbsp;==&nbsp;null&nbsp;?&nbsp;null&nbsp;:&nbsp;password.trim();\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;String&nbsp;getAvatar()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;avatar;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;void&nbsp;setAvatar(String&nbsp;avatar)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this.avatar&nbsp;=&nbsp;avatar&nbsp;==&nbsp;null&nbsp;?&nbsp;null&nbsp;:&nbsp;avatar.trim();\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;String&nbsp;getCode()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;code;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;void&nbsp;setCode(String&nbsp;code)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this.code&nbsp;=&nbsp;code&nbsp;==&nbsp;null&nbsp;?&nbsp;null&nbsp;:&nbsp;code.trim();\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n}</pre><p><br/></p>', '2018-04-21 21:13:40', '1', '2018-04-26 09:26:27', '1', '0', '32');
INSERT INTO `h_news` VALUES ('4', '1', '测试', '<p>哈哈哈哈哈哈</p>', '2018-04-21 21:17:50', '1', '2018-05-04 20:58:51', '13', '0', '5');
INSERT INTO `h_news` VALUES ('5', '3', '雨声潺潺，像住在溪边', '<p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">“雨声潺潺，像住在溪边。宁愿天天下雨，以为你是因为下雨不来。”聪颖早熟、个性独立如张爱玲本不愿选择等待，然而这雨声潺潺分明是一种孤独等待的渲染。</span><br/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">《小团圆》不似张爱玲其他小说的传奇写作，这是更贴近现实的自传体小说，九莉之于邵之雍，正如张爱玲之于胡兰成，乱世的一场爱恋是一段疼痛的成长经历，几乎一生都难以解脱。小团圆之所以不是大团圆，是因为九莉打破了邵之雍梦想的中国传统社会中妻妾成群式的三美团圆。大抵康小姐是可以等待的，辛巧玉自然是好的，九莉也是有过等待的，她的等待似乎比任何人都执着，但她的等待最终是幻灭了，她所能等到的只能是所谓的“大团圆”，但这不是她所要的，于是她便只得决绝于幻灭了。 战争的年代，人们生活在硝烟的迷离中，活着已经是一种偶然了，遇见一个人爱上一个人亦是珍贵的偶然了。“愿使岁月静好，现世安稳。”这是胡兰成在婚书上写的话，亦是小说中邵之雍写的，只是当初的张爱玲亦或九莉并不知道“现世安稳”并不是两个人的安稳，邵之雍希望战争结束后实现他三美团圆的美梦，而九莉倒宁愿战争永远不要结束，她不过是要和之雍在一起。于是九莉没能实现邵之雍的美梦，邵之雍当然没有让九莉安稳。</span><br/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">过三十岁生日那天，夜里在床上看见洋台上的月光，水泥栏干像倒塌了的石碑横卧在那里，浴在晚唐的蓝色的月光中。一千多年前的月色，但是在她三十年已经太多了，墓碑一样沉重的压在心上。战争和感情给九莉双重的疮痛，墓碑一样得沉重。</span><br/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">见了他，她变得很低很低，低到尘埃里，但她心里是欢喜的，从尘埃里开出花来。这是张爱玲在送给胡兰成的照片的背面写的话，一个高傲的才女对一个崇拜者卑微而极至的爱，小说中九莉“直溜下去跪在他跟前抱着他的腿，脸贴在他腿上。”她崇拜他！爱情里面谁都需要付出代价，小说中九莉是用全生命去爱邵之雍的，这是邵之雍非常清楚的，但是他是没有办法用全生命去爱九莉一个的。 “一个人可不可以同时爱两个人呢？”九莉听到邵之雍这样的话后，她感觉到心在往下沉，而邵之雍却是不能明白 “她是以她的全生命来爱我的，但是她现在叫我永远不要再写信给她了……”</span><br/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">“你是到底不肯，我想过，我倘使不得不离开你，亦不致寻短见，亦不能再爱别人，我将只是萎谢了。”这是张爱玲在给胡兰成的信上写的，恐怕九莉也不知道，当爱情全部幻灭之后终究还剩下些什么！&nbsp;</span><br/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">九莉只是偶然遭遇了爱情，但是既然遭遇了，那就没什么道理了，不管邵之雍已经结过两次婚，不管他有多大，后来哪怕他是汉奸，那也无所谓，最后她知道了“汉奸妻，人人可欺”，她也只是承受罢了，大概人人痛恨他，她也是可以爱他的，“没有目的才是真”，这是她相信并希望的，她所要的不过是爱情！ “雨声潺潺，像住在溪边。宁愿天天下雨，以为你是因为下雨不来。”到底有什么值得等待，只因一个女人内心最真挚的爱！</span></p>', '2018-04-26 09:35:03', '1', '2018-04-28 21:25:30', '1', '1', '16');
  
INSERT INTO `h_news` VALUES ('21', '1', '基于java+swing+mysql的超市管理系统', '<p><img src=\"/upload/images/20190818/1566114277730061985.png\" title=\"1566114277730061985.png\" alt=\"新人指南.png\"/></p>', '2019-08-18 15:44:38', '19', '2020-02-12 03:17:28', '19', '0', '14');
INSERT INTO `h_news` VALUES ('22', '1', '李四公众号开始运营啦', '<p>李四公众号开始运营啦李四公众号开始运营啦李四公众号开始运营啦李四公众号开始运营啦李四公众号开始运营啦李四公众号开始运营啦李四公众号开始运营啦李四公众号开始运营啦</p><p><br/></p><p><img src=\"/upload/images/20190818/1566115872982004531.png\" title=\"1566115872982004531.png\" alt=\"logo.png\"/></p>', '2019-08-18 16:11:46', '20', '2019-08-18 16:12:13', '20', '0', '1');

-- ----------------------------
-- Table structure for `h_role`
-- ----------------------------
DROP TABLE IF EXISTS `h_role`;
CREATE TABLE `h_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) NOT NULL COMMENT '角色名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者id',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者id',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` varchar(255) DEFAULT NULL COMMENT '状态： 0:正常 1:删除 2:未启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of h_role
-- ----------------------------
INSERT INTO `h_role` VALUES ('1', 'admin', '2018-04-01 14:07:24', '1', null, null, null, '0');
INSERT INTO `h_role` VALUES ('2', 'user', '2018-04-01 14:19:04', '1', null, null, null, '0');
INSERT INTO `h_role` VALUES ('3', 'link', '2018-04-20 14:54:58', '1', null, null, null, '0');
INSERT INTO `h_role` VALUES ('4', 'all_news', '2018-04-20 14:56:48', '1', null, null, null, '0');
INSERT INTO `h_role` VALUES ('5', 'news', '2018-04-23 17:21:57', '1', null, null, null, '0');
INSERT INTO `h_role` VALUES ('6', 'log', '2018-04-26 21:25:58', '1', null, null, null, '0');
INSERT INTO `h_role` VALUES ('7', 'sys', '2018-04-26 21:26:33', '1', null, null, null, '0');

-- ----------------------------
-- Table structure for `h_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `h_role_menu`;
CREATE TABLE `h_role_menu` (
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `menu_id` int(11) NOT NULL COMMENT '菜单id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of h_role_menu
-- ----------------------------
INSERT INTO `h_role_menu` VALUES ('1', '1');
INSERT INTO `h_role_menu` VALUES ('2', '30');
INSERT INTO `h_role_menu` VALUES ('2', '30');
INSERT INTO `h_role_menu` VALUES ('2', '30');
INSERT INTO `h_role_menu` VALUES ('2', '30');

-- ----------------------------
-- Table structure for `h_type`
-- ----------------------------
DROP TABLE IF EXISTS `h_type`;
CREATE TABLE `h_type` (
  `id` int(64) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sort` varchar(64) DEFAULT '0',
  `create_by` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of h_type
-- ----------------------------
INSERT INTO `h_type` VALUES ('1', '闲言碎语', '/second/1', '0', '1', '2018-04-20 14:21:40', null, null, '0');
INSERT INTO `h_type` VALUES ('2', '学无止境', '/about', '2', '1', '2018-04-20 14:22:20', null, null, '0');
INSERT INTO `h_type` VALUES ('3', '激扬文字', '/second/3', '1', '1', '2018-04-23 21:26:30', '1', '2019-08-18 16:49:36', '0');
INSERT INTO `h_type` VALUES ('4', '测试1', null, '3', '1', '2018-04-27 11:16:33', '1', '2018-04-27 11:18:03', '1');
INSERT INTO `h_type` VALUES ('5', '4445454', null, '545454', '1', '2019-08-18 16:15:06', '1', '2019-08-18 16:25:09', '1');

-- ----------------------------
-- Table structure for `h_user`
-- ----------------------------
DROP TABLE IF EXISTS `h_user`;
CREATE TABLE `h_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) NOT NULL COMMENT '用户登录名',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `status` varchar(255) DEFAULT '2' COMMENT '状态 0:正常 1:删除 2:未激活或者未启用',
  `avatar` varchar(64) DEFAULT NULL COMMENT '头像',
  `code` varchar(64) DEFAULT NULL COMMENT '激活码',
  `create_date` datetime DEFAULT NULL COMMENT '添加时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '添加用户id',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新用户id',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of h_user
-- ----------------------------
INSERT INTO `h_user` VALUES ('1', 'admin', '1347845688@qq.com', 'df655ad8d3229f3269fad2a8bab59b6c', '0', '/static/images/photo.jpg', '0', '2018-03-21 13:44:14', '1', null, null, null);
INSERT INTO `h_user` VALUES ('6', 'wk', '', '6f2becd376cc74aff7c9171d8b4b6d3d', '1', '/static/images/photo.jpg', '0', '2018-04-10 18:17:57', '1', '2018-04-27 10:25:14', '1', null);
INSERT INTO `h_user` VALUES ('8', 'cxl', null, '33ed21a95d21fe4bf0acaeecfa1f73ae', '1', '/static/images/photo.jpg', null, '2018-04-20 14:06:09', '1', '2018-04-27 10:25:17', '1', null);
INSERT INTO `h_user` VALUES ('9', 'ruixin1', null, '3508063cc196e2adf24ba3eb5f8dd02d', '1', '/static/images/photo.jpg', null, '2018-04-27 11:48:51', '1', '2019-08-18 16:13:10', '1', null);
INSERT INTO `h_user` VALUES ('10', 'ruixin2', null, '5a66626c909b04165bc8aab5b4f2234e', '1', '/static/images/photo.jpg', null, '2018-04-27 11:50:22', '1', null, null, null);
INSERT INTO `h_user` VALUES ('11', 'ruixin3', null, 'a4e97dbe828af66ba3134975dbfb0351', '1', '/static/images/photo.jpg', null, '2018-04-27 11:51:40', '1', null, null, null);
INSERT INTO `h_user` VALUES ('12', 'ruixin6', '49078455@qq.com', '58a00c5034ad5dd30e72e938dfcf889d', '1', '/static/images/photo.jpg', '0', '2018-04-27 13:59:00', null, '2019-08-18 16:13:23', '1', null);
INSERT INTO `h_user` VALUES ('13', 'hfl', '794657496@qq.com', 'd9576dbdec80ab2003629253b0434285', '1', '/static/images/photo.jpg', '0', '2018-05-04 20:48:44', null, '2019-08-18 16:13:33', '1', null);
INSERT INTO `h_user` VALUES ('19', '1', '1347845688@qq.com', 'a38b872c85e9096dd2d97b5dbe482861', '0', '/static/images/qqtouxiang.jpg', '0', '2019-08-18 15:40:15', null, '2019-08-18 15:41:07', null, null);
INSERT INTO `h_user` VALUES ('20', 'lisi', '123456@qq.com', 'c43021b49e3a90df3a5667b622ab438c', '0', '/static/images/qqtouxiang.jpg', 'abd8a73e-7cf8-4ea8-9f1d-eced6f408b9a', '2019-08-18 16:10:01', null, null, null, null);

-- ----------------------------
-- Table structure for `h_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `h_userinfo`;
CREATE TABLE `h_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `signature` varchar(255) DEFAULT NULL COMMENT '标志（等级）',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `work` varchar(255) DEFAULT NULL COMMENT '职业',
  `address` varchar(255) DEFAULT NULL COMMENT '所在地',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `sign` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `personal` varchar(255) DEFAULT NULL COMMENT '个人简介',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者id',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` datetime DEFAULT NULL COMMENT '更新人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of h_userinfo
-- ----------------------------
INSERT INTO `h_userinfo` VALUES ('1', '1', '半仙', null, '2018-04-20', null, '湖北省,武汉市,洪山区', '21', '2', '18772287807', null, '这是一个测试数据', '2018-04-20 10:34:16', '1', null, null, null);

-- ----------------------------
-- Table structure for `h_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `h_user_role`;
CREATE TABLE `h_user_role` (
  `user_id` int(64) NOT NULL COMMENT '用户id',
  `role_id` int(64) NOT NULL COMMENT '角色id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of h_user_role
-- ----------------------------
INSERT INTO `h_user_role` VALUES ('1', '1');
INSERT INTO `h_user_role` VALUES ('1', '2');
INSERT INTO `h_user_role` VALUES ('6', '1');
INSERT INTO `h_user_role` VALUES ('8', '1');
INSERT INTO `h_user_role` VALUES ('8', '2');
INSERT INTO `h_user_role` VALUES ('1', '4');
INSERT INTO `h_user_role` VALUES ('1', '5');
INSERT INTO `h_user_role` VALUES ('1', '3');
INSERT INTO `h_user_role` VALUES ('1', '6');
INSERT INTO `h_user_role` VALUES ('1', '7');
INSERT INTO `h_user_role` VALUES ('10', '1');
INSERT INTO `h_user_role` VALUES ('10', '2');
INSERT INTO `h_user_role` VALUES ('11', '1');
INSERT INTO `h_user_role` VALUES ('11', '2');
INSERT INTO `h_user_role` VALUES ('11', '3');
INSERT INTO `h_user_role` VALUES ('9', '1');
INSERT INTO `h_user_role` VALUES ('9', '2');
INSERT INTO `h_user_role` VALUES ('9', '3');
INSERT INTO `h_user_role` VALUES ('12', '1');
INSERT INTO `h_user_role` VALUES ('12', '5');
INSERT INTO `h_user_role` VALUES ('13', '1');
INSERT INTO `h_user_role` VALUES ('13', '5');
INSERT INTO `h_user_role` VALUES ('19', '1');
INSERT INTO `h_user_role` VALUES ('19', '5');
INSERT INTO `h_user_role` VALUES ('20', '1');
INSERT INTO `h_user_role` VALUES ('20', '5');

-- ----------------------------
-- Procedure structure for `getMenuinfoNamePath`
-- ----------------------------
DROP PROCEDURE IF EXISTS `getMenuinfoNamePath`;
DELIMITER ;;
CREATE DEFINER=`boot_hblog`@`%` PROCEDURE `getMenuinfoNamePath`(IN u VARCHAR(64),IN p VARCHAR(64))
BEGIN
DECLARE pid VARCHAR(64);
DECLARE mid VARCHAR(64);
SELECT id,pids INTO mid,pid FROM h_menu WHERE url=u AND permission=p;
IF(pid is NULL||pid = ''||mid IS NULL || mid = '') THEN 
set mid='0',pid='0';
END IF;
SET @tempsql=CONCAT('SELECT GROUP_CONCAT(name SEPARATOR \'-\') as title from h_menu WHERE id in (',pid,',',mid,');');
prepare stmt from @tempsql;
EXECUTE stmt;
END
;;
DELIMITER ;
