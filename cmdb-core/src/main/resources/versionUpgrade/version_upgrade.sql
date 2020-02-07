
SET FOREIGN_KEY_CHECKS=0;

INSERT INTO `adm_ci_type` VALUES ('40', '枚举', '枚举', null, 'basekey_code', 'created', null, null, '6', '391', '2', '12', null);
INSERT INTO `adm_ci_type` VALUES ('41', '枚举组', '枚举组', null, 'basekey_cat', 'created', null, null, '7', '391', '2', '12', null);
INSERT INTO `adm_ci_type` VALUES ('42', '枚举组类型', '枚举组类型', null, 'basekey_cat_type', 'created', null, null, '8', '391', '2', '11', null);

INSERT INTO `adm_ci_type_attr` VALUES ('1025', '40', '全局唯一ID', '全局唯一ID', 'text', 'guid', 'varchar', '15', null, null, null, null, '0', '0', '0', '0', '1', '0', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1026', '40', '前全局唯一ID', '前一版本数据的guid', 'text', 'p_guid', 'varchar', '15', null, null, null, null, '0', '0', '0', '1', '0', '0', '0', '0', null, 'created', '1', '0', '0', null, '1', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1027', '40', '根全局唯一ID', '原始数据guid', 'text', 'r_guid', 'varchar', '15', null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1028', '40', '更新用户', '更新用户', 'text', 'updated_by', 'varchar', '50', null, null, null, null, '0', '0', '0', '0', '0', '1', '0', '0', null, 'created', '1', '0', '0', null, '1', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1029', '40', '更新日期', '更新日期', 'date', 'updated_date', 'datetime', '1', null, null, null, null, '0', '0', '0', '0', '0', '1', '0', '0', null, 'created', '1', '0', '0', null, '1', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1030', '40', '创建用户', '创建用户', 'text', 'created_by', 'varchar', '50', null, null, null, null, '0', '0', '0', '0', '0', '1', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1031', '40', '创建日期', '创建日期', 'date', 'created_date', 'datetime', '1', null, null, null, null, '0', '0', '0', '0', '0', '1', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1032', '40', '唯一名称', '唯一名称', 'text', 'key_name', 'varchar', '200', null, null, null, null, '1', '1', '1', '0', '1', '0', '0', '0', null, 'created', '1', '0', '1', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1033', '40', '状态', '状态', 'select', 'state', 'int', '15', '9', null, null, null, '2', '1', '2', '0', '0', '0', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1034', '40', '确认日期', '确认日期', 'text', 'fixed_date', 'varchar', '19', null, null, null, null, '4', '1', '4', '1', '0', '0', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1035', '40', '描述说明', '描述说明', 'textArea', 'description', 'varchar', '1000', null, null, null, null, '5', '1', '5', '1', '0', '0', '1', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1036', '40', '编码', '编码', 'text', 'code', 'varchar', '50', null, null, null, null, '3', '1', '3', '0', '0', '0', '1', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1037', '41', '全局唯一ID', '全局唯一ID', 'text', 'guid', 'varchar', '15', null, null, null, null, '0', '0', '0', '0', '1', '0', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1038', '41', '前全局唯一ID', '前一版本数据的guid', 'text', 'p_guid', 'varchar', '15', null, null, null, null, '0', '0', '0', '1', '0', '0', '0', '0', null, 'created', '1', '0', '0', null, '1', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1039', '41', '根全局唯一ID', '原始数据guid', 'text', 'r_guid', 'varchar', '15', null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1040', '41', '更新用户', '更新用户', 'text', 'updated_by', 'varchar', '50', null, null, null, null, '0', '0', '0', '0', '0', '1', '0', '0', null, 'created', '1', '0', '0', null, '1', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1041', '41', '更新日期', '更新日期', 'date', 'updated_date', 'datetime', '1', null, null, null, null, '0', '0', '0', '0', '0', '1', '0', '0', null, 'created', '1', '0', '0', null, '1', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1042', '41', '创建用户', '创建用户', 'text', 'created_by', 'varchar', '50', null, null, null, null, '0', '0', '0', '0', '0', '1', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1043', '41', '创建日期', '创建日期', 'date', 'created_date', 'datetime', '1', null, null, null, null, '0', '0', '0', '0', '0', '1', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1044', '41', '唯一名称', '唯一名称', 'text', 'key_name', 'varchar', '200', null, null, null, null, '1', '1', '1', '0', '1', '0', '0', '0', null, 'created', '1', '0', '1', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1045', '41', '状态', '状态', 'select', 'state', 'int', '15', '9', null, null, null, '2', '1', '2', '0', '0', '0', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1046', '41', '确认日期', '确认日期', 'text', 'fixed_date', 'varchar', '19', null, null, null, null, '4', '1', '4', '1', '0', '0', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1047', '41', '描述说明', '描述说明', 'textArea', 'description', 'varchar', '1000', null, null, null, null, '5', '1', '5', '1', '0', '0', '1', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1048', '41', '编码', '编码', 'text', 'code', 'varchar', '50', null, null, null, null, '3', '1', '3', '0', '0', '0', '1', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1049', '42', '全局唯一ID', '全局唯一ID', 'text', 'guid', 'varchar', '15', null, null, null, null, '0', '0', '0', '0', '1', '0', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1050', '42', '前全局唯一ID', '前一版本数据的guid', 'text', 'p_guid', 'varchar', '15', null, null, null, null, '0', '0', '0', '1', '0', '0', '0', '0', null, 'created', '1', '0', '0', null, '1', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1051', '42', '根全局唯一ID', '原始数据guid', 'text', 'r_guid', 'varchar', '15', null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1052', '42', '更新用户', '更新用户', 'text', 'updated_by', 'varchar', '50', null, null, null, null, '0', '0', '0', '0', '0', '1', '0', '0', null, 'created', '1', '0', '0', null, '1', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1053', '42', '更新日期', '更新日期', 'date', 'updated_date', 'datetime', '1', null, null, null, null, '0', '0', '0', '0', '0', '1', '0', '0', null, 'created', '1', '0', '0', null, '1', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1054', '42', '创建用户', '创建用户', 'text', 'created_by', 'varchar', '50', null, null, null, null, '0', '0', '0', '0', '0', '1', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1055', '42', '创建日期', '创建日期', 'date', 'created_date', 'datetime', '1', null, null, null, null, '0', '0', '0', '0', '0', '1', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1056', '42', '唯一名称', '唯一名称', 'text', 'key_name', 'varchar', '200', null, null, null, null, '1', '1', '1', '0', '1', '0', '0', '0', null, 'created', '1', '0', '1', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1057', '42', '状态', '状态', 'select', 'state', 'int', '15', '9', null, null, null, '2', '1', '2', '0', '0', '0', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1058', '42', '确认日期', '确认日期', 'text', 'fixed_date', 'varchar', '19', null, null, null, null, '4', '1', '4', '1', '0', '0', '0', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1059', '42', '描述说明', '描述说明', 'textArea', 'description', 'varchar', '1000', null, null, null, null, '5', '1', '5', '1', '0', '0', '1', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1060', '42', '编码', '编码', 'text', 'code', 'varchar', '50', null, null, null, null, '3', '1', '3', '0', '0', '0', '1', '0', null, 'created', '1', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1061', '40', '枚举组', null, 'ref', 'id_basekey_cat', 'varchar', '15', '41', '属于', '29', null, '0', '0', '6', '0', '0', null, '1', null, null, 'created', '0', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1062', '40', '值', null, 'text', 'value', 'varchar', '4000', null, null, null, null, '0', '0', '7', '0', '0', null, '1', null, null, 'created', '0', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1063', '40', '父枚举', null, 'ref', 'p_code_id', 'varchar', '50', '40', '属于', null, null, '0', '0', '8', '0', '0', null, '1', null, null, 'created', '0', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1064', '41', '枚举组类型', null, 'ref', 'id_basekey_cat_type', 'varchar', '50', '42', '属于', '29', null, '0', '0', '6', '0', '0', '0', '1', '0', null, 'created', '0', '0', '0', null, '0', null);
INSERT INTO `adm_ci_type_attr` VALUES ('1065', '42', 'CI', null, 'number', 'id_ci_type', 'int', '11', null, null, null, null, '0', '0', '6', '0', '0', null, '1', null, null, 'created', '0', '0', '0', null, '0', null);
	

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

-- adm_basekey_cat_type
INSERT INTO basekey_cat_type SELECT
	CASE length(t.id_adm_basekey_cat_type)
WHEN 1 THEN
	CONCAT(
		'0042_000000000',
		t.id_adm_basekey_cat_type
	)
WHEN 2 THEN
	CONCAT(
		'0042_00000000',
		t.id_adm_basekey_cat_type
	)
WHEN 3 THEN
	CONCAT(
		'0042_0000000',
		t.id_adm_basekey_cat_type
	)
END AS guid,
 NULL,
 NULL,
 NULL,
 NULL,
 NULL,
 NULL,
 t.`name`,
 NULL,
 NULL,
 t.description,
 t.`name`,
 t.ci_type_id
FROM
	adm_basekey_cat_type t
WHERE
	t.type > 2;

-- adm_basekey_cat
INSERT INTO basekey_cat SELECT
	CASE length(t.id_adm_basekey_cat)
WHEN 1 THEN
	CONCAT(
		'0041_000000000',
		t.id_adm_basekey_cat
	)
WHEN 2 THEN
	CONCAT(
		'0041_00000000',
		t.id_adm_basekey_cat
	)
WHEN 3 THEN
	CONCAT(
		'0041_0000000',
		t.id_adm_basekey_cat
	)
END AS guid,
 NULL,
 NULL,
 NULL,
 NULL,
 NULL,
 NULL,
 t.cat_name,
 NULL,
 NULL,
 t.description,
 t.cat_name,
 CASE
WHEN t.id_adm_basekey_cat_type = 1
OR t.id_adm_basekey_cat_type = 2 THEN
	CONCAT('0042_000000000', 3)
WHEN length(t.id_adm_basekey_cat_type) = 1 THEN
	CONCAT(
		'0042_000000000',
		t.id_adm_basekey_cat_type
	)
WHEN length(t.id_adm_basekey_cat_type) = 2 THEN
	CONCAT(
		'0042_00000000',
		t.id_adm_basekey_cat_type
	)
WHEN length(t.id_adm_basekey_cat_type) = 3 THEN
	CONCAT(
		'0042_0000000',
		t.id_adm_basekey_cat_type
	)
END
FROM
	adm_basekey_cat t
WHERE
	t.id_adm_basekey_cat > 11;

-- adm_basekey_code
INSERT INTO basekey_code SELECT
	CASE length(t.id_adm_basekey)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.id_adm_basekey
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.id_adm_basekey
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.id_adm_basekey
	)
END AS guid,
 NULL,
 NULL,
 NULL,
 NULL,
 NULL,
 NULL,
 t.`value`,
 NULL,
 NULL,
 t.code_description,
 t.`code`,
 CASE length(t.id_adm_basekey_cat)
WHEN 1 THEN
	CONCAT(
		'0041_000000000',
		t.id_adm_basekey_cat
	)
WHEN 2 THEN
	CONCAT(
		'0041_00000000',
		t.id_adm_basekey_cat
	)
WHEN 3 THEN
	CONCAT(
		'0041_0000000',
		t.id_adm_basekey_cat
	)
END,
 CASE length(t.group_code_id)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.group_code_id
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.group_code_id
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.group_code_id
	)
ELSE
	NULL
END,
 t.`value`
FROM
	adm_basekey_code t
WHERE
	t.id_adm_basekey_cat > 11;

-- update the attr reference 
-- update select data
UPDATE adm_ci_type_attr t
SET t.input_type = 'ref',
 t.property_type = 'varchar',
 t.length = 50,
 t.reference_id = 40,
 t.reference_name = '使用'
WHERE
	t.input_type = 'select'
AND t.reference_id >= 20;

-- update multiSelect data
UPDATE adm_ci_type_attr t
SET t.input_type = 'multiRef',
 t.property_type = 'varchar',
 t.length = 4000,
 t.reference_id = 40,
 t.reference_name = '关联'
WHERE
	t.input_type = 'multiSelect'
AND t.reference_id >= 20;


-- update ci type zoom leave ID
UPDATE `adm_ci_type` t
SET t.zoom_level_id = 1;

UPDATE `adm_ci_type` t
SET t.zoom_level_id = 2
WHERE
	t.`table_name` IN (
		'basekey_cat_type',
		'basekey_cat',
		'basekey_code'
	);

-- update code to_code to to_guid
-- drop the foreign key adm_basekey_cat_type
ALTER TABLE adm_basekey_cat_type
DROP FOREIGN KEY adm_basekey_cat_type_ci_type_1;

-- drop the foreign key adm_integrate_template_alias
ALTER TABLE adm_integrate_template_alias
DROP FOREIGN KEY fk_adm_integrate_template_alias_adm_ci_type_1;

-- drop the foreign key adm_integrate_template_alias_attr
ALTER TABLE adm_integrate_template_alias_attr
DROP FOREIGN KEY fk_adm_integrate_template_alias_attr_2;

-- drop the foreign key adm_integrate_template_relation
ALTER TABLE adm_integrate_template_relation
DROP FOREIGN KEY fk_adm_integrate_template_relation_attr_1;

-- business_zone_design$business_group
ALTER TABLE business_zone_design$business_group
DROP FOREIGN KEY business_zone_design$business_group_fk_code;

ALTER TABLE business_zone_design$business_group CHANGE  to_code  to_guid VARCHAR(50);

UPDATE business_zone_design$business_group t
SET t.to_guid = 
	CASE length(t.to_guid)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.to_guid
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.to_guid
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.to_guid
	)
ELSE NULL
END;

-- data_center$deploy_environment
ALTER TABLE data_center$deploy_environment
DROP FOREIGN KEY data_center$deploy_environment_fk_code;

ALTER TABLE data_center$deploy_environment CHANGE  to_code  to_guid VARCHAR(50);

UPDATE data_center$deploy_environment t
SET t.to_guid = 
	CASE length(t.to_guid)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.to_guid
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.to_guid
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.to_guid
	)
ELSE NULL
END;


-- resource_set$deploy_environment
ALTER TABLE resource_set$deploy_environment
DROP FOREIGN KEY resource_set$deploy_environment_fk_code;

ALTER TABLE resource_set$deploy_environment CHANGE  to_code  to_guid VARCHAR(50);

UPDATE resource_set$deploy_environment t
SET t.to_guid = 
	CASE length(t.to_guid)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.to_guid
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.to_guid
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.to_guid
	)
ELSE NULL
END;

-- resource_set_design$cluster_type
ALTER TABLE resource_set_design$cluster_type
DROP FOREIGN KEY resource_set_design$cluster_type_fk_code;

ALTER TABLE resource_set_design$cluster_type CHANGE  to_code  to_guid VARCHAR(50);

UPDATE resource_set_design$cluster_type t
SET t.to_guid = 
	CASE length(t.to_guid)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.to_guid
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.to_guid
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.to_guid
	)
ELSE NULL
END;


-- unit$unit_type
ALTER TABLE unit$unit_type
DROP FOREIGN KEY unit$unit_type_fk_code;

ALTER TABLE unit$unit_type CHANGE  to_code  to_guid VARCHAR(50);

UPDATE unit$unit_type t
SET t.to_guid = 
	CASE length(t.to_guid)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.to_guid
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.to_guid
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.to_guid
	)
ELSE NULL
END;

-- alter table the select enum data_center
-- system_design
ALTER TABLE system_design MODIFY business_group VARCHAR(50);

UPDATE system_design t
SET t.business_group = 
	CASE length(t.business_group)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.business_group
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.business_group
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.business_group
	)
ELSE NULL
END;

-- subsys_design
ALTER TABLE subsys_design MODIFY business_group VARCHAR(50);

UPDATE subsys_design t
SET t.business_group = 
	CASE length(t.business_group)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.business_group
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.business_group
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.business_group
	)
ELSE NULL
END;

-- unit_design
ALTER TABLE unit_design MODIFY unit_design_type VARCHAR(50);
ALTER TABLE unit_design MODIFY across_resource_set VARCHAR(50);
ALTER TABLE unit_design MODIFY protocol VARCHAR(50);

UPDATE unit_design t
SET t.unit_design_type = 
	CASE length(t.unit_design_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.unit_design_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.unit_design_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.unit_design_type
	)
ELSE NULL
END,
t.across_resource_set = 
	CASE length(t.across_resource_set)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.across_resource_set
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.across_resource_set
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.across_resource_set
	)
ELSE NULL
END,
t.protocol = 
	CASE length(t.protocol)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.protocol
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.protocol
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.protocol
	)
ELSE NULL
END;


-- service_design
ALTER TABLE service_design MODIFY service_type VARCHAR(50);
ALTER TABLE service_design MODIFY service_invoke_type VARCHAR(50);
ALTER TABLE service_design MODIFY service_nature VARCHAR(50);

UPDATE service_design t
SET t.service_type = 
	CASE length(t.service_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.service_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.service_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.service_type
	)
ELSE NULL
END,
t.service_invoke_type = 
	CASE length(t.service_invoke_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.service_invoke_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.service_invoke_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.service_invoke_type
	)
ELSE NULL
END,
t.service_nature = 
	CASE length(t.service_nature)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.service_nature
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.service_nature
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.service_nature
	)
ELSE NULL
END;

-- invoke_design
ALTER TABLE invoke_design MODIFY invoke_type VARCHAR(50);

UPDATE invoke_design t
SET t.invoke_type = 
	CASE length(t.invoke_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.invoke_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.invoke_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.invoke_type
	)
ELSE NULL
END;

-- we_system
ALTER TABLE we_system MODIFY deploy_environment VARCHAR(50);

UPDATE we_system t
SET t.deploy_environment = 
	CASE length(t.deploy_environment)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.deploy_environment
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.deploy_environment
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.deploy_environment
	)
ELSE NULL
END;

-- invoke
ALTER TABLE invoke MODIFY invoke_type VARCHAR(50);

UPDATE invoke t
SET t.invoke_type = 
	CASE length(t.invoke_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.invoke_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.invoke_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.invoke_type
	)
ELSE NULL
END;


-- business_app_instance
ALTER TABLE business_app_instance MODIFY unit_type VARCHAR(50);

UPDATE business_app_instance t
SET t.unit_type = 
	CASE length(t.unit_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.unit_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.unit_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.unit_type
	)
ELSE NULL
END;

-- resource_instance
ALTER TABLE resource_instance MODIFY unit_type VARCHAR(50);
ALTER TABLE resource_instance MODIFY resource_instance_type VARCHAR(50);
ALTER TABLE resource_instance MODIFY resource_system VARCHAR(50);
ALTER TABLE resource_instance MODIFY resource_instance_spec VARCHAR(50);
ALTER TABLE resource_instance MODIFY cluster_node_type VARCHAR(50);
ALTER TABLE resource_instance MODIFY charge_type VARCHAR(50);

UPDATE resource_instance t
SET t.unit_type = 
	CASE length(t.unit_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.unit_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.unit_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.unit_type
	)
ELSE NULL
END,
t.resource_instance_type = 
	CASE length(t.resource_instance_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.resource_instance_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.resource_instance_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.resource_instance_type
	)
ELSE NULL
END,
t.resource_system = 
	CASE length(t.resource_system)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.resource_system
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.resource_system
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.resource_system
	)
ELSE NULL
END,
t.resource_instance_spec = 
	CASE length(t.resource_instance_spec)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.resource_instance_spec
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.resource_instance_spec
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.resource_instance_spec
	)
ELSE NULL
END,
t.cluster_node_type = 
	CASE length(t.cluster_node_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.cluster_node_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.cluster_node_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.cluster_node_type
	)
ELSE NULL
END,
t.charge_type = 
	CASE length(t.charge_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.charge_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.charge_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.charge_type
	)
ELSE NULL
END;


-- block_storage
ALTER TABLE block_storage MODIFY block_storage_type VARCHAR(50);
ALTER TABLE block_storage MODIFY charge_type VARCHAR(50);
ALTER TABLE block_storage MODIFY file_system VARCHAR(50);

UPDATE block_storage t
SET t.block_storage_type = 
	CASE length(t.block_storage_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.block_storage_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.block_storage_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.block_storage_type
	)
ELSE NULL
END,
t.charge_type = 
	CASE length(t.charge_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.charge_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.charge_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.charge_type
	)
ELSE NULL
END,
t.file_system = 
	CASE length(t.file_system)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.file_system
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.file_system
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.file_system
	)
ELSE NULL
END;

-- ip_address
ALTER TABLE ip_address MODIFY ip_address_usage VARCHAR(50);

UPDATE ip_address t
SET t.ip_address_usage = 
	CASE length(t.ip_address_usage)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.ip_address_usage
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.ip_address_usage
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.ip_address_usage
	)
ELSE NULL
END;

-- network_zone
ALTER TABLE network_zone MODIFY network_zone_layer VARCHAR(50);
ALTER TABLE network_zone MODIFY network_zone_type VARCHAR(50);

UPDATE network_zone t
SET t.network_zone_layer = 
	CASE length(t.network_zone_layer)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.network_zone_layer
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.network_zone_layer
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.network_zone_layer
	)
ELSE NULL
END,
t.network_zone_type = 
	CASE length(t.network_zone_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.network_zone_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.network_zone_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.network_zone_type
	)
ELSE NULL
END;

-- network_zone_link
ALTER TABLE network_zone_link MODIFY network_zone_link_type VARCHAR(50);

UPDATE network_zone_link t
SET t.network_zone_link_type = 
	CASE length(t.network_zone_link_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.network_zone_link_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.network_zone_link_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.network_zone_link_type
	)
ELSE NULL
END;

-- resource_set
ALTER TABLE resource_set MODIFY cluster_type VARCHAR(50);
ALTER TABLE resource_set MODIFY init_source_type VARCHAR(50);

UPDATE resource_set t
SET t.cluster_type = 
	CASE length(t.cluster_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.cluster_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.cluster_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.cluster_type
	)
ELSE NULL
END,
t.init_source_type = 
	CASE length(t.init_source_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.init_source_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.init_source_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.init_source_type
	)
ELSE NULL
END;

-- network_segment
ALTER TABLE network_segment MODIFY network_segment_usage VARCHAR(50);

UPDATE network_segment t
SET t.network_segment_usage = 
	CASE length(t.network_segment_usage)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.network_segment_usage
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.network_segment_usage
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.network_segment_usage
	)
ELSE NULL
END;

-- network_zone_design
ALTER TABLE network_zone_design MODIFY network_zone_layer VARCHAR(50);

UPDATE network_zone_design t
SET t.network_zone_layer = 
	CASE length(t.network_zone_layer)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.network_zone_layer
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.network_zone_layer
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.network_zone_layer
	)
ELSE NULL
END;

-- network_zone_link_design
ALTER TABLE network_zone_link_design MODIFY network_zone_link_type VARCHAR(50);

UPDATE network_zone_link_design t
SET t.network_zone_link_type = 
	CASE length(t.network_zone_link_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.network_zone_link_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.network_zone_link_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.network_zone_link_type
	)
ELSE NULL
END;

-- resource_set_design
ALTER TABLE resource_set_design MODIFY unit_design_type VARCHAR(50);

UPDATE resource_set_design t
SET t.unit_design_type = 
	CASE length(t.unit_design_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.unit_design_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.unit_design_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.unit_design_type
	)
ELSE NULL
END;

-- network_segment_design
ALTER TABLE network_segment_design MODIFY network_segment_usage VARCHAR(50);

UPDATE network_segment_design t
SET t.network_segment_usage = 
	CASE length(t.network_segment_usage)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.network_segment_usage
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.network_segment_usage
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.network_segment_usage
	)
ELSE NULL
END;

-- default_security_policy
ALTER TABLE default_security_policy MODIFY security_policy_type VARCHAR(50);
ALTER TABLE default_security_policy MODIFY security_policy_action VARCHAR(50);
ALTER TABLE default_security_policy MODIFY protocol VARCHAR(50);

UPDATE default_security_policy t
SET t.security_policy_type = 
	CASE length(t.security_policy_type)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.security_policy_type
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.security_policy_type
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.security_policy_type
	)
ELSE NULL
END,
t.security_policy_action = 
	CASE length(t.security_policy_action)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.security_policy_action
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.security_policy_action
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.security_policy_action
	)
ELSE NULL
END,
t.protocol = 
	CASE length(t.protocol)
WHEN 1 THEN
	CONCAT(
		'0040_000000000',
		t.protocol
	)
WHEN 2 THEN
	CONCAT(
		'0040_00000000',
		t.protocol
	)
WHEN 3 THEN
	CONCAT(
		'0040_0000000',
		t.protocol
	)
ELSE NULL
END;

SET FOREIGN_KEY_CHECKS=1;
