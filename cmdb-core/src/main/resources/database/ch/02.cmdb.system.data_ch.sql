
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Records of adm_basekey_cat
-- ----------------------------
INSERT INTO `adm_basekey_cat` VALUES ('1', 'ci_layer', '层级', null, '1', null);
INSERT INTO `adm_basekey_cat` VALUES ('2', 'ci_catalog', '目录', null, '1', null);
INSERT INTO `adm_basekey_cat` VALUES ('3', 'ci_zoom_level', 'Zoom', null, '1', null);
INSERT INTO `adm_basekey_cat` VALUES ('4', 'ci_attr_type', '属性类型', null, '1', null);
INSERT INTO `adm_basekey_cat` VALUES ('5', 'ci_attr_enum_type', '枚举类型', null, '1', null);
INSERT INTO `adm_basekey_cat` VALUES ('6', 'ci_attr_ref_type', '引用类型', null, '1', null);
INSERT INTO `adm_basekey_cat` VALUES ('7', 'ci_state_design', '设计类CI状态', null, '1', null);
INSERT INTO `adm_basekey_cat` VALUES ('8', 'ci_state_create', '可创建类CI状态', null, '1', null);
INSERT INTO `adm_basekey_cat` VALUES ('9', 'ci_state_start_stop', '可起停类CI状态', null, '1', null);
INSERT INTO `adm_basekey_cat` VALUES ('10', 'state_transition_operation', '状态迁移操作', null, '1', null);
INSERT INTO `adm_basekey_cat` VALUES ('11', 'state_transition_action', '状态迁移动作', null, '1', null);
INSERT INTO `adm_basekey_cat` VALUES ('12', 'tab_of_planning_design', '规划设计CI标签', null, '1', null);
INSERT INTO `adm_basekey_cat` VALUES ('13', 'tab_query_of_planning_design', '规划设计标签查询', null, '1', '12');
INSERT INTO `adm_basekey_cat` VALUES ('14', 'tab_of_resourse_planning', '资源规划CI标签', null, '1', null);
INSERT INTO `adm_basekey_cat` VALUES ('15', 'tab_query_of_resourse_planning', '资源规划标签查询', null, '1', '14');
INSERT INTO `adm_basekey_cat` VALUES ('16', 'tab_of_architecture_design', '架构设计CI标签', null, '1', null);
INSERT INTO `adm_basekey_cat` VALUES ('17', 'tab_query_of_architecture_design', '架构设计标签查询', null, '1', '16');
INSERT INTO `adm_basekey_cat` VALUES ('18', 'tab_of_deploy_design', '部署设计CI标签', null, '1', null);
INSERT INTO `adm_basekey_cat` VALUES ('19', 'tab_query_of_deploy_design', '部署设计标签查询', null, '1', '18');
INSERT INTO `adm_basekey_cat` VALUES ('20', 'business_group', '业务群组', null, '2', null);
INSERT INTO `adm_basekey_cat` VALUES ('21', 'unit_design_type', '单元设计类型', null, '2', null);
INSERT INTO `adm_basekey_cat` VALUES ('22', 'unit_type', '单元类型', null, '2', '21');
INSERT INTO `adm_basekey_cat` VALUES ('24', 'deploy_environment', '部署环境', null, '2', null);
INSERT INTO `adm_basekey_cat` VALUES ('25', 'charge_type', '计费模式', null, '2', null);
INSERT INTO `adm_basekey_cat` VALUES ('26', 'network_zone_type', '网络区域类型', null, '2', null);
INSERT INTO `adm_basekey_cat` VALUES ('27', 'network_zone_layer', '网络区域层级', null, '2', null);
INSERT INTO `adm_basekey_cat` VALUES ('28', 'service_type', '服务类型', null, '2', null);
INSERT INTO `adm_basekey_cat` VALUES ('29', 'invoke_type', '调用类型', null, '2', null);
INSERT INTO `adm_basekey_cat` VALUES ('30', 'cluster_type', '集群类型', null, '2', '21');
INSERT INTO `adm_basekey_cat` VALUES ('33', 'network_segment_usage', '网段用途', null, '2', null);
INSERT INTO `adm_basekey_cat` VALUES ('34', 'network_zone_link_type', '网络连接类型', null, '2', null);
INSERT INTO `adm_basekey_cat` VALUES ('35', 'across_resource_set', '跨资源集合部署', null, '5', null);
INSERT INTO `adm_basekey_cat` VALUES ('36', 'service_dns_domain', '服务域名域', null, '11', null);
INSERT INTO `adm_basekey_cat` VALUES ('37', 'diff_conf_variable', '差异配置变量', null, '14', null);
INSERT INTO `adm_basekey_cat` VALUES ('38', 'resource_instance_type', '资源实例类型', null, '17', '21');
INSERT INTO `adm_basekey_cat` VALUES ('39', 'resource_system', '资源系统', null, '17', '21');
INSERT INTO `adm_basekey_cat` VALUES ('40', 'resource_instance_spec', '资源实例规格', null, '17', '21');
INSERT INTO `adm_basekey_cat` VALUES ('41', 'cluster_node_type', '集群节点类型', null, '17', '30');
INSERT INTO `adm_basekey_cat` VALUES ('42', 'block_storage_type', '块存储类型', null, '18', null);
INSERT INTO `adm_basekey_cat` VALUES ('43', 'ip_address_usage', 'IP地址用途', null, '19', null);
INSERT INTO `adm_basekey_cat` VALUES ('44', 'file_system', '文件系统', null, '18', null);
INSERT INTO `adm_basekey_cat` VALUES ('45', 'init_source_type', '初始化源类型', null, '2', null);
INSERT INTO `adm_basekey_cat` VALUES ('46', 'data_center_type', '数据中心类型', null, '20', null);
INSERT INTO `adm_basekey_cat` VALUES ('47', 'protocol', '协议', null, '2', null);
INSERT INTO `adm_basekey_cat` VALUES ('48', 'service_invoke_type', '服务调用类型', null, '2', '28');
INSERT INTO `adm_basekey_cat` VALUES ('49', 'service_nature', '服务特性', null, '6', null);
INSERT INTO `adm_basekey_cat` VALUES ('50', 'network_zone_type', '网络区域类型', null, '3', '46');
INSERT INTO `adm_basekey_cat` VALUES ('51', 'security_policy_type', '安全规则类型', null, '40', null);
INSERT INTO `adm_basekey_cat` VALUES ('52', 'security_policy_action', '安全规则行为', null, '40', null);

-- ----------------------------
-- Records of adm_basekey_cat_type
-- ----------------------------
INSERT INTO `adm_basekey_cat_type` VALUES ('1', 'sys', null, null, '1');
INSERT INTO `adm_basekey_cat_type` VALUES ('2', 'common', null, null, '2');
INSERT INTO `adm_basekey_cat_type` VALUES ('3', 'system_design', '系统设计', '1', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('4', 'subsys_design', '子系统设计', '2', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('5', 'unit_design', '单元设计', '3', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('6', 'service_design', '服务设计', '4', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('7', 'invoke_design', '调用设计', '5', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('8', 'service_invoke_seq_design', '服务调用时序设计', '6', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('9', 'we_system', '系统', '7', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('10', 'subsys', '子系统', '8', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('11', 'unit', '单元', '9', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('12', 'service', '服务', '10', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('13', 'invoke', '调用', '11', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('14', 'deploy_package', '部署包', '12', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('16', 'business_app_instance', '业务应用实例', '14', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('17', 'resource_instance', '资源实例', '15', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('18', 'block_storage', '块存储', '16', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('19', 'ip_address', 'IP地址', '17', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('20', 'data_center', '数据中心', '18', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('21', 'network_zone', '网络区域', '19', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('22', 'network_zone_link', '网络区域连接', '20', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('23', 'business_zone', '业务区域', '21', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('24', 'resource_set', '资源集合', '22', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('25', 'network_segment', '网段', '23', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('26', 'routing_rule', '路由规则', '24', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('27', 'data_center_design', '数据中心设计', '25', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('28', 'network_zone_design', '网络区域设计', '26', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('29', 'network_zone_link_design', '网络区域连接设计', '27', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('30', 'business_zone_design', '业务区域设计', '28', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('31', 'resource_set_design', '资源集合设计', '29', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('32', 'network_segment_design', '网段设计', '30', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('33', 'routing_rule_design', '路由规则设计', '31', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('34', 'diff_configuration', '差异配置', '32', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('37', 'service_invoke_design', '服务调用设计', '35', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('38', 'resource_set_invoke_desig', '资源集合调用设计', '36', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('40', '默认安全策略', null, '38', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('41', '直连服务调用', null, '39', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('42', '枚举', null, '40', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('43', '枚举组', null, '41', '3');
INSERT INTO `adm_basekey_cat_type` VALUES ('44', '枚举组类型', null, '42', '3');

-- ----------------------------
-- Records of adm_basekey_code
-- ----------------------------
INSERT INTO `adm_basekey_code` VALUES ('1', '1', 'AAL', '应用架构层', null, '应用架构层', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('2', '1', 'ADL', '应用部署层', null, '应用部署层', '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('3', '1', 'SRL', '资源运行层', null, '资源运行层', '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('4', '1', 'RPL', '资源规划层', null, '资源规划层', '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('5', '1', 'PDL', '规划设计层', null, '规划设计层', '7', 'active');
INSERT INTO `adm_basekey_code` VALUES ('6', '2', 'AAL', '应用架构层', null, '应用架构层', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('7', '2', 'ADL', '应用部署层', null, '应用部署层', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('8', '2', 'SRL', '资源运行层', null, '资源运行层', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('9', '2', 'RPL', '资源规划层', null, '资源规划层', '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('10', '2', 'PDL', '规划设计层', null, '规划设计层', '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('11', '3', '1', '1', null, 'Zoom Level 1', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('12', '3', '2', '2', null, 'Zoom Level 2', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('13', '3', '3', '3', null, 'Zoom Level 3', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('14', '3', '4', '4', null, 'Zoom Level 4', '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('15', '3', '5', '5', null, 'Zoom Level 5', '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('16', '4', 'text', '文本', null, '文本', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('17', '4', 'area', '文本域', null, '文本域', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('18', '4', 'number', '整型数字', null, '整型数字', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('19', '4', 'regular_text', '正则校验文本', null, '正则校验文本', '4', 'inactive');
INSERT INTO `adm_basekey_code` VALUES ('20', '4', 'datetime', '时间', null, '时间', '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('21', '4', 'select', '下拉选择', null, '下拉选择', '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('22', '4', 'multi_enum', '多选下拉选择', null, '多选下拉选择', '7', 'active');
INSERT INTO `adm_basekey_code` VALUES ('23', '4', 'ref', '引用', null, '引用', '8', 'active');
INSERT INTO `adm_basekey_code` VALUES ('24', '4', 'multi_ref', '多选引用', null, '多选引用', '9', 'active');
INSERT INTO `adm_basekey_code` VALUES ('25', '4', '预留2', '预留2', null, '预留2', '10', 'inactive');
INSERT INTO `adm_basekey_code` VALUES ('26', '4', '预留3', '预留3', null, '预留3', '11', 'inactive');
INSERT INTO `adm_basekey_code` VALUES ('27', '5', 'common', '公共枚举', null, '公共枚举', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('28', '5', 'private', '私有枚举', null, '私有枚举', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('29', '6', 'belong', '属于', null, '属于', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('30', '6', 'use', '使用', null, '使用', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('31', '6', 'depend', '依赖', null, '依赖', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('32', '6', 'relation', '关联', null, '关联', '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('33', '6', 'realize', '实现', null, '实现', '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('34', '7', 'new', '新增', null, null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('35', '7', 'update', '更新', null, null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('36', '7', 'delete', '删除', null, null, '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('37', '8', 'created', '创建', null, null, '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('38', '8', 'change', '变更', null, null, '7', 'active');
INSERT INTO `adm_basekey_code` VALUES ('39', '8', 'destroyed', '销毁', null, null, '8', 'active');
INSERT INTO `adm_basekey_code` VALUES ('40', '9', 'created', '创建', null, null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('41', '9', 'startup', '启动', null, null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('42', '9', 'change', '变更', null, null, '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('43', '9', 'stoped', '停止', null, null, '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('44', '9', 'destroyed', '销毁', null, null, '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('45', '10', 'insert', '添加', null, null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('46', '10', 'update', '更新', null, null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('47', '10', 'discard', '放弃', null, null, '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('48', '10', 'delete', '删除', null, null, '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('49', '10', 'confirm', '确认', null, null, '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('50', '10', 'startup', '启动', null, null, '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('51', '10', 'stop', '停止', null, null, '7', 'active');
INSERT INTO `adm_basekey_code` VALUES ('52', '11', 'insert', '插入', null, null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('53', '11', 'insert-update', '插入-更新', null, null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('54', '11', 'delete', '删除', null, null, '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('55', '11', 'update-delete', '更新-删除', null, null, '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('56', '11', 'update', '更新', null, null, '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('57', '11', 'confirm', '确认', null, null, '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('58', '20', 'business_group_A', '业务群组A', null, '业务群组A', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('59', '20', 'business_group_B', '业务群组B', null, '业务群组B', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('60', '21', 'tomcat', 'TOMCAT', null, 'tomcat', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('61', '21', 'mysql', 'MQSQL', null, 'mysql', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('62', '21', 'redis', 'REDIS', null, 'redis', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('63', '22', 'tomcat7', 'TOMCAT 7.x', '60', 'tomcat_7', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('64', '22', 'tomcat8', 'TOMCAT 8.x', '60', 'tomcat_8', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('65', '22', '5.6', 'MySQL 5.6', '61', 'mysql_7', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('66', '22', '5.7', 'MySQL 5.7', '61', 'mysql_8', '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('67', '22', '3.2', 'REDIS 3.2', '62', 'redis_4', '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('68', '22', '4.0', 'REDIS 4.0', '62', 'redis_5', '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('69', '24', 'PRD', '生产环境', null, '生产环境', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('70', '24', 'DR', '容灾环境', null, '容灾环境', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('71', '24', 'STGi', 'STGi环境', null, 'STGi环境', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('72', '24', 'STGk', 'STGk环境', null, 'STGk环境', '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('73', '24', 'INTi', 'INTi环境', null, 'INTi环境', '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('74', '24', 'INTk', 'INTk环境', null, 'INTk环境', '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('75', '24', 'DEV', '开发环境', null, '开发环境', '7', 'active');
INSERT INTO `adm_basekey_code` VALUES ('76', '25', 'PERPAID', '包年包月', null, '包年包月', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('77', '25', 'POSTPAID_BY_HOUR', '按量计费', null, '按量计费', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('78', '27', 'client_layer', '客户层', null, '客户层', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('79', '27', 'link_layer', '接入层', null, '接入层', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('80', '27', 'buss_layer', '业务层', null, '业务层', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('82', '28', 'RMB', 'RMB总线', null, 'tcp短连接', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('83', '28', 'DIRECT', '直连访问', null, 'udp', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('84', '29', 'sync_invoke', '同步调用', null, '同步调用', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('85', '29', 'sync_request', '同步请求', null, '同步请求', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('86', '29', 'async_respond', '异步返回', null, '异步返回', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('87', '30', 'loadblacne', '负载均衡', '60', '负载均衡', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('88', '30', 'keepalived', 'keepalived', '60', 'keepalived', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('89', '30', 'mysql_ms', 'MYSQL主从', '61', 'mysql_主从', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('90', '30', 'mysql_alone', 'MYSQL单机', '61', 'mysql_单机', '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('91', '30', 'redis_ms', 'REDIS主从', '62', 'redis_主从', '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('92', '30', 'redis_cluster', 'REDIS集群', '62', 'redis_单机', '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('94', '33', 'internet', '互联网', null, null, '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('95', '33', 'data_center', '数据中心', null, '数据中心', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('96', '33', 'network_zone', '网络区域', null, '网络区域', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('97', '33', 'business_zone', '业务区域', null, '业务区域', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('98', '33', 'resource_set', '资源集合', null, '资源集合', '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('101', '34', 'PEERCONNECTION', '对等连接', null, '对等连接', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('102', '34', 'NAT', 'NAT网关', null, 'NAT网关', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('103', '35', 'single', '单资源集合', null, '单资源集合', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('104', '35', 'local', '同城资源集合', null, '同城资源集合', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('105', '35', 'remote', '异地资源集合', null, '异地资源集合', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('106', '36', 'app.demo.com', '内网应用域名', null, '内网应用域名', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('107', '36', 'db.demo.com', '内网数据库域名', null, '内网数据库域名', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('108', '36', 'cache.demo.com', '内网缓存域名', null, '内网缓存域名', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('109', '36', 'demo.com', '外网应用域名', null, '外网应用域名', '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('110', '38', 'standard', '标准型CVM', '60', '标准型CVM', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('111', '38', 'memory', '内存型CVM', '60', '内存型CVM', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('112', '38', '0', '异步同步类型', '61', '基础版mysql', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('113', '38', '2', '强同步类型', '61', '高可用版mysql', '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('114', '38', '3', '3.2主从类型', '62', '基础版redis', '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('115', '38', '4', '3.2集群类型', '62', '高可用版redis', '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('116', '39', 'img-8toqc6s3', 'CentOs 7.4 64位', '60', 'CentOs 7.2 64位', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('117', '39', 'img-6ns5om13', 'CentOs 6.8 64位', '60', 'CentOs 6.8 64位', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('118', '39', '5.6', 'MySQL 5.6', '61', 'mysql5.5', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('119', '39', '5.7', 'MySQL 5.7', '61', 'mysql5.6', '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('120', '39', 'REDIS3.2', 'REDIS 3.2', '62', 'redis3.0', '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('121', '39', 'REDIS4.0', 'REDIS 4.0', '62', 'redis4.0', '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('122', '40', '1C2G', '1核2GB', '60', '1核2GB', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('123', '40', '2C4G', '2核4GB', '60', '2核4GB', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('124', '40', '2000', '2GB', '61', '1核2GB', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('125', '40', '4000', '4GB', '61', '2核4GB', '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('126', '40', '2048', '2GB', '62', '4GB', '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('127', '40', '4096', '4GB', '62', '8GB', '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('128', '41', 'loadblance_node', '负载均衡节点', '87', '负载均衡节点', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('129', '41', 'keepalived_master', 'Keepalived主节点', '88', 'Keepalived主节点', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('130', '41', 'keepalived_slave', 'Keepalived从节点', '88', 'Keepalived从节点', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('131', '41', 'master', 'MYSQL主节点', '89', 'mysql主节点', '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('132', '41', 'ro', 'MYSQL只读节点', '89', 'mysql从节点', '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('133', '41', 'master', 'REDIS读写节点', '90', 'mysql节点', '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('134', '41', 'redis_node', '主从统一节点', '91', 'redis主节点', '7', 'active');
INSERT INTO `adm_basekey_code` VALUES ('136', '41', 'redis_node', '集群节点', '92', 'redis节点', '9', 'active');
INSERT INTO `adm_basekey_code` VALUES ('137', '42', 'CLOUD_PREMIUM', '高性能', null, '高性能', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('138', '42', 'CLOUD_BASIC', '高容量', null, '高容量', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('139', '42', 'CLOUD_SSD', 'SSD', null, 'SSD', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('140', '43', '外网IP', '外网IP', null, '业务IP', '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('141', '43', '网关IP', '网关IP', null, '网关IP', '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('142', '43', '广播IP', '广播IP', null, '广播IP', '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('143', '43', '资源IP', '资源IP', null, '外网IP', '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('254', '20', 'business_group_mt', '业务群组MT ', null, null, '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('256', '34', 'VPN', 'VPN网关', null, null, '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('257', '21', 'nginx', 'NGINX', null, null, '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('258', '22', 'nginx1.8', 'NGINX 1.8', '257', null, '7', 'active');
INSERT INTO `adm_basekey_code` VALUES ('260', '12', '26', '网络区域设计', null, null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('261', '12', '27', '网络区域连接设计', null, null, '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('262', '12', '28', '业务区域设计', null, null, '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('263', '12', '29', '资源集合设计', null, null, '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('264', '12', '36', '资源集合调用设计', null, null, '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('265', '21', 'bdp', 'BDP', null, null, '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('266', '22', 'hadoop_2.0', 'hadoop_2.0', '265', null, '8', 'active');
INSERT INTO `adm_basekey_code` VALUES ('267', '20', 'business_group_cs', '业务群组CS', null, null, '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('268', '39', 'img-31tjrtph11', 'CentOs 7.2 64位', '257', null, '7', 'active');
INSERT INTO `adm_basekey_code` VALUES ('269', '38', 'standard', '标准型CVM', '257', null, '7', 'active');
INSERT INTO `adm_basekey_code` VALUES ('270', '40', '1C2G', '1核2GB', '257', null, '7', 'active');
INSERT INTO `adm_basekey_code` VALUES ('272', '13', 'guid_of_network_zone_design', '[{\"ciTypeId\":26},{\"ciTypeId\":25,\"parentRs\":{\"attrId\": 457,\"isReferedFromParent\": 1}}]', '260', null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('273', '44', 'ext3', 'EXT3', null, null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('274', '39', 'img-pecg18g2', '自带监控Agent CentOs ', '60', null, '8', 'active');
INSERT INTO `adm_basekey_code` VALUES ('275', '45', 'LOCAL', '本地文件', null, null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('276', '45', 'S3', 'S3文件', null, null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('277', '45', 'USER_PARAM', '上传脚本内容', null, null, '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('279', '30', 'bdpcluster', '大数据集群', '265', null, '7', 'active');
INSERT INTO `adm_basekey_code` VALUES ('280', '21', 'unknown', '未知', null, null, '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('281', '22', 'nonstandard', '非标准', '280', null, '9', 'active');
INSERT INTO `adm_basekey_code` VALUES ('282', '30', 'multi-node', '多节点', '280', null, '8', 'active');
INSERT INTO `adm_basekey_code` VALUES ('283', '41', 'anynode', '任一节点', '282', null, '10', 'active');
INSERT INTO `adm_basekey_code` VALUES ('284', '13', 'guid_of_network_zone_link_design', '[{\"ciTypeId\":27},{\"ciTypeId\":26,\"parentRs\":{\"attrId\":471,\"isReferedFromParent\":1}},{\"ciTypeId\":25,\"parentRs\":{\"attrId\":457,\"isReferedFromParent\":1}}]', '261', null, '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('285', '13', 'guid_of_business_zone_design', '[{\"ciTypeId\":28},{\"ciTypeId\":26,\"parentRs\":{\"attrId\":486,\"isReferedFromParent\":1}},{\"ciTypeId\":25,\"parentRs\":{\"attrId\":457,\"isReferedFromParent\":1}}]', '262', null, '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('287', '13', 'guid_of_resource_set_design', '[{\"ciTypeId\":29},{\"ciTypeId\":28,\"parentRs\":{\"attrId\":500,\"isReferedFromParent\":1}},{\"ciTypeId\":26,\"parentRs\":{\"attrId\":486,\"isReferedFromParent\":1}},{\"ciTypeId\":25,\"parentRs\":{\"attrId\":457,\"isReferedFromParent\":1}}]', '263', null, '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('288', '13', 'guid_of_resource_set_invoke_design', '[{\"ciTypeId\":36},{\"ciTypeId\":29,\"parentRs\":{\"attrId\":923,\"isReferedFromParent\":1}},{\"ciTypeId\":28,\"parentRs\":{\"attrId\":500,\"isReferedFromParent\":1}},{\"ciTypeId\":26,\"parentRs\":{\"attrId\":486,\"isReferedFromParent\":1}},{\"ciTypeId\":25,\"parentRs\":{\"attrId\":457,\"isReferedFromParent\":1}}]', '264', null, '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('289', '14', '23', '网段', null, null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('290', '14', '19', '网络区域', null, null, '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('291', '14', '20', '网络区域连接', null, null, '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('292', '14', '21', '业务区域', null, null, '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('293', '14', '22', '资源集合', null, null, '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('294', '14', '37', '资源集合调用', null, null, '7', 'active');
INSERT INTO `adm_basekey_code` VALUES ('295', '16', '2', '子系统设计', null, null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('296', '16', '3', '单元设计', null, null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('297', '16', '4', '服务设计', null, null, '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('298', '16', '5', '调用设计', null, null, '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('299', '16', '6', '服务调用时序设计', null, null, '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('300', '18', '8', '子系统', null, null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('301', '18', '9', '单元', null, null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('303', '18', '11', '调用', null, null, '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('304', '18', '14', '业务应用实例', null, null, '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('305', '14', '15', '资源实例', null, null, '9', 'active');
INSERT INTO `adm_basekey_code` VALUES ('306', '14', '16', '块存储', null, null, '10', 'active');
INSERT INTO `adm_basekey_code` VALUES ('307', '17', 'guid_of_subsys_design', '[{\"ciTypeId\":2},{\"ciTypeId\":1,\"parentRs\":{\"attrId\": 27,\"isReferedFromParent\":1}}]', '295', null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('308', '17', 'guid_of_unit_design', '[{\"ciTypeId\":3},{\"ciTypeId\":2,\"parentRs\":{\"attrId\": 43,\"isReferedFromParent\":1}},{\"ciTypeId\":1,\"parentRs\":{\"attrId\": 27,\"isReferedFromParent\":1}}]', '296', null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('309', '17', 'guid_of_service_design', '[{\"ciTypeId\":4},{\"ciTypeId\":3,\"parentRs\":{\"attrId\": 60,\"isReferedFromParent\":1}},{\"ciTypeId\":2,\"parentRs\":{\"attrId\": 43,\"isReferedFromParent\":1}},{\"ciTypeId\":1,\"parentRs\":{\"attrId\": 27,\"isReferedFromParent\":1}}]', '297', null, '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('310', '17', 'guid_of_invoke_design', '[{\"ciTypeId\":5},{\"ciTypeId\":3,\"parentRs\":{\"attrId\": 76,\"isReferedFromParent\":1}},{\"ciTypeId\":2,\"parentRs\":{\"attrId\": 43,\"isReferedFromParent\":1}},{\"ciTypeId\":1,\"parentRs\":{\"attrId\": 27,\"isReferedFromParent\":1}}]', '298', null, '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('311', '17', 'guid_of_invoke_seq_design', '[{\"ciTypeId\":6},{\"ciTypeId\":1,\"parentRs\":{\"attrId\": 91,\"isReferedFromParent\":1}}]', '299', null, '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('312', '19', 'guid_of_subsys', '[{\"ciTypeId\":8},{\"ciTypeId\":7,\"parentRs\":{\"attrId\": 120,\"isReferedFromParent\":1}}]', '300', null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('313', '19', 'guid_of_unit', '[{\"ciTypeId\":9},{\"ciTypeId\":8,\"parentRs\":{\"attrId\": 136,\"isReferedFromParent\":1}},{\"ciTypeId\":7,\"parentRs\":{\"attrId\": 120,\"isReferedFromParent\":1}}]', '301', null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('315', '19', 'guid_of_invoke', '[{\"ciTypeId\":11},{\"ciTypeId\":9,\"parentRs\":{\"attrId\": 175,\"isReferedFromParent\":1}},{\"ciTypeId\":8,\"parentRs\":{\"attrId\": 136,\"isReferedFromParent\":1}},{\"ciTypeId\":7,\"parentRs\":{\"attrId\": 120,\"isReferedFromParent\":1}}]', '303', null, '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('316', '19', 'guid_of_business_app_instance', '[{\"ciTypeId\":14},{\"ciTypeId\":9,\"parentRs\":{\"attrId\": 236,\"isReferedFromParent\":1}},{\"ciTypeId\":8,\"parentRs\":{\"attrId\": 136,\"isReferedFromParent\":1}},{\"ciTypeId\":7,\"parentRs\":{\"attrId\": 120,\"isReferedFromParent\":1}}]', '304', null, '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('317', '15', 'guid_of_network_zone', '[{\"ciTypeId\":19},{\"ciTypeId\":18,\"parentRs\":{\"attrId\": 339,\"isReferedFromParent\":1}}]', '290', null, '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('318', '15', 'guid_of_network_zone_link', '[{\"ciTypeId\":20},{\"ciTypeId\":19,\"parentRs\":{\"attrId\": 358,\"isReferedFromParent\": 1}},{\"ciTypeId\":18,\"parentRs\":{\"attrId\": 339,\"isReferedFromParent\":1}}]', '291', null, '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('319', '15', 'guid_of_business_zone', '[{\"ciTypeId\":21},{\"ciTypeId\":19,\"parentRs\":{\"attrId\": 376,\"isReferedFromParent\": 1}},{\"ciTypeId\":18,\"parentRs\":{\"attrId\": 339,\"isReferedFromParent\":1}}]', '292', null, '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('320', '15', 'guid_of_resource_set', '[{\"ciTypeId\":22},{\"ciTypeId\":21,\"parentRs\":{\"attrId\": 391,\"isReferedFromParent\": 1}},{\"ciTypeId\":19,\"parentRs\":{\"attrId\": 376,\"isReferedFromParent\": 1}},{\"ciTypeId\":18,\"parentRs\":{\"attrId\": 339,\"isReferedFromParent\":1}}]', '293', null, '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('321', '15', 'guid_of_resource_set_invoke', '[{\"ciTypeId\":37},{\"ciTypeId\":22,\"parentRs\":{\"attrId\": 925,\"isReferedFromParent\": 1}},{\"ciTypeId\":21,\"parentRs\":{\"attrId\": 391,\"isReferedFromParent\": 1}},{\"ciTypeId\":19,\"parentRs\":{\"attrId\": 376,\"isReferedFromParent\": 1}},{\"ciTypeId\":18,\"parentRs\":{\"attrId\": 339,\"isReferedFromParent\":1}}]', '294', null, '7', 'active');
INSERT INTO `adm_basekey_code` VALUES ('322', '15', 'guid_of_resource_instance', '[{\"ciTypeId\":15},{\"ciTypeId\":22,\"parentRs\":{\"attrId\": 258,\"isReferedFromParent\": 1}},{\"ciTypeId\":21,\"parentRs\":{\"attrId\": 391,\"isReferedFromParent\": 1}},{\"ciTypeId\":19,\"parentRs\":{\"attrId\": 376,\"isReferedFromParent\": 1}},{\"ciTypeId\":18,\"parentRs\":{\"attrId\": 339,\"isReferedFromParent\":1}}]', '305', null, '9', 'active');
INSERT INTO `adm_basekey_code` VALUES ('323', '15', 'guid_of_block_storage', '[{\"ciTypeId\":16},{\"ciTypeId\":22,\"parentRs\":{\"attrId\": 728,\"isReferedFromParent\": 1}},{\"ciTypeId\":21,\"parentRs\":{\"attrId\": 391,\"isReferedFromParent\": 1}},{\"ciTypeId\":19,\"parentRs\":{\"attrId\": 376,\"isReferedFromParent\": 1}},{\"ciTypeId\":18,\"parentRs\":{\"attrId\": 339,\"isReferedFromParent\":1}}]', '306', null, '10', 'active');
INSERT INTO `adm_basekey_code` VALUES ('324', '34', 'DLINK', '互联网直连', null, null, '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('325', '21', 'client', '客户端', null, null, '7', 'active');
INSERT INTO `adm_basekey_code` VALUES ('326', '22', 'brower', 'brower', '325', null, '10', 'active');
INSERT INTO `adm_basekey_code` VALUES ('327', '38', 'werer', '桌面系统', '325', null, '8', 'active');
INSERT INTO `adm_basekey_code` VALUES ('328', '39', 'img-29hl923v', 'WinServer2012 64位', '325', null, '9', 'active');
INSERT INTO `adm_basekey_code` VALUES ('329', '40', '2C4G', '2核4GB', '325', null, '8', 'active');
INSERT INTO `adm_basekey_code` VALUES ('330', '30', 'multi-node', '多节点', '325', null, '9', 'active');
INSERT INTO `adm_basekey_code` VALUES ('331', '41', 'anynode', '任一节点', '330', null, '11', 'active');
INSERT INTO `adm_basekey_code` VALUES ('334', '33', 'app_loadbalance', '应用负载均衡', null, null, '6', 'active');
INSERT INTO `adm_basekey_code` VALUES ('335', '33', 'db_loadbalance', '数据库负载均衡', null, null, '7', 'active');
INSERT INTO `adm_basekey_code` VALUES ('336', '46', 'region', '地域级', null, null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('337', '46', 'zone', '可用区级', null, null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('338', '21', 'app_lb', '应用负载均衡', null, null, '8', 'active');
INSERT INTO `adm_basekey_code` VALUES ('339', '21', 'db_lb', '数据库负载均衡', null, null, '9', 'active');
INSERT INTO `adm_basekey_code` VALUES ('340', '22', 'clb', 'CLB', '338', null, '11', 'active');
INSERT INTO `adm_basekey_code` VALUES ('341', '22', 'clb', 'CLB', '339', null, '12', 'active');
INSERT INTO `adm_basekey_code` VALUES ('342', '38', 'internal_lb', '内网类型', '338', null, '9', 'active');
INSERT INTO `adm_basekey_code` VALUES ('343', '38', 'internal_lb', '内网类型', '339', null, '10', 'active');
INSERT INTO `adm_basekey_code` VALUES ('344', '39', 'clb', 'CLB', '338', null, '10', 'active');
INSERT INTO `adm_basekey_code` VALUES ('345', '40', '1', '1', '338', null, '9', 'active');
INSERT INTO `adm_basekey_code` VALUES ('346', '40', '1', '1', '339', null, '10', 'active');
INSERT INTO `adm_basekey_code` VALUES ('347', '39', 'clb', 'CLB', '339', null, '11', 'active');
INSERT INTO `adm_basekey_code` VALUES ('348', '21', 'internet_lb', '公网负载均衡', null, null, '10', 'active');
INSERT INTO `adm_basekey_code` VALUES ('349', '22', 'clb', 'CLB', '348', null, '13', 'active');
INSERT INTO `adm_basekey_code` VALUES ('350', '38', 'external_lb', '公网类型', '348', null, '11', 'active');
INSERT INTO `adm_basekey_code` VALUES ('351', '39', 'clb', 'CLB', '348', null, '12', 'active');
INSERT INTO `adm_basekey_code` VALUES ('352', '40', '1', '1', '348', null, '11', 'active');
INSERT INTO `adm_basekey_code` VALUES ('353', '30', 'multi-node', 'LB多活', '338', null, '10', 'active');
INSERT INTO `adm_basekey_code` VALUES ('354', '30', 'multi-node', 'LB多活', '339', null, '11', 'active');
INSERT INTO `adm_basekey_code` VALUES ('355', '30', 'multi-node', 'LB多活', '348', null, '12', 'active');
INSERT INTO `adm_basekey_code` VALUES ('356', '41', 'onenode', '单一节点', '353', null, '12', 'active');
INSERT INTO `adm_basekey_code` VALUES ('357', '41', 'onenode', '单一节点', '354', null, '13', 'active');
INSERT INTO `adm_basekey_code` VALUES ('358', '41', 'onenode', '单一节点', '355', null, '14', 'active');
INSERT INTO `adm_basekey_code` VALUES ('361', '47', 'TCP', 'TCP', null, null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('362', '48', '同步', '同步', '82', null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('363', '48', '异步', '异步', '82', null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('364', '48', '广播', '广播', '82', null, '3', 'active');
INSERT INTO `adm_basekey_code` VALUES ('365', '49', 'query', '查询类', null, null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('366', '49', 'transaction', '交易类', null, null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('367', '48', '同步', '同步调用', '83', null, '4', 'active');
INSERT INTO `adm_basekey_code` VALUES ('368', '16', '35', '服务调用设计', null, null, '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('369', '17', 'guid_of_service_invoke_design', '[{\"ciTypeId\":35},{\"ciTypeId\":3,\"parentRs\":{\"attrId\": 888,\"isReferedFromParent\":1}},{\"ciTypeId\":2,\"parentRs\":{\"attrId\": 43,\"isReferedFromParent\":1}},{\"ciTypeId\":1,\"parentRs\":{\"attrId\": 27,\"isReferedFromParent\":1}}]', '368', null, '5', 'active');
INSERT INTO `adm_basekey_code` VALUES ('370', '12', '30', '网段设计', null, null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('371', '13', 'guid_of_network_segment_design', '[{\"ciTypeId\":30},{\"ciTypeId\":25,\"parentRs\":{\"attrId\": 940,\"isReferedFromParent\":1}}]', '370', null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('372', '12', '31', '路由规则设计', null, null, '7', 'active');
INSERT INTO `adm_basekey_code` VALUES ('373', '13', 'guid_of_routing_rule_design', '[{\"ciTypeId\":31},{\"ciTypeId\":30,\"parentRs\":{\"attrId\": 531,\"isReferedFromParent\":1}},{\"ciTypeId\":25,\"parentRs\":{\"attrId\": 940,\"isReferedFromParent\":1}}]', '372', null, '7', 'active');
INSERT INTO `adm_basekey_code` VALUES ('374', '14', '24', '路由规则', null, null, '8', 'active');
INSERT INTO `adm_basekey_code` VALUES ('375', '15', 'guid_of_network_segment', '[{\"ciTypeId\":23},{\"ciTypeId\":18,\"parentRs\":{\"attrId\": 934,\"isReferedFromParent\":1}}]', '289', null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('376', '15', 'guid_of_routing_rule', '[{\"ciTypeId\":24},{\"ciTypeId\":23,\"parentRs\":{\"attrId\": 428,\"isReferedFromParent\":1}},{\"ciTypeId\":18,\"parentRs\":{\"attrId\": 934,\"isReferedFromParent\":1}}]', '374', null, '8', 'active');
INSERT INTO `adm_basekey_code` VALUES ('377', '14', '17', 'IP地址', null, null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('378', '15', 'guid_of_ip_address', '[{\"ciTypeId\":17},{\"ciTypeId\":23,\"parentRs\":{\"attrId\": 310,\"isReferedFromParent\":1}},{\"ciTypeId\":18,\"parentRs\":{\"attrId\": 934,\"isReferedFromParent\":1}}]', '377', null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('379', '50', 'vpc', 'VPC网络区域', '336', null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('380', '50', 'normal', '网络区域', '337', null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('381', '38', '6', '4.0主从类型', '62', null, '12', 'active');
INSERT INTO `adm_basekey_code` VALUES ('382', '38', '7', '4.0集群类型', '62', null, '13', 'active');
INSERT INTO `adm_basekey_code` VALUES ('383', '51', 'ingress', '入站规则', null, null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('384', '51', 'egress', '出站规则', null, null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('385', '52', 'DROP', '拒绝', null, null, '1', 'active');
INSERT INTO `adm_basekey_code` VALUES ('386', '52', 'ACCEPT', '通过', null, null, '2', 'active');
INSERT INTO `adm_basekey_code` VALUES ('387', '19', 'guid_of_deploy_detail', '[{\"ciTypeId\": 7},{ \"ciTypeId\": 1, \"parentRs\": { \"attrId\": 106, \"isReferedFromParent\": 1}}]', null, null, '8', 'active');
INSERT INTO `adm_basekey_code` VALUES ('391', '1', 'APL', '应用开发层', null, '应用开发层', '2', 'active');

-- ----------------------------
-- Records of adm_ci_type
-- ----------------------------
INSERT INTO `adm_ci_type` VALUES ('1', '系统设计', '系统设计', null, 'system_design', 'created', '6', null, '1', '1', '1', '35', null);
INSERT INTO `adm_ci_type` VALUES ('2', '子系统设计', '子系统设计', null, 'subsys_design', 'created', '6', null, '2', '1', '1', '36', null);
INSERT INTO `adm_ci_type` VALUES ('3', '单元设计', '单元设计', null, 'unit_design', 'created', '6', null, '3', '1', '1', '37', null);
INSERT INTO `adm_ci_type` VALUES ('4', '服务设计', '服务设计', null, 'service_design', 'created', '6', null, '4', '1', '1', '38', null);
INSERT INTO `adm_ci_type` VALUES ('5', '调用设计', '调用设计', null, 'invoke_design', 'created', '6', null, '5', '1', '1', '39', null);
INSERT INTO `adm_ci_type` VALUES ('6', '服务调用时序设计', '服务调用时序设计', null, 'service_invoke_seq_design', 'created', '6', null, '6', '1', '1', '40', null);
INSERT INTO `adm_ci_type` VALUES ('7', '系统', '系统', null, 'we_system', 'created', '7', null, '1', '2', '1', '67', null);
INSERT INTO `adm_ci_type` VALUES ('8', '子系统', '子系统', null, 'subsys', 'created', '7', null, '2', '2', '1', '41', null);
INSERT INTO `adm_ci_type` VALUES ('9', '单元', '单元', null, 'unit', 'created', '7', null, '3', '2', '1', '42', null);
INSERT INTO `adm_ci_type` VALUES ('10', '服务', '服务', null, 'service', 'created', '7', null, '4', '2', '1', '43', null);
INSERT INTO `adm_ci_type` VALUES ('11', '调用', '调用', null, 'invoke', 'created', '7', null, '5', '2', '1', '44', null);
INSERT INTO `adm_ci_type` VALUES ('12', '部署包', '部署包', null, 'deploy_package', 'created', '7', null, '6', '391', '1', '47', null);
INSERT INTO `adm_ci_type` VALUES ('14', '业务应用实例', '业务应用实例', null, 'business_app_instance', 'created', '8', null, '1', '2', '1', '48', null);
INSERT INTO `adm_ci_type` VALUES ('15', '资源实例', '资源实例', null, 'resource_instance', 'created', '8', null, '2', '3', '1', '49', null);
INSERT INTO `adm_ci_type` VALUES ('16', '块存储', '块存储', null, 'block_storage', 'created', '8', null, '3', '3', '1', '50', null);
INSERT INTO `adm_ci_type` VALUES ('17', 'IP地址', 'IP地址', null, 'ip_address', 'created', '8', null, '4', '3', '1', '51', null);
INSERT INTO `adm_ci_type` VALUES ('18', '数据中心', '数据中心', null, 'data_center', 'created', '9', null, '1', '4', '1', '52', null);
INSERT INTO `adm_ci_type` VALUES ('19', '网络区域', '网络区域', null, 'network_zone', 'created', '9', null, '2', '4', '1', '53', null);
INSERT INTO `adm_ci_type` VALUES ('20', '网络区域连接', '网络区域连接', null, 'network_zone_link', 'created', '9', null, '3', '4', '1', '54', null);
INSERT INTO `adm_ci_type` VALUES ('21', '业务区域', '业务区域', null, 'business_zone', 'created', '9', null, '4', '4', '1', '55', null);
INSERT INTO `adm_ci_type` VALUES ('22', '资源集合', '资源集合', null, 'resource_set', 'created', '9', null, '5', '4', '1', '56', null);
INSERT INTO `adm_ci_type` VALUES ('23', '网段', '网段', null, 'network_segment', 'created', '9', null, '6', '4', '1', '57', null);
INSERT INTO `adm_ci_type` VALUES ('24', '路由规则', '路由规则', null, 'routing_rule', 'created', '9', null, '7', '4', '1', '59', null);
INSERT INTO `adm_ci_type` VALUES ('25', '数据中心设计', '数据中心设计', null, 'data_center_design', 'created', '10', null, '1', '5', '1', '60', null);
INSERT INTO `adm_ci_type` VALUES ('26', '网络区域设计', '网络区域设计', null, 'network_zone_design', 'created', '10', null, '2', '5', '1', '61', null);
INSERT INTO `adm_ci_type` VALUES ('27', '网络区域连接设计', '网络区域连接设计', null, 'network_zone_link_design', 'created', '10', null, '3', '5', '1', '62', null);
INSERT INTO `adm_ci_type` VALUES ('28', '业务区域设计', '业务区域设计', null, 'business_zone_design', 'created', '10', null, '4', '5', '1', '63', null);
INSERT INTO `adm_ci_type` VALUES ('29', '资源集合设计', '资源集合设计', null, 'resource_set_design', 'created', '10', null, '5', '5', '1', '64', null);
INSERT INTO `adm_ci_type` VALUES ('30', '网段设计', '网段设计', null, 'network_segment_design', 'created', '10', null, '6', '5', '1', '65', null);
INSERT INTO `adm_ci_type` VALUES ('31', '路由规则设计', '路由规则设计', null, 'routing_rule_design', 'created', '10', null, '7', '5', '1', '66', null);
INSERT INTO `adm_ci_type` VALUES ('32', '差异配置', '差异配置', null, 'diff_configuration', 'created', '7', null, '8', '391', '1', '1', null);
INSERT INTO `adm_ci_type` VALUES ('35', '服务调用设计', '服务调用设计', null, 'service_invoke_design', 'created', null, null, '1', '1', '1', '9', null);
INSERT INTO `adm_ci_type` VALUES ('36', '资源集合调用设计', '资源集合调用设计', null, 'resource_set_invoke_design', 'created', null, null, '2', '5', '1', '5', null);
INSERT INTO `adm_ci_type` VALUES ('37', '资源集合调用', '资源集合调用', null, 'resource_set_invoke', 'created', null, null, '3', '4', '1', '1', null);
INSERT INTO `adm_ci_type` VALUES ('38', '默认安全策略', '默认安全策略', null, 'default_security_policy', 'created', null, null, '4', '4', '1', '1', null);
INSERT INTO `adm_ci_type` VALUES ('39', '直连服务调用', '直连服务调用', null, 'direct_service_invoke', 'created', null, null, '5', '2', '1', '1', null);
INSERT INTO `adm_ci_type` VALUES ('40', '枚举', '枚举', null, 'basekey_code', 'created', null, null, '6', '391', '2', '12', null);
INSERT INTO `adm_ci_type` VALUES ('41', '枚举组', '枚举组', null, 'basekey_cat', 'created', null, null, '7', '391', '2', '12', null);
INSERT INTO `adm_ci_type` VALUES ('42', '枚举组类型', '枚举组类型', null, 'basekey_cat_type', 'created', null, null, '8', '391', '2', '11', null);


-- ----------------------------
-- Records of adm_ci_type_attr_base
-- ----------------------------
INSERT INTO `adm_ci_type_attr_base` VALUES ('1', '1', '全局唯一ID', '全局唯一ID', 'text', 'guid', 'varchar', '15', null, null, null, null, '0', '0', '0', '0', '1', '0', '0', '0', null, 'notCreated', '1', '0', '0', null, null, '0');
INSERT INTO `adm_ci_type_attr_base` VALUES ('2', '1', '前全局唯一ID', '前一版本数据的guid', 'text', 'p_guid', 'varchar', '15', null, null, null, null, '0', '0', '0', '1', '0', '0', '0', '0', null, 'notCreated', '1', '0', '0', null, null, '1');
INSERT INTO `adm_ci_type_attr_base` VALUES ('3', '1', '根全局唯一ID', '原始数据guid', 'text', 'r_guid', 'varchar', '15', null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, 'notCreated', '1', '0', '0', null, null, '0');
INSERT INTO `adm_ci_type_attr_base` VALUES ('4', '1', '更新用户', '更新用户', 'text', 'updated_by', 'varchar', '50', null, null, null, null, '0', '0', '0', '0', '0', '1', '0', '0', null, 'notCreated', '1', '0', '0', null, null, '1');
INSERT INTO `adm_ci_type_attr_base` VALUES ('5', '1', '更新日期', '更新日期', 'date', 'updated_date', 'datetime', '1', null, null, null, null, '0', '0', '0', '0', '0', '1', '0', '0', null, 'notCreated', '1', '0', '0', null, null, '1');
INSERT INTO `adm_ci_type_attr_base` VALUES ('6', '1', '创建用户', '创建用户', 'text', 'created_by', 'varchar', '50', null, null, null, null, '0', '0', '0', '0', '0', '1', '0', '0', null, 'notCreated', '1', '0', '0', null, null, '0');
INSERT INTO `adm_ci_type_attr_base` VALUES ('7', '1', '创建日期', '创建日期', 'date', 'created_date', 'datetime', '1', null, null, null, null, '0', '0', '0', '0', '0', '1', '0', '0', null, 'notCreated', '1', '0', '0', null, null, '0');
INSERT INTO `adm_ci_type_attr_base` VALUES ('8', '1', '唯一名称', '唯一名称', 'text', 'key_name', 'varchar', '200', null, null, null, null, '1', '1', '1', '0', '1', '0', '0', '0', null, 'notCreated', '1', '0', '1', null, null, '0');
INSERT INTO `adm_ci_type_attr_base` VALUES ('9', '1', '状态', '状态', 'select', 'state', 'int', '15', null, null, null, null, '2', '1', '2', '0', '0', '0', '0', '0', null, 'notCreated', '1', '0', '0', null, null, '0');
INSERT INTO `adm_ci_type_attr_base` VALUES ('10', '1', '确认日期', '确认日期', 'text', 'fixed_date', 'varchar', '19', null, null, null, null, '4', '1', '4', '1', '0', '0', '0', '0', null, 'notCreated', '1', '0', '0', null, null, '0');
INSERT INTO `adm_ci_type_attr_base` VALUES ('11', '1', '描述说明', '描述说明', 'textArea', 'description', 'varchar', '1000', null, null, null, null, '5', '1', '5', '1', '0', '0', '1', '0', null, 'notCreated', '1', '0', '0', null, null, '0');
INSERT INTO `adm_ci_type_attr_base` VALUES ('12', '1', '编码', '编码', 'text', 'code', 'varchar', '50', null, null, null, null, '3', '1', '3', '0', '0', '0', '1', '0', null, 'notCreated', '1', '0', '0', null, null, '0');

-- ----------------------------
-- Records of adm_integrate_template
-- ----------------------------
INSERT INTO `adm_integrate_template` VALUES ('1', '25', '网段设计视图', '网段设计视图');


-- ----------------------------
-- Records of adm_integrate_template_alias
-- ----------------------------
INSERT INTO `adm_integrate_template_alias` VALUES ('1', '25', '1', '数据中心设计');
INSERT INTO `adm_integrate_template_alias` VALUES ('2', '30', '1', '2-1-网段设计-数据中心设计');
INSERT INTO `adm_integrate_template_alias` VALUES ('3', '30', '1', '3-1-网段设计-父网段设计');
INSERT INTO `adm_integrate_template_alias` VALUES ('4', '30', '1', '4-1-网段设计-父网段设计');

-- ----------------------------
-- Records of adm_integrate_template_alias_attr
-- ----------------------------
INSERT INTO `adm_integrate_template_alias_attr` VALUES ('1', '1', '439', '1', '1', '唯一名称', null, 'dataCenterDesign$keyName', '1', null, null);
INSERT INTO `adm_integrate_template_alias_attr` VALUES ('2', '2', '510', '1', '1', '唯一名称', null, 'dataCenterDesign-networkSegmentDesign$keyName', '1', null, null);
INSERT INTO `adm_integrate_template_alias_attr` VALUES ('3', '3', '510', '1', '1', '唯一名称', null, 'dataCenterDesign-networkSegmentDesign-networkSegmentDesign$keyName', '1', null, null);

-- ----------------------------
-- Records of adm_integrate_template_relation
-- ----------------------------
INSERT INTO `adm_integrate_template_relation` VALUES ('1', '2', '940', '1', '0');
INSERT INTO `adm_integrate_template_relation` VALUES ('2', '3', '518', '2', '0');
INSERT INTO `adm_integrate_template_relation` VALUES ('3', '4', '518', '3', '0');


-- ----------------------------
-- Records of adm_menu
-- ----------------------------
INSERT INTO `adm_menu` VALUES ('1', 'DATA_QUERY', '数据查询', null, '1', null, null, null, '0');
INSERT INTO `adm_menu` VALUES ('2', 'DATA_MANAGEMENT', '数据管理', null, '2', null, null, null, '0');
INSERT INTO `adm_menu` VALUES ('4', 'VIEW_MANAGEMENT', '视图管理', null, '4', null, null, null, '0');
INSERT INTO `adm_menu` VALUES ('5', 'ADMIN', '系统', null, '5', null, null, null, '0');
INSERT INTO `adm_menu` VALUES ('6', 'DESIGNING_CI_DATA_ENQUIRY', 'CI数据查询', null, '6', null, '1', null, '0');
INSERT INTO `adm_menu` VALUES ('7', 'DESIGNING_CI_INTEGRATED_QUERY_EXECUTION', 'CI数据综合查询', null, '7', null, '1', null, '0');
INSERT INTO `adm_menu` VALUES ('8', 'CMDB_DESIGNING_ENUM_ENQUIRY', '枚举数据查询', null, '8', null, '1', null, '0');
INSERT INTO `adm_menu` VALUES ('9', 'DESIGNING_CI_DATA_MANAGEMENT', 'CI数据管理', null, '9', null, '2', null, '0');
INSERT INTO `adm_menu` VALUES ('10', 'DESIGNING_CI_INTEGRATED_QUERY_MANAGEMENT', 'CI综合查询管理', null, '10', null, '2', null, '0');
INSERT INTO `adm_menu` VALUES ('11', 'CMDB_DESIGNING_ENUM_MANAGEMENT', '枚举数据管理', null, '11', null, '2', null, '0');
INSERT INTO `adm_menu` VALUES ('16', 'IDC_PLANNING_DESIGN', 'IDC规划设计', null, '16', null, '4', null, '0');
INSERT INTO `adm_menu` VALUES ('17', 'IDC_RESOURCE_PLANNING', 'IDC资源规划', null, '17', null, '4', null, '0');
INSERT INTO `adm_menu` VALUES ('18', 'APPLICATION_ARCHITECTURE_DESIGN', '应用架构设计', null, '18', null, '4', null, '0');
INSERT INTO `adm_menu` VALUES ('19', 'APPLICATION_DEPLOYMENT_DESIGN', '应用部署设计', null, '19', null, '4', null, '0');
INSERT INTO `adm_menu` VALUES ('20', 'ADMIN_CMDB_MODEL_MANAGEMENT', 'CMDB模型管理', null, '20', null, '5', null, '0');
INSERT INTO `adm_menu` VALUES ('21', 'ADMIN_PERMISSION_MANAGEMENT', '系统权限管理', null, '21', null, '5', null, '0');
INSERT INTO `adm_menu` VALUES ('22', 'CMDB_ADMIN_BASE_DATA_MANAGEMENT', '基础数据管理', null, '22', null, '5', null, '0');
INSERT INTO `adm_menu` VALUES ('23', 'ADMIN_QUERY_LOG', '日志查询', null, '23', null, '5', null, '0');
INSERT INTO `adm_menu` VALUES ('24', 'ADMIN_USER_PASSWORD_MANAGEMENT', '用户密码管理', null, '24', null, '5', null, '0');

-- ----------------------------
-- Records of adm_role
-- ----------------------------
INSERT INTO `adm_role` VALUES ('1', 'SUPER_ADMIN', '超级管理员', null, null, 'ADMIN', '1');
INSERT INTO `adm_role` VALUES ('2', 'CMDB_ADMIN', 'CMDB管理员', null, null, 'ADMIN', '0');
INSERT INTO `adm_role` VALUES ('3', 'PLUGIN_ADMIN', '插件管理员', null, null, 'ADMIN', '0');
INSERT INTO `adm_role` VALUES ('4', 'IDC_ARCHITECT', '基础架构规划-IDC', null, null, 'ADMIN', '0');
INSERT INTO `adm_role` VALUES ('5', 'NETWORK_ARCHITECT', '基础架构规划-网络', null, null, 'ADMIN', '0');
INSERT INTO `adm_role` VALUES ('6', 'APP_ARCHITECT', '应用架构师', null, null, 'ADMIN', '0');
INSERT INTO `adm_role` VALUES ('7', 'OPS-PROD', '生产环境运维', null, null, 'ADMIN', '0');
INSERT INTO `adm_role` VALUES ('8', 'OPS-TEST', '测试环境运维', null, null, 'ADMIN', '0');
INSERT INTO `adm_role` VALUES ('9', 'DEVELOPER', '开发人员', null, null, 'ADMIN', '0');
INSERT INTO `adm_role` VALUES ('10', 'REGULAR', '普通用户', null, null, 'REGULAR', '0');
INSERT INTO `adm_role` VALUES ('11', 'READONLY', '只读用户', null, null, 'READONLY', '0');

-- ----------------------------
-- Records of adm_role_ci_type
-- ----------------------------
INSERT INTO `adm_role_ci_type` VALUES ('1', '1', '1', '系统设计', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('2', '1', '2', '子系统设计', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('3', '1', '3', '单元设计', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('4', '1', '4', '服务设计', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('5', '1', '5', '调用设计', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('6', '1', '6', '服务调用时序设计', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('7', '1', '7', '系统', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('8', '1', '8', '子系统', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('9', '1', '9', '单元', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('10', '1', '10', '服务', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('11', '1', '11', '调用', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('12', '1', '12', '部署包', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('14', '1', '14', '业务应用实例', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('15', '1', '15', '资源实例', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('16', '1', '16', '块存储', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('17', '1', '17', 'IP地址', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('18', '1', '18', '数据中心', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('19', '1', '19', '网络区域', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('20', '1', '20', '网络区域连接', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('21', '1', '21', '业务区域', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('22', '1', '22', '资源集合', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('23', '1', '23', '网段', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('24', '1', '24', '路由规则', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('25', '1', '25', '数据中心设计', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('26', '1', '26', '网络区域设计', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('27', '1', '27', '网络区域连接设计', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('28', '1', '28', '业务区域设计', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('29', '1', '29', '资源集合设计', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('30', '1', '30', '网段设计', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('31', '1', '31', '路由规则设计', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('32', '1', '32', '差异配置', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('33', '1', '35', '服务调用设计', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('34', '1', '36', '资源集合调用设计', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('35', '1', '37', '资源集合调用', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('36', '1', '38', '默认安全策略', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('37', '1', '39', '直连服务调用', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('38', '2', '1', '系统设计', 'Y', 'Y', 'Y', 'Y', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('39', '2', '2', '子系统设计', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('40', '2', '3', '单元设计', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('41', '2', '4', '服务设计', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('42', '2', '5', '调用设计', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('43', '2', '6', '服务调用时序设计', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('44', '2', '7', '系统', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('45', '2', '8', '子系统', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('46', '2', '9', '单元', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('47', '2', '10', '服务', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('48', '2', '11', '调用', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('49', '2', '12', '部署包', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('50', '2', '14', '业务应用实例', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('51', '2', '15', '资源实例', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('52', '2', '16', '块存储', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('53', '2', '17', 'IP地址', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('54', '2', '18', '数据中心', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('55', '2', '19', '网络区域', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('56', '2', '20', '网络区域连接', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('57', '2', '21', '业务区域', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('58', '2', '22', '资源集合', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('59', '2', '23', '网段', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('60', '2', '24', '路由规则', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('61', '2', '25', '数据中心设计', 'Y', 'Y', 'Y', 'Y', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('62', '2', '26', '网络区域设计', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('63', '2', '27', '网络区域连接设计', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('64', '2', '28', '业务区域设计', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('65', '2', '29', '资源集合设计', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('66', '2', '30', '网段设计', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('67', '2', '31', '路由规则设计', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('68', '2', '32', '差异配置', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('69', '2', '35', '服务调用设计', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('70', '2', '36', '资源集合调用设计', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('71', '2', '37', '资源集合调用', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('72', '2', '38', '默认安全策略', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `adm_role_ci_type` VALUES ('73', '2', '39', '直连服务调用', 'N', 'N', 'N', 'N', 'N', 'N');

-- ----------------------------
-- Records of adm_role_ci_type_ctrl_attr
-- ----------------------------
INSERT INTO `adm_role_ci_type_ctrl_attr` VALUES ('1', '1', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO `adm_role_ci_type_ctrl_attr` VALUES ('2', '1', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');

-- ----------------------------
-- Records of adm_role_ci_type_ctrl_attr_condition
-- ----------------------------
INSERT INTO `adm_role_ci_type_ctrl_attr_condition` VALUES ('1', '1', '14', '业务群组', '59', null);
INSERT INTO `adm_role_ci_type_ctrl_attr_condition` VALUES ('2', '2', '14', '业务群组', '59', null);

-- ----------------------------
-- Records of adm_role_menu
-- ----------------------------
INSERT INTO `adm_role_menu` VALUES ('1', '1', '1', '0');
INSERT INTO `adm_role_menu` VALUES ('2', '1', '2', '0');
INSERT INTO `adm_role_menu` VALUES ('5', '1', '5', '1');
INSERT INTO `adm_role_menu` VALUES ('6', '1', '6', '0');
INSERT INTO `adm_role_menu` VALUES ('7', '1', '7', '0');
INSERT INTO `adm_role_menu` VALUES ('8', '1', '8', '0');
INSERT INTO `adm_role_menu` VALUES ('9', '1', '9', '0');
INSERT INTO `adm_role_menu` VALUES ('10', '1', '10', '0');
INSERT INTO `adm_role_menu` VALUES ('11', '1', '11', '0');
INSERT INTO `adm_role_menu` VALUES ('16', '1', '16', '0');
INSERT INTO `adm_role_menu` VALUES ('17', '1', '17', '0');
INSERT INTO `adm_role_menu` VALUES ('18', '1', '18', '0');
INSERT INTO `adm_role_menu` VALUES ('19', '1', '19', '0');
INSERT INTO `adm_role_menu` VALUES ('20', '1', '20', '0');
INSERT INTO `adm_role_menu` VALUES ('21', '1', '21', '1');
INSERT INTO `adm_role_menu` VALUES ('22', '1', '22', '0');
INSERT INTO `adm_role_menu` VALUES ('23', '1', '23', '0');
INSERT INTO `adm_role_menu` VALUES ('24', '1', '24', '0');
INSERT INTO `adm_role_menu` VALUES ('25', '2', '20', '0');
INSERT INTO `adm_role_menu` VALUES ('26', '2', '21', '0');
INSERT INTO `adm_role_menu` VALUES ('27', '2', '22', '0');
INSERT INTO `adm_role_menu` VALUES ('28', '2', '23', '0');
INSERT INTO `adm_role_menu` VALUES ('29', '2', '24', '0');
INSERT INTO `adm_role_menu` VALUES ('30', '2', '9', '0');
INSERT INTO `adm_role_menu` VALUES ('31', '2', '10', '0');
INSERT INTO `adm_role_menu` VALUES ('32', '2', '11', '0');
INSERT INTO `adm_role_menu` VALUES ('33', '2', '16', '0');
INSERT INTO `adm_role_menu` VALUES ('34', '2', '17', '0');
INSERT INTO `adm_role_menu` VALUES ('35', '2', '18', '0');
INSERT INTO `adm_role_menu` VALUES ('36', '2', '19', '0');
INSERT INTO `adm_role_menu` VALUES ('37', '2', '6', '0');
INSERT INTO `adm_role_menu` VALUES ('38', '2', '7', '0');
INSERT INTO `adm_role_menu` VALUES ('39', '2', '8', '0');
INSERT INTO `adm_role_menu` VALUES ('44', '9', '6', '0');
INSERT INTO `adm_role_menu` VALUES ('45', '9', '7', '0');
INSERT INTO `adm_role_menu` VALUES ('46', '9', '8', '0');
INSERT INTO `adm_role_menu` VALUES ('47', '9', '9', '0');
INSERT INTO `adm_role_menu` VALUES ('48', '9', '10', '0');
INSERT INTO `adm_role_menu` VALUES ('49', '9', '11', '0');
INSERT INTO `adm_role_menu` VALUES ('50', '6', '16', '0');
INSERT INTO `adm_role_menu` VALUES ('51', '6', '17', '0');
INSERT INTO `adm_role_menu` VALUES ('52', '6', '18', '0');
INSERT INTO `adm_role_menu` VALUES ('53', '6', '19', '0');
INSERT INTO `adm_role_menu` VALUES ('54', '6', '6', '0');
INSERT INTO `adm_role_menu` VALUES ('55', '6', '7', '0');
INSERT INTO `adm_role_menu` VALUES ('56', '6', '8', '0');
INSERT INTO `adm_role_menu` VALUES ('57', '6', '9', '0');
INSERT INTO `adm_role_menu` VALUES ('58', '6', '10', '0');
INSERT INTO `adm_role_menu` VALUES ('59', '6', '11', '0');
INSERT INTO `adm_role_menu` VALUES ('61', '6', '22', '0');
INSERT INTO `adm_role_menu` VALUES ('62', '6', '20', '0');
INSERT INTO `adm_role_menu` VALUES ('63', '6', '23', '0');

-- ----------------------------
-- Records of adm_role_user
-- ----------------------------
INSERT INTO `adm_role_user` VALUES ('1', '1', '1', '1');
INSERT INTO `adm_role_user` VALUES ('2', '2', '2', '0');
INSERT INTO `adm_role_user` VALUES ('3', '9', '3', '0');
INSERT INTO `adm_role_user` VALUES ('4', '6', '4', '0');

-- ----------------------------
-- Records of adm_sequence
-- ----------------------------
INSERT INTO `adm_sequence` VALUES ('1', 'network_segment_design', '72', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('2', 'data_center_design', '1', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('3', 'network_segment', '138', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('4', 'network_zone_design', '8', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('5', 'network_zone_link_design', '14', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('6', 'business_zone_design', '18', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('7', 'resource_set_design', '37', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('9', 'routing_rule_design', '71', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('11', 'data_center', '4', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('12', 'network_zone', '37', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('13', 'ip_address', '109', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('14', 'business_zone', '35', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('15', 'resource_set', '68', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('17', 'resource_instance', '29', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('23', 'network_zone_link', '17', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('25', 'routing_rule', '137', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('26', 'system_design', '8', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('27', 'subsys_design', '21', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('29', 'unit_design', '35', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('30', 'service_design', '17', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('32', 'invoke_design', '31', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('33', 'invoke_seq_design', '3', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('34', 'we_system', '3', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('35', 'subsys', '13', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('37', 'unit', '37', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('38', 'service', '4', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('39', 'invoke', '5', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('40', 'resource_set_invoke_design', '56', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('41', 'resource_set_invoke', '9', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('42', 'service_invoke_design', '6', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('43', 'service_invoke_seq_design', '2', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('45', 'business_app_instance', '21', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('46', 'deploy_package', '37', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('48', 'default_security_policy', '39', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('49', 'direct_service_invoke', '1', '1', '8', 'N');
INSERT INTO `adm_sequence` VALUES ('50', 'diff_configuration', '90', '1', '8', 'N');

-- ----------------------------
-- Records of adm_state_transition
-- ----------------------------
INSERT INTO `adm_state_transition` VALUES ('1', '37', '0', null, null, '48', '54', 'active');
INSERT INTO `adm_state_transition` VALUES ('2', null, null, '37', '0', '45', '52', 'active');
INSERT INTO `adm_state_transition` VALUES ('3', '37', '0', '37', '0', '46', '56', 'active');
INSERT INTO `adm_state_transition` VALUES ('4', '37', '0', '37', '1', '49', '57', 'active');
INSERT INTO `adm_state_transition` VALUES ('5', '37', '1', '38', '0', '46', '53', 'active');
INSERT INTO `adm_state_transition` VALUES ('6', '38', '0', '37', '1', '47', '55', 'active');
INSERT INTO `adm_state_transition` VALUES ('7', '37', '1', '39', '0', '48', '53', 'active');
INSERT INTO `adm_state_transition` VALUES ('8', '39', '0', '37', '1', '47', '55', 'active');
INSERT INTO `adm_state_transition` VALUES ('9', '38', '0', '38', '0', '46', '56', 'active');
INSERT INTO `adm_state_transition` VALUES ('10', '38', '0', '38', '1', '49', '57', 'active');
INSERT INTO `adm_state_transition` VALUES ('11', '38', '1', '38', '0', '46', '53', 'active');
INSERT INTO `adm_state_transition` VALUES ('12', '38', '0', '38', '1', '47', '55', 'active');
INSERT INTO `adm_state_transition` VALUES ('13', '38', '1', '39', '0', '48', '53', 'active');
INSERT INTO `adm_state_transition` VALUES ('14', '39', '0', '38', '1', '47', '55', 'active');
INSERT INTO `adm_state_transition` VALUES ('15', '39', '0', '39', '1', '49', '57', 'active');
INSERT INTO `adm_state_transition` VALUES ('16', '40', '0', null, null, '48', '54', 'active');
INSERT INTO `adm_state_transition` VALUES ('17', null, null, '40', '0', '45', '52', 'active');
INSERT INTO `adm_state_transition` VALUES ('18', '40', '0', '40', '0', '46', '56', 'active');
INSERT INTO `adm_state_transition` VALUES ('19', '40', '0', '40', '1', '49', '57', 'active');
INSERT INTO `adm_state_transition` VALUES ('20', '40', '1', '41', '0', '50', '53', 'active');
INSERT INTO `adm_state_transition` VALUES ('21', '41', '0', '40', '1', '47', '55', 'active');
INSERT INTO `adm_state_transition` VALUES ('22', '41', '0', '41', '1', '49', '57', 'active');
INSERT INTO `adm_state_transition` VALUES ('23', '40', '1', '43', '0', '51', '53', 'active');
INSERT INTO `adm_state_transition` VALUES ('24', '43', '0', '40', '1', '47', '55', 'active');
INSERT INTO `adm_state_transition` VALUES ('25', '43', '0', '43', '1', '49', '57', 'active');
INSERT INTO `adm_state_transition` VALUES ('26', '41', '1', '43', '0', '51', '53', 'active');
INSERT INTO `adm_state_transition` VALUES ('27', '43', '0', '41', '1', '47', '55', 'active');
INSERT INTO `adm_state_transition` VALUES ('28', '43', '1', '41', '0', '50', '53', 'active');
INSERT INTO `adm_state_transition` VALUES ('29', '41', '0', '43', '1', '47', '55', 'active');
INSERT INTO `adm_state_transition` VALUES ('30', '41', '1', '42', '0', '46', '53', 'active');
INSERT INTO `adm_state_transition` VALUES ('31', '42', '0', '41', '1', '47', '55', 'active');
INSERT INTO `adm_state_transition` VALUES ('32', '43', '1', '42', '0', '46', '53', 'active');
INSERT INTO `adm_state_transition` VALUES ('33', '42', '0', '43', '1', '47', '55', 'active');
INSERT INTO `adm_state_transition` VALUES ('34', '42', '0', '42', '0', '46', '56', 'active');
INSERT INTO `adm_state_transition` VALUES ('35', '42', '0', '42', '1', '49', '57', 'active');
INSERT INTO `adm_state_transition` VALUES ('36', '42', '1', '43', '0', '51', '53', 'active');
INSERT INTO `adm_state_transition` VALUES ('37', '43', '0', '42', '1', '47', '55', 'active');
INSERT INTO `adm_state_transition` VALUES ('38', '42', '1', '41', '0', '50', '53', 'active');
INSERT INTO `adm_state_transition` VALUES ('39', '41', '0', '42', '1', '47', '55', 'active');
INSERT INTO `adm_state_transition` VALUES ('40', '43', '1', '44', '0', '48', '53', 'active');
INSERT INTO `adm_state_transition` VALUES ('41', '44', '0', '43', '1', '47', '55', 'active');
INSERT INTO `adm_state_transition` VALUES ('42', '44', '0', '44', '1', '49', '57', 'active');
INSERT INTO `adm_state_transition` VALUES ('43', '34', '0', null, null, '48', '54', 'active');
INSERT INTO `adm_state_transition` VALUES ('44', null, null, '34', '0', '45', '52', 'active');
INSERT INTO `adm_state_transition` VALUES ('45', '34', '0', '34', '0', '46', '56', 'active');
INSERT INTO `adm_state_transition` VALUES ('46', '34', '0', '34', '1', '49', '57', 'active');
INSERT INTO `adm_state_transition` VALUES ('47', '34', '1', '35', '0', '46', '53', 'active');
INSERT INTO `adm_state_transition` VALUES ('48', '35', '0', '34', '1', '47', '55', 'active');
INSERT INTO `adm_state_transition` VALUES ('49', '34', '1', '36', '0', '48', '53', 'active');
INSERT INTO `adm_state_transition` VALUES ('50', '36', '0', '34', '1', '47', '55', 'active');
INSERT INTO `adm_state_transition` VALUES ('51', '35', '0', '35', '0', '46', '56', 'active');
INSERT INTO `adm_state_transition` VALUES ('52', '35', '0', '35', '1', '49', '57', 'active');
INSERT INTO `adm_state_transition` VALUES ('53', '35', '1', '35', '0', '46', '53', 'active');
INSERT INTO `adm_state_transition` VALUES ('54', '35', '0', '35', '1', '47', '55', 'active');
INSERT INTO `adm_state_transition` VALUES ('55', '35', '1', '36', '0', '48', '53', 'active');
INSERT INTO `adm_state_transition` VALUES ('56', '36', '0', '35', '1', '47', '55', 'active');
INSERT INTO `adm_state_transition` VALUES ('57', '36', '0', '36', '1', '49', '57', 'active');

-- ----------------------------
-- Records of adm_user
-- ----------------------------
INSERT INTO `adm_user` VALUES ('1', 'admin', 'admin', '$2a$10$Gh3WDwZ8kFpxbmo/h.oywuN.LuYwgrlx53ZeG.mz7P4eKgct7IYZm', 'admin', null, '0', '1');
INSERT INTO `adm_user` VALUES ('2', 'Jordan Zhang', 'jordan', '$2a$10$N7CQen.5UtFbEIPBYWhfgOnAg73h0YbLQjr2ivVuEeDATghfuZea.', 'CMDB Admin', null, null, null);
INSERT INTO `adm_user` VALUES ('3', 'Monkey', 'monkey', '$2a$10$N7CQen.5UtFbEIPBYWhfgOnAg73h0YbLQjr2ivVuEeDATghfuZea.', 'CMDB Developer', null, null, null);
INSERT INTO `adm_user` VALUES ('4', 'Chaney Liu', 'chaneyliu', '$2a$10$N7CQen.5UtFbEIPBYWhfgOnAg73h0YbLQjr2ivVuEeDATghfuZea.', 'CMDB Architect', null, null, null);

SET FOREIGN_KEY_CHECKS=1;
