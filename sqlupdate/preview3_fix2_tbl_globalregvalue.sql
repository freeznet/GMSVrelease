/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50137
Source Host           : localhost:3306

Target Server Type    : MYSQL
Target Server Version : 50137
File Encoding         : 65001

Date: 2013-01-04 16:02:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_globalregvalue`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_globalregvalue`;
CREATE TABLE `tbl_globalregvalue` (
  `account_id` varchar(64) NOT NULL DEFAULT '',
  `str` varchar(32) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0',
  `data_place` int(11) NOT NULL DEFAULT '0',
  `reg_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`str`,`data_place`,`reg_num`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
-- ----------------------------
-- Records of tbl_globalregvalue
-- ----------------------------