/*
Navicat MySQL Data Transfer

Source Server         : exchange
Source Server Version : 50630
Source Host           : localhost:3306
Source Database       : exchange

Target Server Type    : MYSQL
Target Server Version : 50630
File Encoding         : 65001

Date: 2019-04-11 19:48:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for access_token
-- ----------------------------
DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `id` bigint(255) NOT NULL,
  `app_id` varchar(10) NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `expires_in` int(255) NOT NULL,
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of access_token
-- ----------------------------

-- ----------------------------
-- Table structure for produce
-- ----------------------------
DROP TABLE IF EXISTS `produce`;
CREATE TABLE `produce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '产品名称',
  `price` float(10,2) DEFAULT NULL COMMENT '产品价格',
  `type` int(5) DEFAULT NULL COMMENT '产品类型 ',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort_id` int(10) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of produce
-- ----------------------------
INSERT INTO `produce` VALUES ('2', '商品2', '40.00', '1', '保鲜时间：冷冻-18度以下45天，冷藏3~7度2天', '2');
INSERT INTO `produce` VALUES ('3', '商品3', '48.00', '1', '保鲜时间：冷冻-18度以下45天，冷藏3~7度2天', '3');
INSERT INTO `produce` VALUES ('4', '商品4', '66.00', '1', '保鲜时间：冷冻-18度以下45天，冷藏3~7度2天', '4');
INSERT INTO `produce` VALUES ('5', '商品5', '88.00', '1', '保鲜时间：冷冻-18度以下45天，冷藏3~7度2天', '5');
INSERT INTO `produce` VALUES ('6', '商品6', '100.00', '1', '保鲜时间：冷冻-18度以下45天，冷藏3~7度2天', '6');
INSERT INTO `produce` VALUES ('7', '商品7', '100.80', '1', '保鲜时间：冷冻-18度以下45天，冷藏3~7度2天', '7');
INSERT INTO `produce` VALUES ('8', '商品8', '120.00', '1', '保鲜时间：冷冻-18度以下45天，冷藏3~7度2天', '8');

-- ----------------------------
-- Table structure for produce_detail
-- ----------------------------
DROP TABLE IF EXISTS `produce_detail`;
CREATE TABLE `produce_detail` (
  `id` bigint(20) NOT NULL,
  `produce_id` bigint(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `sort_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of produce_detail
-- ----------------------------
INSERT INTO `produce_detail` VALUES ('1', '2', '/img/produce/detail/2_1.jpg', '1');
INSERT INTO `produce_detail` VALUES ('2', '2', '/img/produce/detail/2_2.jpg', '2');
INSERT INTO `produce_detail` VALUES ('3', '2', '/img/produce/detail/2_3.png', '3');
INSERT INTO `produce_detail` VALUES ('4', '2', '/img/produce/detail/2_4.jpg', '4');
INSERT INTO `produce_detail` VALUES ('5', '2', '/img/produce/detail/2_5.jpg', '5');
INSERT INTO `produce_detail` VALUES ('6', '2', '/img/produce/detail/2_6.jpg', '6');
INSERT INTO `produce_detail` VALUES ('7', '2', '/img/produce/detail/2_7.jpg', '7');
INSERT INTO `produce_detail` VALUES ('8', '2', '/img/produce/detail/2_8.jpg', '8');

-- ----------------------------
-- Table structure for produce_img
-- ----------------------------
DROP TABLE IF EXISTS `produce_img`;
CREATE TABLE `produce_img` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `produce_id` bigint(20) NOT NULL COMMENT '产品编号',
  `url` varchar(255) NOT NULL COMMENT '路径',
  `is_title` int(2) DEFAULT NULL COMMENT '是否标题展示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of produce_img
-- ----------------------------
INSERT INTO `produce_img` VALUES ('1', '2', '/img/produce/1.jpg', '0');
INSERT INTO `produce_img` VALUES ('2', '2', '/img/produce/2.jpg', '1');
INSERT INTO `produce_img` VALUES ('3', '3', '/img/produce/2.jpg', '1');
INSERT INTO `produce_img` VALUES ('4', '4', '/img/produce/2.jpg', '1');
INSERT INTO `produce_img` VALUES ('5', '5', '/img/produce/2.jpg', '1');
INSERT INTO `produce_img` VALUES ('6', '6', '/img/produce/2.jpg', '1');
INSERT INTO `produce_img` VALUES ('7', '7', '/img/produce/2.jpg', '1');
INSERT INTO `produce_img` VALUES ('8', '8', '/img/produce/2.jpg', '1');

-- ----------------------------
-- Table structure for produce_model
-- ----------------------------
DROP TABLE IF EXISTS `produce_model`;
CREATE TABLE `produce_model` (
  `id` bigint(20) NOT NULL,
  `produce_id` bigint(20) NOT NULL,
  `desc` varchar(50) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `sort_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of produce_model
-- ----------------------------
INSERT INTO `produce_model` VALUES ('1', '2', '1磅(6寸)', '40.00', '1');
INSERT INTO `produce_model` VALUES ('2', '2', '2磅(7寸)', '50.00', '2');
INSERT INTO `produce_model` VALUES ('3', '2', '3磅8寸)', '60.00', '3');
INSERT INTO `produce_model` VALUES ('4', '2', '4磅9寸)', '70.00', '4');
INSERT INTO `produce_model` VALUES ('5', '2', '5磅(10寸)', '80.00', '5');
INSERT INTO `produce_model` VALUES ('6', '2', '6磅(11寸)', '90.00', '6');

-- ----------------------------
-- Table structure for produce_type
-- ----------------------------
DROP TABLE IF EXISTS `produce_type`;
CREATE TABLE `produce_type` (
  `id` bigint(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of produce_type
-- ----------------------------
INSERT INTO `produce_type` VALUES ('1', '休闲食品');

-- ----------------------------
-- Table structure for resources
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` bigint(20) DEFAULT NULL,
  `name` longtext,
  `resUrl` longtext,
  `type` bigint(20) DEFAULT NULL,
  `parentId` bigint(20) DEFAULT NULL,
  `sort` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES ('1', '系统设置', '/system', '0', '0', '1');
INSERT INTO `resources` VALUES ('2', '用户管理', '/usersPage', '1', '1', '2');
INSERT INTO `resources` VALUES ('3', '角色管理', '/rolesPage', '1', '1', '3');
INSERT INTO `resources` VALUES ('4', '资源管理', '/resourcesPage', '1', '1', '4');
INSERT INTO `resources` VALUES ('5', '添加用户', '/users/add', '2', '2', '5');
INSERT INTO `resources` VALUES ('6', '删除用户', '/users/delete', '2', '2', '6');
INSERT INTO `resources` VALUES ('7', '添加角色', '/roles/add', '2', '3', '7');
INSERT INTO `resources` VALUES ('8', '删除角色', '/roles/delete', '2', '3', '8');
INSERT INTO `resources` VALUES ('9', '添加资源', '/resources/add', '2', '4', '9');
INSERT INTO `resources` VALUES ('10', '删除资源', '/resources/delete', '2', '4', '10');
INSERT INTO `resources` VALUES ('11', '分配角色', '/users/saveUserRoles', '2', '2', '11');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');
INSERT INTO `resources` VALUES ('13', '分配权限', '/roles/saveRoleResources', '2', '3', '12');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) DEFAULT NULL,
  `roleDesc` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员');
INSERT INTO `role` VALUES ('2', '普通用户');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');
INSERT INTO `role` VALUES ('3', '超级管理员');

-- ----------------------------
-- Table structure for role_resources
-- ----------------------------
DROP TABLE IF EXISTS `role_resources`;
CREATE TABLE `role_resources` (
  `roleId` bigint(20) DEFAULT NULL,
  `resourcesI` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_resources
-- ----------------------------
INSERT INTO `role_resources` VALUES ('1', '2');
INSERT INTO `role_resources` VALUES ('1', '3');
INSERT INTO `role_resources` VALUES ('1', '4');
INSERT INTO `role_resources` VALUES ('1', '5');
INSERT INTO `role_resources` VALUES ('1', '6');
INSERT INTO `role_resources` VALUES ('1', '7');
INSERT INTO `role_resources` VALUES ('1', '8');
INSERT INTO `role_resources` VALUES ('1', '9');
INSERT INTO `role_resources` VALUES ('1', '10');
INSERT INTO `role_resources` VALUES ('1', '11');
INSERT INTO `role_resources` VALUES ('1', '13');
INSERT INTO `role_resources` VALUES ('2', '2');
INSERT INTO `role_resources` VALUES ('2', '3');
INSERT INTO `role_resources` VALUES ('2', '4');
INSERT INTO `role_resources` VALUES ('2', '9');
INSERT INTO `role_resources` VALUES ('3', '2');
INSERT INTO `role_resources` VALUES ('3', '3');
INSERT INTO `role_resources` VALUES ('3', '4');
INSERT INTO `role_resources` VALUES ('3', '5');
INSERT INTO `role_resources` VALUES ('3', '7');
INSERT INTO `role_resources` VALUES ('3', '8');
INSERT INTO `role_resources` VALUES ('3', '9');
INSERT INTO `role_resources` VALUES ('3', '10');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');
INSERT INTO `role_resources` VALUES ('9', '9');

-- ----------------------------
-- Table structure for t_weixin_user
-- ----------------------------
DROP TABLE IF EXISTS `t_weixin_user`;
CREATE TABLE `t_weixin_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(150) DEFAULT NULL,
  `weixin_id` varchar(150) DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_weixin_user
-- ----------------------------
INSERT INTO `t_weixin_user` VALUES ('2', 'oec-f0fN8JYm40RSrCYuLUmOYaYQ', 'gh_44a9a45212d3', '0', '1530845878', '1530846187');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) DEFAULT NULL,
  `openId` varchar(50) DEFAULT NULL,
  `enable` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(10) DEFAULT NULL COMMENT '用户号码',
  `receiving_phone` varchar(15) DEFAULT NULL COMMENT '收货人电话',
  `receiving_name` varchar(10) DEFAULT NULL COMMENT '收货人姓名',
  `receiving_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `status` int(2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_default` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_address
-- ----------------------------

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `userId` bigint(20) DEFAULT NULL,
  `roleIdmesI` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('23', '2');
INSERT INTO `user_role` VALUES ('1', '1');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '2');

-- ----------------------------
-- Procedure structure for init_shiro_demo
-- ----------------------------
DROP PROCEDURE IF EXISTS `init_shiro_demo`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `init_shiro_demo`()
BEGIN	
/*
SQLyog 企业版 - MySQL GUI v7.14 
MySQL - 5.6.16-log : Database - 
*********************************************************************
*/
/*表结构插入*/
DROP TABLE IF EXISTS `u_permission`;
CREATE TABLE `u_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(256) DEFAULT NULL COMMENT 'url地址',
  `name` varchar(64) DEFAULT NULL COMMENT 'url描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*Table structure for table `u_role` */
DROP TABLE IF EXISTS `u_role`;
CREATE TABLE `u_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `type` varchar(10) DEFAULT NULL COMMENT '角色类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*Table structure for table `u_role_permission` */
DROP TABLE IF EXISTS `u_role_permission`;
CREATE TABLE `u_role_permission` (
  `rid` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `pid` bigint(20) DEFAULT NULL COMMENT '权限ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*Table structure for table `u_user` */
DROP TABLE IF EXISTS `u_user`;
CREATE TABLE `u_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) DEFAULT NULL COMMENT '用户昵称',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱|登录帐号',
  `pswd` varchar(32) DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` bigint(1) DEFAULT '1' COMMENT '1:有效，0:禁止登录',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*Table structure for table `u_user_role` */
DROP TABLE IF EXISTS `u_user_role`;
CREATE TABLE `u_user_role` (
  `uid` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `rid` bigint(20) DEFAULT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*
SQLyog 企业版 - MySQL GUI v7.14 
MySQL - 5.6.16-log : Database - i_wenyiba_com
*********************************************************************
*/
/*所有的表数据插入*/
/*Data for the table `u_permission` */
insert  into `u_permission`(`id`,`url`,`name`) values (4,'/permission/index.shtml','权限列表'),(6,'/permission/addPermission.shtml','权限添加'),(7,'/permission/deletePermissionById.shtml','权限删除'),(8,'/member/list.shtml','用户列表'),(9,'/member/online.shtml','在线用户'),(10,'/member/changeSessionStatus.shtml','用户Session踢出'),(11,'/member/forbidUserById.shtml','用户激活&禁止'),(12,'/member/deleteUserById.shtml','用户删除'),(13,'/permission/addPermission2Role.shtml','权限分配'),(14,'/role/clearRoleByUserIds.shtml','用户角色分配清空'),(15,'/role/addRole2User.shtml','角色分配保存'),(16,'/role/deleteRoleById.shtml','角色列表删除'),(17,'/role/addRole.shtml','角色列表添加'),(18,'/role/index.shtml','角色列表'),(19,'/permission/allocation.shtml','权限分配'),(20,'/role/allocation.shtml','角色分配');
/*Data for the table `u_role` */
insert  into `u_role`(`id`,`name`,`type`) values (1,'系统管理员','888888'),(3,'权限角色','100003'),(4,'用户中心','100002');
/*Data for the table `u_role_permission` */
insert  into `u_role_permission`(`rid`,`pid`) values (4,8),(4,9),(4,10),(4,11),(4,12),(3,4),(3,6),(3,7),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(3,19),(3,20),(1,4),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20);
/*Data for the table `u_user` */
insert  into `u_user`(`id`,`nickname`,`email`,`pswd`,`create_time`,`last_login_time`,`status`) values (1,'管理员','admin','9c3250081c7b1f5c6cbb8096e3e1cd04','2016-06-16 11:15:33','2016-06-16 11:24:10',1),(11,'soso','8446666@qq.com','d57ffbe486910dd5b26d0167d034f9ad','2016-05-26 20:50:54','2016-06-16 11:24:35',1),(12,'8446666','8446666','4afdc875a67a55528c224ce088be2ab8','2016-05-27 22:34:19','2016-06-15 17:03:16',1);
/*Data for the table `u_user_role` */
insert  into `u_user_role`(`uid`,`rid`) values (12,4),(11,3),(11,4),(1,1);
   
    END
;;
DELIMITER ;
