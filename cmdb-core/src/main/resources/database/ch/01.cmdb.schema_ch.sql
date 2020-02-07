/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : db_schema

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-02-07 20:21:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adm_attr_group
-- ----------------------------
DROP TABLE IF EXISTS `adm_attr_group`;
CREATE TABLE `adm_attr_group` (
  `id_adm_attr_group` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_adm_attr_group',
  `name` varchar(64) DEFAULT NULL COMMENT '组名',
  PRIMARY KEY (`id_adm_attr_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_basekey_cat
-- ----------------------------
DROP TABLE IF EXISTS `adm_basekey_cat`;
CREATE TABLE `adm_basekey_cat` (
  `id_adm_basekey_cat` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_adm_basekey_cat',
  `cat_name` varchar(32) DEFAULT NULL COMMENT '类别名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `id_adm_role` int(11) DEFAULT NULL COMMENT 'id_adm_role',
  `id_adm_basekey_cat_type` int(11) DEFAULT NULL COMMENT '类型',
  `group_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_adm_basekey_cat`),
  KEY `fk_adm_basekey_cat_adm_role_1` (`id_adm_role`),
  KEY `fk_adm_basekey_cat_type` (`id_adm_basekey_cat_type`),
  KEY `fk_adm_basekey_group_type_id` (`group_type_id`),
  CONSTRAINT `fk_adm_basekey_cat_type` FOREIGN KEY (`id_adm_basekey_cat_type`) REFERENCES `adm_basekey_cat_type` (`id_adm_basekey_cat_type`),
  CONSTRAINT `fk_adm_basekey_group_type_id` FOREIGN KEY (`group_type_id`) REFERENCES `adm_basekey_cat` (`id_adm_basekey_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_basekey_cat_type
-- ----------------------------
DROP TABLE IF EXISTS `adm_basekey_cat_type`;
CREATE TABLE `adm_basekey_cat_type` (
  `id_adm_basekey_cat_type` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `ci_type_id` int(11) DEFAULT NULL,
  `type` int(4) DEFAULT NULL,
  PRIMARY KEY (`id_adm_basekey_cat_type`),
  KEY `adm_basekey_cat_type_ci_type_1` (`ci_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_basekey_code
-- ----------------------------
DROP TABLE IF EXISTS `adm_basekey_code`;
CREATE TABLE `adm_basekey_code` (
  `id_adm_basekey` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_adm_basekey',
  `id_adm_basekey_cat` int(11) DEFAULT NULL COMMENT 'id_adm_basekey_cat',
  `code` varchar(255) DEFAULT NULL COMMENT 'key',
  `value` varchar(2000) DEFAULT NULL COMMENT 'name',
  `group_code_id` int(11) DEFAULT NULL COMMENT 'the group code it belong to',
  `code_description` varchar(255) DEFAULT NULL COMMENT '编码描述',
  `seq_no` int(11) DEFAULT NULL COMMENT '排序序号',
  `status` varchar(20) DEFAULT 'active' COMMENT '枚举状态',
  PRIMARY KEY (`id_adm_basekey`),
  KEY `fk_adm_basekey_code_adm_basekey_cat_1` (`id_adm_basekey_cat`),
  KEY `fk_adm_basekey_code_group_code_id` (`group_code_id`),
  CONSTRAINT `fk_adm_basekey_code_adm_basekey_cat_1` FOREIGN KEY (`id_adm_basekey_cat`) REFERENCES `adm_basekey_cat` (`id_adm_basekey_cat`),
  CONSTRAINT `fk_adm_basekey_code_group_code_id` FOREIGN KEY (`group_code_id`) REFERENCES `adm_basekey_code` (`id_adm_basekey`)
) ENGINE=InnoDB AUTO_INCREMENT=392 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_ci_type
-- ----------------------------
DROP TABLE IF EXISTS `adm_ci_type`;
CREATE TABLE `adm_ci_type` (
  `id_adm_ci_type` int(4) NOT NULL AUTO_INCREMENT COMMENT 'id_adm_ci_type',
  `name` varchar(32) DEFAULT NULL COMMENT 'ci类型中文名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `id_adm_tenement` int(11) DEFAULT NULL COMMENT 'id_adm_tenement',
  `table_name` varchar(64) NOT NULL COMMENT '真实表名',
  `status` varchar(20) DEFAULT 'notCreated' COMMENT '表状态',
  `catalog_id` int(11) DEFAULT NULL COMMENT 'ci大类类别',
  `ci_global_unique_id` int(11) DEFAULT NULL,
  `seq_no` int(11) NOT NULL DEFAULT '0' COMMENT '序列号',
  `layer_id` int(11) DEFAULT NULL,
  `zoom_level_id` int(11) DEFAULT NULL,
  `image_file_id` int(11) DEFAULT NULL,
  `ci_state_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_adm_ci_type`),
  UNIQUE KEY `tableNameIndex` (`table_name`),
  KEY `fk_adm_ci_type_adm_ci_type_1` (`catalog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_ci_type_attr
-- ----------------------------
DROP TABLE IF EXISTS `adm_ci_type_attr`;
CREATE TABLE `adm_ci_type_attr` (
  `id_adm_ci_type_attr` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_adm_ci_type_attr',
  `id_adm_ci_type` int(4) NOT NULL COMMENT 'id_adm_ci_type',
  `name` varchar(64) NOT NULL COMMENT 'CI类型属性中文名',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `input_type` varchar(32) NOT NULL COMMENT '输入类型',
  `property_name` varchar(64) NOT NULL COMMENT '属性真实列名',
  `property_type` varchar(32) NOT NULL COMMENT '属性真实类型',
  `length` int(32) DEFAULT '1' COMMENT '长度',
  `reference_id` int(11) DEFAULT NULL COMMENT '引用ID',
  `reference_name` varchar(64) DEFAULT NULL COMMENT '引用命名',
  `reference_type` int(4) DEFAULT NULL COMMENT '引用类型',
  `filter_rule` varchar(4000) DEFAULT NULL,
  `search_seq_no` int(11) DEFAULT NULL COMMENT '搜索条件排序序号',
  `display_type` int(1) DEFAULT NULL COMMENT '展示类型',
  `display_seq_no` int(11) DEFAULT NULL COMMENT '展示排序',
  `edit_is_null` int(1) DEFAULT NULL,
  `edit_is_only` int(1) DEFAULT NULL COMMENT '是否唯一',
  `edit_is_hiden` int(1) DEFAULT NULL COMMENT '是否隐藏',
  `edit_is_editable` int(1) DEFAULT NULL COMMENT '是否可编辑',
  `is_defunct` int(1) DEFAULT '0' COMMENT '是否丢弃',
  `special_logic` varchar(32) DEFAULT NULL COMMENT '特殊逻辑',
  `status` varchar(20) DEFAULT 'notCreated' COMMENT '属性状态',
  `is_system` int(1) DEFAULT NULL COMMENT '是否系统字段',
  `is_access_controlled` int(1) DEFAULT '0' COMMENT '是否权限控制',
  `is_auto` int(1) DEFAULT NULL,
  `auto_fill_rule` varchar(2000) DEFAULT NULL COMMENT '自动填充规则',
  `is_refreshable` int(1) DEFAULT NULL,
  `regular_expression_rule` varchar(200) DEFAULT NULL COMMENT '正则规则',
  PRIMARY KEY (`id_adm_ci_type_attr`),
  UNIQUE KEY `uniqCiType` (`id_adm_ci_type`,`property_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1066 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_ci_type_attr_base
-- ----------------------------
DROP TABLE IF EXISTS `adm_ci_type_attr_base`;
CREATE TABLE `adm_ci_type_attr_base` (
  `id_adm_ci_type_attr` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_adm_ci_type_attr',
  `id_adm_ci_type` int(4) NOT NULL COMMENT 'id_adm_ci_type',
  `name` varchar(64) NOT NULL COMMENT 'CI类型属性中文名',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `input_type` varchar(32) NOT NULL COMMENT '输入类型',
  `property_name` varchar(64) NOT NULL COMMENT '属性真实列名',
  `property_type` varchar(32) NOT NULL COMMENT '属性真实类型',
  `length` int(32) DEFAULT '1' COMMENT '长度',
  `reference_id` int(11) DEFAULT NULL COMMENT '引用ID',
  `reference_name` varchar(64) DEFAULT NULL COMMENT '引用命名',
  `reference_type` int(4) DEFAULT NULL COMMENT '引用类型',
  `filter_rule` varchar(1000) DEFAULT NULL,
  `search_seq_no` int(11) DEFAULT NULL COMMENT '搜索条件排序序号',
  `display_type` int(1) DEFAULT NULL COMMENT '展示类型',
  `display_seq_no` int(11) DEFAULT NULL COMMENT '展示排序',
  `edit_is_null` int(1) DEFAULT NULL,
  `edit_is_only` int(1) DEFAULT NULL COMMENT '是否唯一',
  `edit_is_hiden` int(1) DEFAULT NULL COMMENT '是否隐藏',
  `edit_is_editable` int(1) DEFAULT NULL COMMENT '是否可编辑',
  `is_defunct` int(1) DEFAULT '0' COMMENT '是否丢弃',
  `special_logic` varchar(32) DEFAULT NULL COMMENT '特殊逻辑',
  `status` varchar(20) DEFAULT 'notCreated' COMMENT '属性状态',
  `is_system` int(1) DEFAULT NULL COMMENT '是否系统字段',
  `is_access_controlled` int(1) DEFAULT '0' COMMENT '是否权限控制',
  `is_auto` int(1) DEFAULT NULL,
  `auto_fill_rule` varchar(2000) DEFAULT NULL COMMENT '自动填充规则',
  `regular_expression_rule` varchar(200) DEFAULT NULL COMMENT '正则规则',
  `is_refreshable` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_adm_ci_type_attr`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_ci_type_attr_group
-- ----------------------------
DROP TABLE IF EXISTS `adm_ci_type_attr_group`;
CREATE TABLE `adm_ci_type_attr_group` (
  `id_adm_ci_type_attr_group` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_adm_ci_type_attr_group',
  `id_adm_ci_type_attr` int(11) DEFAULT NULL COMMENT 'id_adm_ci_type_attr',
  `id_adm_attr_group` int(11) DEFAULT NULL COMMENT 'id_adm_attr_group',
  PRIMARY KEY (`id_adm_ci_type_attr_group`),
  KEY `fk_adm_ci_type_attr_group_adm_attr_group_1` (`id_adm_attr_group`),
  KEY `fk_adm_ci_type_attr_group_adm_ci_type_attr_1` (`id_adm_ci_type_attr`),
  CONSTRAINT `fk_adm_ci_type_attr_group_adm_attr_group_1` FOREIGN KEY (`id_adm_attr_group`) REFERENCES `adm_attr_group` (`id_adm_attr_group`),
  CONSTRAINT `fk_adm_ci_type_attr_group_adm_ci_type_attr_1` FOREIGN KEY (`id_adm_ci_type_attr`) REFERENCES `adm_ci_type_attr` (`id_adm_ci_type_attr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_files
-- ----------------------------
DROP TABLE IF EXISTS `adm_files`;
CREATE TABLE `adm_files` (
  `id_adm_file` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` blob,
  PRIMARY KEY (`id_adm_file`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_integrate_template
-- ----------------------------
DROP TABLE IF EXISTS `adm_integrate_template`;
CREATE TABLE `adm_integrate_template` (
  `id_adm_integrate_template` int(11) NOT NULL AUTO_INCREMENT,
  `ci_type_id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `des` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_adm_integrate_template`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_integrate_template_alias
-- ----------------------------
DROP TABLE IF EXISTS `adm_integrate_template_alias`;
CREATE TABLE `adm_integrate_template_alias` (
  `id_alias` int(11) NOT NULL AUTO_INCREMENT,
  `id_adm_ci_type` int(11) DEFAULT NULL,
  `id_adm_integrate_template` int(11) DEFAULT NULL,
  `alias` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_alias`),
  KEY `fk_adm_integrate_template_alias_template_1` (`id_adm_integrate_template`),
  KEY `fk_adm_integrate_template_alias_adm_ci_type_1` (`id_adm_ci_type`),
  CONSTRAINT `fk_adm_integrate_template_alias_adm_integrate_template_1` FOREIGN KEY (`id_adm_integrate_template`) REFERENCES `adm_integrate_template` (`id_adm_integrate_template`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_integrate_template_alias_attr
-- ----------------------------
DROP TABLE IF EXISTS `adm_integrate_template_alias_attr`;
CREATE TABLE `adm_integrate_template_alias_attr` (
  `id_attr` int(11) NOT NULL AUTO_INCREMENT,
  `id_alias` int(11) DEFAULT NULL,
  `id_ci_type_attr` int(11) DEFAULT NULL,
  `is_condition` varchar(2) DEFAULT NULL COMMENT '是否是查询条件',
  `is_displayed` varchar(2) DEFAULT NULL COMMENT '是否展示',
  `mapping_name` varchar(200) DEFAULT NULL COMMENT '属性英文别名',
  `filter` varchar(200) DEFAULT NULL COMMENT '过滤条件',
  `key_name` varchar(500) DEFAULT NULL COMMENT '唯一值',
  `seq_no` int(11) DEFAULT NULL COMMENT '展示排序序号（越小优先级越高）',
  `cn_alias` varchar(64) DEFAULT NULL COMMENT '属性中文别名',
  `sys_attr` varchar(64) DEFAULT NULL COMMENT '系统属性（guid,created_user,created_date,updated_user,updated_date）',
  PRIMARY KEY (`id_attr`),
  KEY `fk_adm_integrate_template_alias_attr_1` (`id_alias`),
  KEY `fk_adm_integrate_template_alias_attr_2` (`id_ci_type_attr`),
  CONSTRAINT `fk_adm_integrate_template_alias_attr_1` FOREIGN KEY (`id_alias`) REFERENCES `adm_integrate_template_alias` (`id_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_integrate_template_relation
-- ----------------------------
DROP TABLE IF EXISTS `adm_integrate_template_relation`;
CREATE TABLE `adm_integrate_template_relation` (
  `id_relation` int(11) NOT NULL AUTO_INCREMENT,
  `child_alias_id` int(11) DEFAULT NULL,
  `child_ref_attr_id` int(11) DEFAULT NULL,
  `parent_alias_id` int(11) DEFAULT NULL,
  `is_refered_from_parent` int(1) NOT NULL,
  PRIMARY KEY (`id_relation`),
  KEY `fk_adm_integrate_template_relation_alias_2` (`parent_alias_id`),
  KEY `fk_adm_integrate_template_relation_alias_1` (`child_alias_id`),
  KEY `fk_adm_integrate_template_relation_attr_1` (`child_ref_attr_id`),
  CONSTRAINT `fk_adm_integrate_template_relation_alias_1` FOREIGN KEY (`child_alias_id`) REFERENCES `adm_integrate_template_alias` (`id_alias`),
  CONSTRAINT `fk_adm_integrate_template_relation_alias_2` FOREIGN KEY (`parent_alias_id`) REFERENCES `adm_integrate_template_alias` (`id_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_log
-- ----------------------------
DROP TABLE IF EXISTS `adm_log`;
CREATE TABLE `adm_log` (
  `id_log` int(11) DEFAULT NULL,
  `log_cat` varchar(50) DEFAULT NULL,
  `id_adm_user` varchar(20) DEFAULT NULL,
  `operation` varchar(50) DEFAULT NULL,
  `log_content` longtext,
  `created_at` varchar(19) DEFAULT NULL,
  `guid` bigint(20) NOT NULL AUTO_INCREMENT,
  `updated_by` varchar(64) DEFAULT NULL,
  `updated_date` varchar(64) DEFAULT NULL,
  `created_by` varchar(64) DEFAULT NULL,
  `created_date` varchar(64) DEFAULT NULL,
  `ci_type_instance_guid` varchar(64) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL COMMENT '标注',
  `ci_type_name` varchar(100) DEFAULT NULL COMMENT 'ci类型名称',
  `ci_name` varchar(100) DEFAULT NULL COMMENT '操作ci名称',
  `status` int(2) DEFAULT '0',
  `ci_type_id` int(10) DEFAULT NULL COMMENT 'ci类型id',
  PRIMARY KEY (`guid`),
  KEY `idx_created_at` (`created_at`),
  KEY `idx_ci_guid` (`ci_type_instance_guid`),
  KEY `NewIndex1` (`log_cat`),
  KEY `NewIndex2` (`ci_type_name`),
  KEY `NewIndex3` (`ci_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5980 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_menu
-- ----------------------------
DROP TABLE IF EXISTS `adm_menu`;
CREATE TABLE `adm_menu` (
  `id_adm_menu` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `other_name` varchar(255) DEFAULT NULL COMMENT '菜单别名',
  `url` varchar(255) DEFAULT NULL COMMENT 'url',
  `seq_no` int(11) DEFAULT NULL COMMENT '排序序号',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `parent_id_adm_menu` int(11) DEFAULT NULL COMMENT '父菜单ID',
  `class_path` varchar(100) DEFAULT NULL COMMENT '目录对应的图标class',
  `is_active` int(1) DEFAULT '0' COMMENT '0正常，1禁用',
  PRIMARY KEY (`id_adm_menu`),
  KEY `fk_adm_menu_adm_menu_1` (`parent_id_adm_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_role
-- ----------------------------
DROP TABLE IF EXISTS `adm_role`;
CREATE TABLE `adm_role` (
  `id_adm_role` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_adm_role',
  `role_name` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `id_adm_tenement` int(11) DEFAULT NULL COMMENT 'id_adm_tenement',
  `parent_id_adm_role` int(11) DEFAULT NULL COMMENT '父角色ID',
  `role_type` varchar(32) DEFAULT NULL COMMENT '角色类型（平台管理、租户管理、CI管理、数据使用）',
  `is_system` int(1) DEFAULT '0' COMMENT '是否系统数据',
  PRIMARY KEY (`id_adm_role`),
  KEY `fk_adm_role_adm_tenement_1` (`id_adm_tenement`),
  KEY `fk_adm_role_adm_role_1` (`parent_id_adm_role`),
  CONSTRAINT `fk_adm_role_adm_role_1` FOREIGN KEY (`parent_id_adm_role`) REFERENCES `adm_role` (`id_adm_role`),
  CONSTRAINT `fk_adm_role_adm_tenement_1` FOREIGN KEY (`id_adm_tenement`) REFERENCES `adm_tenement` (`id_adm_tenement`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_role_ci_type
-- ----------------------------
DROP TABLE IF EXISTS `adm_role_ci_type`;
CREATE TABLE `adm_role_ci_type` (
  `id_adm_role_ci_type` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_adm_role_ci_type',
  `id_adm_role` int(11) NOT NULL COMMENT 'id_adm_role',
  `id_adm_ci_type` int(11) NOT NULL COMMENT 'id_adm_ci_type',
  `ci_type_name` varchar(100) DEFAULT NULL,
  `creation_permission` varchar(1) NOT NULL DEFAULT 'N',
  `removal_permission` varchar(1) NOT NULL DEFAULT 'N',
  `modification_permission` varchar(1) NOT NULL DEFAULT 'N',
  `enquiry_permission` varchar(1) NOT NULL DEFAULT 'N',
  `execution_permission` varchar(1) NOT NULL DEFAULT 'N',
  `grant_permission` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_adm_role_ci_type`),
  UNIQUE KEY `role_citype_unique` (`id_adm_role`,`id_adm_ci_type`),
  KEY `fk_adm_role_ci_type_adm_role_1` (`id_adm_role`),
  KEY `FK_adm_role_ci_type_adm_ci_type` (`id_adm_ci_type`),
  CONSTRAINT `fk_adm_role_ci_type_adm_citype_1` FOREIGN KEY (`id_adm_ci_type`) REFERENCES `adm_ci_type` (`id_adm_ci_type`) ON DELETE CASCADE,
  CONSTRAINT `fk_adm_role_ci_type_adm_role_1` FOREIGN KEY (`id_adm_role`) REFERENCES `adm_role` (`id_adm_role`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_role_ci_type_ctrl_attr
-- ----------------------------
DROP TABLE IF EXISTS `adm_role_ci_type_ctrl_attr`;
CREATE TABLE `adm_role_ci_type_ctrl_attr` (
  `id_adm_role_ci_type_ctrl_attr` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_adm_role_ci_type_ctrl_attr',
  `id_adm_role_ci_type` int(11) NOT NULL COMMENT 'id_adm_role_ci_type',
  `creation_permission` varchar(1) NOT NULL DEFAULT 'N',
  `removal_permission` varchar(1) NOT NULL DEFAULT 'N',
  `modification_permission` varchar(1) NOT NULL DEFAULT 'N',
  `enquiry_permission` varchar(1) NOT NULL DEFAULT 'N',
  `execution_permission` varchar(1) NOT NULL DEFAULT 'N',
  `grant_permission` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_adm_role_ci_type_ctrl_attr`),
  KEY `fk_adm_role_ci_type_attribute_adm_role_ci_type_1` (`id_adm_role_ci_type`),
  CONSTRAINT `fk_adm_role_ci_type_attribute_adm_role_ci_type_1` FOREIGN KEY (`id_adm_role_ci_type`) REFERENCES `adm_role_ci_type` (`id_adm_role_ci_type`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_role_ci_type_ctrl_attr_condition
-- ----------------------------
DROP TABLE IF EXISTS `adm_role_ci_type_ctrl_attr_condition`;
CREATE TABLE `adm_role_ci_type_ctrl_attr_condition` (
  `id_adm_role_ci_type_ctrl_attr_condition` int(11) NOT NULL AUTO_INCREMENT,
  `id_adm_role_ci_type_ctrl_attr` int(11) NOT NULL,
  `id_adm_ci_type_attr` int(11) NOT NULL,
  `ci_type_attr_name` varchar(100) DEFAULT NULL,
  `condition_value` varchar(1000) DEFAULT NULL,
  `condition_value_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_adm_role_ci_type_ctrl_attr_condition`),
  UNIQUE KEY `role_citype_ctrlattr_cond_unique` (`id_adm_role_ci_type_ctrl_attr`,`id_adm_ci_type_attr`),
  KEY `fk_adm_role_ci_type_attr_adm_role_ci_type_attr_1` (`id_adm_role_ci_type_ctrl_attr`),
  KEY `fk_adm_role_ci_type_attr_adm_ci_type_attr_1` (`id_adm_ci_type_attr`),
  CONSTRAINT `fk_adm_role_ci_type_attr_adm_ci_type_attr_1` FOREIGN KEY (`id_adm_ci_type_attr`) REFERENCES `adm_ci_type_attr` (`id_adm_ci_type_attr`) ON DELETE CASCADE,
  CONSTRAINT `fk_adm_role_ci_type_attr_adm_role_ci_type_attr_1` FOREIGN KEY (`id_adm_role_ci_type_ctrl_attr`) REFERENCES `adm_role_ci_type_ctrl_attr` (`id_adm_role_ci_type_ctrl_attr`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `adm_role_menu`;
CREATE TABLE `adm_role_menu` (
  `id_adm_role_menu` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_adm_role_menu',
  `id_adm_role` int(11) DEFAULT NULL COMMENT 'id_adm_role',
  `id_adm_menu` int(11) DEFAULT NULL COMMENT 'id_adm_menu',
  `is_system` int(1) DEFAULT '0' COMMENT '是否系统数据',
  PRIMARY KEY (`id_adm_role_menu`),
  UNIQUE KEY `role_menu_unique` (`id_adm_role`,`id_adm_menu`),
  KEY `fk_adm_role_menu_adm_role_1` (`id_adm_role`),
  KEY `fk_adm_role_menu_adm_menu_1` (`id_adm_menu`),
  CONSTRAINT `fk_adm_role_menu_adm_menu_1` FOREIGN KEY (`id_adm_menu`) REFERENCES `adm_menu` (`id_adm_menu`) ON DELETE CASCADE,
  CONSTRAINT `fk_adm_role_menu_adm_role_1` FOREIGN KEY (`id_adm_role`) REFERENCES `adm_role` (`id_adm_role`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_role_user
-- ----------------------------
DROP TABLE IF EXISTS `adm_role_user`;
CREATE TABLE `adm_role_user` (
  `id_adm_role_user` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_adm_role_user',
  `id_adm_role` int(11) DEFAULT NULL COMMENT 'id_adm_role',
  `id_adm_user` int(11) DEFAULT NULL COMMENT 'id_adm_user',
  `is_system` int(1) DEFAULT '0' COMMENT '是否系统数据',
  PRIMARY KEY (`id_adm_role_user`),
  KEY `fk_adm_role_user_adm_role_1` (`id_adm_role`),
  KEY `fk_adm_role_user_adm_user_1` (`id_adm_user`),
  CONSTRAINT `fk_adm_role_user_adm_role_1` FOREIGN KEY (`id_adm_role`) REFERENCES `adm_role` (`id_adm_role`),
  CONSTRAINT `fk_adm_role_user_adm_user_1` FOREIGN KEY (`id_adm_user`) REFERENCES `adm_user` (`id_adm_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_sequence
-- ----------------------------
DROP TABLE IF EXISTS `adm_sequence`;
CREATE TABLE `adm_sequence` (
  `id_adm_sequence` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id_adm_sequence',
  `seq_name` varchar(64) NOT NULL COMMENT '序列名称',
  `current_val` int(11) DEFAULT NULL COMMENT '当前值',
  `increment_val` int(11) DEFAULT NULL COMMENT '步长',
  `length_limitation` int(11) DEFAULT NULL COMMENT '位数限制',
  `left_zero_padding` varchar(1) DEFAULT NULL COMMENT '是否补零，y为是，n为否',
  PRIMARY KEY (`id_adm_sequence`),
  UNIQUE KEY `seq_name_index` (`seq_name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_state_transition
-- ----------------------------
DROP TABLE IF EXISTS `adm_state_transition`;
CREATE TABLE `adm_state_transition` (
  `id_adm_state_transition` int(11) NOT NULL,
  `current_state` int(11) DEFAULT NULL,
  `current_state_is_confirmed` tinyint(4) DEFAULT NULL,
  `target_state` int(11) DEFAULT NULL,
  `target_state_is_confirmed` tinyint(4) DEFAULT NULL,
  `operation` int(11) DEFAULT NULL,
  `action` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_adm_state_transition`),
  KEY `fk_adm_state_transition_current_state_idx` (`current_state`),
  KEY `fk_adm_state_transition_target_state_idx` (`target_state`),
  KEY `fk_adm_state_transition_operation_idx` (`operation`),
  KEY `fk_adm_state_transition_action_idx` (`action`),
  CONSTRAINT `fk_adm_state_transition_action` FOREIGN KEY (`action`) REFERENCES `adm_basekey_code` (`id_adm_basekey`),
  CONSTRAINT `fk_adm_state_transition_current_state` FOREIGN KEY (`current_state`) REFERENCES `adm_basekey_code` (`id_adm_basekey`),
  CONSTRAINT `fk_adm_state_transition_operation` FOREIGN KEY (`operation`) REFERENCES `adm_basekey_code` (`id_adm_basekey`),
  CONSTRAINT `fk_adm_state_transition_target_state` FOREIGN KEY (`target_state`) REFERENCES `adm_basekey_code` (`id_adm_basekey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_tenement
-- ----------------------------
DROP TABLE IF EXISTS `adm_tenement`;
CREATE TABLE `adm_tenement` (
  `id_adm_tenement` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `en_short_name` varchar(32) DEFAULT NULL COMMENT '英文简称',
  PRIMARY KEY (`id_adm_tenement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adm_user
-- ----------------------------
DROP TABLE IF EXISTS `adm_user`;
CREATE TABLE `adm_user` (
  `id_adm_user` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_adm_user',
  `name` varchar(64) DEFAULT NULL COMMENT '名称',
  `code` varchar(100) DEFAULT NULL COMMENT '编码（接口类用户使用）',
  `encrypted_password` varchar(100) DEFAULT NULL COMMENT '加密的密码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `id_adm_tenement` int(11) DEFAULT NULL COMMENT 'id_adm_tenement',
  `action_flag` tinyint(1) DEFAULT '0' COMMENT '用户操作Flag',
  `is_system` int(1) DEFAULT '0' COMMENT '是否系统数据',
  PRIMARY KEY (`id_adm_user`),
  UNIQUE KEY `adm_user_code` (`code`),
  KEY `fk_adm_user_adm_tenement_1` (`id_adm_tenement`),
  CONSTRAINT `fk_adm_user_adm_tenement_1` FOREIGN KEY (`id_adm_tenement`) REFERENCES `adm_tenement` (`id_adm_tenement`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for basekey_cat
-- ----------------------------
DROP TABLE IF EXISTS `basekey_cat`;
CREATE TABLE `basekey_cat` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `id_basekey_cat_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for basekey_cat_type
-- ----------------------------
DROP TABLE IF EXISTS `basekey_cat_type`;
CREATE TABLE `basekey_cat_type` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `id_ci_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for basekey_code
-- ----------------------------
DROP TABLE IF EXISTS `basekey_code`;
CREATE TABLE `basekey_code` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(4000) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `id_basekey_cat` varchar(50) DEFAULT NULL,
  `p_code_id` varchar(50) DEFAULT NULL,
  `value` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for block_storage
-- ----------------------------
DROP TABLE IF EXISTS `block_storage`;
CREATE TABLE `block_storage` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `asset_code` varchar(50) DEFAULT NULL COMMENT '资产编码',
  `billing_cycle` varchar(50) DEFAULT NULL COMMENT '计费周期(月)',
  `block_storage_type` varchar(50) DEFAULT NULL,
  `charge_type` varchar(50) DEFAULT NULL,
  `disk_size` varchar(50) DEFAULT NULL COMMENT '容量(GB)',
  `end_date` datetime DEFAULT NULL COMMENT '截止时间，包年包月时必须给出',
  `file_system` varchar(50) DEFAULT NULL,
  `mount_point` varchar(50) DEFAULT NULL COMMENT '挂载点',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `resource_instance` varchar(15) DEFAULT NULL COMMENT '资源实例',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for business_app_instance
-- ----------------------------
DROP TABLE IF EXISTS `business_app_instance`;
CREATE TABLE `business_app_instance` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `cpu` varchar(50) DEFAULT NULL COMMENT 'CPU(核)',
  `deploy_package` varchar(15) DEFAULT NULL COMMENT '部署包',
  `deploy_package_url` varchar(200) DEFAULT NULL COMMENT '部署包路径',
  `deploy_user_password` varchar(200) DEFAULT NULL COMMENT '部署用户密码',
  `memory` varchar(50) DEFAULT NULL COMMENT '内存(GB)',
  `resource_instance` varchar(15) DEFAULT NULL COMMENT '资源实例',
  `storage` varchar(50) DEFAULT NULL COMMENT '存储空间(GB)',
  `unit` varchar(15) DEFAULT NULL COMMENT '单元',
  `unit_type` varchar(50) DEFAULT NULL,
  `variable_values` varchar(1000) DEFAULT NULL COMMENT '差异配置值',
  `lb_listener_asset_code` varchar(50) DEFAULT NULL,
  `port` varchar(50) DEFAULT NULL COMMENT '服务端口',
  `monitor_port` varchar(50) DEFAULT NULL COMMENT '监控端口',
  `port_conflict` varchar(50) DEFAULT NULL,
  `management_port` varchar(50) DEFAULT NULL,
  `start_script` varchar(2048) DEFAULT NULL,
  `stop_script` varchar(2048) DEFAULT NULL,
  `deploy_script` varchar(2048) DEFAULT NULL,
  `deploy_user` varchar(50) DEFAULT NULL,
  `deploy_backup_asset_code` varchar(50) DEFAULT NULL,
  `regular_backup_asset_code` varchar(50) DEFAULT NULL,
  `monitor_password` varchar(50) DEFAULT NULL,
  `monitor_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for business_zone
-- ----------------------------
DROP TABLE IF EXISTS `business_zone`;
CREATE TABLE `business_zone` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `dcn_design` varchar(15) DEFAULT NULL COMMENT '业务区域设计',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `network_zone` varchar(15) DEFAULT NULL COMMENT '网络区域',
  `network_segment` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for business_zone_design
-- ----------------------------
DROP TABLE IF EXISTS `business_zone_design`;
CREATE TABLE `business_zone_design` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `network_zone_design` varchar(15) DEFAULT NULL COMMENT '网络区域设计',
  `network_segment_design` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for business_zone_design$business_group
-- ----------------------------
DROP TABLE IF EXISTS `business_zone_design$business_group`;
CREATE TABLE `business_zone_design$business_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_guid` varchar(15) NOT NULL,
  `to_guid` varchar(50) NOT NULL,
  `seq_no` int(5) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `business_zone_design$business_group_fk_code` (`to_guid`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for data_center
-- ----------------------------
DROP TABLE IF EXISTS `data_center`;
CREATE TABLE `data_center` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `auth_parameter` varchar(200) DEFAULT NULL COMMENT '认证参数',
  `data_center_design` varchar(15) DEFAULT NULL COMMENT '数据中心设计',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `data_center_type` int(15) DEFAULT NULL,
  `regional_data_center` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for data_center$deploy_environment
-- ----------------------------
DROP TABLE IF EXISTS `data_center$deploy_environment`;
CREATE TABLE `data_center$deploy_environment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_guid` varchar(15) NOT NULL,
  `to_guid` varchar(50) DEFAULT NULL,
  `seq_no` int(5) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `data_center$deploy_environment_fk_code` (`to_guid`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for data_center_design
-- ----------------------------
DROP TABLE IF EXISTS `data_center_design`;
CREATE TABLE `data_center_design` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for default_security_policy
-- ----------------------------
DROP TABLE IF EXISTS `default_security_policy`;
CREATE TABLE `default_security_policy` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `network_segment` varchar(15) DEFAULT NULL,
  `security_policy_type` varchar(50) DEFAULT NULL,
  `security_policy_action` varchar(50) DEFAULT NULL,
  `protocol` varchar(50) DEFAULT NULL,
  `port` varchar(50) DEFAULT NULL,
  `vpc_network_zone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for deploy_package
-- ----------------------------
DROP TABLE IF EXISTS `deploy_package`;
CREATE TABLE `deploy_package` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `absolute_deploy_file_path` varchar(200) DEFAULT NULL COMMENT '执行部署脚本文件',
  `absolute_start_file_path` varchar(200) DEFAULT NULL COMMENT '启动脚步文件',
  `absolute_stop_file_path` varchar(200) DEFAULT NULL COMMENT '停止脚步文件',
  `deploy_file_path` varchar(200) DEFAULT NULL COMMENT '执行部署脚本文件',
  `deploy_package_url` varchar(200) DEFAULT NULL COMMENT '存储路径',
  `deploy_path` varchar(200) DEFAULT NULL COMMENT '部署路径',
  `deploy_user` varchar(15) DEFAULT NULL COMMENT '部署用户',
  `diff_conf_file` varchar(200) DEFAULT NULL COMMENT '差异配置文件',
  `is_decompression` varchar(50) DEFAULT NULL COMMENT '是否解压',
  `md5_value` varchar(50) DEFAULT NULL COMMENT 'MD5值',
  `name` varchar(50) DEFAULT NULL COMMENT '包名称',
  `start_file_path` varchar(200) DEFAULT NULL COMMENT '启动脚步文件',
  `stop_file_path` varchar(200) DEFAULT NULL COMMENT '停止脚步文件',
  `unit_design` varchar(15) DEFAULT NULL COMMENT '单元设计',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `upload_user` varchar(50) DEFAULT NULL COMMENT '上传人',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for deploy_package$diff_conf_variable
-- ----------------------------
DROP TABLE IF EXISTS `deploy_package$diff_conf_variable`;
CREATE TABLE `deploy_package$diff_conf_variable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_guid` varchar(15) NOT NULL,
  `to_guid` varchar(15) NOT NULL,
  `seq_no` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3241 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for diff_configuration
-- ----------------------------
DROP TABLE IF EXISTS `diff_configuration`;
CREATE TABLE `diff_configuration` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `variable_name` varchar(50) DEFAULT NULL COMMENT '变量名',
  `variable_value` varchar(1000) DEFAULT NULL COMMENT '变量值',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for direct_service_invoke
-- ----------------------------
DROP TABLE IF EXISTS `direct_service_invoke`;
CREATE TABLE `direct_service_invoke` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `invoked_unit` varchar(15) DEFAULT NULL,
  `invoke_unit` varchar(15) DEFAULT NULL,
  `invoke_user` varchar(50) DEFAULT NULL,
  `invoke_user_password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for invoke
-- ----------------------------
DROP TABLE IF EXISTS `invoke`;
CREATE TABLE `invoke` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `invoke_design` varchar(15) DEFAULT NULL COMMENT '调用设计',
  `invoke_type` varchar(50) DEFAULT NULL,
  `invoked_unit` varchar(15) DEFAULT NULL COMMENT '被调用单元',
  `invoke_unit` varchar(15) DEFAULT NULL COMMENT '调用单元',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for invoke_design
-- ----------------------------
DROP TABLE IF EXISTS `invoke_design`;
CREATE TABLE `invoke_design` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `invoke_type` varchar(50) DEFAULT NULL,
  `invoked_unit_design` varchar(15) DEFAULT NULL COMMENT '被调用单元设计',
  `invoke_unit_design` varchar(15) DEFAULT NULL COMMENT '调用单元设计',
  `resource_set_invoke_design` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ip_address
-- ----------------------------
DROP TABLE IF EXISTS `ip_address`;
CREATE TABLE `ip_address` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `ip_address_usage` varchar(50) DEFAULT NULL,
  `network_segment` varchar(15) DEFAULT NULL COMMENT '网段',
  `used_record` varchar(1000) DEFAULT NULL COMMENT '使用记录',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for network_segment
-- ----------------------------
DROP TABLE IF EXISTS `network_segment`;
CREATE TABLE `network_segment` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `f_network_segment` varchar(15) DEFAULT NULL COMMENT '父网段',
  `gateway_ip` varchar(15) DEFAULT NULL COMMENT '网关IP地址',
  `mask` varchar(50) DEFAULT NULL COMMENT '子网掩码',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `network_segment_design` varchar(15) DEFAULT NULL COMMENT '网段设计',
  `network_segment_usage` varchar(50) DEFAULT NULL,
  `data_center` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for network_segment_design
-- ----------------------------
DROP TABLE IF EXISTS `network_segment_design`;
CREATE TABLE `network_segment_design` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `f_network_segment` varchar(15) DEFAULT NULL COMMENT '父网段',
  `mask` varchar(50) DEFAULT NULL COMMENT '子网掩码',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `network_segment_usage` varchar(50) DEFAULT NULL,
  `data_center_design` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for network_zone
-- ----------------------------
DROP TABLE IF EXISTS `network_zone`;
CREATE TABLE `network_zone` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `data_center` varchar(15) DEFAULT NULL COMMENT '数据中心',
  `name` varchar(50) DEFAULT NULL COMMENT '服务名称',
  `network_segment` varchar(15) DEFAULT NULL COMMENT '网段',
  `network_zone_design` varchar(15) DEFAULT NULL COMMENT '安全区域设计',
  `network_zone_layer` varchar(50) DEFAULT NULL,
  `vpc_network_zone` varchar(15) DEFAULT NULL,
  `network_zone_type` varchar(50) DEFAULT NULL,
  `vpc_asset_code` varchar(50) DEFAULT NULL,
  `security_group_asset_code` varchar(50) DEFAULT NULL,
  `route_table_asset_code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for network_zone_design
-- ----------------------------
DROP TABLE IF EXISTS `network_zone_design`;
CREATE TABLE `network_zone_design` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `data_center_design` varchar(15) DEFAULT NULL COMMENT '数据中心设计',
  `network_segment_design` varchar(15) DEFAULT NULL COMMENT '网段设计',
  `network_zone_layer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for network_zone_link
-- ----------------------------
DROP TABLE IF EXISTS `network_zone_link`;
CREATE TABLE `network_zone_link` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `asset_code` varchar(50) DEFAULT NULL COMMENT '资产编码',
  `max_concurrent` varchar(50) DEFAULT NULL COMMENT '最大并发连接数',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `netband_width` varchar(50) DEFAULT NULL COMMENT '网络带宽(M)',
  `network_zone_1` varchar(15) DEFAULT NULL COMMENT '网络区域1',
  `network_zone_2` varchar(15) DEFAULT NULL COMMENT '网络区域2',
  `network_zone_link_design` varchar(15) DEFAULT NULL COMMENT '网络区域连接设计',
  `network_zone_link_type` varchar(50) DEFAULT NULL,
  `internet_ip` varchar(15) DEFAULT NULL COMMENT '公网IP地址',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for network_zone_link_design
-- ----------------------------
DROP TABLE IF EXISTS `network_zone_link_design`;
CREATE TABLE `network_zone_link_design` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `network_zone_design_1` varchar(15) DEFAULT NULL COMMENT '网络区域设计1',
  `network_zone_design_2` varchar(15) DEFAULT NULL COMMENT '网络区域设计2',
  `network_zone_link_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for resource_instance
-- ----------------------------
DROP TABLE IF EXISTS `resource_instance`;
CREATE TABLE `resource_instance` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `asset_code` varchar(50) DEFAULT NULL COMMENT '资产编码',
  `billing_cycle` varchar(50) DEFAULT NULL COMMENT '计费周期(月)',
  `charge_type` varchar(50) DEFAULT NULL,
  `cluster_node_type` varchar(50) DEFAULT NULL,
  `cpu` varchar(50) DEFAULT NULL COMMENT 'CPU(核)',
  `end_date` varchar(50) DEFAULT NULL COMMENT '截止时间，包年包月时必须给出',
  `intranet_ip` varchar(15) DEFAULT NULL COMMENT '内网IP',
  `login_port` varchar(50) DEFAULT NULL COMMENT '登录端口',
  `memory` varchar(50) DEFAULT NULL COMMENT '内存(GB)',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `resource_instance_spec` varchar(50) DEFAULT NULL,
  `resource_instance_type` varchar(50) DEFAULT NULL,
  `resource_set` varchar(15) DEFAULT NULL COMMENT '资源集合',
  `resource_system` varchar(50) DEFAULT NULL,
  `storage` varchar(50) DEFAULT NULL COMMENT '存储空间(GB)',
  `unit_type` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL COMMENT '管理员用户名',
  `user_password` varchar(200) DEFAULT NULL COMMENT '管理员用户密码',
  `master_resource_instance` varchar(15) DEFAULT NULL,
  `backup_asset_code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for resource_set
-- ----------------------------
DROP TABLE IF EXISTS `resource_set`;
CREATE TABLE `resource_set` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `business_zone` varchar(15) DEFAULT NULL COMMENT '业务区域',
  `cluster_type` varchar(50) DEFAULT NULL,
  `init_script` varchar(5000) DEFAULT NULL COMMENT '初始化脚本',
  `init_source_type` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `network_segment` varchar(15) DEFAULT NULL COMMENT '网段',
  `resource_set_design` varchar(15) DEFAULT NULL COMMENT '资源集合设计',
  `subnet_asset_code` varchar(50) DEFAULT NULL,
  `route_table_asset_code` varchar(50) DEFAULT NULL COMMENT '路由表资产编码',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for resource_set$deploy_environment
-- ----------------------------
DROP TABLE IF EXISTS `resource_set$deploy_environment`;
CREATE TABLE `resource_set$deploy_environment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_guid` varchar(15) NOT NULL,
  `to_guid` varchar(50) DEFAULT NULL,
  `seq_no` int(5) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `resource_set$deploy_environment_fk_code` (`to_guid`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for resource_set_design
-- ----------------------------
DROP TABLE IF EXISTS `resource_set_design`;
CREATE TABLE `resource_set_design` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `business_zone_design` varchar(15) DEFAULT NULL COMMENT '业务区域设计',
  `network_segment_design` varchar(15) DEFAULT NULL COMMENT '网段设计',
  `unit_design_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for resource_set_design$cluster_type
-- ----------------------------
DROP TABLE IF EXISTS `resource_set_design$cluster_type`;
CREATE TABLE `resource_set_design$cluster_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_guid` varchar(15) NOT NULL,
  `to_guid` varchar(50) DEFAULT NULL,
  `seq_no` int(5) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `resource_set_design$cluster_type_fk_code` (`to_guid`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for resource_set_invoke_design
-- ----------------------------
DROP TABLE IF EXISTS `resource_set_invoke_design`;
CREATE TABLE `resource_set_invoke_design` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `invoked_resource_set_design` varchar(15) DEFAULT NULL,
  `invoke_resource_set_design` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for routing_rule
-- ----------------------------
DROP TABLE IF EXISTS `routing_rule`;
CREATE TABLE `routing_rule` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `asset_code` varchar(50) DEFAULT NULL COMMENT '资产编码',
  `dest_network_segment` varchar(15) DEFAULT NULL COMMENT '目标网段',
  `network_zone_link_design` varchar(15) DEFAULT NULL COMMENT '网络区域连接',
  `routing_rule_design` varchar(15) DEFAULT NULL COMMENT '路由规则设计',
  `vpn_connection_asset_code` varchar(50) DEFAULT NULL,
  `customer_gateway_ip` varchar(50) DEFAULT NULL,
  `owner_resource_set` varchar(15) DEFAULT NULL,
  `owner_vpc_network_zone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for routing_rule_design
-- ----------------------------
DROP TABLE IF EXISTS `routing_rule_design`;
CREATE TABLE `routing_rule_design` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `dest_network_segment` varchar(15) DEFAULT NULL COMMENT '目标网段',
  `network_zone_link_design` varchar(15) DEFAULT NULL COMMENT '网络区域连接',
  `owner_vpc_network_zone_design` varchar(15) DEFAULT NULL,
  `owner_resource_set_design` varchar(15) DEFAULT NULL,
  `owner_network_segment_design` varchar(15) DEFAULT NULL COMMENT '资源集合',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for service_design
-- ----------------------------
DROP TABLE IF EXISTS `service_design`;
CREATE TABLE `service_design` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `name` varchar(50) DEFAULT NULL COMMENT '服务名称',
  `service_type` int(15) DEFAULT NULL COMMENT '服务类型',
  `unit_design` varchar(15) DEFAULT NULL COMMENT '单元设计',
  `service_invoke_type` int(15) DEFAULT NULL,
  `service_nature` int(15) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for service_invoke_design
-- ----------------------------
DROP TABLE IF EXISTS `service_invoke_design`;
CREATE TABLE `service_invoke_design` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `invoked_unit_design` varchar(15) DEFAULT NULL,
  `invoke_unit_design` varchar(15) DEFAULT NULL,
  `service_design` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for service_invoke_seq_design
-- ----------------------------
DROP TABLE IF EXISTS `service_invoke_seq_design`;
CREATE TABLE `service_invoke_seq_design` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `name` varchar(50) DEFAULT NULL COMMENT '时序名称',
  `system_design` varchar(15) DEFAULT NULL COMMENT '系统设计',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for service_invoke_seq_design$service_invoke_design_sequence
-- ----------------------------
DROP TABLE IF EXISTS `service_invoke_seq_design$service_invoke_design_sequence`;
CREATE TABLE `service_invoke_seq_design$service_invoke_design_sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_guid` varchar(15) NOT NULL,
  `to_guid` varchar(15) NOT NULL,
  `seq_no` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for subsys
-- ----------------------------
DROP TABLE IF EXISTS `subsys`;
CREATE TABLE `subsys` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `manager` varchar(50) DEFAULT NULL COMMENT '运维人员',
  `subsys_design` varchar(15) DEFAULT NULL COMMENT '子系统设计',
  `we_system` varchar(15) DEFAULT NULL COMMENT '系统',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for subsys$business_zone
-- ----------------------------
DROP TABLE IF EXISTS `subsys$business_zone`;
CREATE TABLE `subsys$business_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_guid` varchar(15) NOT NULL,
  `to_guid` varchar(15) NOT NULL,
  `seq_no` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for subsys_design
-- ----------------------------
DROP TABLE IF EXISTS `subsys_design`;
CREATE TABLE `subsys_design` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `system_design` varchar(15) DEFAULT NULL,
  `business_group` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `subsys_design_id` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for subsys_design$business_zone_design
-- ----------------------------
DROP TABLE IF EXISTS `subsys_design$business_zone_design`;
CREATE TABLE `subsys_design$business_zone_design` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_guid` varchar(15) NOT NULL,
  `to_guid` varchar(15) NOT NULL,
  `seq_no` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for system_design
-- ----------------------------
DROP TABLE IF EXISTS `system_design`;
CREATE TABLE `system_design` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `business_group` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `data_center_design` varchar(15) DEFAULT NULL,
  `system_design_id` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for unit
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `manager` varchar(50) DEFAULT NULL COMMENT '运维人员',
  `subsys` varchar(15) DEFAULT NULL COMMENT '子系统',
  `unit_design` varchar(15) DEFAULT NULL COMMENT '单元设计',
  `port` varchar(50) DEFAULT NULL,
  `monitor_port` varchar(50) DEFAULT NULL,
  `security_group_asset_code` varchar(50) DEFAULT NULL,
  `public_key` varchar(1000) DEFAULT NULL,
  `deploy_path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for unit$deploy_package
-- ----------------------------
DROP TABLE IF EXISTS `unit$deploy_package`;
CREATE TABLE `unit$deploy_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_guid` varchar(15) NOT NULL,
  `to_guid` varchar(15) NOT NULL,
  `seq_no` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for unit$resource_set
-- ----------------------------
DROP TABLE IF EXISTS `unit$resource_set`;
CREATE TABLE `unit$resource_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_guid` varchar(15) NOT NULL,
  `to_guid` varchar(15) NOT NULL,
  `seq_no` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for unit$unit_type
-- ----------------------------
DROP TABLE IF EXISTS `unit$unit_type`;
CREATE TABLE `unit$unit_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_guid` varchar(15) NOT NULL,
  `to_guid` varchar(50) DEFAULT NULL,
  `seq_no` int(5) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `unit$unit_type_fk_code` (`to_guid`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for unit_design
-- ----------------------------
DROP TABLE IF EXISTS `unit_design`;
CREATE TABLE `unit_design` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `across_resource_set` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '单元名称',
  `resource_set_design` varchar(15) DEFAULT NULL COMMENT '资源集合设计',
  `subsys_design` varchar(15) DEFAULT NULL COMMENT '系统',
  `unit_design_type` varchar(50) DEFAULT NULL,
  `protocol` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for we_system
-- ----------------------------
DROP TABLE IF EXISTS `we_system`;
CREATE TABLE `we_system` (
  `guid` varchar(15) NOT NULL COMMENT '全局唯一ID',
  `p_guid` varchar(15) DEFAULT NULL COMMENT '前一版本数据的guid',
  `r_guid` varchar(15) DEFAULT NULL COMMENT '原始数据guid',
  `updated_by` varchar(50) DEFAULT NULL COMMENT '更新用户',
  `updated_date` datetime DEFAULT NULL COMMENT '更新日期',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `key_name` varchar(200) DEFAULT NULL COMMENT '唯一名称',
  `state` int(15) DEFAULT NULL COMMENT '状态',
  `fixed_date` varchar(19) DEFAULT NULL COMMENT '确认日期',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `deploy_environment` varchar(50) DEFAULT NULL,
  `system_design` varchar(15) DEFAULT NULL COMMENT '系统设计',
  `region_data_center` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for we_system$data_center
-- ----------------------------
DROP TABLE IF EXISTS `we_system$data_center`;
CREATE TABLE `we_system$data_center` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_guid` varchar(15) NOT NULL,
  `to_guid` varchar(15) NOT NULL,
  `seq_no` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS=1;
-- 数据导出被取消选择。
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
