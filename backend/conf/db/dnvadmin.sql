/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50738
Source Host           : localhost:3306
Source Database       : dnvadmin

Target Server Type    : MYSQL
Target Server Version : 50738
File Encoding         : 65001

Date: 2022-12-24 16:17:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add crontab', '6', 'add_crontabschedule');
INSERT INTO `auth_permission` VALUES ('22', 'Can change crontab', '6', 'change_crontabschedule');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete crontab', '6', 'delete_crontabschedule');
INSERT INTO `auth_permission` VALUES ('24', 'Can view crontab', '6', 'view_crontabschedule');
INSERT INTO `auth_permission` VALUES ('25', 'Can add interval', '7', 'add_intervalschedule');
INSERT INTO `auth_permission` VALUES ('26', 'Can change interval', '7', 'change_intervalschedule');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete interval', '7', 'delete_intervalschedule');
INSERT INTO `auth_permission` VALUES ('28', 'Can view interval', '7', 'view_intervalschedule');
INSERT INTO `auth_permission` VALUES ('29', 'Can add periodic task', '8', 'add_periodictask');
INSERT INTO `auth_permission` VALUES ('30', 'Can change periodic task', '8', 'change_periodictask');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete periodic task', '8', 'delete_periodictask');
INSERT INTO `auth_permission` VALUES ('32', 'Can view periodic task', '8', 'view_periodictask');
INSERT INTO `auth_permission` VALUES ('33', 'Can add periodic tasks', '9', 'add_periodictasks');
INSERT INTO `auth_permission` VALUES ('34', 'Can change periodic tasks', '9', 'change_periodictasks');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete periodic tasks', '9', 'delete_periodictasks');
INSERT INTO `auth_permission` VALUES ('36', 'Can view periodic tasks', '9', 'view_periodictasks');
INSERT INTO `auth_permission` VALUES ('37', 'Can add solar event', '10', 'add_solarschedule');
INSERT INTO `auth_permission` VALUES ('38', 'Can change solar event', '10', 'change_solarschedule');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete solar event', '10', 'delete_solarschedule');
INSERT INTO `auth_permission` VALUES ('40', 'Can view solar event', '10', 'view_solarschedule');
INSERT INTO `auth_permission` VALUES ('41', 'Can add clocked', '11', 'add_clockedschedule');
INSERT INTO `auth_permission` VALUES ('42', 'Can change clocked', '11', 'change_clockedschedule');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete clocked', '11', 'delete_clockedschedule');
INSERT INTO `auth_permission` VALUES ('44', 'Can view clocked', '11', 'view_clockedschedule');
INSERT INTO `auth_permission` VALUES ('45', 'Can add task result', '12', 'add_taskresult');
INSERT INTO `auth_permission` VALUES ('46', 'Can change task result', '12', 'change_taskresult');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete task result', '12', 'delete_taskresult');
INSERT INTO `auth_permission` VALUES ('48', 'Can view task result', '12', 'view_taskresult');
INSERT INTO `auth_permission` VALUES ('49', 'Can add chord counter', '13', 'add_chordcounter');
INSERT INTO `auth_permission` VALUES ('50', 'Can change chord counter', '13', 'change_chordcounter');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete chord counter', '13', 'delete_chordcounter');
INSERT INTO `auth_permission` VALUES ('52', 'Can view chord counter', '13', 'view_chordcounter');
INSERT INTO `auth_permission` VALUES ('53', 'Can add group result', '14', 'add_groupresult');
INSERT INTO `auth_permission` VALUES ('54', 'Can change group result', '14', 'change_groupresult');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete group result', '14', 'delete_groupresult');
INSERT INTO `auth_permission` VALUES ('56', 'Can view group result', '14', 'view_groupresult');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 用户表', '15', 'add_users');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 用户表', '15', 'change_users');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 用户表', '15', 'delete_users');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 用户表', '15', 'view_users');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 部门表', '16', 'add_dept');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 部门表', '16', 'change_dept');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 部门表', '16', 'delete_dept');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 部门表', '16', 'view_dept');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 字典表', '17', 'add_dict');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 字典表', '17', 'change_dict');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 字典表', '17', 'delete_dict');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 字典表', '17', 'view_dict');
INSERT INTO `auth_permission` VALUES ('69', 'Can add 菜单表', '18', 'add_menu');
INSERT INTO `auth_permission` VALUES ('70', 'Can change 菜单表', '18', 'change_menu');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete 菜单表', '18', 'delete_menu');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 菜单表', '18', 'view_menu');
INSERT INTO `auth_permission` VALUES ('73', 'Can add 菜单权限表', '19', 'add_menubutton');
INSERT INTO `auth_permission` VALUES ('74', 'Can change 菜单权限表', '19', 'change_menubutton');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete 菜单权限表', '19', 'delete_menubutton');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 菜单权限表', '19', 'view_menubutton');
INSERT INTO `auth_permission` VALUES ('77', 'Can add 系统配置表', '20', 'add_systemconfig');
INSERT INTO `auth_permission` VALUES ('78', 'Can change 系统配置表', '20', 'change_systemconfig');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete 系统配置表', '20', 'delete_systemconfig');
INSERT INTO `auth_permission` VALUES ('80', 'Can view 系统配置表', '20', 'view_systemconfig');
INSERT INTO `auth_permission` VALUES ('81', 'Can add 角色表', '21', 'add_role');
INSERT INTO `auth_permission` VALUES ('82', 'Can change 角色表', '21', 'change_role');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete 角色表', '21', 'delete_role');
INSERT INTO `auth_permission` VALUES ('84', 'Can view 角色表', '21', 'view_role');
INSERT INTO `auth_permission` VALUES ('85', 'Can add 岗位表', '22', 'add_post');
INSERT INTO `auth_permission` VALUES ('86', 'Can change 岗位表', '22', 'change_post');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete 岗位表', '22', 'delete_post');
INSERT INTO `auth_permission` VALUES ('88', 'Can view 岗位表', '22', 'view_post');
INSERT INTO `auth_permission` VALUES ('89', 'Can add 操作日志', '23', 'add_operationlog');
INSERT INTO `auth_permission` VALUES ('90', 'Can change 操作日志', '23', 'change_operationlog');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete 操作日志', '23', 'delete_operationlog');
INSERT INTO `auth_permission` VALUES ('92', 'Can view 操作日志', '23', 'view_operationlog');
INSERT INTO `auth_permission` VALUES ('93', 'Can add 登录日志', '24', 'add_loginlog');
INSERT INTO `auth_permission` VALUES ('94', 'Can change 登录日志', '24', 'change_loginlog');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete 登录日志', '24', 'delete_loginlog');
INSERT INTO `auth_permission` VALUES ('96', 'Can view 登录日志', '24', 'view_loginlog');
INSERT INTO `auth_permission` VALUES ('97', 'Can add 文件管理', '25', 'add_file');
INSERT INTO `auth_permission` VALUES ('98', 'Can change 文件管理', '25', 'change_file');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete 文件管理', '25', 'delete_file');
INSERT INTO `auth_permission` VALUES ('100', 'Can view 文件管理', '25', 'view_file');
INSERT INTO `auth_permission` VALUES ('101', 'Can add 字典表详情表', '26', 'add_dictitem');
INSERT INTO `auth_permission` VALUES ('102', 'Can change 字典表详情表', '26', 'change_dictitem');
INSERT INTO `auth_permission` VALUES ('103', 'Can delete 字典表详情表', '26', 'delete_dictitem');
INSERT INTO `auth_permission` VALUES ('104', 'Can view 字典表详情表', '26', 'view_dictitem');
INSERT INTO `auth_permission` VALUES ('105', 'Can add 分类字典表', '27', 'add_categorydict');
INSERT INTO `auth_permission` VALUES ('106', 'Can change 分类字典表', '27', 'change_categorydict');
INSERT INTO `auth_permission` VALUES ('107', 'Can delete 分类字典表', '27', 'delete_categorydict');
INSERT INTO `auth_permission` VALUES ('108', 'Can view 分类字典表', '27', 'view_categorydict');
INSERT INTO `auth_permission` VALUES ('109', 'Can add 权限标识表', '28', 'add_button');
INSERT INTO `auth_permission` VALUES ('110', 'Can change 权限标识表', '28', 'change_button');
INSERT INTO `auth_permission` VALUES ('111', 'Can delete 权限标识表', '28', 'delete_button');
INSERT INTO `auth_permission` VALUES ('112', 'Can view 权限标识表', '28', 'view_button');
INSERT INTO `auth_permission` VALUES ('113', 'Can add 地区表', '29', 'add_area');
INSERT INTO `auth_permission` VALUES ('114', 'Can change 地区表', '29', 'change_area');
INSERT INTO `auth_permission` VALUES ('115', 'Can delete 地区表', '29', 'delete_area');
INSERT INTO `auth_permission` VALUES ('116', 'Can view 地区表', '29', 'view_area');
INSERT INTO `auth_permission` VALUES ('117', 'Can add 接口白名单', '30', 'add_apiwhitelist');
INSERT INTO `auth_permission` VALUES ('118', 'Can change 接口白名单', '30', 'change_apiwhitelist');
INSERT INTO `auth_permission` VALUES ('119', 'Can delete 接口白名单', '30', 'delete_apiwhitelist');
INSERT INTO `auth_permission` VALUES ('120', 'Can view 接口白名单', '30', 'view_apiwhitelist');
INSERT INTO `auth_permission` VALUES ('121', 'Can add 项目演示', '31', 'add_demo');
INSERT INTO `auth_permission` VALUES ('122', 'Can change 项目演示', '31', 'change_demo');
INSERT INTO `auth_permission` VALUES ('123', 'Can delete 项目演示', '31', 'delete_demo');
INSERT INTO `auth_permission` VALUES ('124', 'Can view 项目演示', '31', 'view_demo');

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_system_users_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_system_users_id` FOREIGN KEY (`user_id`) REFERENCES `system_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_celery_beat_clockedschedule`
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_clockedschedule`;
CREATE TABLE `django_celery_beat_clockedschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clocked_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_celery_beat_clockedschedule
-- ----------------------------

-- ----------------------------
-- Table structure for `django_celery_beat_crontabschedule`
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_crontabschedule`;
CREATE TABLE `django_celery_beat_crontabschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(240) NOT NULL,
  `hour` varchar(96) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(124) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  `timezone` varchar(63) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_celery_beat_crontabschedule
-- ----------------------------

-- ----------------------------
-- Table structure for `django_celery_beat_intervalschedule`
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_intervalschedule`;
CREATE TABLE `django_celery_beat_intervalschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_celery_beat_intervalschedule
-- ----------------------------

-- ----------------------------
-- Table structure for `django_celery_beat_periodictask`
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_periodictask`;
CREATE TABLE `django_celery_beat_periodictask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) DEFAULT NULL,
  `total_run_count` int(10) unsigned NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext NOT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `interval_id` int(11) DEFAULT NULL,
  `solar_id` int(11) DEFAULT NULL,
  `one_off` tinyint(1) NOT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `priority` int(10) unsigned DEFAULT NULL,
  `headers` longtext NOT NULL,
  `clocked_id` int(11) DEFAULT NULL,
  `expire_seconds` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` (`crontab_id`),
  KEY `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` (`interval_id`),
  KEY `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` (`solar_id`),
  KEY `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` (`clocked_id`),
  CONSTRAINT `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` FOREIGN KEY (`clocked_id`) REFERENCES `django_celery_beat_clockedschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` FOREIGN KEY (`crontab_id`) REFERENCES `django_celery_beat_crontabschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` FOREIGN KEY (`interval_id`) REFERENCES `django_celery_beat_intervalschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` FOREIGN KEY (`solar_id`) REFERENCES `django_celery_beat_solarschedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_celery_beat_periodictask
-- ----------------------------

-- ----------------------------
-- Table structure for `django_celery_beat_periodictasks`
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_periodictasks`;
CREATE TABLE `django_celery_beat_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_celery_beat_periodictasks
-- ----------------------------

-- ----------------------------
-- Table structure for `django_celery_beat_solarschedule`
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_solarschedule`;
CREATE TABLE `django_celery_beat_solarschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(24) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq` (`event`,`latitude`,`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_celery_beat_solarschedule
-- ----------------------------

-- ----------------------------
-- Table structure for `django_celery_results_chordcounter`
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_results_chordcounter`;
CREATE TABLE `django_celery_results_chordcounter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) NOT NULL,
  `sub_tasks` longtext NOT NULL,
  `count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_celery_results_chordcounter
-- ----------------------------

-- ----------------------------
-- Table structure for `django_celery_results_groupresult`
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_results_groupresult`;
CREATE TABLE `django_celery_results_groupresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `date_done` datetime(6) NOT NULL,
  `content_type` varchar(128) NOT NULL,
  `content_encoding` varchar(64) NOT NULL,
  `result` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`),
  KEY `django_cele_date_cr_bd6c1d_idx` (`date_created`),
  KEY `django_cele_date_do_caae0e_idx` (`date_done`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_celery_results_groupresult
-- ----------------------------

-- ----------------------------
-- Table structure for `django_celery_results_taskresult`
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_results_taskresult`;
CREATE TABLE `django_celery_results_taskresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `content_type` varchar(128) NOT NULL,
  `content_encoding` varchar(64) NOT NULL,
  `result` longtext,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext,
  `meta` longtext,
  `task_args` longtext,
  `task_kwargs` longtext,
  `task_name` varchar(255) DEFAULT NULL,
  `worker` varchar(100) DEFAULT NULL,
  `date_created` datetime(6) NOT NULL,
  `periodic_task_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `django_cele_task_na_08aec9_idx` (`task_name`),
  KEY `django_cele_status_9b6201_idx` (`status`),
  KEY `django_cele_worker_d54dd8_idx` (`worker`),
  KEY `django_cele_date_cr_f04a50_idx` (`date_created`),
  KEY `django_cele_date_do_f59aad_idx` (`date_done`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_celery_results_taskresult
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('31', 'demo', 'demo');
INSERT INTO `django_content_type` VALUES ('11', 'django_celery_beat', 'clockedschedule');
INSERT INTO `django_content_type` VALUES ('6', 'django_celery_beat', 'crontabschedule');
INSERT INTO `django_content_type` VALUES ('7', 'django_celery_beat', 'intervalschedule');
INSERT INTO `django_content_type` VALUES ('8', 'django_celery_beat', 'periodictask');
INSERT INTO `django_content_type` VALUES ('9', 'django_celery_beat', 'periodictasks');
INSERT INTO `django_content_type` VALUES ('10', 'django_celery_beat', 'solarschedule');
INSERT INTO `django_content_type` VALUES ('13', 'django_celery_results', 'chordcounter');
INSERT INTO `django_content_type` VALUES ('14', 'django_celery_results', 'groupresult');
INSERT INTO `django_content_type` VALUES ('12', 'django_celery_results', 'taskresult');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('30', 'system', 'apiwhitelist');
INSERT INTO `django_content_type` VALUES ('29', 'system', 'area');
INSERT INTO `django_content_type` VALUES ('28', 'system', 'button');
INSERT INTO `django_content_type` VALUES ('27', 'system', 'categorydict');
INSERT INTO `django_content_type` VALUES ('16', 'system', 'dept');
INSERT INTO `django_content_type` VALUES ('17', 'system', 'dict');
INSERT INTO `django_content_type` VALUES ('26', 'system', 'dictitem');
INSERT INTO `django_content_type` VALUES ('25', 'system', 'file');
INSERT INTO `django_content_type` VALUES ('24', 'system', 'loginlog');
INSERT INTO `django_content_type` VALUES ('18', 'system', 'menu');
INSERT INTO `django_content_type` VALUES ('19', 'system', 'menubutton');
INSERT INTO `django_content_type` VALUES ('23', 'system', 'operationlog');
INSERT INTO `django_content_type` VALUES ('22', 'system', 'post');
INSERT INTO `django_content_type` VALUES ('21', 'system', 'role');
INSERT INTO `django_content_type` VALUES ('20', 'system', 'systemconfig');
INSERT INTO `django_content_type` VALUES ('15', 'system', 'users');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2022-12-24 14:20:04.274050');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2022-12-24 14:20:04.442144');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2022-12-24 14:20:04.779885');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2022-12-24 14:20:04.856816');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2022-12-24 14:20:04.890819');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2022-12-24 14:20:04.919821');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2022-12-24 14:20:04.938832');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2022-12-24 14:20:04.948820');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2022-12-24 14:20:04.967820');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2022-12-24 14:20:04.993906');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2022-12-24 14:20:05.055774');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0010_alter_group_name_max_length', '2022-12-24 14:20:05.138775');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0011_update_proxy_permissions', '2022-12-24 14:20:05.167777');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0012_alter_user_first_name_max_length', '2022-12-24 14:20:05.198778');
INSERT INTO `django_migrations` VALUES ('15', 'system', '0001_initial', '2022-12-24 14:20:08.149361');
INSERT INTO `django_migrations` VALUES ('16', 'admin', '0001_initial', '2022-12-24 14:20:08.383683');
INSERT INTO `django_migrations` VALUES ('17', 'admin', '0002_logentry_remove_auto_add', '2022-12-24 14:20:08.462914');
INSERT INTO `django_migrations` VALUES ('18', 'admin', '0003_logentry_add_action_flag_choices', '2022-12-24 14:20:08.543907');
INSERT INTO `django_migrations` VALUES ('19', 'django_celery_beat', '0001_initial', '2022-12-24 14:20:08.841846');
INSERT INTO `django_migrations` VALUES ('20', 'django_celery_beat', '0002_auto_20161118_0346', '2022-12-24 14:20:08.981411');
INSERT INTO `django_migrations` VALUES ('21', 'django_celery_beat', '0003_auto_20161209_0049', '2022-12-24 14:20:09.052131');
INSERT INTO `django_migrations` VALUES ('22', 'django_celery_beat', '0004_auto_20170221_0000', '2022-12-24 14:20:09.076135');
INSERT INTO `django_migrations` VALUES ('23', 'django_celery_beat', '0005_add_solarschedule_events_choices', '2022-12-24 14:20:09.102786');
INSERT INTO `django_migrations` VALUES ('24', 'django_celery_beat', '0006_auto_20180322_0932', '2022-12-24 14:20:09.418920');
INSERT INTO `django_migrations` VALUES ('25', 'django_celery_beat', '0007_auto_20180521_0826', '2022-12-24 14:20:09.642931');
INSERT INTO `django_migrations` VALUES ('26', 'django_celery_beat', '0008_auto_20180914_1922', '2022-12-24 14:20:09.735913');
INSERT INTO `django_migrations` VALUES ('27', 'django_celery_beat', '0006_auto_20180210_1226', '2022-12-24 14:20:09.805910');
INSERT INTO `django_migrations` VALUES ('28', 'django_celery_beat', '0006_periodictask_priority', '2022-12-24 14:20:09.936915');
INSERT INTO `django_migrations` VALUES ('29', 'django_celery_beat', '0009_periodictask_headers', '2022-12-24 14:20:10.047310');
INSERT INTO `django_migrations` VALUES ('30', 'django_celery_beat', '0010_auto_20190429_0326', '2022-12-24 14:20:10.587135');
INSERT INTO `django_migrations` VALUES ('31', 'django_celery_beat', '0011_auto_20190508_0153', '2022-12-24 14:20:10.737962');
INSERT INTO `django_migrations` VALUES ('32', 'django_celery_beat', '0012_periodictask_expire_seconds', '2022-12-24 14:20:10.834001');
INSERT INTO `django_migrations` VALUES ('33', 'django_celery_beat', '0013_auto_20200609_0727', '2022-12-24 14:20:10.862998');
INSERT INTO `django_migrations` VALUES ('34', 'django_celery_beat', '0014_remove_clockedschedule_enabled', '2022-12-24 14:20:10.938996');
INSERT INTO `django_migrations` VALUES ('35', 'django_celery_beat', '0015_edit_solarschedule_events_choices', '2022-12-24 14:20:10.964769');
INSERT INTO `django_migrations` VALUES ('36', 'django_celery_beat', '0016_alter_crontabschedule_timezone', '2022-12-24 14:20:10.991604');
INSERT INTO `django_migrations` VALUES ('37', 'django_celery_results', '0001_initial', '2022-12-24 14:20:11.074879');
INSERT INTO `django_migrations` VALUES ('38', 'django_celery_results', '0002_add_task_name_args_kwargs', '2022-12-24 14:20:11.323589');
INSERT INTO `django_migrations` VALUES ('39', 'django_celery_results', '0003_auto_20181106_1101', '2022-12-24 14:20:11.346599');
INSERT INTO `django_migrations` VALUES ('40', 'django_celery_results', '0004_auto_20190516_0412', '2022-12-24 14:20:11.524611');
INSERT INTO `django_migrations` VALUES ('41', 'django_celery_results', '0005_taskresult_worker', '2022-12-24 14:20:11.639096');
INSERT INTO `django_migrations` VALUES ('42', 'django_celery_results', '0006_taskresult_date_created', '2022-12-24 14:20:11.852855');
INSERT INTO `django_migrations` VALUES ('43', 'django_celery_results', '0007_remove_taskresult_hidden', '2022-12-24 14:20:12.085820');
INSERT INTO `django_migrations` VALUES ('44', 'django_celery_results', '0008_chordcounter', '2022-12-24 14:20:12.140310');
INSERT INTO `django_migrations` VALUES ('45', 'django_celery_results', '0009_groupresult', '2022-12-24 14:20:15.889269');
INSERT INTO `django_migrations` VALUES ('46', 'django_celery_results', '0010_remove_duplicate_indices', '2022-12-24 14:20:15.929269');
INSERT INTO `django_migrations` VALUES ('47', 'django_celery_results', '0011_taskresult_periodic_task_name', '2022-12-24 14:20:16.005605');
INSERT INTO `django_migrations` VALUES ('48', 'sessions', '0001_initial', '2022-12-24 14:20:16.064878');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for `system_api_white_list`
-- ----------------------------
DROP TABLE IF EXISTS `system_api_white_list`;
CREATE TABLE `system_api_white_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `belong_dept` int(11) DEFAULT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  `create_datetime` datetime(6) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `url` varchar(200) NOT NULL,
  `method` int(11) DEFAULT NULL,
  `enable_datasource` tinyint(1) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_api_white_list_creator_id_ddfed7e5` (`creator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_api_white_list
-- ----------------------------

-- ----------------------------
-- Table structure for `system_area`
-- ----------------------------
DROP TABLE IF EXISTS `system_area`;
CREATE TABLE `system_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `belong_dept` int(11) DEFAULT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  `create_datetime` datetime(6) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(20) NOT NULL,
  `level` bigint(20) NOT NULL,
  `pinyin` varchar(255) NOT NULL,
  `initials` varchar(20) NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `pcode_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `system_area_creator_id_f21d453e` (`creator_id`),
  KEY `system_area_pcode_id_1a4b7606` (`pcode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3446 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_area
-- ----------------------------
INSERT INTO `system_area` VALUES ('1', null, null, null, '2022-12-24 14:21:06.180875', '2022-12-24 14:21:06.180875', '1', '北京市', '11', '1', 'beijingshi', 'B', '1', null, null);
INSERT INTO `system_area` VALUES ('2', null, null, null, '2022-12-24 14:21:06.180875', '2022-12-24 14:21:06.180875', '1', '市辖区', '1101', '2', 'shixiaqu', 'S', '1', null, '11');
INSERT INTO `system_area` VALUES ('3', null, null, null, '2022-12-24 14:21:06.180875', '2022-12-24 14:21:06.180875', '1', '东城区', '110101', '3', 'dongchengqu', 'D', '1', null, '1101');
INSERT INTO `system_area` VALUES ('4', null, null, null, '2022-12-24 14:21:06.180875', '2022-12-24 14:21:06.180875', '1', '西城区', '110102', '3', 'xichengqu', 'X', '1', null, '1101');
INSERT INTO `system_area` VALUES ('5', null, null, null, '2022-12-24 14:21:06.180875', '2022-12-24 14:21:06.180875', '1', '朝阳区', '110105', '3', 'chaoyangqu', 'C', '1', null, '1101');
INSERT INTO `system_area` VALUES ('6', null, null, null, '2022-12-24 14:21:06.180875', '2022-12-24 14:21:06.180875', '1', '丰台区', '110106', '3', 'fengtaiqu', 'F', '1', null, '1101');
INSERT INTO `system_area` VALUES ('7', null, null, null, '2022-12-24 14:21:06.180875', '2022-12-24 14:21:06.180875', '1', '石景山区', '110107', '3', 'shijingshanqu', 'S', '1', null, '1101');
INSERT INTO `system_area` VALUES ('8', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '海淀区', '110108', '3', 'haidianqu', 'H', '1', null, '1101');
INSERT INTO `system_area` VALUES ('9', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '门头沟区', '110109', '3', 'mentougouqu', 'M', '1', null, '1101');
INSERT INTO `system_area` VALUES ('10', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '房山区', '110111', '3', 'fangshanqu', 'F', '1', null, '1101');
INSERT INTO `system_area` VALUES ('11', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '通州区', '110112', '3', 'tongzhouqu', 'T', '1', null, '1101');
INSERT INTO `system_area` VALUES ('12', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '顺义区', '110113', '3', 'shunyiqu', 'S', '1', null, '1101');
INSERT INTO `system_area` VALUES ('13', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '昌平区', '110114', '3', 'changpingqu', 'C', '1', null, '1101');
INSERT INTO `system_area` VALUES ('14', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '大兴区', '110115', '3', 'daxingqu', 'D', '1', null, '1101');
INSERT INTO `system_area` VALUES ('15', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '怀柔区', '110116', '3', 'huairouqu', 'H', '1', null, '1101');
INSERT INTO `system_area` VALUES ('16', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '平谷区', '110117', '3', 'pingguqu', 'P', '1', null, '1101');
INSERT INTO `system_area` VALUES ('17', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '密云区', '110118', '3', 'miyunqu', 'M', '1', null, '1101');
INSERT INTO `system_area` VALUES ('18', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '延庆区', '110119', '3', 'yanqingqu', 'Y', '1', null, '1101');
INSERT INTO `system_area` VALUES ('19', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '天津市', '12', '1', 'tianjinshi', 'T', '1', null, null);
INSERT INTO `system_area` VALUES ('20', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '市辖区', '1201', '2', 'shixiaqu', 'S', '1', null, '12');
INSERT INTO `system_area` VALUES ('21', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '和平区', '120101', '3', 'hepingqu', 'H', '1', null, '1201');
INSERT INTO `system_area` VALUES ('22', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '河东区', '120102', '3', 'hedongqu', 'H', '1', null, '1201');
INSERT INTO `system_area` VALUES ('23', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '河西区', '120103', '3', 'hexiqu', 'H', '1', null, '1201');
INSERT INTO `system_area` VALUES ('24', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '南开区', '120104', '3', 'nankaiqu', 'N', '1', null, '1201');
INSERT INTO `system_area` VALUES ('25', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '河北区', '120105', '3', 'hebeiqu', 'H', '1', null, '1201');
INSERT INTO `system_area` VALUES ('26', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '红桥区', '120106', '3', 'hongqiaoqu', 'H', '1', null, '1201');
INSERT INTO `system_area` VALUES ('27', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '东丽区', '120110', '3', 'dongliqu', 'D', '1', null, '1201');
INSERT INTO `system_area` VALUES ('28', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '西青区', '120111', '3', 'xiqingqu', 'X', '1', null, '1201');
INSERT INTO `system_area` VALUES ('29', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '津南区', '120112', '3', 'jinnanqu', 'J', '1', null, '1201');
INSERT INTO `system_area` VALUES ('30', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '北辰区', '120113', '3', 'beichenqu', 'B', '1', null, '1201');
INSERT INTO `system_area` VALUES ('31', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '武清区', '120114', '3', 'wuqingqu', 'W', '1', null, '1201');
INSERT INTO `system_area` VALUES ('32', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '宝坻区', '120115', '3', 'baodiqu', 'B', '1', null, '1201');
INSERT INTO `system_area` VALUES ('33', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '滨海新区', '120116', '3', 'binhaixinqu', 'B', '1', null, '1201');
INSERT INTO `system_area` VALUES ('34', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '宁河区', '120117', '3', 'ninghequ', 'N', '1', null, '1201');
INSERT INTO `system_area` VALUES ('35', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '静海区', '120118', '3', 'jinghaiqu', 'J', '1', null, '1201');
INSERT INTO `system_area` VALUES ('36', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '蓟州区', '120119', '3', 'jizhouqu', 'J', '1', null, '1201');
INSERT INTO `system_area` VALUES ('37', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '河北省', '13', '1', 'hebeisheng', 'H', '1', null, null);
INSERT INTO `system_area` VALUES ('38', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '石家庄市', '1301', '2', 'shijiazhuangshi', 'S', '1', null, '13');
INSERT INTO `system_area` VALUES ('39', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.183880', '1', '长安区', '130102', '3', 'changanqu', 'C', '1', null, '1301');
INSERT INTO `system_area` VALUES ('40', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '桥西区', '130104', '3', 'qiaoxiqu', 'Q', '1', null, '1301');
INSERT INTO `system_area` VALUES ('41', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '新华区', '130105', '3', 'xinhuaqu', 'X', '1', null, '1301');
INSERT INTO `system_area` VALUES ('42', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '井陉矿区', '130107', '3', 'jingxingkuangqu', 'J', '1', null, '1301');
INSERT INTO `system_area` VALUES ('43', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '裕华区', '130108', '3', 'yuhuaqu', 'Y', '1', null, '1301');
INSERT INTO `system_area` VALUES ('44', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '藁城区', '130109', '3', 'gaochengqu', 'G', '1', null, '1301');
INSERT INTO `system_area` VALUES ('45', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '鹿泉区', '130110', '3', 'luquanqu', 'L', '1', null, '1301');
INSERT INTO `system_area` VALUES ('46', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '栾城区', '130111', '3', 'luanchengqu', 'L', '1', null, '1301');
INSERT INTO `system_area` VALUES ('47', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '井陉县', '130121', '3', 'jingxingxian', 'J', '1', null, '1301');
INSERT INTO `system_area` VALUES ('48', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '正定县', '130123', '3', 'zhengdingxian', 'Z', '1', null, '1301');
INSERT INTO `system_area` VALUES ('49', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '行唐县', '130125', '3', 'xingtangxian', 'X', '1', null, '1301');
INSERT INTO `system_area` VALUES ('50', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '灵寿县', '130126', '3', 'lingshouxian', 'L', '1', null, '1301');
INSERT INTO `system_area` VALUES ('51', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '高邑县', '130127', '3', 'gaoyixian', 'G', '1', null, '1301');
INSERT INTO `system_area` VALUES ('52', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '深泽县', '130128', '3', 'shenzexian', 'S', '1', null, '1301');
INSERT INTO `system_area` VALUES ('53', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '赞皇县', '130129', '3', 'zanhuangxian', 'Z', '1', null, '1301');
INSERT INTO `system_area` VALUES ('54', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '无极县', '130130', '3', 'wujixian', 'W', '1', null, '1301');
INSERT INTO `system_area` VALUES ('55', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '平山县', '130131', '3', 'pingshanxian', 'P', '1', null, '1301');
INSERT INTO `system_area` VALUES ('56', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '元氏县', '130132', '3', 'yuanshixian', 'Y', '1', null, '1301');
INSERT INTO `system_area` VALUES ('57', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '赵县', '130133', '3', 'zhaoxian', 'Z', '1', null, '1301');
INSERT INTO `system_area` VALUES ('58', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '石家庄高新技术产业开发区', '130171', '3', 'shijiazhuanggaoxinjishuchanyekaifaqu', 'S', '1', null, '1301');
INSERT INTO `system_area` VALUES ('59', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '石家庄循环化工园区', '130172', '3', 'shijiazhuangxunhuanhuagongyuanqu', 'S', '1', null, '1301');
INSERT INTO `system_area` VALUES ('60', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '辛集市', '130181', '3', 'xinjishi', 'X', '1', null, '1301');
INSERT INTO `system_area` VALUES ('61', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '晋州市', '130183', '3', 'jinzhoushi', 'J', '1', null, '1301');
INSERT INTO `system_area` VALUES ('62', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '新乐市', '130184', '3', 'xinleshi', 'X', '1', null, '1301');
INSERT INTO `system_area` VALUES ('63', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '唐山市', '1302', '2', 'tangshanshi', 'T', '1', null, '13');
INSERT INTO `system_area` VALUES ('64', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '路南区', '130202', '3', 'lunanqu', 'L', '1', null, '1302');
INSERT INTO `system_area` VALUES ('65', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '路北区', '130203', '3', 'lubeiqu', 'L', '1', null, '1302');
INSERT INTO `system_area` VALUES ('66', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '古冶区', '130204', '3', 'guyequ', 'G', '1', null, '1302');
INSERT INTO `system_area` VALUES ('67', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '开平区', '130205', '3', 'kaipingqu', 'K', '1', null, '1302');
INSERT INTO `system_area` VALUES ('68', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '丰南区', '130207', '3', 'fengnanqu', 'F', '1', null, '1302');
INSERT INTO `system_area` VALUES ('69', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '丰润区', '130208', '3', 'fengrunqu', 'F', '1', null, '1302');
INSERT INTO `system_area` VALUES ('70', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '曹妃甸区', '130209', '3', 'caofeidianqu', 'C', '1', null, '1302');
INSERT INTO `system_area` VALUES ('71', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '滦南县', '130224', '3', 'luannanxian', 'L', '1', null, '1302');
INSERT INTO `system_area` VALUES ('72', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '乐亭县', '130225', '3', 'letingxian', 'L', '1', null, '1302');
INSERT INTO `system_area` VALUES ('73', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '迁西县', '130227', '3', 'qianxixian', 'Q', '1', null, '1302');
INSERT INTO `system_area` VALUES ('74', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '玉田县', '130229', '3', 'yutianxian', 'Y', '1', null, '1302');
INSERT INTO `system_area` VALUES ('75', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '河北唐山芦台经济开发区', '130271', '3', 'hebeitangshanlutaijingjikaifaqu', 'H', '1', null, '1302');
INSERT INTO `system_area` VALUES ('76', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '唐山市汉沽管理区', '130272', '3', 'tangshanshihanguguanliqu', 'T', '1', null, '1302');
INSERT INTO `system_area` VALUES ('77', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '唐山高新技术产业开发区', '130273', '3', 'tangshangaoxinjishuchanyekaifaqu', 'T', '1', null, '1302');
INSERT INTO `system_area` VALUES ('78', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '河北唐山海港经济开发区', '130274', '3', 'hebeitangshanhaigangjingjikaifaqu', 'H', '1', null, '1302');
INSERT INTO `system_area` VALUES ('79', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '遵化市', '130281', '3', 'zunhuashi', 'Z', '1', null, '1302');
INSERT INTO `system_area` VALUES ('80', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '迁安市', '130283', '3', 'qiananshi', 'Q', '1', null, '1302');
INSERT INTO `system_area` VALUES ('81', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '滦州市', '130284', '3', 'luanzhoushi', 'L', '1', null, '1302');
INSERT INTO `system_area` VALUES ('82', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '秦皇岛市', '1303', '2', 'qinhuangdaoshi', 'Q', '1', null, '13');
INSERT INTO `system_area` VALUES ('83', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '海港区', '130302', '3', 'haigangqu', 'H', '1', null, '1303');
INSERT INTO `system_area` VALUES ('84', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '山海关区', '130303', '3', 'shanhaiguanqu', 'S', '1', null, '1303');
INSERT INTO `system_area` VALUES ('85', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '北戴河区', '130304', '3', 'beidaihequ', 'B', '1', null, '1303');
INSERT INTO `system_area` VALUES ('86', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '抚宁区', '130306', '3', 'funingqu', 'F', '1', null, '1303');
INSERT INTO `system_area` VALUES ('87', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '青龙满族自治县', '130321', '3', 'qinglongmanzuzizhixian', 'Q', '1', null, '1303');
INSERT INTO `system_area` VALUES ('88', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '昌黎县', '130322', '3', 'changlixian', 'C', '1', null, '1303');
INSERT INTO `system_area` VALUES ('89', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '卢龙县', '130324', '3', 'lulongxian', 'L', '1', null, '1303');
INSERT INTO `system_area` VALUES ('90', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '秦皇岛市经济技术开发区', '130371', '3', 'qinhuangdaoshijingjijishukaifaqu', 'Q', '1', null, '1303');
INSERT INTO `system_area` VALUES ('91', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '北戴河新区', '130372', '3', 'beidaihexinqu', 'B', '1', null, '1303');
INSERT INTO `system_area` VALUES ('92', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '邯郸市', '1304', '2', 'handanshi', 'H', '1', null, '13');
INSERT INTO `system_area` VALUES ('93', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '邯山区', '130402', '3', 'hanshanqu', 'H', '1', null, '1304');
INSERT INTO `system_area` VALUES ('94', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '丛台区', '130403', '3', 'congtaiqu', 'C', '1', null, '1304');
INSERT INTO `system_area` VALUES ('95', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '复兴区', '130404', '3', 'fuxingqu', 'F', '1', null, '1304');
INSERT INTO `system_area` VALUES ('96', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '峰峰矿区', '130406', '3', 'fengfengkuangqu', 'F', '1', null, '1304');
INSERT INTO `system_area` VALUES ('97', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '肥乡区', '130407', '3', 'feixiangqu', 'F', '1', null, '1304');
INSERT INTO `system_area` VALUES ('98', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '永年区', '130408', '3', 'yongnianqu', 'Y', '1', null, '1304');
INSERT INTO `system_area` VALUES ('99', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '临漳县', '130423', '3', 'linzhangxian', 'L', '1', null, '1304');
INSERT INTO `system_area` VALUES ('100', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '成安县', '130424', '3', 'chenganxian', 'C', '1', null, '1304');
INSERT INTO `system_area` VALUES ('101', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '大名县', '130425', '3', 'damingxian', 'D', '1', null, '1304');
INSERT INTO `system_area` VALUES ('102', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '涉县', '130426', '3', 'shexian', 'S', '1', null, '1304');
INSERT INTO `system_area` VALUES ('103', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '磁县', '130427', '3', 'cixian', 'C', '1', null, '1304');
INSERT INTO `system_area` VALUES ('104', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '邱县', '130430', '3', 'qiuxian', 'Q', '1', null, '1304');
INSERT INTO `system_area` VALUES ('105', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '鸡泽县', '130431', '3', 'jizexian', 'J', '1', null, '1304');
INSERT INTO `system_area` VALUES ('106', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '广平县', '130432', '3', 'guangpingxian', 'G', '1', null, '1304');
INSERT INTO `system_area` VALUES ('107', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '馆陶县', '130433', '3', 'guantaoxian', 'G', '1', null, '1304');
INSERT INTO `system_area` VALUES ('108', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '魏县', '130434', '3', 'weixian', 'W', '1', null, '1304');
INSERT INTO `system_area` VALUES ('109', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '曲周县', '130435', '3', 'quzhouxian', 'Q', '1', null, '1304');
INSERT INTO `system_area` VALUES ('110', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '邯郸经济技术开发区', '130471', '3', 'handanjingjijishukaifaqu', 'H', '1', null, '1304');
INSERT INTO `system_area` VALUES ('111', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '邯郸冀南新区', '130473', '3', 'handanjinanxinqu', 'H', '1', null, '1304');
INSERT INTO `system_area` VALUES ('112', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '武安市', '130481', '3', 'wuanshi', 'W', '1', null, '1304');
INSERT INTO `system_area` VALUES ('113', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '邢台市', '1305', '2', 'xingtaishi', 'X', '1', null, '13');
INSERT INTO `system_area` VALUES ('114', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '襄都区', '130502', '3', 'xiangdouqu', 'X', '1', null, '1305');
INSERT INTO `system_area` VALUES ('115', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '信都区', '130503', '3', 'xindouqu', 'X', '1', null, '1305');
INSERT INTO `system_area` VALUES ('116', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '任泽区', '130505', '3', 'renzequ', 'R', '1', null, '1305');
INSERT INTO `system_area` VALUES ('117', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '南和区', '130506', '3', 'nanhequ', 'N', '1', null, '1305');
INSERT INTO `system_area` VALUES ('118', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '临城县', '130522', '3', 'linchengxian', 'L', '1', null, '1305');
INSERT INTO `system_area` VALUES ('119', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '内丘县', '130523', '3', 'neiqiuxian', 'N', '1', null, '1305');
INSERT INTO `system_area` VALUES ('120', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '柏乡县', '130524', '3', 'baixiangxian', 'B', '1', null, '1305');
INSERT INTO `system_area` VALUES ('121', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '隆尧县', '130525', '3', 'longyaoxian', 'L', '1', null, '1305');
INSERT INTO `system_area` VALUES ('122', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '宁晋县', '130528', '3', 'ningjinxian', 'N', '1', null, '1305');
INSERT INTO `system_area` VALUES ('123', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '巨鹿县', '130529', '3', 'juluxian', 'J', '1', null, '1305');
INSERT INTO `system_area` VALUES ('124', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '新河县', '130530', '3', 'xinhexian', 'X', '1', null, '1305');
INSERT INTO `system_area` VALUES ('125', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '广宗县', '130531', '3', 'guangzongxian', 'G', '1', null, '1305');
INSERT INTO `system_area` VALUES ('126', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '平乡县', '130532', '3', 'pingxiangxian', 'P', '1', null, '1305');
INSERT INTO `system_area` VALUES ('127', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '威县', '130533', '3', 'weixian', 'W', '1', null, '1305');
INSERT INTO `system_area` VALUES ('128', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '清河县', '130534', '3', 'qinghexian', 'Q', '1', null, '1305');
INSERT INTO `system_area` VALUES ('129', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '临西县', '130535', '3', 'linxixian', 'L', '1', null, '1305');
INSERT INTO `system_area` VALUES ('130', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '河北邢台经济开发区', '130571', '3', 'hebeixingtaijingjikaifaqu', 'H', '1', null, '1305');
INSERT INTO `system_area` VALUES ('131', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '南宫市', '130581', '3', 'nangongshi', 'N', '1', null, '1305');
INSERT INTO `system_area` VALUES ('132', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '沙河市', '130582', '3', 'shaheshi', 'S', '1', null, '1305');
INSERT INTO `system_area` VALUES ('133', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '保定市', '1306', '2', 'baodingshi', 'B', '1', null, '13');
INSERT INTO `system_area` VALUES ('134', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '竞秀区', '130602', '3', 'jingxiuqu', 'J', '1', null, '1306');
INSERT INTO `system_area` VALUES ('135', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '莲池区', '130606', '3', 'lianchiqu', 'L', '1', null, '1306');
INSERT INTO `system_area` VALUES ('136', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '满城区', '130607', '3', 'manchengqu', 'M', '1', null, '1306');
INSERT INTO `system_area` VALUES ('137', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '清苑区', '130608', '3', 'qingyuanqu', 'Q', '1', null, '1306');
INSERT INTO `system_area` VALUES ('138', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '徐水区', '130609', '3', 'xushuiqu', 'X', '1', null, '1306');
INSERT INTO `system_area` VALUES ('139', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '涞水县', '130623', '3', 'laishuixian', 'L', '1', null, '1306');
INSERT INTO `system_area` VALUES ('140', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '阜平县', '130624', '3', 'fupingxian', 'F', '1', null, '1306');
INSERT INTO `system_area` VALUES ('141', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '定兴县', '130626', '3', 'dingxingxian', 'D', '1', null, '1306');
INSERT INTO `system_area` VALUES ('142', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '唐县', '130627', '3', 'tangxian', 'T', '1', null, '1306');
INSERT INTO `system_area` VALUES ('143', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '高阳县', '130628', '3', 'gaoyangxian', 'G', '1', null, '1306');
INSERT INTO `system_area` VALUES ('144', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '容城县', '130629', '3', 'rongchengxian', 'R', '1', null, '1306');
INSERT INTO `system_area` VALUES ('145', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '涞源县', '130630', '3', 'laiyuanxian', 'L', '1', null, '1306');
INSERT INTO `system_area` VALUES ('146', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '望都县', '130631', '3', 'wangdouxian', 'W', '1', null, '1306');
INSERT INTO `system_area` VALUES ('147', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '安新县', '130632', '3', 'anxinxian', 'A', '1', null, '1306');
INSERT INTO `system_area` VALUES ('148', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '易县', '130633', '3', 'yixian', 'Y', '1', null, '1306');
INSERT INTO `system_area` VALUES ('149', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '曲阳县', '130634', '3', 'quyangxian', 'Q', '1', null, '1306');
INSERT INTO `system_area` VALUES ('150', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '蠡县', '130635', '3', 'lixian', 'L', '1', null, '1306');
INSERT INTO `system_area` VALUES ('151', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '顺平县', '130636', '3', 'shunpingxian', 'S', '1', null, '1306');
INSERT INTO `system_area` VALUES ('152', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '博野县', '130637', '3', 'boyexian', 'B', '1', null, '1306');
INSERT INTO `system_area` VALUES ('153', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '雄县', '130638', '3', 'xiongxian', 'X', '1', null, '1306');
INSERT INTO `system_area` VALUES ('154', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '保定高新技术产业开发区', '130671', '3', 'baodinggaoxinjishuchanyekaifaqu', 'B', '1', null, '1306');
INSERT INTO `system_area` VALUES ('155', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '保定白沟新城', '130672', '3', 'baodingbaigouxincheng', 'B', '1', null, '1306');
INSERT INTO `system_area` VALUES ('156', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '涿州市', '130681', '3', 'zhuozhoushi', 'Z', '1', null, '1306');
INSERT INTO `system_area` VALUES ('157', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '定州市', '130682', '3', 'dingzhoushi', 'D', '1', null, '1306');
INSERT INTO `system_area` VALUES ('158', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '安国市', '130683', '3', 'anguoshi', 'A', '1', null, '1306');
INSERT INTO `system_area` VALUES ('159', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '高碑店市', '130684', '3', 'gaobeidianshi', 'G', '1', null, '1306');
INSERT INTO `system_area` VALUES ('160', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '张家口市', '1307', '2', 'zhangjiakoushi', 'Z', '1', null, '13');
INSERT INTO `system_area` VALUES ('161', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '桥东区', '130702', '3', 'qiaodongqu', 'Q', '1', null, '1307');
INSERT INTO `system_area` VALUES ('162', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '桥西区', '130703', '3', 'qiaoxiqu', 'Q', '1', null, '1307');
INSERT INTO `system_area` VALUES ('163', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '宣化区', '130705', '3', 'xuanhuaqu', 'X', '1', null, '1307');
INSERT INTO `system_area` VALUES ('164', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '下花园区', '130706', '3', 'xiahuayuanqu', 'X', '1', null, '1307');
INSERT INTO `system_area` VALUES ('165', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '万全区', '130708', '3', 'wanquanqu', 'W', '1', null, '1307');
INSERT INTO `system_area` VALUES ('166', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.191883', '1', '崇礼区', '130709', '3', 'chongliqu', 'C', '1', null, '1307');
INSERT INTO `system_area` VALUES ('167', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '张北县', '130722', '3', 'zhangbeixian', 'Z', '1', null, '1307');
INSERT INTO `system_area` VALUES ('168', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '康保县', '130723', '3', 'kangbaoxian', 'K', '1', null, '1307');
INSERT INTO `system_area` VALUES ('169', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '沽源县', '130724', '3', 'guyuanxian', 'G', '1', null, '1307');
INSERT INTO `system_area` VALUES ('170', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '尚义县', '130725', '3', 'shangyixian', 'S', '1', null, '1307');
INSERT INTO `system_area` VALUES ('171', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '蔚县', '130726', '3', 'yuxian', 'Y', '1', null, '1307');
INSERT INTO `system_area` VALUES ('172', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '阳原县', '130727', '3', 'yangyuanxian', 'Y', '1', null, '1307');
INSERT INTO `system_area` VALUES ('173', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '怀安县', '130728', '3', 'huaianxian', 'H', '1', null, '1307');
INSERT INTO `system_area` VALUES ('174', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '怀来县', '130730', '3', 'huailaixian', 'H', '1', null, '1307');
INSERT INTO `system_area` VALUES ('175', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '涿鹿县', '130731', '3', 'zhuoluxian', 'Z', '1', null, '1307');
INSERT INTO `system_area` VALUES ('176', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '赤城县', '130732', '3', 'chichengxian', 'C', '1', null, '1307');
INSERT INTO `system_area` VALUES ('177', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '张家口经济开发区', '130771', '3', 'zhangjiakoujingjikaifaqu', 'Z', '1', null, '1307');
INSERT INTO `system_area` VALUES ('178', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '张家口市察北管理区', '130772', '3', 'zhangjiakoushichabeiguanliqu', 'Z', '1', null, '1307');
INSERT INTO `system_area` VALUES ('179', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '张家口市塞北管理区', '130773', '3', 'zhangjiakoushisaibeiguanliqu', 'Z', '1', null, '1307');
INSERT INTO `system_area` VALUES ('180', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '承德市', '1308', '2', 'chengdeshi', 'C', '1', null, '13');
INSERT INTO `system_area` VALUES ('181', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '双桥区', '130802', '3', 'shuangqiaoqu', 'S', '1', null, '1308');
INSERT INTO `system_area` VALUES ('182', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '双滦区', '130803', '3', 'shuangluanqu', 'S', '1', null, '1308');
INSERT INTO `system_area` VALUES ('183', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '鹰手营子矿区', '130804', '3', 'yingshouyingzikuangqu', 'Y', '1', null, '1308');
INSERT INTO `system_area` VALUES ('184', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '承德县', '130821', '3', 'chengdexian', 'C', '1', null, '1308');
INSERT INTO `system_area` VALUES ('185', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '兴隆县', '130822', '3', 'xinglongxian', 'X', '1', null, '1308');
INSERT INTO `system_area` VALUES ('186', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '滦平县', '130824', '3', 'luanpingxian', 'L', '1', null, '1308');
INSERT INTO `system_area` VALUES ('187', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '隆化县', '130825', '3', 'longhuaxian', 'L', '1', null, '1308');
INSERT INTO `system_area` VALUES ('188', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '丰宁满族自治县', '130826', '3', 'fengningmanzuzizhixian', 'F', '1', null, '1308');
INSERT INTO `system_area` VALUES ('189', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '宽城满族自治县', '130827', '3', 'kuanchengmanzuzizhixian', 'K', '1', null, '1308');
INSERT INTO `system_area` VALUES ('190', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '围场满族蒙古族自治县', '130828', '3', 'weichangmanzumengguzuzizhixian', 'W', '1', null, '1308');
INSERT INTO `system_area` VALUES ('191', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '承德高新技术产业开发区', '130871', '3', 'chengdegaoxinjishuchanyekaifaqu', 'C', '1', null, '1308');
INSERT INTO `system_area` VALUES ('192', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '平泉市', '130881', '3', 'pingquanshi', 'P', '1', null, '1308');
INSERT INTO `system_area` VALUES ('193', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '沧州市', '1309', '2', 'cangzhoushi', 'C', '1', null, '13');
INSERT INTO `system_area` VALUES ('194', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '新华区', '130902', '3', 'xinhuaqu', 'X', '1', null, '1309');
INSERT INTO `system_area` VALUES ('195', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '运河区', '130903', '3', 'yunhequ', 'Y', '1', null, '1309');
INSERT INTO `system_area` VALUES ('196', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '沧县', '130921', '3', 'cangxian', 'C', '1', null, '1309');
INSERT INTO `system_area` VALUES ('197', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '青县', '130922', '3', 'qingxian', 'Q', '1', null, '1309');
INSERT INTO `system_area` VALUES ('198', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '东光县', '130923', '3', 'dongguangxian', 'D', '1', null, '1309');
INSERT INTO `system_area` VALUES ('199', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '海兴县', '130924', '3', 'haixingxian', 'H', '1', null, '1309');
INSERT INTO `system_area` VALUES ('200', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '盐山县', '130925', '3', 'yanshanxian', 'Y', '1', null, '1309');
INSERT INTO `system_area` VALUES ('201', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '肃宁县', '130926', '3', 'suningxian', 'S', '1', null, '1309');
INSERT INTO `system_area` VALUES ('202', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '南皮县', '130927', '3', 'nanpixian', 'N', '1', null, '1309');
INSERT INTO `system_area` VALUES ('203', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '吴桥县', '130928', '3', 'wuqiaoxian', 'W', '1', null, '1309');
INSERT INTO `system_area` VALUES ('204', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '献县', '130929', '3', 'xianxian', 'X', '1', null, '1309');
INSERT INTO `system_area` VALUES ('205', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '孟村回族自治县', '130930', '3', 'mengcunhuizuzizhixian', 'M', '1', null, '1309');
INSERT INTO `system_area` VALUES ('206', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '河北沧州经济开发区', '130971', '3', 'hebeicangzhoujingjikaifaqu', 'H', '1', null, '1309');
INSERT INTO `system_area` VALUES ('207', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '沧州高新技术产业开发区', '130972', '3', 'cangzhougaoxinjishuchanyekaifaqu', 'C', '1', null, '1309');
INSERT INTO `system_area` VALUES ('208', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '沧州渤海新区', '130973', '3', 'cangzhoubohaixinqu', 'C', '1', null, '1309');
INSERT INTO `system_area` VALUES ('209', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '泊头市', '130981', '3', 'potoushi', 'P', '1', null, '1309');
INSERT INTO `system_area` VALUES ('210', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '任丘市', '130982', '3', 'renqiushi', 'R', '1', null, '1309');
INSERT INTO `system_area` VALUES ('211', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '黄骅市', '130983', '3', 'huanghuashi', 'H', '1', null, '1309');
INSERT INTO `system_area` VALUES ('212', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '河间市', '130984', '3', 'hejianshi', 'H', '1', null, '1309');
INSERT INTO `system_area` VALUES ('213', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '廊坊市', '1310', '2', 'langfangshi', 'L', '1', null, '13');
INSERT INTO `system_area` VALUES ('214', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '安次区', '131002', '3', 'anciqu', 'A', '1', null, '1310');
INSERT INTO `system_area` VALUES ('215', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '广阳区', '131003', '3', 'guangyangqu', 'G', '1', null, '1310');
INSERT INTO `system_area` VALUES ('216', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '固安县', '131022', '3', 'guanxian', 'G', '1', null, '1310');
INSERT INTO `system_area` VALUES ('217', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '永清县', '131023', '3', 'yongqingxian', 'Y', '1', null, '1310');
INSERT INTO `system_area` VALUES ('218', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '香河县', '131024', '3', 'xianghexian', 'X', '1', null, '1310');
INSERT INTO `system_area` VALUES ('219', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '大城县', '131025', '3', 'daichengxian', 'D', '1', null, '1310');
INSERT INTO `system_area` VALUES ('220', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '文安县', '131026', '3', 'wenanxian', 'W', '1', null, '1310');
INSERT INTO `system_area` VALUES ('221', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '大厂回族自治县', '131028', '3', 'dachanghuizuzizhixian', 'D', '1', null, '1310');
INSERT INTO `system_area` VALUES ('222', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '廊坊经济技术开发区', '131071', '3', 'langfangjingjijishukaifaqu', 'L', '1', null, '1310');
INSERT INTO `system_area` VALUES ('223', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '霸州市', '131081', '3', 'bazhoushi', 'B', '1', null, '1310');
INSERT INTO `system_area` VALUES ('224', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '三河市', '131082', '3', 'sanheshi', 'S', '1', null, '1310');
INSERT INTO `system_area` VALUES ('225', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '衡水市', '1311', '2', 'hengshuishi', 'H', '1', null, '13');
INSERT INTO `system_area` VALUES ('226', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '桃城区', '131102', '3', 'taochengqu', 'T', '1', null, '1311');
INSERT INTO `system_area` VALUES ('227', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '冀州区', '131103', '3', 'jizhouqu', 'J', '1', null, '1311');
INSERT INTO `system_area` VALUES ('228', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '枣强县', '131121', '3', 'zaoqiangxian', 'Z', '1', null, '1311');
INSERT INTO `system_area` VALUES ('229', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '武邑县', '131122', '3', 'wuyixian', 'W', '1', null, '1311');
INSERT INTO `system_area` VALUES ('230', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '武强县', '131123', '3', 'wuqiangxian', 'W', '1', null, '1311');
INSERT INTO `system_area` VALUES ('231', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '饶阳县', '131124', '3', 'raoyangxian', 'R', '1', null, '1311');
INSERT INTO `system_area` VALUES ('232', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '安平县', '131125', '3', 'anpingxian', 'A', '1', null, '1311');
INSERT INTO `system_area` VALUES ('233', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '故城县', '131126', '3', 'guchengxian', 'G', '1', null, '1311');
INSERT INTO `system_area` VALUES ('234', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '景县', '131127', '3', 'jingxian', 'J', '1', null, '1311');
INSERT INTO `system_area` VALUES ('235', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '阜城县', '131128', '3', 'fuchengxian', 'F', '1', null, '1311');
INSERT INTO `system_area` VALUES ('236', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '河北衡水高新技术产业开发区', '131171', '3', 'hebeihengshuigaoxinjishuchanyekaifaqu', 'H', '1', null, '1311');
INSERT INTO `system_area` VALUES ('237', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '衡水滨湖新区', '131172', '3', 'hengshuibinhuxinqu', 'H', '1', null, '1311');
INSERT INTO `system_area` VALUES ('238', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '深州市', '131182', '3', 'shenzhoushi', 'S', '1', null, '1311');
INSERT INTO `system_area` VALUES ('239', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '山西省', '14', '1', 'shanxisheng', 'S', '1', null, null);
INSERT INTO `system_area` VALUES ('240', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '太原市', '1401', '2', 'taiyuanshi', 'T', '1', null, '14');
INSERT INTO `system_area` VALUES ('241', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '小店区', '140105', '3', 'xiaodianqu', 'X', '1', null, '1401');
INSERT INTO `system_area` VALUES ('242', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '迎泽区', '140106', '3', 'yingzequ', 'Y', '1', null, '1401');
INSERT INTO `system_area` VALUES ('243', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '杏花岭区', '140107', '3', 'xinghualingqu', 'X', '1', null, '1401');
INSERT INTO `system_area` VALUES ('244', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '尖草坪区', '140108', '3', 'jiancaopingqu', 'J', '1', null, '1401');
INSERT INTO `system_area` VALUES ('245', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '万柏林区', '140109', '3', 'wanbolinqu', 'W', '1', null, '1401');
INSERT INTO `system_area` VALUES ('246', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '晋源区', '140110', '3', 'jinyuanqu', 'J', '1', null, '1401');
INSERT INTO `system_area` VALUES ('247', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '清徐县', '140121', '3', 'qingxuxian', 'Q', '1', null, '1401');
INSERT INTO `system_area` VALUES ('248', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '阳曲县', '140122', '3', 'yangquxian', 'Y', '1', null, '1401');
INSERT INTO `system_area` VALUES ('249', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '娄烦县', '140123', '3', 'loufanxian', 'L', '1', null, '1401');
INSERT INTO `system_area` VALUES ('250', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '山西转型综合改革示范区', '140171', '3', 'shanxizhuanxingzonghegaigeshifanqu', 'S', '1', null, '1401');
INSERT INTO `system_area` VALUES ('251', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '古交市', '140181', '3', 'gujiaoshi', 'G', '1', null, '1401');
INSERT INTO `system_area` VALUES ('252', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '大同市', '1402', '2', 'datongshi', 'D', '1', null, '14');
INSERT INTO `system_area` VALUES ('253', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '新荣区', '140212', '3', 'xinrongqu', 'X', '1', null, '1402');
INSERT INTO `system_area` VALUES ('254', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '平城区', '140213', '3', 'pingchengqu', 'P', '1', null, '1402');
INSERT INTO `system_area` VALUES ('255', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '云冈区', '140214', '3', 'yungangqu', 'Y', '1', null, '1402');
INSERT INTO `system_area` VALUES ('256', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '云州区', '140215', '3', 'yunzhouqu', 'Y', '1', null, '1402');
INSERT INTO `system_area` VALUES ('257', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '阳高县', '140221', '3', 'yanggaoxian', 'Y', '1', null, '1402');
INSERT INTO `system_area` VALUES ('258', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '天镇县', '140222', '3', 'tianzhenxian', 'T', '1', null, '1402');
INSERT INTO `system_area` VALUES ('259', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '广灵县', '140223', '3', 'guanglingxian', 'G', '1', null, '1402');
INSERT INTO `system_area` VALUES ('260', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '灵丘县', '140224', '3', 'lingqiuxian', 'L', '1', null, '1402');
INSERT INTO `system_area` VALUES ('261', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '浑源县', '140225', '3', 'hunyuanxian', 'H', '1', null, '1402');
INSERT INTO `system_area` VALUES ('262', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '左云县', '140226', '3', 'zuoyunxian', 'Z', '1', null, '1402');
INSERT INTO `system_area` VALUES ('263', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '山西大同经济开发区', '140271', '3', 'shanxidatongjingjikaifaqu', 'S', '1', null, '1402');
INSERT INTO `system_area` VALUES ('264', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '阳泉市', '1403', '2', 'yangquanshi', 'Y', '1', null, '14');
INSERT INTO `system_area` VALUES ('265', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '城区', '140302', '3', 'chengqu', 'C', '1', null, '1403');
INSERT INTO `system_area` VALUES ('266', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '矿区', '140303', '3', 'kuangqu', 'K', '1', null, '1403');
INSERT INTO `system_area` VALUES ('267', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '郊区', '140311', '3', 'jiaoqu', 'J', '1', null, '1403');
INSERT INTO `system_area` VALUES ('268', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '平定县', '140321', '3', 'pingdingxian', 'P', '1', null, '1403');
INSERT INTO `system_area` VALUES ('269', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '盂县', '140322', '3', 'yuxian', 'Y', '1', null, '1403');
INSERT INTO `system_area` VALUES ('270', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '长治市', '1404', '2', 'zhangzhishi', 'Z', '1', null, '14');
INSERT INTO `system_area` VALUES ('271', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '潞州区', '140403', '3', 'luzhouqu', 'L', '1', null, '1404');
INSERT INTO `system_area` VALUES ('272', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '上党区', '140404', '3', 'shangdangqu', 'S', '1', null, '1404');
INSERT INTO `system_area` VALUES ('273', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '屯留区', '140405', '3', 'tunliuqu', 'T', '1', null, '1404');
INSERT INTO `system_area` VALUES ('274', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '潞城区', '140406', '3', 'luchengqu', 'L', '1', null, '1404');
INSERT INTO `system_area` VALUES ('275', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '襄垣县', '140423', '3', 'xiangyuanxian', 'X', '1', null, '1404');
INSERT INTO `system_area` VALUES ('276', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '平顺县', '140425', '3', 'pingshunxian', 'P', '1', null, '1404');
INSERT INTO `system_area` VALUES ('277', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '黎城县', '140426', '3', 'lichengxian', 'L', '1', null, '1404');
INSERT INTO `system_area` VALUES ('278', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '壶关县', '140427', '3', 'huguanxian', 'H', '1', null, '1404');
INSERT INTO `system_area` VALUES ('279', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '长子县', '140428', '3', 'zhangzixian', 'Z', '1', null, '1404');
INSERT INTO `system_area` VALUES ('280', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '武乡县', '140429', '3', 'wuxiangxian', 'W', '1', null, '1404');
INSERT INTO `system_area` VALUES ('281', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '沁县', '140430', '3', 'qinxian', 'Q', '1', null, '1404');
INSERT INTO `system_area` VALUES ('282', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '沁源县', '140431', '3', 'qinyuanxian', 'Q', '1', null, '1404');
INSERT INTO `system_area` VALUES ('283', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '山西长治高新技术产业园区', '140471', '3', 'shanxizhangzhigaoxinjishuchanyeyuanqu', 'S', '1', null, '1404');
INSERT INTO `system_area` VALUES ('284', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '晋城市', '1405', '2', 'jinchengshi', 'J', '1', null, '14');
INSERT INTO `system_area` VALUES ('285', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '城区', '140502', '3', 'chengqu', 'C', '1', null, '1405');
INSERT INTO `system_area` VALUES ('286', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '沁水县', '140521', '3', 'qinshuixian', 'Q', '1', null, '1405');
INSERT INTO `system_area` VALUES ('287', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '阳城县', '140522', '3', 'yangchengxian', 'Y', '1', null, '1405');
INSERT INTO `system_area` VALUES ('288', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '陵川县', '140524', '3', 'lingchuanxian', 'L', '1', null, '1405');
INSERT INTO `system_area` VALUES ('289', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '泽州县', '140525', '3', 'zezhouxian', 'Z', '1', null, '1405');
INSERT INTO `system_area` VALUES ('290', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '高平市', '140581', '3', 'gaopingshi', 'G', '1', null, '1405');
INSERT INTO `system_area` VALUES ('291', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '朔州市', '1406', '2', 'shuozhoushi', 'S', '1', null, '14');
INSERT INTO `system_area` VALUES ('292', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '朔城区', '140602', '3', 'shuochengqu', 'S', '1', null, '1406');
INSERT INTO `system_area` VALUES ('293', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '平鲁区', '140603', '3', 'pingluqu', 'P', '1', null, '1406');
INSERT INTO `system_area` VALUES ('294', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '山阴县', '140621', '3', 'shanyinxian', 'S', '1', null, '1406');
INSERT INTO `system_area` VALUES ('295', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '应县', '140622', '3', 'yingxian', 'Y', '1', null, '1406');
INSERT INTO `system_area` VALUES ('296', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '右玉县', '140623', '3', 'youyuxian', 'Y', '1', null, '1406');
INSERT INTO `system_area` VALUES ('297', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '山西朔州经济开发区', '140671', '3', 'shanxishuozhoujingjikaifaqu', 'S', '1', null, '1406');
INSERT INTO `system_area` VALUES ('298', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '怀仁市', '140681', '3', 'huairenshi', 'H', '1', null, '1406');
INSERT INTO `system_area` VALUES ('299', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '晋中市', '1407', '2', 'jinzhongshi', 'J', '1', null, '14');
INSERT INTO `system_area` VALUES ('300', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '榆次区', '140702', '3', 'yuciqu', 'Y', '1', null, '1407');
INSERT INTO `system_area` VALUES ('301', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '太谷区', '140703', '3', 'taiguqu', 'T', '1', null, '1407');
INSERT INTO `system_area` VALUES ('302', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '榆社县', '140721', '3', 'yushexian', 'Y', '1', null, '1407');
INSERT INTO `system_area` VALUES ('303', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '左权县', '140722', '3', 'zuoquanxian', 'Z', '1', null, '1407');
INSERT INTO `system_area` VALUES ('304', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '和顺县', '140723', '3', 'heshunxian', 'H', '1', null, '1407');
INSERT INTO `system_area` VALUES ('305', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '昔阳县', '140724', '3', 'xiyangxian', 'X', '1', null, '1407');
INSERT INTO `system_area` VALUES ('306', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '寿阳县', '140725', '3', 'shouyangxian', 'S', '1', null, '1407');
INSERT INTO `system_area` VALUES ('307', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '祁县', '140727', '3', 'qixian', 'Q', '1', null, '1407');
INSERT INTO `system_area` VALUES ('308', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '平遥县', '140728', '3', 'pingyaoxian', 'P', '1', null, '1407');
INSERT INTO `system_area` VALUES ('309', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '灵石县', '140729', '3', 'lingshixian', 'L', '1', null, '1407');
INSERT INTO `system_area` VALUES ('310', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '介休市', '140781', '3', 'jiexiushi', 'J', '1', null, '1407');
INSERT INTO `system_area` VALUES ('311', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '运城市', '1408', '2', 'yunchengshi', 'Y', '1', null, '14');
INSERT INTO `system_area` VALUES ('312', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '盐湖区', '140802', '3', 'yanhuqu', 'Y', '1', null, '1408');
INSERT INTO `system_area` VALUES ('313', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '临猗县', '140821', '3', 'linyixian', 'L', '1', null, '1408');
INSERT INTO `system_area` VALUES ('314', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '万荣县', '140822', '3', 'wanrongxian', 'W', '1', null, '1408');
INSERT INTO `system_area` VALUES ('315', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '闻喜县', '140823', '3', 'wenxixian', 'W', '1', null, '1408');
INSERT INTO `system_area` VALUES ('316', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '稷山县', '140824', '3', 'jishanxian', 'J', '1', null, '1408');
INSERT INTO `system_area` VALUES ('317', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '新绛县', '140825', '3', 'xinjiangxian', 'X', '1', null, '1408');
INSERT INTO `system_area` VALUES ('318', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '绛县', '140826', '3', 'jiangxian', 'J', '1', null, '1408');
INSERT INTO `system_area` VALUES ('319', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '垣曲县', '140827', '3', 'yuanquxian', 'Y', '1', null, '1408');
INSERT INTO `system_area` VALUES ('320', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '夏县', '140828', '3', 'xiaxian', 'X', '1', null, '1408');
INSERT INTO `system_area` VALUES ('321', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '平陆县', '140829', '3', 'pingluxian', 'P', '1', null, '1408');
INSERT INTO `system_area` VALUES ('322', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '芮城县', '140830', '3', 'ruichengxian', 'R', '1', null, '1408');
INSERT INTO `system_area` VALUES ('323', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '永济市', '140881', '3', 'yongjishi', 'Y', '1', null, '1408');
INSERT INTO `system_area` VALUES ('324', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '河津市', '140882', '3', 'hejinshi', 'H', '1', null, '1408');
INSERT INTO `system_area` VALUES ('325', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '忻州市', '1409', '2', 'xinzhoushi', 'X', '1', null, '14');
INSERT INTO `system_area` VALUES ('326', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '忻府区', '140902', '3', 'xinfuqu', 'X', '1', null, '1409');
INSERT INTO `system_area` VALUES ('327', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '定襄县', '140921', '3', 'dingxiangxian', 'D', '1', null, '1409');
INSERT INTO `system_area` VALUES ('328', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '五台县', '140922', '3', 'wutaixian', 'W', '1', null, '1409');
INSERT INTO `system_area` VALUES ('329', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '代县', '140923', '3', 'daixian', 'D', '1', null, '1409');
INSERT INTO `system_area` VALUES ('330', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '繁峙县', '140924', '3', 'fanzhixian', 'F', '1', null, '1409');
INSERT INTO `system_area` VALUES ('331', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '宁武县', '140925', '3', 'ningwuxian', 'N', '1', null, '1409');
INSERT INTO `system_area` VALUES ('332', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '静乐县', '140926', '3', 'jinglexian', 'J', '1', null, '1409');
INSERT INTO `system_area` VALUES ('333', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '神池县', '140927', '3', 'shenchixian', 'S', '1', null, '1409');
INSERT INTO `system_area` VALUES ('334', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '五寨县', '140928', '3', 'wuzhaixian', 'W', '1', null, '1409');
INSERT INTO `system_area` VALUES ('335', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '岢岚县', '140929', '3', 'kelanxian', 'K', '1', null, '1409');
INSERT INTO `system_area` VALUES ('336', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '河曲县', '140930', '3', 'hequxian', 'H', '1', null, '1409');
INSERT INTO `system_area` VALUES ('337', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '保德县', '140931', '3', 'baodexian', 'B', '1', null, '1409');
INSERT INTO `system_area` VALUES ('338', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '偏关县', '140932', '3', 'pianguanxian', 'P', '1', null, '1409');
INSERT INTO `system_area` VALUES ('339', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '五台山风景名胜区', '140971', '3', 'wutaishanfengjingmingshengqu', 'W', '1', null, '1409');
INSERT INTO `system_area` VALUES ('340', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '原平市', '140981', '3', 'yuanpingshi', 'Y', '1', null, '1409');
INSERT INTO `system_area` VALUES ('341', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '临汾市', '1410', '2', 'linfenshi', 'L', '1', null, '14');
INSERT INTO `system_area` VALUES ('342', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '尧都区', '141002', '3', 'yaodouqu', 'Y', '1', null, '1410');
INSERT INTO `system_area` VALUES ('343', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '曲沃县', '141021', '3', 'quwoxian', 'Q', '1', null, '1410');
INSERT INTO `system_area` VALUES ('344', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '翼城县', '141022', '3', 'yichengxian', 'Y', '1', null, '1410');
INSERT INTO `system_area` VALUES ('345', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '襄汾县', '141023', '3', 'xiangfenxian', 'X', '1', null, '1410');
INSERT INTO `system_area` VALUES ('346', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '洪洞县', '141024', '3', 'hongdongxian', 'H', '1', null, '1410');
INSERT INTO `system_area` VALUES ('347', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '古县', '141025', '3', 'guxian', 'G', '1', null, '1410');
INSERT INTO `system_area` VALUES ('348', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '安泽县', '141026', '3', 'anzexian', 'A', '1', null, '1410');
INSERT INTO `system_area` VALUES ('349', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '浮山县', '141027', '3', 'fushanxian', 'F', '1', null, '1410');
INSERT INTO `system_area` VALUES ('350', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '吉县', '141028', '3', 'jixian', 'J', '1', null, '1410');
INSERT INTO `system_area` VALUES ('351', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '乡宁县', '141029', '3', 'xiangningxian', 'X', '1', null, '1410');
INSERT INTO `system_area` VALUES ('352', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '大宁县', '141030', '3', 'daningxian', 'D', '1', null, '1410');
INSERT INTO `system_area` VALUES ('353', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '隰县', '141031', '3', 'xixian', 'X', '1', null, '1410');
INSERT INTO `system_area` VALUES ('354', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '永和县', '141032', '3', 'yonghexian', 'Y', '1', null, '1410');
INSERT INTO `system_area` VALUES ('355', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '蒲县', '141033', '3', 'puxian', 'P', '1', null, '1410');
INSERT INTO `system_area` VALUES ('356', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '汾西县', '141034', '3', 'fenxixian', 'F', '1', null, '1410');
INSERT INTO `system_area` VALUES ('357', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '侯马市', '141081', '3', 'houmashi', 'H', '1', null, '1410');
INSERT INTO `system_area` VALUES ('358', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '霍州市', '141082', '3', 'huozhoushi', 'H', '1', null, '1410');
INSERT INTO `system_area` VALUES ('359', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '吕梁市', '1411', '2', 'lvliangshi', 'L', '1', null, '14');
INSERT INTO `system_area` VALUES ('360', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '离石区', '141102', '3', 'lishiqu', 'L', '1', null, '1411');
INSERT INTO `system_area` VALUES ('361', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '文水县', '141121', '3', 'wenshuixian', 'W', '1', null, '1411');
INSERT INTO `system_area` VALUES ('362', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '交城县', '141122', '3', 'jiaochengxian', 'J', '1', null, '1411');
INSERT INTO `system_area` VALUES ('363', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '兴县', '141123', '3', 'xingxian', 'X', '1', null, '1411');
INSERT INTO `system_area` VALUES ('364', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '临县', '141124', '3', 'linxian', 'L', '1', null, '1411');
INSERT INTO `system_area` VALUES ('365', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '柳林县', '141125', '3', 'liulinxian', 'L', '1', null, '1411');
INSERT INTO `system_area` VALUES ('366', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '石楼县', '141126', '3', 'shilouxian', 'S', '1', null, '1411');
INSERT INTO `system_area` VALUES ('367', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '岚县', '141127', '3', 'lanxian', 'L', '1', null, '1411');
INSERT INTO `system_area` VALUES ('368', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '方山县', '141128', '3', 'fangshanxian', 'F', '1', null, '1411');
INSERT INTO `system_area` VALUES ('369', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '中阳县', '141129', '3', 'zhongyangxian', 'Z', '1', null, '1411');
INSERT INTO `system_area` VALUES ('370', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '交口县', '141130', '3', 'jiaokouxian', 'J', '1', null, '1411');
INSERT INTO `system_area` VALUES ('371', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '孝义市', '141181', '3', 'xiaoyishi', 'X', '1', null, '1411');
INSERT INTO `system_area` VALUES ('372', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '汾阳市', '141182', '3', 'fenyangshi', 'F', '1', null, '1411');
INSERT INTO `system_area` VALUES ('373', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '内蒙古自治区', '15', '1', 'neimengguzizhiqu', 'N', '1', null, null);
INSERT INTO `system_area` VALUES ('374', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '呼和浩特市', '1501', '2', 'huhehaoteshi', 'H', '1', null, '15');
INSERT INTO `system_area` VALUES ('375', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '新城区', '150102', '3', 'xinchengqu', 'X', '1', null, '1501');
INSERT INTO `system_area` VALUES ('376', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '回民区', '150103', '3', 'huiminqu', 'H', '1', null, '1501');
INSERT INTO `system_area` VALUES ('377', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '玉泉区', '150104', '3', 'yuquanqu', 'Y', '1', null, '1501');
INSERT INTO `system_area` VALUES ('378', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '赛罕区', '150105', '3', 'saihanqu', 'S', '1', null, '1501');
INSERT INTO `system_area` VALUES ('379', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '土默特左旗', '150121', '3', 'tumotezuoqi', 'T', '1', null, '1501');
INSERT INTO `system_area` VALUES ('380', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '托克托县', '150122', '3', 'tuoketuoxian', 'T', '1', null, '1501');
INSERT INTO `system_area` VALUES ('381', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '和林格尔县', '150123', '3', 'helingeerxian', 'H', '1', null, '1501');
INSERT INTO `system_area` VALUES ('382', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '清水河县', '150124', '3', 'qingshuihexian', 'Q', '1', null, '1501');
INSERT INTO `system_area` VALUES ('383', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '武川县', '150125', '3', 'wuchuanxian', 'W', '1', null, '1501');
INSERT INTO `system_area` VALUES ('384', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.204876', '1', '呼和浩特经济技术开发区', '150172', '3', 'huhehaotejingjijishukaifaqu', 'H', '1', null, '1501');
INSERT INTO `system_area` VALUES ('385', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '包头市', '1502', '2', 'baotoushi', 'B', '1', null, '15');
INSERT INTO `system_area` VALUES ('386', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '东河区', '150202', '3', 'donghequ', 'D', '1', null, '1502');
INSERT INTO `system_area` VALUES ('387', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '昆都仑区', '150203', '3', 'kundoulunqu', 'K', '1', null, '1502');
INSERT INTO `system_area` VALUES ('388', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '青山区', '150204', '3', 'qingshanqu', 'Q', '1', null, '1502');
INSERT INTO `system_area` VALUES ('389', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '石拐区', '150205', '3', 'shiguaiqu', 'S', '1', null, '1502');
INSERT INTO `system_area` VALUES ('390', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '白云鄂博矿区', '150206', '3', 'baiyunebokuangqu', 'B', '1', null, '1502');
INSERT INTO `system_area` VALUES ('391', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '九原区', '150207', '3', 'jiuyuanqu', 'J', '1', null, '1502');
INSERT INTO `system_area` VALUES ('392', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '土默特右旗', '150221', '3', 'tumoteyouqi', 'T', '1', null, '1502');
INSERT INTO `system_area` VALUES ('393', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '固阳县', '150222', '3', 'guyangxian', 'G', '1', null, '1502');
INSERT INTO `system_area` VALUES ('394', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '达尔罕茂明安联合旗', '150223', '3', 'daerhanmaominganlianheqi', 'D', '1', null, '1502');
INSERT INTO `system_area` VALUES ('395', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '包头稀土高新技术产业开发区', '150271', '3', 'baotouxitugaoxinjishuchanyekaifaqu', 'B', '1', null, '1502');
INSERT INTO `system_area` VALUES ('396', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '乌海市', '1503', '2', 'wuhaishi', 'W', '1', null, '15');
INSERT INTO `system_area` VALUES ('397', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '海勃湾区', '150302', '3', 'haibowanqu', 'H', '1', null, '1503');
INSERT INTO `system_area` VALUES ('398', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '海南区', '150303', '3', 'hainanqu', 'H', '1', null, '1503');
INSERT INTO `system_area` VALUES ('399', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '乌达区', '150304', '3', 'wudaqu', 'W', '1', null, '1503');
INSERT INTO `system_area` VALUES ('400', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '赤峰市', '1504', '2', 'chifengshi', 'C', '1', null, '15');
INSERT INTO `system_area` VALUES ('401', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '红山区', '150402', '3', 'hongshanqu', 'H', '1', null, '1504');
INSERT INTO `system_area` VALUES ('402', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '元宝山区', '150403', '3', 'yuanbaoshanqu', 'Y', '1', null, '1504');
INSERT INTO `system_area` VALUES ('403', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '松山区', '150404', '3', 'songshanqu', 'S', '1', null, '1504');
INSERT INTO `system_area` VALUES ('404', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '阿鲁科尔沁旗', '150421', '3', 'alukeerqinqi', 'A', '1', null, '1504');
INSERT INTO `system_area` VALUES ('405', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '巴林左旗', '150422', '3', 'balinzuoqi', 'B', '1', null, '1504');
INSERT INTO `system_area` VALUES ('406', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '巴林右旗', '150423', '3', 'balinyouqi', 'B', '1', null, '1504');
INSERT INTO `system_area` VALUES ('407', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '林西县', '150424', '3', 'linxixian', 'L', '1', null, '1504');
INSERT INTO `system_area` VALUES ('408', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '克什克腾旗', '150425', '3', 'keshenketengqi', 'K', '1', null, '1504');
INSERT INTO `system_area` VALUES ('409', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '翁牛特旗', '150426', '3', 'wengniuteqi', 'W', '1', null, '1504');
INSERT INTO `system_area` VALUES ('410', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '喀喇沁旗', '150428', '3', 'kalaqinqi', 'K', '1', null, '1504');
INSERT INTO `system_area` VALUES ('411', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '宁城县', '150429', '3', 'ningchengxian', 'N', '1', null, '1504');
INSERT INTO `system_area` VALUES ('412', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '敖汉旗', '150430', '3', 'aohanqi', 'A', '1', null, '1504');
INSERT INTO `system_area` VALUES ('413', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '通辽市', '1505', '2', 'tongliaoshi', 'T', '1', null, '15');
INSERT INTO `system_area` VALUES ('414', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '科尔沁区', '150502', '3', 'keerqinqu', 'K', '1', null, '1505');
INSERT INTO `system_area` VALUES ('415', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '科尔沁左翼中旗', '150521', '3', 'keerqinzuoyizhongqi', 'K', '1', null, '1505');
INSERT INTO `system_area` VALUES ('416', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '科尔沁左翼后旗', '150522', '3', 'keerqinzuoyihouqi', 'K', '1', null, '1505');
INSERT INTO `system_area` VALUES ('417', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '开鲁县', '150523', '3', 'kailuxian', 'K', '1', null, '1505');
INSERT INTO `system_area` VALUES ('418', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '库伦旗', '150524', '3', 'kulunqi', 'K', '1', null, '1505');
INSERT INTO `system_area` VALUES ('419', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '奈曼旗', '150525', '3', 'naimanqi', 'N', '1', null, '1505');
INSERT INTO `system_area` VALUES ('420', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '扎鲁特旗', '150526', '3', 'zhaluteqi', 'Z', '1', null, '1505');
INSERT INTO `system_area` VALUES ('421', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '通辽经济技术开发区', '150571', '3', 'tongliaojingjijishukaifaqu', 'T', '1', null, '1505');
INSERT INTO `system_area` VALUES ('422', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '霍林郭勒市', '150581', '3', 'huolinguoleishi', 'H', '1', null, '1505');
INSERT INTO `system_area` VALUES ('423', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '鄂尔多斯市', '1506', '2', 'eerduosishi', 'E', '1', null, '15');
INSERT INTO `system_area` VALUES ('424', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '东胜区', '150602', '3', 'dongshengqu', 'D', '1', null, '1506');
INSERT INTO `system_area` VALUES ('425', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '康巴什区', '150603', '3', 'kangbashenqu', 'K', '1', null, '1506');
INSERT INTO `system_area` VALUES ('426', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '达拉特旗', '150621', '3', 'dalateqi', 'D', '1', null, '1506');
INSERT INTO `system_area` VALUES ('427', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '准格尔旗', '150622', '3', 'zhungeerqi', 'Z', '1', null, '1506');
INSERT INTO `system_area` VALUES ('428', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '鄂托克前旗', '150623', '3', 'etuokeqianqi', 'E', '1', null, '1506');
INSERT INTO `system_area` VALUES ('429', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '鄂托克旗', '150624', '3', 'etuokeqi', 'E', '1', null, '1506');
INSERT INTO `system_area` VALUES ('430', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '杭锦旗', '150625', '3', 'hangjinqi', 'H', '1', null, '1506');
INSERT INTO `system_area` VALUES ('431', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '乌审旗', '150626', '3', 'wushenqi', 'W', '1', null, '1506');
INSERT INTO `system_area` VALUES ('432', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '伊金霍洛旗', '150627', '3', 'yijinhuoluoqi', 'Y', '1', null, '1506');
INSERT INTO `system_area` VALUES ('433', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '呼伦贝尔市', '1507', '2', 'hulunbeiershi', 'H', '1', null, '15');
INSERT INTO `system_area` VALUES ('434', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '海拉尔区', '150702', '3', 'hailaerqu', 'H', '1', null, '1507');
INSERT INTO `system_area` VALUES ('435', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '扎赉诺尔区', '150703', '3', 'zhalainuoerqu', 'Z', '1', null, '1507');
INSERT INTO `system_area` VALUES ('436', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '阿荣旗', '150721', '3', 'arongqi', 'A', '1', null, '1507');
INSERT INTO `system_area` VALUES ('437', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '莫力达瓦达斡尔族自治旗', '150722', '3', 'molidawadawoerzuzizhiqi', 'M', '1', null, '1507');
INSERT INTO `system_area` VALUES ('438', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '鄂伦春自治旗', '150723', '3', 'elunchunzizhiqi', 'E', '1', null, '1507');
INSERT INTO `system_area` VALUES ('439', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '鄂温克族自治旗', '150724', '3', 'ewenkezuzizhiqi', 'E', '1', null, '1507');
INSERT INTO `system_area` VALUES ('440', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '陈巴尔虎旗', '150725', '3', 'chenbaerhuqi', 'C', '1', null, '1507');
INSERT INTO `system_area` VALUES ('441', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '新巴尔虎左旗', '150726', '3', 'xinbaerhuzuoqi', 'X', '1', null, '1507');
INSERT INTO `system_area` VALUES ('442', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '新巴尔虎右旗', '150727', '3', 'xinbaerhuyouqi', 'X', '1', null, '1507');
INSERT INTO `system_area` VALUES ('443', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '满洲里市', '150781', '3', 'manzhoulishi', 'M', '1', null, '1507');
INSERT INTO `system_area` VALUES ('444', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '牙克石市', '150782', '3', 'yakeshishi', 'Y', '1', null, '1507');
INSERT INTO `system_area` VALUES ('445', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '扎兰屯市', '150783', '3', 'zhalantunshi', 'Z', '1', null, '1507');
INSERT INTO `system_area` VALUES ('446', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '额尔古纳市', '150784', '3', 'eergunashi', 'E', '1', null, '1507');
INSERT INTO `system_area` VALUES ('447', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '根河市', '150785', '3', 'genheshi', 'G', '1', null, '1507');
INSERT INTO `system_area` VALUES ('448', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '巴彦淖尔市', '1508', '2', 'bayannaoershi', 'B', '1', null, '15');
INSERT INTO `system_area` VALUES ('449', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '临河区', '150802', '3', 'linhequ', 'L', '1', null, '1508');
INSERT INTO `system_area` VALUES ('450', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '五原县', '150821', '3', 'wuyuanxian', 'W', '1', null, '1508');
INSERT INTO `system_area` VALUES ('451', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '磴口县', '150822', '3', 'dengkouxian', 'D', '1', null, '1508');
INSERT INTO `system_area` VALUES ('452', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.208875', '1', '乌拉特前旗', '150823', '3', 'wulateqianqi', 'W', '1', null, '1508');
INSERT INTO `system_area` VALUES ('453', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '乌拉特中旗', '150824', '3', 'wulatezhongqi', 'W', '1', null, '1508');
INSERT INTO `system_area` VALUES ('454', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '乌拉特后旗', '150825', '3', 'wulatehouqi', 'W', '1', null, '1508');
INSERT INTO `system_area` VALUES ('455', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '杭锦后旗', '150826', '3', 'hangjinhouqi', 'H', '1', null, '1508');
INSERT INTO `system_area` VALUES ('456', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '乌兰察布市', '1509', '2', 'wulanchabushi', 'W', '1', null, '15');
INSERT INTO `system_area` VALUES ('457', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '集宁区', '150902', '3', 'jiningqu', 'J', '1', null, '1509');
INSERT INTO `system_area` VALUES ('458', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '卓资县', '150921', '3', 'zhuozixian', 'Z', '1', null, '1509');
INSERT INTO `system_area` VALUES ('459', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '化德县', '150922', '3', 'huadexian', 'H', '1', null, '1509');
INSERT INTO `system_area` VALUES ('460', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '商都县', '150923', '3', 'shangdouxian', 'S', '1', null, '1509');
INSERT INTO `system_area` VALUES ('461', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '兴和县', '150924', '3', 'xinghexian', 'X', '1', null, '1509');
INSERT INTO `system_area` VALUES ('462', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '凉城县', '150925', '3', 'liangchengxian', 'L', '1', null, '1509');
INSERT INTO `system_area` VALUES ('463', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '察哈尔右翼前旗', '150926', '3', 'chahaeryouyiqianqi', 'C', '1', null, '1509');
INSERT INTO `system_area` VALUES ('464', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '察哈尔右翼中旗', '150927', '3', 'chahaeryouyizhongqi', 'C', '1', null, '1509');
INSERT INTO `system_area` VALUES ('465', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '察哈尔右翼后旗', '150928', '3', 'chahaeryouyihouqi', 'C', '1', null, '1509');
INSERT INTO `system_area` VALUES ('466', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '四子王旗', '150929', '3', 'siziwangqi', 'S', '1', null, '1509');
INSERT INTO `system_area` VALUES ('467', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '丰镇市', '150981', '3', 'fengzhenshi', 'F', '1', null, '1509');
INSERT INTO `system_area` VALUES ('468', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '兴安盟', '1522', '2', 'xinganmeng', 'X', '1', null, '15');
INSERT INTO `system_area` VALUES ('469', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.209875', '1', '乌兰浩特市', '152201', '3', 'wulanhaoteshi', 'W', '1', null, '1522');
INSERT INTO `system_area` VALUES ('470', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '阿尔山市', '152202', '3', 'aershanshi', 'A', '1', null, '1522');
INSERT INTO `system_area` VALUES ('471', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '科尔沁右翼前旗', '152221', '3', 'keerqinyouyiqianqi', 'K', '1', null, '1522');
INSERT INTO `system_area` VALUES ('472', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '科尔沁右翼中旗', '152222', '3', 'keerqinyouyizhongqi', 'K', '1', null, '1522');
INSERT INTO `system_area` VALUES ('473', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '扎赉特旗', '152223', '3', 'zhalaiteqi', 'Z', '1', null, '1522');
INSERT INTO `system_area` VALUES ('474', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '突泉县', '152224', '3', 'tuquanxian', 'T', '1', null, '1522');
INSERT INTO `system_area` VALUES ('475', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '锡林郭勒盟', '1525', '2', 'xilinguoleimeng', 'X', '1', null, '15');
INSERT INTO `system_area` VALUES ('476', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '二连浩特市', '152501', '3', 'erlianhaoteshi', 'E', '1', null, '1525');
INSERT INTO `system_area` VALUES ('477', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '锡林浩特市', '152502', '3', 'xilinhaoteshi', 'X', '1', null, '1525');
INSERT INTO `system_area` VALUES ('478', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '阿巴嘎旗', '152522', '3', 'abagaqi', 'A', '1', null, '1525');
INSERT INTO `system_area` VALUES ('479', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '苏尼特左旗', '152523', '3', 'sunitezuoqi', 'S', '1', null, '1525');
INSERT INTO `system_area` VALUES ('480', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '苏尼特右旗', '152524', '3', 'suniteyouqi', 'S', '1', null, '1525');
INSERT INTO `system_area` VALUES ('481', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '东乌珠穆沁旗', '152525', '3', 'dongwuzhumuqinqi', 'D', '1', null, '1525');
INSERT INTO `system_area` VALUES ('482', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '西乌珠穆沁旗', '152526', '3', 'xiwuzhumuqinqi', 'X', '1', null, '1525');
INSERT INTO `system_area` VALUES ('483', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '太仆寺旗', '152527', '3', 'taipusiqi', 'T', '1', null, '1525');
INSERT INTO `system_area` VALUES ('484', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '镶黄旗', '152528', '3', 'xianghuangqi', 'X', '1', null, '1525');
INSERT INTO `system_area` VALUES ('485', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '正镶白旗', '152529', '3', 'zhengxiangbaiqi', 'Z', '1', null, '1525');
INSERT INTO `system_area` VALUES ('486', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '正蓝旗', '152530', '3', 'zhenglanqi', 'Z', '1', null, '1525');
INSERT INTO `system_area` VALUES ('487', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '多伦县', '152531', '3', 'duolunxian', 'D', '1', null, '1525');
INSERT INTO `system_area` VALUES ('488', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '乌拉盖管委会', '152571', '3', 'wulagaiguanweihui', 'W', '1', null, '1525');
INSERT INTO `system_area` VALUES ('489', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '阿拉善盟', '1529', '2', 'alashanmeng', 'A', '1', null, '15');
INSERT INTO `system_area` VALUES ('490', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '阿拉善左旗', '152921', '3', 'alashanzuoqi', 'A', '1', null, '1529');
INSERT INTO `system_area` VALUES ('491', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '阿拉善右旗', '152922', '3', 'alashanyouqi', 'A', '1', null, '1529');
INSERT INTO `system_area` VALUES ('492', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '额济纳旗', '152923', '3', 'ejinaqi', 'E', '1', null, '1529');
INSERT INTO `system_area` VALUES ('493', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '内蒙古阿拉善经济开发区', '152971', '3', 'neimenggualashanjingjikaifaqu', 'N', '1', null, '1529');
INSERT INTO `system_area` VALUES ('494', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '辽宁省', '21', '1', 'liaoningsheng', 'L', '1', null, null);
INSERT INTO `system_area` VALUES ('495', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '沈阳市', '2101', '2', 'shenyangshi', 'S', '1', null, '21');
INSERT INTO `system_area` VALUES ('496', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '和平区', '210102', '3', 'hepingqu', 'H', '1', null, '2101');
INSERT INTO `system_area` VALUES ('497', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '沈河区', '210103', '3', 'shenhequ', 'S', '1', null, '2101');
INSERT INTO `system_area` VALUES ('498', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '大东区', '210104', '3', 'dadongqu', 'D', '1', null, '2101');
INSERT INTO `system_area` VALUES ('499', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '皇姑区', '210105', '3', 'huangguqu', 'H', '1', null, '2101');
INSERT INTO `system_area` VALUES ('500', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '铁西区', '210106', '3', 'tiexiqu', 'T', '1', null, '2101');
INSERT INTO `system_area` VALUES ('501', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '苏家屯区', '210111', '3', 'sujiatunqu', 'S', '1', null, '2101');
INSERT INTO `system_area` VALUES ('502', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '浑南区', '210112', '3', 'hunnanqu', 'H', '1', null, '2101');
INSERT INTO `system_area` VALUES ('503', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '沈北新区', '210113', '3', 'shenbeixinqu', 'S', '1', null, '2101');
INSERT INTO `system_area` VALUES ('504', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '于洪区', '210114', '3', 'yuhongqu', 'Y', '1', null, '2101');
INSERT INTO `system_area` VALUES ('505', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '辽中区', '210115', '3', 'liaozhongqu', 'L', '1', null, '2101');
INSERT INTO `system_area` VALUES ('506', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '康平县', '210123', '3', 'kangpingxian', 'K', '1', null, '2101');
INSERT INTO `system_area` VALUES ('507', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '法库县', '210124', '3', 'fakuxian', 'F', '1', null, '2101');
INSERT INTO `system_area` VALUES ('508', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '新民市', '210181', '3', 'xinminshi', 'X', '1', null, '2101');
INSERT INTO `system_area` VALUES ('509', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '大连市', '2102', '2', 'dalianshi', 'D', '1', null, '21');
INSERT INTO `system_area` VALUES ('510', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '中山区', '210202', '3', 'zhongshanqu', 'Z', '1', null, '2102');
INSERT INTO `system_area` VALUES ('511', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '西岗区', '210203', '3', 'xigangqu', 'X', '1', null, '2102');
INSERT INTO `system_area` VALUES ('512', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '沙河口区', '210204', '3', 'shahekouqu', 'S', '1', null, '2102');
INSERT INTO `system_area` VALUES ('513', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '甘井子区', '210211', '3', 'ganjingziqu', 'G', '1', null, '2102');
INSERT INTO `system_area` VALUES ('514', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '旅顺口区', '210212', '3', 'lvshunkouqu', 'L', '1', null, '2102');
INSERT INTO `system_area` VALUES ('515', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '金州区', '210213', '3', 'jinzhouqu', 'J', '1', null, '2102');
INSERT INTO `system_area` VALUES ('516', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '普兰店区', '210214', '3', 'pulandianqu', 'P', '1', null, '2102');
INSERT INTO `system_area` VALUES ('517', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '长海县', '210224', '3', 'zhanghaixian', 'Z', '1', null, '2102');
INSERT INTO `system_area` VALUES ('518', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '瓦房店市', '210281', '3', 'wafangdianshi', 'W', '1', null, '2102');
INSERT INTO `system_area` VALUES ('519', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '庄河市', '210283', '3', 'zhuangheshi', 'Z', '1', null, '2102');
INSERT INTO `system_area` VALUES ('520', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '鞍山市', '2103', '2', 'anshanshi', 'A', '1', null, '21');
INSERT INTO `system_area` VALUES ('521', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '铁东区', '210302', '3', 'tiedongqu', 'T', '1', null, '2103');
INSERT INTO `system_area` VALUES ('522', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '铁西区', '210303', '3', 'tiexiqu', 'T', '1', null, '2103');
INSERT INTO `system_area` VALUES ('523', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '立山区', '210304', '3', 'lishanqu', 'L', '1', null, '2103');
INSERT INTO `system_area` VALUES ('524', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '千山区', '210311', '3', 'qianshanqu', 'Q', '1', null, '2103');
INSERT INTO `system_area` VALUES ('525', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '台安县', '210321', '3', 'taianxian', 'T', '1', null, '2103');
INSERT INTO `system_area` VALUES ('526', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '岫岩满族自治县', '210323', '3', 'xiuyanmanzuzizhixian', 'X', '1', null, '2103');
INSERT INTO `system_area` VALUES ('527', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '海城市', '210381', '3', 'haichengshi', 'H', '1', null, '2103');
INSERT INTO `system_area` VALUES ('528', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '抚顺市', '2104', '2', 'fushunshi', 'F', '1', null, '21');
INSERT INTO `system_area` VALUES ('529', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '新抚区', '210402', '3', 'xinfuqu', 'X', '1', null, '2104');
INSERT INTO `system_area` VALUES ('530', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '东洲区', '210403', '3', 'dongzhouqu', 'D', '1', null, '2104');
INSERT INTO `system_area` VALUES ('531', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '望花区', '210404', '3', 'wanghuaqu', 'W', '1', null, '2104');
INSERT INTO `system_area` VALUES ('532', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '顺城区', '210411', '3', 'shunchengqu', 'S', '1', null, '2104');
INSERT INTO `system_area` VALUES ('533', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '抚顺县', '210421', '3', 'fushunxian', 'F', '1', null, '2104');
INSERT INTO `system_area` VALUES ('534', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '新宾满族自治县', '210422', '3', 'xinbinmanzuzizhixian', 'X', '1', null, '2104');
INSERT INTO `system_area` VALUES ('535', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.213884', '1', '清原满族自治县', '210423', '3', 'qingyuanmanzuzizhixian', 'Q', '1', null, '2104');
INSERT INTO `system_area` VALUES ('536', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '本溪市', '2105', '2', 'benxishi', 'B', '1', null, '21');
INSERT INTO `system_area` VALUES ('537', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '平山区', '210502', '3', 'pingshanqu', 'P', '1', null, '2105');
INSERT INTO `system_area` VALUES ('538', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '溪湖区', '210503', '3', 'xihuqu', 'X', '1', null, '2105');
INSERT INTO `system_area` VALUES ('539', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '明山区', '210504', '3', 'mingshanqu', 'M', '1', null, '2105');
INSERT INTO `system_area` VALUES ('540', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '南芬区', '210505', '3', 'nanfenqu', 'N', '1', null, '2105');
INSERT INTO `system_area` VALUES ('541', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '本溪满族自治县', '210521', '3', 'benximanzuzizhixian', 'B', '1', null, '2105');
INSERT INTO `system_area` VALUES ('542', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '桓仁满族自治县', '210522', '3', 'huanrenmanzuzizhixian', 'H', '1', null, '2105');
INSERT INTO `system_area` VALUES ('543', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '丹东市', '2106', '2', 'dandongshi', 'D', '1', null, '21');
INSERT INTO `system_area` VALUES ('544', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '元宝区', '210602', '3', 'yuanbaoqu', 'Y', '1', null, '2106');
INSERT INTO `system_area` VALUES ('545', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '振兴区', '210603', '3', 'zhenxingqu', 'Z', '1', null, '2106');
INSERT INTO `system_area` VALUES ('546', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '振安区', '210604', '3', 'zhenanqu', 'Z', '1', null, '2106');
INSERT INTO `system_area` VALUES ('547', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '宽甸满族自治县', '210624', '3', 'kuandianmanzuzizhixian', 'K', '1', null, '2106');
INSERT INTO `system_area` VALUES ('548', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '东港市', '210681', '3', 'donggangshi', 'D', '1', null, '2106');
INSERT INTO `system_area` VALUES ('549', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '凤城市', '210682', '3', 'fengchengshi', 'F', '1', null, '2106');
INSERT INTO `system_area` VALUES ('550', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '锦州市', '2107', '2', 'jinzhoushi', 'J', '1', null, '21');
INSERT INTO `system_area` VALUES ('551', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '古塔区', '210702', '3', 'gutaqu', 'G', '1', null, '2107');
INSERT INTO `system_area` VALUES ('552', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.214875', '1', '凌河区', '210703', '3', 'linghequ', 'L', '1', null, '2107');
INSERT INTO `system_area` VALUES ('553', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '太和区', '210711', '3', 'taihequ', 'T', '1', null, '2107');
INSERT INTO `system_area` VALUES ('554', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '黑山县', '210726', '3', 'heishanxian', 'H', '1', null, '2107');
INSERT INTO `system_area` VALUES ('555', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '义县', '210727', '3', 'yixian', 'Y', '1', null, '2107');
INSERT INTO `system_area` VALUES ('556', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '凌海市', '210781', '3', 'linghaishi', 'L', '1', null, '2107');
INSERT INTO `system_area` VALUES ('557', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '北镇市', '210782', '3', 'beizhenshi', 'B', '1', null, '2107');
INSERT INTO `system_area` VALUES ('558', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '营口市', '2108', '2', 'yingkoushi', 'Y', '1', null, '21');
INSERT INTO `system_area` VALUES ('559', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '站前区', '210802', '3', 'zhanqianqu', 'Z', '1', null, '2108');
INSERT INTO `system_area` VALUES ('560', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '西市区', '210803', '3', 'xishiqu', 'X', '1', null, '2108');
INSERT INTO `system_area` VALUES ('561', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '鲅鱼圈区', '210804', '3', 'bayuquanqu', 'B', '1', null, '2108');
INSERT INTO `system_area` VALUES ('562', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '老边区', '210811', '3', 'laobianqu', 'L', '1', null, '2108');
INSERT INTO `system_area` VALUES ('563', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '盖州市', '210881', '3', 'gaizhoushi', 'G', '1', null, '2108');
INSERT INTO `system_area` VALUES ('564', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '大石桥市', '210882', '3', 'dashiqiaoshi', 'D', '1', null, '2108');
INSERT INTO `system_area` VALUES ('565', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '阜新市', '2109', '2', 'fuxinshi', 'F', '1', null, '21');
INSERT INTO `system_area` VALUES ('566', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '海州区', '210902', '3', 'haizhouqu', 'H', '1', null, '2109');
INSERT INTO `system_area` VALUES ('567', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '新邱区', '210903', '3', 'xinqiuqu', 'X', '1', null, '2109');
INSERT INTO `system_area` VALUES ('568', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '太平区', '210904', '3', 'taipingqu', 'T', '1', null, '2109');
INSERT INTO `system_area` VALUES ('569', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '清河门区', '210905', '3', 'qinghemenqu', 'Q', '1', null, '2109');
INSERT INTO `system_area` VALUES ('570', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '细河区', '210911', '3', 'xihequ', 'X', '1', null, '2109');
INSERT INTO `system_area` VALUES ('571', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '阜新蒙古族自治县', '210921', '3', 'fuxinmengguzuzizhixian', 'F', '1', null, '2109');
INSERT INTO `system_area` VALUES ('572', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '彰武县', '210922', '3', 'zhangwuxian', 'Z', '1', null, '2109');
INSERT INTO `system_area` VALUES ('573', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '辽阳市', '2110', '2', 'liaoyangshi', 'L', '1', null, '21');
INSERT INTO `system_area` VALUES ('574', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '白塔区', '211002', '3', 'baitaqu', 'B', '1', null, '2110');
INSERT INTO `system_area` VALUES ('575', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '文圣区', '211003', '3', 'wenshengqu', 'W', '1', null, '2110');
INSERT INTO `system_area` VALUES ('576', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '宏伟区', '211004', '3', 'hongweiqu', 'H', '1', null, '2110');
INSERT INTO `system_area` VALUES ('577', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '弓长岭区', '211005', '3', 'gongzhanglingqu', 'G', '1', null, '2110');
INSERT INTO `system_area` VALUES ('578', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '太子河区', '211011', '3', 'taizihequ', 'T', '1', null, '2110');
INSERT INTO `system_area` VALUES ('579', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '辽阳县', '211021', '3', 'liaoyangxian', 'L', '1', null, '2110');
INSERT INTO `system_area` VALUES ('580', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '灯塔市', '211081', '3', 'dengtashi', 'D', '1', null, '2110');
INSERT INTO `system_area` VALUES ('581', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '盘锦市', '2111', '2', 'panjinshi', 'P', '1', null, '21');
INSERT INTO `system_area` VALUES ('582', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '双台子区', '211102', '3', 'shuangtaiziqu', 'S', '1', null, '2111');
INSERT INTO `system_area` VALUES ('583', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '兴隆台区', '211103', '3', 'xinglongtaiqu', 'X', '1', null, '2111');
INSERT INTO `system_area` VALUES ('584', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '大洼区', '211104', '3', 'dawaqu', 'D', '1', null, '2111');
INSERT INTO `system_area` VALUES ('585', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '盘山县', '211122', '3', 'panshanxian', 'P', '1', null, '2111');
INSERT INTO `system_area` VALUES ('586', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '铁岭市', '2112', '2', 'tielingshi', 'T', '1', null, '21');
INSERT INTO `system_area` VALUES ('587', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '银州区', '211202', '3', 'yinzhouqu', 'Y', '1', null, '2112');
INSERT INTO `system_area` VALUES ('588', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '清河区', '211204', '3', 'qinghequ', 'Q', '1', null, '2112');
INSERT INTO `system_area` VALUES ('589', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '铁岭县', '211221', '3', 'tielingxian', 'T', '1', null, '2112');
INSERT INTO `system_area` VALUES ('590', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '西丰县', '211223', '3', 'xifengxian', 'X', '1', null, '2112');
INSERT INTO `system_area` VALUES ('591', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '昌图县', '211224', '3', 'changtuxian', 'C', '1', null, '2112');
INSERT INTO `system_area` VALUES ('592', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '调兵山市', '211281', '3', 'diaobingshanshi', 'D', '1', null, '2112');
INSERT INTO `system_area` VALUES ('593', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '开原市', '211282', '3', 'kaiyuanshi', 'K', '1', null, '2112');
INSERT INTO `system_area` VALUES ('594', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '朝阳市', '2113', '2', 'zhaoyangshi', 'Z', '1', null, '21');
INSERT INTO `system_area` VALUES ('595', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '双塔区', '211302', '3', 'shuangtaqu', 'S', '1', null, '2113');
INSERT INTO `system_area` VALUES ('596', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '龙城区', '211303', '3', 'longchengqu', 'L', '1', null, '2113');
INSERT INTO `system_area` VALUES ('597', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '朝阳县', '211321', '3', 'zhaoyangxian', 'Z', '1', null, '2113');
INSERT INTO `system_area` VALUES ('598', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '建平县', '211322', '3', 'jianpingxian', 'J', '1', null, '2113');
INSERT INTO `system_area` VALUES ('599', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '喀喇沁左翼蒙古族自治县', '211324', '3', 'kalaqinzuoyimengguzuzizhixian', 'K', '1', null, '2113');
INSERT INTO `system_area` VALUES ('600', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '北票市', '211381', '3', 'beipiaoshi', 'B', '1', null, '2113');
INSERT INTO `system_area` VALUES ('601', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '凌源市', '211382', '3', 'lingyuanshi', 'L', '1', null, '2113');
INSERT INTO `system_area` VALUES ('602', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '葫芦岛市', '2114', '2', 'huludaoshi', 'H', '1', null, '21');
INSERT INTO `system_area` VALUES ('603', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '连山区', '211402', '3', 'lianshanqu', 'L', '1', null, '2114');
INSERT INTO `system_area` VALUES ('604', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '龙港区', '211403', '3', 'longgangqu', 'L', '1', null, '2114');
INSERT INTO `system_area` VALUES ('605', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '南票区', '211404', '3', 'nanpiaoqu', 'N', '1', null, '2114');
INSERT INTO `system_area` VALUES ('606', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '绥中县', '211421', '3', 'suizhongxian', 'S', '1', null, '2114');
INSERT INTO `system_area` VALUES ('607', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '建昌县', '211422', '3', 'jianchangxian', 'J', '1', null, '2114');
INSERT INTO `system_area` VALUES ('608', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '兴城市', '211481', '3', 'xingchengshi', 'X', '1', null, '2114');
INSERT INTO `system_area` VALUES ('609', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '吉林省', '22', '1', 'jilinsheng', 'J', '1', null, null);
INSERT INTO `system_area` VALUES ('610', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '长春市', '2201', '2', 'changchunshi', 'C', '1', null, '22');
INSERT INTO `system_area` VALUES ('611', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '南关区', '220102', '3', 'nanguanqu', 'N', '1', null, '2201');
INSERT INTO `system_area` VALUES ('612', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '宽城区', '220103', '3', 'kuanchengqu', 'K', '1', null, '2201');
INSERT INTO `system_area` VALUES ('613', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '朝阳区', '220104', '3', 'chaoyangqu', 'C', '1', null, '2201');
INSERT INTO `system_area` VALUES ('614', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '二道区', '220105', '3', 'erdaoqu', 'E', '1', null, '2201');
INSERT INTO `system_area` VALUES ('615', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '绿园区', '220106', '3', 'lvyuanqu', 'L', '1', null, '2201');
INSERT INTO `system_area` VALUES ('616', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '双阳区', '220112', '3', 'shuangyangqu', 'S', '1', null, '2201');
INSERT INTO `system_area` VALUES ('617', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '九台区', '220113', '3', 'jiutaiqu', 'J', '1', null, '2201');
INSERT INTO `system_area` VALUES ('618', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '农安县', '220122', '3', 'nonganxian', 'N', '1', null, '2201');
INSERT INTO `system_area` VALUES ('619', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '长春经济技术开发区', '220171', '3', 'changchunjingjijishukaifaqu', 'C', '1', null, '2201');
INSERT INTO `system_area` VALUES ('620', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '长春净月高新技术产业开发区', '220172', '3', 'changchunjingyuegaoxinjishuchanyekaifaqu', 'C', '1', null, '2201');
INSERT INTO `system_area` VALUES ('621', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '长春高新技术产业开发区', '220173', '3', 'changchungaoxinjishuchanyekaifaqu', 'C', '1', null, '2201');
INSERT INTO `system_area` VALUES ('622', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '长春汽车经济技术开发区', '220174', '3', 'changchunqichejingjijishukaifaqu', 'C', '1', null, '2201');
INSERT INTO `system_area` VALUES ('623', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '榆树市', '220182', '3', 'yushushi', 'Y', '1', null, '2201');
INSERT INTO `system_area` VALUES ('624', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '德惠市', '220183', '3', 'dehuishi', 'D', '1', null, '2201');
INSERT INTO `system_area` VALUES ('625', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '公主岭市', '220184', '3', 'gongzhulingshi', 'G', '1', null, '2201');
INSERT INTO `system_area` VALUES ('626', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '吉林市', '2202', '2', 'jilinshi', 'J', '1', null, '22');
INSERT INTO `system_area` VALUES ('627', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '昌邑区', '220202', '3', 'changyiqu', 'C', '1', null, '2202');
INSERT INTO `system_area` VALUES ('628', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '龙潭区', '220203', '3', 'longtanqu', 'L', '1', null, '2202');
INSERT INTO `system_area` VALUES ('629', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '船营区', '220204', '3', 'chuanyingqu', 'C', '1', null, '2202');
INSERT INTO `system_area` VALUES ('630', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '丰满区', '220211', '3', 'fengmanqu', 'F', '1', null, '2202');
INSERT INTO `system_area` VALUES ('631', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '永吉县', '220221', '3', 'yongjixian', 'Y', '1', null, '2202');
INSERT INTO `system_area` VALUES ('632', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '吉林经济开发区', '220271', '3', 'jilinjingjikaifaqu', 'J', '1', null, '2202');
INSERT INTO `system_area` VALUES ('633', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '吉林高新技术产业开发区', '220272', '3', 'jilingaoxinjishuchanyekaifaqu', 'J', '1', null, '2202');
INSERT INTO `system_area` VALUES ('634', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '吉林中国新加坡食品区', '220273', '3', 'jilinzhongguoxinjiaposhipinqu', 'J', '1', null, '2202');
INSERT INTO `system_area` VALUES ('635', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '蛟河市', '220281', '3', 'jiaoheshi', 'J', '1', null, '2202');
INSERT INTO `system_area` VALUES ('636', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '桦甸市', '220282', '3', 'huadianshi', 'H', '1', null, '2202');
INSERT INTO `system_area` VALUES ('637', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '舒兰市', '220283', '3', 'shulanshi', 'S', '1', null, '2202');
INSERT INTO `system_area` VALUES ('638', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '磐石市', '220284', '3', 'panshishi', 'P', '1', null, '2202');
INSERT INTO `system_area` VALUES ('639', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '四平市', '2203', '2', 'sipingshi', 'S', '1', null, '22');
INSERT INTO `system_area` VALUES ('640', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '铁西区', '220302', '3', 'tiexiqu', 'T', '1', null, '2203');
INSERT INTO `system_area` VALUES ('641', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '铁东区', '220303', '3', 'tiedongqu', 'T', '1', null, '2203');
INSERT INTO `system_area` VALUES ('642', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '梨树县', '220322', '3', 'lishuxian', 'L', '1', null, '2203');
INSERT INTO `system_area` VALUES ('643', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '伊通满族自治县', '220323', '3', 'yitongmanzuzizhixian', 'Y', '1', null, '2203');
INSERT INTO `system_area` VALUES ('644', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '双辽市', '220382', '3', 'shuangliaoshi', 'S', '1', null, '2203');
INSERT INTO `system_area` VALUES ('645', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '辽源市', '2204', '2', 'liaoyuanshi', 'L', '1', null, '22');
INSERT INTO `system_area` VALUES ('646', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '龙山区', '220402', '3', 'longshanqu', 'L', '1', null, '2204');
INSERT INTO `system_area` VALUES ('647', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '西安区', '220403', '3', 'xianqu', 'X', '1', null, '2204');
INSERT INTO `system_area` VALUES ('648', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '东丰县', '220421', '3', 'dongfengxian', 'D', '1', null, '2204');
INSERT INTO `system_area` VALUES ('649', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '东辽县', '220422', '3', 'dongliaoxian', 'D', '1', null, '2204');
INSERT INTO `system_area` VALUES ('650', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '通化市', '2205', '2', 'tonghuashi', 'T', '1', null, '22');
INSERT INTO `system_area` VALUES ('651', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '东昌区', '220502', '3', 'dongchangqu', 'D', '1', null, '2205');
INSERT INTO `system_area` VALUES ('652', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '二道江区', '220503', '3', 'erdaojiangqu', 'E', '1', null, '2205');
INSERT INTO `system_area` VALUES ('653', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '通化县', '220521', '3', 'tonghuaxian', 'T', '1', null, '2205');
INSERT INTO `system_area` VALUES ('654', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '辉南县', '220523', '3', 'huinanxian', 'H', '1', null, '2205');
INSERT INTO `system_area` VALUES ('655', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '柳河县', '220524', '3', 'liuhexian', 'L', '1', null, '2205');
INSERT INTO `system_area` VALUES ('656', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '梅河口市', '220581', '3', 'meihekoushi', 'M', '1', null, '2205');
INSERT INTO `system_area` VALUES ('657', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '集安市', '220582', '3', 'jianshi', 'J', '1', null, '2205');
INSERT INTO `system_area` VALUES ('658', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '白山市', '2206', '2', 'baishanshi', 'B', '1', null, '22');
INSERT INTO `system_area` VALUES ('659', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '浑江区', '220602', '3', 'hunjiangqu', 'H', '1', null, '2206');
INSERT INTO `system_area` VALUES ('660', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '江源区', '220605', '3', 'jiangyuanqu', 'J', '1', null, '2206');
INSERT INTO `system_area` VALUES ('661', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '抚松县', '220621', '3', 'fusongxian', 'F', '1', null, '2206');
INSERT INTO `system_area` VALUES ('662', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '靖宇县', '220622', '3', 'jingyuxian', 'J', '1', null, '2206');
INSERT INTO `system_area` VALUES ('663', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '长白朝鲜族自治县', '220623', '3', 'zhangbaichaoxianzuzizhixian', 'Z', '1', null, '2206');
INSERT INTO `system_area` VALUES ('664', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '临江市', '220681', '3', 'linjiangshi', 'L', '1', null, '2206');
INSERT INTO `system_area` VALUES ('665', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '松原市', '2207', '2', 'songyuanshi', 'S', '1', null, '22');
INSERT INTO `system_area` VALUES ('666', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '宁江区', '220702', '3', 'ningjiangqu', 'N', '1', null, '2207');
INSERT INTO `system_area` VALUES ('667', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '前郭尔罗斯蒙古族自治县', '220721', '3', 'qianguoerluosimengguzuzizhixian', 'Q', '1', null, '2207');
INSERT INTO `system_area` VALUES ('668', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '长岭县', '220722', '3', 'zhanglingxian', 'Z', '1', null, '2207');
INSERT INTO `system_area` VALUES ('669', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '乾安县', '220723', '3', 'qiananxian', 'Q', '1', null, '2207');
INSERT INTO `system_area` VALUES ('670', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '吉林松原经济开发区', '220771', '3', 'jilinsongyuanjingjikaifaqu', 'J', '1', null, '2207');
INSERT INTO `system_area` VALUES ('671', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '扶余市', '220781', '3', 'fuyushi', 'F', '1', null, '2207');
INSERT INTO `system_area` VALUES ('672', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '白城市', '2208', '2', 'baichengshi', 'B', '1', null, '22');
INSERT INTO `system_area` VALUES ('673', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '洮北区', '220802', '3', 'taobeiqu', 'T', '1', null, '2208');
INSERT INTO `system_area` VALUES ('674', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '镇赉县', '220821', '3', 'zhenlaixian', 'Z', '1', null, '2208');
INSERT INTO `system_area` VALUES ('675', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '通榆县', '220822', '3', 'tongyuxian', 'T', '1', null, '2208');
INSERT INTO `system_area` VALUES ('676', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '吉林白城经济开发区', '220871', '3', 'jilinbaichengjingjikaifaqu', 'J', '1', null, '2208');
INSERT INTO `system_area` VALUES ('677', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '洮南市', '220881', '3', 'taonanshi', 'T', '1', null, '2208');
INSERT INTO `system_area` VALUES ('678', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '大安市', '220882', '3', 'daanshi', 'D', '1', null, '2208');
INSERT INTO `system_area` VALUES ('679', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '延边朝鲜族自治州', '2224', '2', 'yanbianchaoxianzuzizhizhou', 'Y', '1', null, '22');
INSERT INTO `system_area` VALUES ('680', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.222877', '1', '延吉市', '222401', '3', 'yanjishi', 'Y', '1', null, '2224');
INSERT INTO `system_area` VALUES ('681', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '图们市', '222402', '3', 'tumenshi', 'T', '1', null, '2224');
INSERT INTO `system_area` VALUES ('682', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '敦化市', '222403', '3', 'dunhuashi', 'D', '1', null, '2224');
INSERT INTO `system_area` VALUES ('683', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '珲春市', '222404', '3', 'huichunshi', 'H', '1', null, '2224');
INSERT INTO `system_area` VALUES ('684', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '龙井市', '222405', '3', 'longjingshi', 'L', '1', null, '2224');
INSERT INTO `system_area` VALUES ('685', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '和龙市', '222406', '3', 'helongshi', 'H', '1', null, '2224');
INSERT INTO `system_area` VALUES ('686', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '汪清县', '222424', '3', 'wangqingxian', 'W', '1', null, '2224');
INSERT INTO `system_area` VALUES ('687', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '安图县', '222426', '3', 'antuxian', 'A', '1', null, '2224');
INSERT INTO `system_area` VALUES ('688', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '黑龙江省', '23', '1', 'heilongjiangsheng', 'H', '1', null, null);
INSERT INTO `system_area` VALUES ('689', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '哈尔滨市', '2301', '2', 'haerbinshi', 'H', '1', null, '23');
INSERT INTO `system_area` VALUES ('690', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '道里区', '230102', '3', 'daoliqu', 'D', '1', null, '2301');
INSERT INTO `system_area` VALUES ('691', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '南岗区', '230103', '3', 'nangangqu', 'N', '1', null, '2301');
INSERT INTO `system_area` VALUES ('692', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '道外区', '230104', '3', 'daowaiqu', 'D', '1', null, '2301');
INSERT INTO `system_area` VALUES ('693', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '平房区', '230108', '3', 'pingfangqu', 'P', '1', null, '2301');
INSERT INTO `system_area` VALUES ('694', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '松北区', '230109', '3', 'songbeiqu', 'S', '1', null, '2301');
INSERT INTO `system_area` VALUES ('695', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '香坊区', '230110', '3', 'xiangfangqu', 'X', '1', null, '2301');
INSERT INTO `system_area` VALUES ('696', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '呼兰区', '230111', '3', 'hulanqu', 'H', '1', null, '2301');
INSERT INTO `system_area` VALUES ('697', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '阿城区', '230112', '3', 'achengqu', 'A', '1', null, '2301');
INSERT INTO `system_area` VALUES ('698', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '双城区', '230113', '3', 'shuangchengqu', 'S', '1', null, '2301');
INSERT INTO `system_area` VALUES ('699', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '依兰县', '230123', '3', 'yilanxian', 'Y', '1', null, '2301');
INSERT INTO `system_area` VALUES ('700', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '方正县', '230124', '3', 'fangzhengxian', 'F', '1', null, '2301');
INSERT INTO `system_area` VALUES ('701', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '宾县', '230125', '3', 'binxian', 'B', '1', null, '2301');
INSERT INTO `system_area` VALUES ('702', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '巴彦县', '230126', '3', 'bayanxian', 'B', '1', null, '2301');
INSERT INTO `system_area` VALUES ('703', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '木兰县', '230127', '3', 'mulanxian', 'M', '1', null, '2301');
INSERT INTO `system_area` VALUES ('704', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '通河县', '230128', '3', 'tonghexian', 'T', '1', null, '2301');
INSERT INTO `system_area` VALUES ('705', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '延寿县', '230129', '3', 'yanshouxian', 'Y', '1', null, '2301');
INSERT INTO `system_area` VALUES ('706', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '尚志市', '230183', '3', 'shangzhishi', 'S', '1', null, '2301');
INSERT INTO `system_area` VALUES ('707', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '五常市', '230184', '3', 'wuchangshi', 'W', '1', null, '2301');
INSERT INTO `system_area` VALUES ('708', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '齐齐哈尔市', '2302', '2', 'qiqihaershi', 'Q', '1', null, '23');
INSERT INTO `system_area` VALUES ('709', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '龙沙区', '230202', '3', 'longshaqu', 'L', '1', null, '2302');
INSERT INTO `system_area` VALUES ('710', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '建华区', '230203', '3', 'jianhuaqu', 'J', '1', null, '2302');
INSERT INTO `system_area` VALUES ('711', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '铁锋区', '230204', '3', 'tiefengqu', 'T', '1', null, '2302');
INSERT INTO `system_area` VALUES ('712', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '昂昂溪区', '230205', '3', 'angangxiqu', 'A', '1', null, '2302');
INSERT INTO `system_area` VALUES ('713', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '富拉尔基区', '230206', '3', 'fulaerjiqu', 'F', '1', null, '2302');
INSERT INTO `system_area` VALUES ('714', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '碾子山区', '230207', '3', 'nianzishanqu', 'N', '1', null, '2302');
INSERT INTO `system_area` VALUES ('715', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '梅里斯达斡尔族区', '230208', '3', 'meilisidawoerzuqu', 'M', '1', null, '2302');
INSERT INTO `system_area` VALUES ('716', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '龙江县', '230221', '3', 'longjiangxian', 'L', '1', null, '2302');
INSERT INTO `system_area` VALUES ('717', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '依安县', '230223', '3', 'yianxian', 'Y', '1', null, '2302');
INSERT INTO `system_area` VALUES ('718', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '泰来县', '230224', '3', 'tailaixian', 'T', '1', null, '2302');
INSERT INTO `system_area` VALUES ('719', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '甘南县', '230225', '3', 'gannanxian', 'G', '1', null, '2302');
INSERT INTO `system_area` VALUES ('720', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '富裕县', '230227', '3', 'fuyuxian', 'F', '1', null, '2302');
INSERT INTO `system_area` VALUES ('721', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '克山县', '230229', '3', 'keshanxian', 'K', '1', null, '2302');
INSERT INTO `system_area` VALUES ('722', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '克东县', '230230', '3', 'kedongxian', 'K', '1', null, '2302');
INSERT INTO `system_area` VALUES ('723', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '拜泉县', '230231', '3', 'baiquanxian', 'B', '1', null, '2302');
INSERT INTO `system_area` VALUES ('724', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '讷河市', '230281', '3', 'neheshi', 'N', '1', null, '2302');
INSERT INTO `system_area` VALUES ('725', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '鸡西市', '2303', '2', 'jixishi', 'J', '1', null, '23');
INSERT INTO `system_area` VALUES ('726', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '鸡冠区', '230302', '3', 'jiguanqu', 'J', '1', null, '2303');
INSERT INTO `system_area` VALUES ('727', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '恒山区', '230303', '3', 'hengshanqu', 'H', '1', null, '2303');
INSERT INTO `system_area` VALUES ('728', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '滴道区', '230304', '3', 'didaoqu', 'D', '1', null, '2303');
INSERT INTO `system_area` VALUES ('729', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '梨树区', '230305', '3', 'lishuqu', 'L', '1', null, '2303');
INSERT INTO `system_area` VALUES ('730', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '城子河区', '230306', '3', 'chengzihequ', 'C', '1', null, '2303');
INSERT INTO `system_area` VALUES ('731', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '麻山区', '230307', '3', 'mashanqu', 'M', '1', null, '2303');
INSERT INTO `system_area` VALUES ('732', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '鸡东县', '230321', '3', 'jidongxian', 'J', '1', null, '2303');
INSERT INTO `system_area` VALUES ('733', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '虎林市', '230381', '3', 'hulinshi', 'H', '1', null, '2303');
INSERT INTO `system_area` VALUES ('734', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '密山市', '230382', '3', 'mishanshi', 'M', '1', null, '2303');
INSERT INTO `system_area` VALUES ('735', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '鹤岗市', '2304', '2', 'hegangshi', 'H', '1', null, '23');
INSERT INTO `system_area` VALUES ('736', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '向阳区', '230402', '3', 'xiangyangqu', 'X', '1', null, '2304');
INSERT INTO `system_area` VALUES ('737', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '工农区', '230403', '3', 'gongnongqu', 'G', '1', null, '2304');
INSERT INTO `system_area` VALUES ('738', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '南山区', '230404', '3', 'nanshanqu', 'N', '1', null, '2304');
INSERT INTO `system_area` VALUES ('739', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '兴安区', '230405', '3', 'xinganqu', 'X', '1', null, '2304');
INSERT INTO `system_area` VALUES ('740', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '东山区', '230406', '3', 'dongshanqu', 'D', '1', null, '2304');
INSERT INTO `system_area` VALUES ('741', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '兴山区', '230407', '3', 'xingshanqu', 'X', '1', null, '2304');
INSERT INTO `system_area` VALUES ('742', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '萝北县', '230421', '3', 'luobeixian', 'L', '1', null, '2304');
INSERT INTO `system_area` VALUES ('743', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '绥滨县', '230422', '3', 'suibinxian', 'S', '1', null, '2304');
INSERT INTO `system_area` VALUES ('744', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '双鸭山市', '2305', '2', 'shuangyashanshi', 'S', '1', null, '23');
INSERT INTO `system_area` VALUES ('745', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '尖山区', '230502', '3', 'jianshanqu', 'J', '1', null, '2305');
INSERT INTO `system_area` VALUES ('746', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '岭东区', '230503', '3', 'lingdongqu', 'L', '1', null, '2305');
INSERT INTO `system_area` VALUES ('747', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '四方台区', '230505', '3', 'sifangtaiqu', 'S', '1', null, '2305');
INSERT INTO `system_area` VALUES ('748', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '宝山区', '230506', '3', 'baoshanqu', 'B', '1', null, '2305');
INSERT INTO `system_area` VALUES ('749', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.226874', '1', '集贤县', '230521', '3', 'jixianxian', 'J', '1', null, '2305');
INSERT INTO `system_area` VALUES ('750', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '友谊县', '230522', '3', 'youyixian', 'Y', '1', null, '2305');
INSERT INTO `system_area` VALUES ('751', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '宝清县', '230523', '3', 'baoqingxian', 'B', '1', null, '2305');
INSERT INTO `system_area` VALUES ('752', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '饶河县', '230524', '3', 'raohexian', 'R', '1', null, '2305');
INSERT INTO `system_area` VALUES ('753', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '大庆市', '2306', '2', 'daqingshi', 'D', '1', null, '23');
INSERT INTO `system_area` VALUES ('754', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '萨尔图区', '230602', '3', 'saertuqu', 'S', '1', null, '2306');
INSERT INTO `system_area` VALUES ('755', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '龙凤区', '230603', '3', 'longfengqu', 'L', '1', null, '2306');
INSERT INTO `system_area` VALUES ('756', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '让胡路区', '230604', '3', 'ranghuluqu', 'R', '1', null, '2306');
INSERT INTO `system_area` VALUES ('757', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '红岗区', '230605', '3', 'honggangqu', 'H', '1', null, '2306');
INSERT INTO `system_area` VALUES ('758', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '大同区', '230606', '3', 'datongqu', 'D', '1', null, '2306');
INSERT INTO `system_area` VALUES ('759', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '肇州县', '230621', '3', 'zhaozhouxian', 'Z', '1', null, '2306');
INSERT INTO `system_area` VALUES ('760', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '肇源县', '230622', '3', 'zhaoyuanxian', 'Z', '1', null, '2306');
INSERT INTO `system_area` VALUES ('761', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '林甸县', '230623', '3', 'lindianxian', 'L', '1', null, '2306');
INSERT INTO `system_area` VALUES ('762', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '杜尔伯特蒙古族自治县', '230624', '3', 'duerbotemengguzuzizhixian', 'D', '1', null, '2306');
INSERT INTO `system_area` VALUES ('763', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '大庆高新技术产业开发区', '230671', '3', 'daqinggaoxinjishuchanyekaifaqu', 'D', '1', null, '2306');
INSERT INTO `system_area` VALUES ('764', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '伊春市', '2307', '2', 'yichunshi', 'Y', '1', null, '23');
INSERT INTO `system_area` VALUES ('765', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '伊美区', '230717', '3', 'yimeiqu', 'Y', '1', null, '2307');
INSERT INTO `system_area` VALUES ('766', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '乌翠区', '230718', '3', 'wucuiqu', 'W', '1', null, '2307');
INSERT INTO `system_area` VALUES ('767', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '友好区', '230719', '3', 'youhaoqu', 'Y', '1', null, '2307');
INSERT INTO `system_area` VALUES ('768', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '嘉荫县', '230722', '3', 'jiayinxian', 'J', '1', null, '2307');
INSERT INTO `system_area` VALUES ('769', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '汤旺县', '230723', '3', 'tangwangxian', 'T', '1', null, '2307');
INSERT INTO `system_area` VALUES ('770', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '丰林县', '230724', '3', 'fenglinxian', 'F', '1', null, '2307');
INSERT INTO `system_area` VALUES ('771', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '大箐山县', '230725', '3', 'daqingshanxian', 'D', '1', null, '2307');
INSERT INTO `system_area` VALUES ('772', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '南岔县', '230726', '3', 'nanchaxian', 'N', '1', null, '2307');
INSERT INTO `system_area` VALUES ('773', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '金林区', '230751', '3', 'jinlinqu', 'J', '1', null, '2307');
INSERT INTO `system_area` VALUES ('774', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '铁力市', '230781', '3', 'tielishi', 'T', '1', null, '2307');
INSERT INTO `system_area` VALUES ('775', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '佳木斯市', '2308', '2', 'jiamusishi', 'J', '1', null, '23');
INSERT INTO `system_area` VALUES ('776', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '向阳区', '230803', '3', 'xiangyangqu', 'X', '1', null, '2308');
INSERT INTO `system_area` VALUES ('777', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '前进区', '230804', '3', 'qianjinqu', 'Q', '1', null, '2308');
INSERT INTO `system_area` VALUES ('778', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '东风区', '230805', '3', 'dongfengqu', 'D', '1', null, '2308');
INSERT INTO `system_area` VALUES ('779', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '郊区', '230811', '3', 'jiaoqu', 'J', '1', null, '2308');
INSERT INTO `system_area` VALUES ('780', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '桦南县', '230822', '3', 'huananxian', 'H', '1', null, '2308');
INSERT INTO `system_area` VALUES ('781', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '桦川县', '230826', '3', 'huachuanxian', 'H', '1', null, '2308');
INSERT INTO `system_area` VALUES ('782', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '汤原县', '230828', '3', 'tangyuanxian', 'T', '1', null, '2308');
INSERT INTO `system_area` VALUES ('783', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '同江市', '230881', '3', 'tongjiangshi', 'T', '1', null, '2308');
INSERT INTO `system_area` VALUES ('784', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '富锦市', '230882', '3', 'fujinshi', 'F', '1', null, '2308');
INSERT INTO `system_area` VALUES ('785', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '抚远市', '230883', '3', 'fuyuanshi', 'F', '1', null, '2308');
INSERT INTO `system_area` VALUES ('786', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '七台河市', '2309', '2', 'qitaiheshi', 'Q', '1', null, '23');
INSERT INTO `system_area` VALUES ('787', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '新兴区', '230902', '3', 'xinxingqu', 'X', '1', null, '2309');
INSERT INTO `system_area` VALUES ('788', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '桃山区', '230903', '3', 'taoshanqu', 'T', '1', null, '2309');
INSERT INTO `system_area` VALUES ('789', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '茄子河区', '230904', '3', 'qiezihequ', 'Q', '1', null, '2309');
INSERT INTO `system_area` VALUES ('790', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '勃利县', '230921', '3', 'bolixian', 'B', '1', null, '2309');
INSERT INTO `system_area` VALUES ('791', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '牡丹江市', '2310', '2', 'mudanjiangshi', 'M', '1', null, '23');
INSERT INTO `system_area` VALUES ('792', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '东安区', '231002', '3', 'donganqu', 'D', '1', null, '2310');
INSERT INTO `system_area` VALUES ('793', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '阳明区', '231003', '3', 'yangmingqu', 'Y', '1', null, '2310');
INSERT INTO `system_area` VALUES ('794', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '爱民区', '231004', '3', 'aiminqu', 'A', '1', null, '2310');
INSERT INTO `system_area` VALUES ('795', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '西安区', '231005', '3', 'xianqu', 'X', '1', null, '2310');
INSERT INTO `system_area` VALUES ('796', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '林口县', '231025', '3', 'linkouxian', 'L', '1', null, '2310');
INSERT INTO `system_area` VALUES ('797', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '牡丹江经济技术开发区', '231071', '3', 'mudanjiangjingjijishukaifaqu', 'M', '1', null, '2310');
INSERT INTO `system_area` VALUES ('798', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '绥芬河市', '231081', '3', 'suifenheshi', 'S', '1', null, '2310');
INSERT INTO `system_area` VALUES ('799', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '海林市', '231083', '3', 'hailinshi', 'H', '1', null, '2310');
INSERT INTO `system_area` VALUES ('800', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '宁安市', '231084', '3', 'ninganshi', 'N', '1', null, '2310');
INSERT INTO `system_area` VALUES ('801', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.229881', '1', '穆棱市', '231085', '3', 'mulengshi', 'M', '1', null, '2310');
INSERT INTO `system_area` VALUES ('802', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '东宁市', '231086', '3', 'dongningshi', 'D', '1', null, '2310');
INSERT INTO `system_area` VALUES ('803', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '黑河市', '2311', '2', 'heiheshi', 'H', '1', null, '23');
INSERT INTO `system_area` VALUES ('804', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '爱辉区', '231102', '3', 'aihuiqu', 'A', '1', null, '2311');
INSERT INTO `system_area` VALUES ('805', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '逊克县', '231123', '3', 'xunkexian', 'X', '1', null, '2311');
INSERT INTO `system_area` VALUES ('806', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '孙吴县', '231124', '3', 'sunwuxian', 'S', '1', null, '2311');
INSERT INTO `system_area` VALUES ('807', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '北安市', '231181', '3', 'beianshi', 'B', '1', null, '2311');
INSERT INTO `system_area` VALUES ('808', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '五大连池市', '231182', '3', 'wudalianchishi', 'W', '1', null, '2311');
INSERT INTO `system_area` VALUES ('809', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '嫩江市', '231183', '3', 'nenjiangshi', 'N', '1', null, '2311');
INSERT INTO `system_area` VALUES ('810', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '绥化市', '2312', '2', 'suihuashi', 'S', '1', null, '23');
INSERT INTO `system_area` VALUES ('811', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '北林区', '231202', '3', 'beilinqu', 'B', '1', null, '2312');
INSERT INTO `system_area` VALUES ('812', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '望奎县', '231221', '3', 'wangkuixian', 'W', '1', null, '2312');
INSERT INTO `system_area` VALUES ('813', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '兰西县', '231222', '3', 'lanxixian', 'L', '1', null, '2312');
INSERT INTO `system_area` VALUES ('814', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '青冈县', '231223', '3', 'qinggangxian', 'Q', '1', null, '2312');
INSERT INTO `system_area` VALUES ('815', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '庆安县', '231224', '3', 'qinganxian', 'Q', '1', null, '2312');
INSERT INTO `system_area` VALUES ('816', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '明水县', '231225', '3', 'mingshuixian', 'M', '1', null, '2312');
INSERT INTO `system_area` VALUES ('817', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '绥棱县', '231226', '3', 'suilengxian', 'S', '1', null, '2312');
INSERT INTO `system_area` VALUES ('818', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '安达市', '231281', '3', 'andashi', 'A', '1', null, '2312');
INSERT INTO `system_area` VALUES ('819', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '肇东市', '231282', '3', 'zhaodongshi', 'Z', '1', null, '2312');
INSERT INTO `system_area` VALUES ('820', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '海伦市', '231283', '3', 'hailunshi', 'H', '1', null, '2312');
INSERT INTO `system_area` VALUES ('821', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '大兴安岭地区', '2327', '2', 'daxinganlingdiqu', 'D', '1', null, '23');
INSERT INTO `system_area` VALUES ('822', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '漠河市', '232701', '3', 'moheshi', 'M', '1', null, '2327');
INSERT INTO `system_area` VALUES ('823', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '呼玛县', '232721', '3', 'humaxian', 'H', '1', null, '2327');
INSERT INTO `system_area` VALUES ('824', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '塔河县', '232722', '3', 'tahexian', 'T', '1', null, '2327');
INSERT INTO `system_area` VALUES ('825', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '加格达奇区', '232761', '3', 'jiagedaqiqu', 'J', '1', null, '2327');
INSERT INTO `system_area` VALUES ('826', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '松岭区', '232762', '3', 'songlingqu', 'S', '1', null, '2327');
INSERT INTO `system_area` VALUES ('827', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '新林区', '232763', '3', 'xinlinqu', 'X', '1', null, '2327');
INSERT INTO `system_area` VALUES ('828', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '呼中区', '232764', '3', 'huzhongqu', 'H', '1', null, '2327');
INSERT INTO `system_area` VALUES ('829', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '上海市', '31', '1', 'shanghaishi', 'S', '1', null, null);
INSERT INTO `system_area` VALUES ('830', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '市辖区', '3101', '2', 'shixiaqu', 'S', '1', null, '31');
INSERT INTO `system_area` VALUES ('831', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '黄浦区', '310101', '3', 'huangpuqu', 'H', '1', null, '3101');
INSERT INTO `system_area` VALUES ('832', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '徐汇区', '310104', '3', 'xuhuiqu', 'X', '1', null, '3101');
INSERT INTO `system_area` VALUES ('833', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '长宁区', '310105', '3', 'zhangningqu', 'Z', '1', null, '3101');
INSERT INTO `system_area` VALUES ('834', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '静安区', '310106', '3', 'jinganqu', 'J', '1', null, '3101');
INSERT INTO `system_area` VALUES ('835', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '普陀区', '310107', '3', 'putuoqu', 'P', '1', null, '3101');
INSERT INTO `system_area` VALUES ('836', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '虹口区', '310109', '3', 'hongkouqu', 'H', '1', null, '3101');
INSERT INTO `system_area` VALUES ('837', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '杨浦区', '310110', '3', 'yangpuqu', 'Y', '1', null, '3101');
INSERT INTO `system_area` VALUES ('838', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '闵行区', '310112', '3', 'minxingqu', 'M', '1', null, '3101');
INSERT INTO `system_area` VALUES ('839', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '宝山区', '310113', '3', 'baoshanqu', 'B', '1', null, '3101');
INSERT INTO `system_area` VALUES ('840', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '嘉定区', '310114', '3', 'jiadingqu', 'J', '1', null, '3101');
INSERT INTO `system_area` VALUES ('841', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '浦东新区', '310115', '3', 'pudongxinqu', 'P', '1', null, '3101');
INSERT INTO `system_area` VALUES ('842', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '金山区', '310116', '3', 'jinshanqu', 'J', '1', null, '3101');
INSERT INTO `system_area` VALUES ('843', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '松江区', '310117', '3', 'songjiangqu', 'S', '1', null, '3101');
INSERT INTO `system_area` VALUES ('844', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '青浦区', '310118', '3', 'qingpuqu', 'Q', '1', null, '3101');
INSERT INTO `system_area` VALUES ('845', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '奉贤区', '310120', '3', 'fengxianqu', 'F', '1', null, '3101');
INSERT INTO `system_area` VALUES ('846', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '崇明区', '310151', '3', 'chongmingqu', 'C', '1', null, '3101');
INSERT INTO `system_area` VALUES ('847', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '江苏省', '32', '1', 'jiangsusheng', 'J', '1', null, null);
INSERT INTO `system_area` VALUES ('848', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '南京市', '3201', '2', 'nanjingshi', 'N', '1', null, '32');
INSERT INTO `system_area` VALUES ('849', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '玄武区', '320102', '3', 'xuanwuqu', 'X', '1', null, '3201');
INSERT INTO `system_area` VALUES ('850', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '秦淮区', '320104', '3', 'qinhuaiqu', 'Q', '1', null, '3201');
INSERT INTO `system_area` VALUES ('851', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '建邺区', '320105', '3', 'jianyequ', 'J', '1', null, '3201');
INSERT INTO `system_area` VALUES ('852', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '鼓楼区', '320106', '3', 'gulouqu', 'G', '1', null, '3201');
INSERT INTO `system_area` VALUES ('853', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '浦口区', '320111', '3', 'pukouqu', 'P', '1', null, '3201');
INSERT INTO `system_area` VALUES ('854', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '栖霞区', '320113', '3', 'qixiaqu', 'Q', '1', null, '3201');
INSERT INTO `system_area` VALUES ('855', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '雨花台区', '320114', '3', 'yuhuataiqu', 'Y', '1', null, '3201');
INSERT INTO `system_area` VALUES ('856', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '江宁区', '320115', '3', 'jiangningqu', 'J', '1', null, '3201');
INSERT INTO `system_area` VALUES ('857', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '六合区', '320116', '3', 'liuhequ', 'L', '1', null, '3201');
INSERT INTO `system_area` VALUES ('858', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '溧水区', '320117', '3', 'lishuiqu', 'L', '1', null, '3201');
INSERT INTO `system_area` VALUES ('859', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '高淳区', '320118', '3', 'gaochunqu', 'G', '1', null, '3201');
INSERT INTO `system_area` VALUES ('860', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '无锡市', '3202', '2', 'wuxishi', 'W', '1', null, '32');
INSERT INTO `system_area` VALUES ('861', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '锡山区', '320205', '3', 'xishanqu', 'X', '1', null, '3202');
INSERT INTO `system_area` VALUES ('862', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '惠山区', '320206', '3', 'huishanqu', 'H', '1', null, '3202');
INSERT INTO `system_area` VALUES ('863', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '滨湖区', '320211', '3', 'binhuqu', 'B', '1', null, '3202');
INSERT INTO `system_area` VALUES ('864', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '梁溪区', '320213', '3', 'liangxiqu', 'L', '1', null, '3202');
INSERT INTO `system_area` VALUES ('865', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '新吴区', '320214', '3', 'xinwuqu', 'X', '1', null, '3202');
INSERT INTO `system_area` VALUES ('866', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '江阴市', '320281', '3', 'jiangyinshi', 'J', '1', null, '3202');
INSERT INTO `system_area` VALUES ('867', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.233878', '1', '宜兴市', '320282', '3', 'yixingshi', 'Y', '1', null, '3202');
INSERT INTO `system_area` VALUES ('868', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '徐州市', '3203', '2', 'xuzhoushi', 'X', '1', null, '32');
INSERT INTO `system_area` VALUES ('869', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '鼓楼区', '320302', '3', 'gulouqu', 'G', '1', null, '3203');
INSERT INTO `system_area` VALUES ('870', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '云龙区', '320303', '3', 'yunlongqu', 'Y', '1', null, '3203');
INSERT INTO `system_area` VALUES ('871', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '贾汪区', '320305', '3', 'jiawangqu', 'J', '1', null, '3203');
INSERT INTO `system_area` VALUES ('872', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '泉山区', '320311', '3', 'quanshanqu', 'Q', '1', null, '3203');
INSERT INTO `system_area` VALUES ('873', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '铜山区', '320312', '3', 'tongshanqu', 'T', '1', null, '3203');
INSERT INTO `system_area` VALUES ('874', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '丰县', '320321', '3', 'fengxian', 'F', '1', null, '3203');
INSERT INTO `system_area` VALUES ('875', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '沛县', '320322', '3', 'peixian', 'P', '1', null, '3203');
INSERT INTO `system_area` VALUES ('876', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '睢宁县', '320324', '3', 'suiningxian', 'S', '1', null, '3203');
INSERT INTO `system_area` VALUES ('877', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '徐州经济技术开发区', '320371', '3', 'xuzhoujingjijishukaifaqu', 'X', '1', null, '3203');
INSERT INTO `system_area` VALUES ('878', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '新沂市', '320381', '3', 'xinyishi', 'X', '1', null, '3203');
INSERT INTO `system_area` VALUES ('879', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '邳州市', '320382', '3', 'pizhoushi', 'P', '1', null, '3203');
INSERT INTO `system_area` VALUES ('880', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '常州市', '3204', '2', 'changzhoushi', 'C', '1', null, '32');
INSERT INTO `system_area` VALUES ('881', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '天宁区', '320402', '3', 'tianningqu', 'T', '1', null, '3204');
INSERT INTO `system_area` VALUES ('882', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '钟楼区', '320404', '3', 'zhonglouqu', 'Z', '1', null, '3204');
INSERT INTO `system_area` VALUES ('883', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '新北区', '320411', '3', 'xinbeiqu', 'X', '1', null, '3204');
INSERT INTO `system_area` VALUES ('884', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '武进区', '320412', '3', 'wujinqu', 'W', '1', null, '3204');
INSERT INTO `system_area` VALUES ('885', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '金坛区', '320413', '3', 'jintanqu', 'J', '1', null, '3204');
INSERT INTO `system_area` VALUES ('886', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '溧阳市', '320481', '3', 'liyangshi', 'L', '1', null, '3204');
INSERT INTO `system_area` VALUES ('887', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '苏州市', '3205', '2', 'suzhoushi', 'S', '1', null, '32');
INSERT INTO `system_area` VALUES ('888', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '虎丘区', '320505', '3', 'huqiuqu', 'H', '1', null, '3205');
INSERT INTO `system_area` VALUES ('889', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '吴中区', '320506', '3', 'wuzhongqu', 'W', '1', null, '3205');
INSERT INTO `system_area` VALUES ('890', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '相城区', '320507', '3', 'xiangchengqu', 'X', '1', null, '3205');
INSERT INTO `system_area` VALUES ('891', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '姑苏区', '320508', '3', 'gusuqu', 'G', '1', null, '3205');
INSERT INTO `system_area` VALUES ('892', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '吴江区', '320509', '3', 'wujiangqu', 'W', '1', null, '3205');
INSERT INTO `system_area` VALUES ('893', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '苏州工业园区', '320571', '3', 'suzhougongyeyuanqu', 'S', '1', null, '3205');
INSERT INTO `system_area` VALUES ('894', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '常熟市', '320581', '3', 'changshushi', 'C', '1', null, '3205');
INSERT INTO `system_area` VALUES ('895', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '张家港市', '320582', '3', 'zhangjiagangshi', 'Z', '1', null, '3205');
INSERT INTO `system_area` VALUES ('896', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '昆山市', '320583', '3', 'kunshanshi', 'K', '1', null, '3205');
INSERT INTO `system_area` VALUES ('897', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '太仓市', '320585', '3', 'taicangshi', 'T', '1', null, '3205');
INSERT INTO `system_area` VALUES ('898', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '南通市', '3206', '2', 'nantongshi', 'N', '1', null, '32');
INSERT INTO `system_area` VALUES ('899', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '崇川区', '320602', '3', 'chongchuanqu', 'C', '1', null, '3206');
INSERT INTO `system_area` VALUES ('900', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '港闸区', '320611', '3', 'gangzhaqu', 'G', '1', null, '3206');
INSERT INTO `system_area` VALUES ('901', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '通州区', '320612', '3', 'tongzhouqu', 'T', '1', null, '3206');
INSERT INTO `system_area` VALUES ('902', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '如东县', '320623', '3', 'rudongxian', 'R', '1', null, '3206');
INSERT INTO `system_area` VALUES ('903', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '南通经济技术开发区', '320671', '3', 'nantongjingjijishukaifaqu', 'N', '1', null, '3206');
INSERT INTO `system_area` VALUES ('904', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '启东市', '320681', '3', 'qidongshi', 'Q', '1', null, '3206');
INSERT INTO `system_area` VALUES ('905', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '如皋市', '320682', '3', 'rugaoshi', 'R', '1', null, '3206');
INSERT INTO `system_area` VALUES ('906', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '海门市', '320684', '3', 'haimenshi', 'H', '1', null, '3206');
INSERT INTO `system_area` VALUES ('907', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '海安市', '320685', '3', 'haianshi', 'H', '1', null, '3206');
INSERT INTO `system_area` VALUES ('908', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '连云港市', '3207', '2', 'lianyungangshi', 'L', '1', null, '32');
INSERT INTO `system_area` VALUES ('909', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '连云区', '320703', '3', 'lianyunqu', 'L', '1', null, '3207');
INSERT INTO `system_area` VALUES ('910', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '海州区', '320706', '3', 'haizhouqu', 'H', '1', null, '3207');
INSERT INTO `system_area` VALUES ('911', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '赣榆区', '320707', '3', 'ganyuqu', 'G', '1', null, '3207');
INSERT INTO `system_area` VALUES ('912', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '东海县', '320722', '3', 'donghaixian', 'D', '1', null, '3207');
INSERT INTO `system_area` VALUES ('913', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '灌云县', '320723', '3', 'guanyunxian', 'G', '1', null, '3207');
INSERT INTO `system_area` VALUES ('914', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '灌南县', '320724', '3', 'guannanxian', 'G', '1', null, '3207');
INSERT INTO `system_area` VALUES ('915', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '连云港经济技术开发区', '320771', '3', 'lianyungangjingjijishukaifaqu', 'L', '1', null, '3207');
INSERT INTO `system_area` VALUES ('916', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '连云港高新技术产业开发区', '320772', '3', 'lianyunganggaoxinjishuchanyekaifaqu', 'L', '1', null, '3207');
INSERT INTO `system_area` VALUES ('917', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '淮安市', '3208', '2', 'huaianshi', 'H', '1', null, '32');
INSERT INTO `system_area` VALUES ('918', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '淮安区', '320803', '3', 'huaianqu', 'H', '1', null, '3208');
INSERT INTO `system_area` VALUES ('919', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '淮阴区', '320804', '3', 'huaiyinqu', 'H', '1', null, '3208');
INSERT INTO `system_area` VALUES ('920', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '清江浦区', '320812', '3', 'qingjiangpuqu', 'Q', '1', null, '3208');
INSERT INTO `system_area` VALUES ('921', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '洪泽区', '320813', '3', 'hongzequ', 'H', '1', null, '3208');
INSERT INTO `system_area` VALUES ('922', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '涟水县', '320826', '3', 'lianshuixian', 'L', '1', null, '3208');
INSERT INTO `system_area` VALUES ('923', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '盱眙县', '320830', '3', 'xuyixian', 'X', '1', null, '3208');
INSERT INTO `system_area` VALUES ('924', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '金湖县', '320831', '3', 'jinhuxian', 'J', '1', null, '3208');
INSERT INTO `system_area` VALUES ('925', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '淮安经济技术开发区', '320871', '3', 'huaianjingjijishukaifaqu', 'H', '1', null, '3208');
INSERT INTO `system_area` VALUES ('926', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '盐城市', '3209', '2', 'yanchengshi', 'Y', '1', null, '32');
INSERT INTO `system_area` VALUES ('927', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '亭湖区', '320902', '3', 'tinghuqu', 'T', '1', null, '3209');
INSERT INTO `system_area` VALUES ('928', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '盐都区', '320903', '3', 'yandouqu', 'Y', '1', null, '3209');
INSERT INTO `system_area` VALUES ('929', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '大丰区', '320904', '3', 'dafengqu', 'D', '1', null, '3209');
INSERT INTO `system_area` VALUES ('930', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '响水县', '320921', '3', 'xiangshuixian', 'X', '1', null, '3209');
INSERT INTO `system_area` VALUES ('931', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '滨海县', '320922', '3', 'binhaixian', 'B', '1', null, '3209');
INSERT INTO `system_area` VALUES ('932', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '阜宁县', '320923', '3', 'funingxian', 'F', '1', null, '3209');
INSERT INTO `system_area` VALUES ('933', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '射阳县', '320924', '3', 'sheyangxian', 'S', '1', null, '3209');
INSERT INTO `system_area` VALUES ('934', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '建湖县', '320925', '3', 'jianhuxian', 'J', '1', null, '3209');
INSERT INTO `system_area` VALUES ('935', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '盐城经济技术开发区', '320971', '3', 'yanchengjingjijishukaifaqu', 'Y', '1', null, '3209');
INSERT INTO `system_area` VALUES ('936', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.237876', '1', '东台市', '320981', '3', 'dongtaishi', 'D', '1', null, '3209');
INSERT INTO `system_area` VALUES ('937', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '扬州市', '3210', '2', 'yangzhoushi', 'Y', '1', null, '32');
INSERT INTO `system_area` VALUES ('938', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '广陵区', '321002', '3', 'guanglingqu', 'G', '1', null, '3210');
INSERT INTO `system_area` VALUES ('939', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '邗江区', '321003', '3', 'hanjiangqu', 'H', '1', null, '3210');
INSERT INTO `system_area` VALUES ('940', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '江都区', '321012', '3', 'jiangduqu', 'J', '1', null, '3210');
INSERT INTO `system_area` VALUES ('941', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '宝应县', '321023', '3', 'baoyingxian', 'B', '1', null, '3210');
INSERT INTO `system_area` VALUES ('942', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '扬州经济技术开发区', '321071', '3', 'yangzhoujingjijishukaifaqu', 'Y', '1', null, '3210');
INSERT INTO `system_area` VALUES ('943', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '仪征市', '321081', '3', 'yizhengshi', 'Y', '1', null, '3210');
INSERT INTO `system_area` VALUES ('944', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '高邮市', '321084', '3', 'gaoyoushi', 'G', '1', null, '3210');
INSERT INTO `system_area` VALUES ('945', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '镇江市', '3211', '2', 'zhenjiangshi', 'Z', '1', null, '32');
INSERT INTO `system_area` VALUES ('946', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '京口区', '321102', '3', 'jingkouqu', 'J', '1', null, '3211');
INSERT INTO `system_area` VALUES ('947', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '润州区', '321111', '3', 'runzhouqu', 'R', '1', null, '3211');
INSERT INTO `system_area` VALUES ('948', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '丹徒区', '321112', '3', 'dantuqu', 'D', '1', null, '3211');
INSERT INTO `system_area` VALUES ('949', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '镇江新区', '321171', '3', 'zhenjiangxinqu', 'Z', '1', null, '3211');
INSERT INTO `system_area` VALUES ('950', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '丹阳市', '321181', '3', 'danyangshi', 'D', '1', null, '3211');
INSERT INTO `system_area` VALUES ('951', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '扬中市', '321182', '3', 'yangzhongshi', 'Y', '1', null, '3211');
INSERT INTO `system_area` VALUES ('952', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '句容市', '321183', '3', 'jurongshi', 'J', '1', null, '3211');
INSERT INTO `system_area` VALUES ('953', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '泰州市', '3212', '2', 'taizhoushi', 'T', '1', null, '32');
INSERT INTO `system_area` VALUES ('954', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '海陵区', '321202', '3', 'hailingqu', 'H', '1', null, '3212');
INSERT INTO `system_area` VALUES ('955', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '高港区', '321203', '3', 'gaogangqu', 'G', '1', null, '3212');
INSERT INTO `system_area` VALUES ('956', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '姜堰区', '321204', '3', 'jiangyanqu', 'J', '1', null, '3212');
INSERT INTO `system_area` VALUES ('957', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '泰州医药高新技术产业开发区', '321271', '3', 'taizhouyiyaogaoxinjishuchanyekaifaqu', 'T', '1', null, '3212');
INSERT INTO `system_area` VALUES ('958', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '兴化市', '321281', '3', 'xinghuashi', 'X', '1', null, '3212');
INSERT INTO `system_area` VALUES ('959', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '靖江市', '321282', '3', 'jingjiangshi', 'J', '1', null, '3212');
INSERT INTO `system_area` VALUES ('960', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '泰兴市', '321283', '3', 'taixingshi', 'T', '1', null, '3212');
INSERT INTO `system_area` VALUES ('961', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '宿迁市', '3213', '2', 'suqianshi', 'S', '1', null, '32');
INSERT INTO `system_area` VALUES ('962', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '宿城区', '321302', '3', 'suchengqu', 'S', '1', null, '3213');
INSERT INTO `system_area` VALUES ('963', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '宿豫区', '321311', '3', 'suyuqu', 'S', '1', null, '3213');
INSERT INTO `system_area` VALUES ('964', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '沭阳县', '321322', '3', 'shuyangxian', 'S', '1', null, '3213');
INSERT INTO `system_area` VALUES ('965', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '泗阳县', '321323', '3', 'siyangxian', 'S', '1', null, '3213');
INSERT INTO `system_area` VALUES ('966', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '泗洪县', '321324', '3', 'sihongxian', 'S', '1', null, '3213');
INSERT INTO `system_area` VALUES ('967', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '宿迁经济技术开发区', '321371', '3', 'suqianjingjijishukaifaqu', 'S', '1', null, '3213');
INSERT INTO `system_area` VALUES ('968', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '浙江省', '33', '1', 'zhejiangsheng', 'Z', '1', null, null);
INSERT INTO `system_area` VALUES ('969', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '杭州市', '3301', '2', 'hangzhoushi', 'H', '1', null, '33');
INSERT INTO `system_area` VALUES ('970', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '上城区', '330102', '3', 'shangchengqu', 'S', '1', null, '3301');
INSERT INTO `system_area` VALUES ('971', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '下城区', '330103', '3', 'xiachengqu', 'X', '1', null, '3301');
INSERT INTO `system_area` VALUES ('972', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '江干区', '330104', '3', 'jiangganqu', 'J', '1', null, '3301');
INSERT INTO `system_area` VALUES ('973', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '拱墅区', '330105', '3', 'gongshuqu', 'G', '1', null, '3301');
INSERT INTO `system_area` VALUES ('974', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '西湖区', '330106', '3', 'xihuqu', 'X', '1', null, '3301');
INSERT INTO `system_area` VALUES ('975', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '滨江区', '330108', '3', 'binjiangqu', 'B', '1', null, '3301');
INSERT INTO `system_area` VALUES ('976', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '萧山区', '330109', '3', 'xiaoshanqu', 'X', '1', null, '3301');
INSERT INTO `system_area` VALUES ('977', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '余杭区', '330110', '3', 'yuhangqu', 'Y', '1', null, '3301');
INSERT INTO `system_area` VALUES ('978', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '富阳区', '330111', '3', 'fuyangqu', 'F', '1', null, '3301');
INSERT INTO `system_area` VALUES ('979', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '临安区', '330112', '3', 'linanqu', 'L', '1', null, '3301');
INSERT INTO `system_area` VALUES ('980', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '桐庐县', '330122', '3', 'tongluxian', 'T', '1', null, '3301');
INSERT INTO `system_area` VALUES ('981', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '淳安县', '330127', '3', 'chunanxian', 'C', '1', null, '3301');
INSERT INTO `system_area` VALUES ('982', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '建德市', '330182', '3', 'jiandeshi', 'J', '1', null, '3301');
INSERT INTO `system_area` VALUES ('983', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '宁波市', '3302', '2', 'ningboshi', 'N', '1', null, '33');
INSERT INTO `system_area` VALUES ('984', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '海曙区', '330203', '3', 'haishuqu', 'H', '1', null, '3302');
INSERT INTO `system_area` VALUES ('985', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '江北区', '330205', '3', 'jiangbeiqu', 'J', '1', null, '3302');
INSERT INTO `system_area` VALUES ('986', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '北仑区', '330206', '3', 'beilunqu', 'B', '1', null, '3302');
INSERT INTO `system_area` VALUES ('987', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '镇海区', '330211', '3', 'zhenhaiqu', 'Z', '1', null, '3302');
INSERT INTO `system_area` VALUES ('988', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.240875', '1', '鄞州区', '330212', '3', 'yinzhouqu', 'Y', '1', null, '3302');
INSERT INTO `system_area` VALUES ('989', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '奉化区', '330213', '3', 'fenghuaqu', 'F', '1', null, '3302');
INSERT INTO `system_area` VALUES ('990', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '象山县', '330225', '3', 'xiangshanxian', 'X', '1', null, '3302');
INSERT INTO `system_area` VALUES ('991', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '宁海县', '330226', '3', 'ninghaixian', 'N', '1', null, '3302');
INSERT INTO `system_area` VALUES ('992', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '余姚市', '330281', '3', 'yuyaoshi', 'Y', '1', null, '3302');
INSERT INTO `system_area` VALUES ('993', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '慈溪市', '330282', '3', 'cixishi', 'C', '1', null, '3302');
INSERT INTO `system_area` VALUES ('994', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '温州市', '3303', '2', 'wenzhoushi', 'W', '1', null, '33');
INSERT INTO `system_area` VALUES ('995', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '鹿城区', '330302', '3', 'luchengqu', 'L', '1', null, '3303');
INSERT INTO `system_area` VALUES ('996', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '龙湾区', '330303', '3', 'longwanqu', 'L', '1', null, '3303');
INSERT INTO `system_area` VALUES ('997', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '瓯海区', '330304', '3', 'ouhaiqu', 'O', '1', null, '3303');
INSERT INTO `system_area` VALUES ('998', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '洞头区', '330305', '3', 'dongtouqu', 'D', '1', null, '3303');
INSERT INTO `system_area` VALUES ('999', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '永嘉县', '330324', '3', 'yongjiaxian', 'Y', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1000', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '平阳县', '330326', '3', 'pingyangxian', 'P', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1001', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '苍南县', '330327', '3', 'cangnanxian', 'C', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1002', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '文成县', '330328', '3', 'wenchengxian', 'W', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1003', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '泰顺县', '330329', '3', 'taishunxian', 'T', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1004', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '温州经济技术开发区', '330371', '3', 'wenzhoujingjijishukaifaqu', 'W', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1005', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '瑞安市', '330381', '3', 'ruianshi', 'R', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1006', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '乐清市', '330382', '3', 'yueqingshi', 'Y', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1007', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '龙港市', '330383', '3', 'longgangshi', 'L', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1008', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '嘉兴市', '3304', '2', 'jiaxingshi', 'J', '1', null, '33');
INSERT INTO `system_area` VALUES ('1009', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '南湖区', '330402', '3', 'nanhuqu', 'N', '1', null, '3304');
INSERT INTO `system_area` VALUES ('1010', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '秀洲区', '330411', '3', 'xiuzhouqu', 'X', '1', null, '3304');
INSERT INTO `system_area` VALUES ('1011', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '嘉善县', '330421', '3', 'jiashanxian', 'J', '1', null, '3304');
INSERT INTO `system_area` VALUES ('1012', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '海盐县', '330424', '3', 'haiyanxian', 'H', '1', null, '3304');
INSERT INTO `system_area` VALUES ('1013', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '海宁市', '330481', '3', 'hainingshi', 'H', '1', null, '3304');
INSERT INTO `system_area` VALUES ('1014', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '平湖市', '330482', '3', 'pinghushi', 'P', '1', null, '3304');
INSERT INTO `system_area` VALUES ('1015', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '桐乡市', '330483', '3', 'tongxiangshi', 'T', '1', null, '3304');
INSERT INTO `system_area` VALUES ('1016', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '湖州市', '3305', '2', 'huzhoushi', 'H', '1', null, '33');
INSERT INTO `system_area` VALUES ('1017', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '吴兴区', '330502', '3', 'wuxingqu', 'W', '1', null, '3305');
INSERT INTO `system_area` VALUES ('1018', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '南浔区', '330503', '3', 'nanxunqu', 'N', '1', null, '3305');
INSERT INTO `system_area` VALUES ('1019', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '德清县', '330521', '3', 'deqingxian', 'D', '1', null, '3305');
INSERT INTO `system_area` VALUES ('1020', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '长兴县', '330522', '3', 'changxingxian', 'C', '1', null, '3305');
INSERT INTO `system_area` VALUES ('1021', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '安吉县', '330523', '3', 'anjixian', 'A', '1', null, '3305');
INSERT INTO `system_area` VALUES ('1022', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '绍兴市', '3306', '2', 'shaoxingshi', 'S', '1', null, '33');
INSERT INTO `system_area` VALUES ('1023', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '越城区', '330602', '3', 'yuechengqu', 'Y', '1', null, '3306');
INSERT INTO `system_area` VALUES ('1024', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '柯桥区', '330603', '3', 'keqiaoqu', 'K', '1', null, '3306');
INSERT INTO `system_area` VALUES ('1025', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '上虞区', '330604', '3', 'shangyuqu', 'S', '1', null, '3306');
INSERT INTO `system_area` VALUES ('1026', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '新昌县', '330624', '3', 'xinchangxian', 'X', '1', null, '3306');
INSERT INTO `system_area` VALUES ('1027', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '诸暨市', '330681', '3', 'zhujishi', 'Z', '1', null, '3306');
INSERT INTO `system_area` VALUES ('1028', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '嵊州市', '330683', '3', 'shengzhoushi', 'S', '1', null, '3306');
INSERT INTO `system_area` VALUES ('1029', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '金华市', '3307', '2', 'jinhuashi', 'J', '1', null, '33');
INSERT INTO `system_area` VALUES ('1030', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '婺城区', '330702', '3', 'wuchengqu', 'W', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1031', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '金东区', '330703', '3', 'jindongqu', 'J', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1032', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '武义县', '330723', '3', 'wuyixian', 'W', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1033', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '浦江县', '330726', '3', 'pujiangxian', 'P', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1034', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '磐安县', '330727', '3', 'pananxian', 'P', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1035', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '兰溪市', '330781', '3', 'lanxishi', 'L', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1036', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '义乌市', '330782', '3', 'yiwushi', 'Y', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1037', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '东阳市', '330783', '3', 'dongyangshi', 'D', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1038', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '永康市', '330784', '3', 'yongkangshi', 'Y', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1039', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '衢州市', '3308', '2', 'quzhoushi', 'Q', '1', null, '33');
INSERT INTO `system_area` VALUES ('1040', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '柯城区', '330802', '3', 'kechengqu', 'K', '1', null, '3308');
INSERT INTO `system_area` VALUES ('1041', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '衢江区', '330803', '3', 'qujiangqu', 'Q', '1', null, '3308');
INSERT INTO `system_area` VALUES ('1042', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '常山县', '330822', '3', 'changshanxian', 'C', '1', null, '3308');
INSERT INTO `system_area` VALUES ('1043', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '开化县', '330824', '3', 'kaihuaxian', 'K', '1', null, '3308');
INSERT INTO `system_area` VALUES ('1044', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '龙游县', '330825', '3', 'longyouxian', 'L', '1', null, '3308');
INSERT INTO `system_area` VALUES ('1045', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '江山市', '330881', '3', 'jiangshanshi', 'J', '1', null, '3308');
INSERT INTO `system_area` VALUES ('1046', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '舟山市', '3309', '2', 'zhoushanshi', 'Z', '1', null, '33');
INSERT INTO `system_area` VALUES ('1047', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '定海区', '330902', '3', 'dinghaiqu', 'D', '1', null, '3309');
INSERT INTO `system_area` VALUES ('1048', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '普陀区', '330903', '3', 'putuoqu', 'P', '1', null, '3309');
INSERT INTO `system_area` VALUES ('1049', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '岱山县', '330921', '3', 'daishanxian', 'D', '1', null, '3309');
INSERT INTO `system_area` VALUES ('1050', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '嵊泗县', '330922', '3', 'shengsixian', 'S', '1', null, '3309');
INSERT INTO `system_area` VALUES ('1051', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '台州市', '3310', '2', 'taizhoushi', 'T', '1', null, '33');
INSERT INTO `system_area` VALUES ('1052', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '椒江区', '331002', '3', 'jiaojiangqu', 'J', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1053', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '黄岩区', '331003', '3', 'huangyanqu', 'H', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1054', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '路桥区', '331004', '3', 'luqiaoqu', 'L', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1055', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '三门县', '331022', '3', 'sanmenxian', 'S', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1056', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '天台县', '331023', '3', 'tiantaixian', 'T', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1057', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '仙居县', '331024', '3', 'xianjuxian', 'X', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1058', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '温岭市', '331081', '3', 'wenlingshi', 'W', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1059', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '临海市', '331082', '3', 'linhaishi', 'L', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1060', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '玉环市', '331083', '3', 'yuhuanshi', 'Y', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1061', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '丽水市', '3311', '2', 'lishuishi', 'L', '1', null, '33');
INSERT INTO `system_area` VALUES ('1062', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '莲都区', '331102', '3', 'liandouqu', 'L', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1063', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '青田县', '331121', '3', 'qingtianxian', 'Q', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1064', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '缙云县', '331122', '3', 'jinyunxian', 'J', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1065', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '遂昌县', '331123', '3', 'suichangxian', 'S', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1066', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '松阳县', '331124', '3', 'songyangxian', 'S', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1067', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '云和县', '331125', '3', 'yunhexian', 'Y', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1068', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '庆元县', '331126', '3', 'qingyuanxian', 'Q', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1069', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '景宁畲族自治县', '331127', '3', 'jingningshezuzizhixian', 'J', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1070', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '龙泉市', '331181', '3', 'longquanshi', 'L', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1071', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '安徽省', '34', '1', 'anhuisheng', 'A', '1', null, null);
INSERT INTO `system_area` VALUES ('1072', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '合肥市', '3401', '2', 'hefeishi', 'H', '1', null, '34');
INSERT INTO `system_area` VALUES ('1073', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '瑶海区', '340102', '3', 'yaohaiqu', 'Y', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1074', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '庐阳区', '340103', '3', 'luyangqu', 'L', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1075', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '蜀山区', '340104', '3', 'shushanqu', 'S', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1076', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '包河区', '340111', '3', 'baohequ', 'B', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1077', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '长丰县', '340121', '3', 'zhangfengxian', 'Z', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1078', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '肥东县', '340122', '3', 'feidongxian', 'F', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1079', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '肥西县', '340123', '3', 'feixixian', 'F', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1080', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '庐江县', '340124', '3', 'lujiangxian', 'L', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1081', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '合肥高新技术产业开发区', '340171', '3', 'hefeigaoxinjishuchanyekaifaqu', 'H', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1082', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '合肥经济技术开发区', '340172', '3', 'hefeijingjijishukaifaqu', 'H', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1083', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '合肥新站高新技术产业开发区', '340173', '3', 'hefeixinzhangaoxinjishuchanyekaifaqu', 'H', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1084', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '巢湖市', '340181', '3', 'chaohushi', 'C', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1085', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '芜湖市', '3402', '2', 'wuhushi', 'W', '1', null, '34');
INSERT INTO `system_area` VALUES ('1086', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '镜湖区', '340202', '3', 'jinghuqu', 'J', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1087', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '弋江区', '340203', '3', 'yijiangqu', 'Y', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1088', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '鸠江区', '340207', '3', 'jiujiangqu', 'J', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1089', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '三山区', '340208', '3', 'sanshanqu', 'S', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1090', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '芜湖县', '340221', '3', 'wuhuxian', 'W', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1091', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '繁昌县', '340222', '3', 'fanchangxian', 'F', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1092', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '南陵县', '340223', '3', 'nanlingxian', 'N', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1093', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '芜湖经济技术开发区', '340271', '3', 'wuhujingjijishukaifaqu', 'W', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1094', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '安徽芜湖长江大桥经济开发区', '340272', '3', 'anhuiwuhuchangjiangdaqiaojingjikaifaqu', 'A', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1095', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '无为市', '340281', '3', 'wuweishi', 'W', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1096', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '蚌埠市', '3403', '2', 'bengbushi', 'B', '1', null, '34');
INSERT INTO `system_area` VALUES ('1097', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '龙子湖区', '340302', '3', 'longzihuqu', 'L', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1098', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '蚌山区', '340303', '3', 'bangshanqu', 'B', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1099', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '禹会区', '340304', '3', 'yuhuiqu', 'Y', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1100', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '淮上区', '340311', '3', 'huaishangqu', 'H', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1101', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '怀远县', '340321', '3', 'huaiyuanxian', 'H', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1102', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '五河县', '340322', '3', 'wuhexian', 'W', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1103', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '固镇县', '340323', '3', 'guzhenxian', 'G', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1104', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '蚌埠市高新技术开发区', '340371', '3', 'bengbushigaoxinjishukaifaqu', 'B', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1105', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '蚌埠市经济开发区', '340372', '3', 'bengbushijingjikaifaqu', 'B', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1106', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '淮南市', '3404', '2', 'huainanshi', 'H', '1', null, '34');
INSERT INTO `system_area` VALUES ('1107', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '大通区', '340402', '3', 'datongqu', 'D', '1', null, '3404');
INSERT INTO `system_area` VALUES ('1108', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '田家庵区', '340403', '3', 'tianjiaanqu', 'T', '1', null, '3404');
INSERT INTO `system_area` VALUES ('1109', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '谢家集区', '340404', '3', 'xiejiajiqu', 'X', '1', null, '3404');
INSERT INTO `system_area` VALUES ('1110', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '八公山区', '340405', '3', 'bagongshanqu', 'B', '1', null, '3404');
INSERT INTO `system_area` VALUES ('1111', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '潘集区', '340406', '3', 'panjiqu', 'P', '1', null, '3404');
INSERT INTO `system_area` VALUES ('1112', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '凤台县', '340421', '3', 'fengtaixian', 'F', '1', null, '3404');
INSERT INTO `system_area` VALUES ('1113', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '寿县', '340422', '3', 'shouxian', 'S', '1', null, '3404');
INSERT INTO `system_area` VALUES ('1114', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '马鞍山市', '3405', '2', 'maanshanshi', 'M', '1', null, '34');
INSERT INTO `system_area` VALUES ('1115', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '花山区', '340503', '3', 'huashanqu', 'H', '1', null, '3405');
INSERT INTO `system_area` VALUES ('1116', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '雨山区', '340504', '3', 'yushanqu', 'Y', '1', null, '3405');
INSERT INTO `system_area` VALUES ('1117', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '博望区', '340506', '3', 'bowangqu', 'B', '1', null, '3405');
INSERT INTO `system_area` VALUES ('1118', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '当涂县', '340521', '3', 'dangtuxian', 'D', '1', null, '3405');
INSERT INTO `system_area` VALUES ('1119', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.248878', '1', '含山县', '340522', '3', 'hanshanxian', 'H', '1', null, '3405');
INSERT INTO `system_area` VALUES ('1120', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '和县', '340523', '3', 'hexian', 'H', '1', null, '3405');
INSERT INTO `system_area` VALUES ('1121', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '淮北市', '3406', '2', 'huaibeishi', 'H', '1', null, '34');
INSERT INTO `system_area` VALUES ('1122', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '杜集区', '340602', '3', 'dujiqu', 'D', '1', null, '3406');
INSERT INTO `system_area` VALUES ('1123', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '相山区', '340603', '3', 'xiangshanqu', 'X', '1', null, '3406');
INSERT INTO `system_area` VALUES ('1124', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '烈山区', '340604', '3', 'lieshanqu', 'L', '1', null, '3406');
INSERT INTO `system_area` VALUES ('1125', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '濉溪县', '340621', '3', 'suixixian', 'S', '1', null, '3406');
INSERT INTO `system_area` VALUES ('1126', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '铜陵市', '3407', '2', 'tonglingshi', 'T', '1', null, '34');
INSERT INTO `system_area` VALUES ('1127', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '铜官区', '340705', '3', 'tongguanqu', 'T', '1', null, '3407');
INSERT INTO `system_area` VALUES ('1128', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '义安区', '340706', '3', 'yianqu', 'Y', '1', null, '3407');
INSERT INTO `system_area` VALUES ('1129', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '郊区', '340711', '3', 'jiaoqu', 'J', '1', null, '3407');
INSERT INTO `system_area` VALUES ('1130', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '枞阳县', '340722', '3', 'zongyangxian', 'Z', '1', null, '3407');
INSERT INTO `system_area` VALUES ('1131', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '安庆市', '3408', '2', 'anqingshi', 'A', '1', null, '34');
INSERT INTO `system_area` VALUES ('1132', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '迎江区', '340802', '3', 'yingjiangqu', 'Y', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1133', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '大观区', '340803', '3', 'daguanqu', 'D', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1134', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '宜秀区', '340811', '3', 'yixiuqu', 'Y', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1135', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '怀宁县', '340822', '3', 'huainingxian', 'H', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1136', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '太湖县', '340825', '3', 'taihuxian', 'T', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1137', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '宿松县', '340826', '3', 'susongxian', 'S', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1138', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '望江县', '340827', '3', 'wangjiangxian', 'W', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1139', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '岳西县', '340828', '3', 'yuexixian', 'Y', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1140', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '安徽安庆经济开发区', '340871', '3', 'anhuianqingjingjikaifaqu', 'A', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1141', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '桐城市', '340881', '3', 'tongchengshi', 'T', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1142', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '潜山市', '340882', '3', 'qianshanshi', 'Q', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1143', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '黄山市', '3410', '2', 'huangshanshi', 'H', '1', null, '34');
INSERT INTO `system_area` VALUES ('1144', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '屯溪区', '341002', '3', 'tunxiqu', 'T', '1', null, '3410');
INSERT INTO `system_area` VALUES ('1145', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '黄山区', '341003', '3', 'huangshanqu', 'H', '1', null, '3410');
INSERT INTO `system_area` VALUES ('1146', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '徽州区', '341004', '3', 'huizhouqu', 'H', '1', null, '3410');
INSERT INTO `system_area` VALUES ('1147', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '歙县', '341021', '3', 'shexian', 'S', '1', null, '3410');
INSERT INTO `system_area` VALUES ('1148', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '休宁县', '341022', '3', 'xiuningxian', 'X', '1', null, '3410');
INSERT INTO `system_area` VALUES ('1149', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '黟县', '341023', '3', 'yixian', 'Y', '1', null, '3410');
INSERT INTO `system_area` VALUES ('1150', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '祁门县', '341024', '3', 'qimenxian', 'Q', '1', null, '3410');
INSERT INTO `system_area` VALUES ('1151', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '滁州市', '3411', '2', 'chuzhoushi', 'C', '1', null, '34');
INSERT INTO `system_area` VALUES ('1152', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '琅琊区', '341102', '3', 'langyaqu', 'L', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1153', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '南谯区', '341103', '3', 'nanqiaoqu', 'N', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1154', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '来安县', '341122', '3', 'laianxian', 'L', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1155', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '全椒县', '341124', '3', 'quanjiaoxian', 'Q', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1156', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '定远县', '341125', '3', 'dingyuanxian', 'D', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1157', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '凤阳县', '341126', '3', 'fengyangxian', 'F', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1158', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '苏滁现代产业园', '341171', '3', 'suchuxiandaichanyeyuan', 'S', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1159', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '滁州经济技术开发区', '341172', '3', 'chuzhoujingjijishukaifaqu', 'C', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1160', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '天长市', '341181', '3', 'tianzhangshi', 'T', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1161', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '明光市', '341182', '3', 'mingguangshi', 'M', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1162', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '阜阳市', '3412', '2', 'fuyangshi', 'F', '1', null, '34');
INSERT INTO `system_area` VALUES ('1163', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '颍州区', '341202', '3', 'yingzhouqu', 'Y', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1164', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '颍东区', '341203', '3', 'yingdongqu', 'Y', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1165', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '颍泉区', '341204', '3', 'yingquanqu', 'Y', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1166', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '临泉县', '341221', '3', 'linquanxian', 'L', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1167', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '太和县', '341222', '3', 'taihexian', 'T', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1168', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '阜南县', '341225', '3', 'funanxian', 'F', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1169', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '颍上县', '341226', '3', 'yingshangxian', 'Y', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1170', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '阜阳合肥现代产业园区', '341271', '3', 'fuyanghefeixiandaichanyeyuanqu', 'F', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1171', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '阜阳经济技术开发区', '341272', '3', 'fuyangjingjijishukaifaqu', 'F', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1172', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '界首市', '341282', '3', 'jieshoushi', 'J', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1173', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '宿州市', '3413', '2', 'suzhoushi', 'S', '1', null, '34');
INSERT INTO `system_area` VALUES ('1174', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '埇桥区', '341302', '3', 'yongqiaoqu', 'Y', '1', null, '3413');
INSERT INTO `system_area` VALUES ('1175', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '砀山县', '341321', '3', 'dangshanxian', 'D', '1', null, '3413');
INSERT INTO `system_area` VALUES ('1176', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '萧县', '341322', '3', 'xiaoxian', 'X', '1', null, '3413');
INSERT INTO `system_area` VALUES ('1177', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '灵璧县', '341323', '3', 'lingbixian', 'L', '1', null, '3413');
INSERT INTO `system_area` VALUES ('1178', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '泗县', '341324', '3', 'sixian', 'S', '1', null, '3413');
INSERT INTO `system_area` VALUES ('1179', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '宿州马鞍山现代产业园区', '341371', '3', 'suzhoumaanshanxiandaichanyeyuanqu', 'S', '1', null, '3413');
INSERT INTO `system_area` VALUES ('1180', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '宿州经济技术开发区', '341372', '3', 'suzhoujingjijishukaifaqu', 'S', '1', null, '3413');
INSERT INTO `system_area` VALUES ('1181', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '六安市', '3415', '2', 'luanshi', 'L', '1', null, '34');
INSERT INTO `system_area` VALUES ('1182', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '金安区', '341502', '3', 'jinanqu', 'J', '1', null, '3415');
INSERT INTO `system_area` VALUES ('1183', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '裕安区', '341503', '3', 'yuanqu', 'Y', '1', null, '3415');
INSERT INTO `system_area` VALUES ('1184', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '叶集区', '341504', '3', 'yejiqu', 'Y', '1', null, '3415');
INSERT INTO `system_area` VALUES ('1185', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '霍邱县', '341522', '3', 'huoqiuxian', 'H', '1', null, '3415');
INSERT INTO `system_area` VALUES ('1186', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '舒城县', '341523', '3', 'shuchengxian', 'S', '1', null, '3415');
INSERT INTO `system_area` VALUES ('1187', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '金寨县', '341524', '3', 'jinzhaixian', 'J', '1', null, '3415');
INSERT INTO `system_area` VALUES ('1188', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '霍山县', '341525', '3', 'huoshanxian', 'H', '1', null, '3415');
INSERT INTO `system_area` VALUES ('1189', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '亳州市', '3416', '2', 'bozhoushi', 'B', '1', null, '34');
INSERT INTO `system_area` VALUES ('1190', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '谯城区', '341602', '3', 'qiaochengqu', 'Q', '1', null, '3416');
INSERT INTO `system_area` VALUES ('1191', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '涡阳县', '341621', '3', 'woyangxian', 'W', '1', null, '3416');
INSERT INTO `system_area` VALUES ('1192', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '蒙城县', '341622', '3', 'mengchengxian', 'M', '1', null, '3416');
INSERT INTO `system_area` VALUES ('1193', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '利辛县', '341623', '3', 'lixinxian', 'L', '1', null, '3416');
INSERT INTO `system_area` VALUES ('1194', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '池州市', '3417', '2', 'chizhoushi', 'C', '1', null, '34');
INSERT INTO `system_area` VALUES ('1195', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '贵池区', '341702', '3', 'guichiqu', 'G', '1', null, '3417');
INSERT INTO `system_area` VALUES ('1196', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '东至县', '341721', '3', 'dongzhixian', 'D', '1', null, '3417');
INSERT INTO `system_area` VALUES ('1197', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '石台县', '341722', '3', 'shitaixian', 'S', '1', null, '3417');
INSERT INTO `system_area` VALUES ('1198', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '青阳县', '341723', '3', 'qingyangxian', 'Q', '1', null, '3417');
INSERT INTO `system_area` VALUES ('1199', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '宣城市', '3418', '2', 'xuanchengshi', 'X', '1', null, '34');
INSERT INTO `system_area` VALUES ('1200', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '宣州区', '341802', '3', 'xuanzhouqu', 'X', '1', null, '3418');
INSERT INTO `system_area` VALUES ('1201', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '郎溪县', '341821', '3', 'langxixian', 'L', '1', null, '3418');
INSERT INTO `system_area` VALUES ('1202', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '泾县', '341823', '3', 'jingxian', 'J', '1', null, '3418');
INSERT INTO `system_area` VALUES ('1203', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.253877', '1', '绩溪县', '341824', '3', 'jixixian', 'J', '1', null, '3418');
INSERT INTO `system_area` VALUES ('1204', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '旌德县', '341825', '3', 'jingdexian', 'J', '1', null, '3418');
INSERT INTO `system_area` VALUES ('1205', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '宣城市经济开发区', '341871', '3', 'xuanchengshijingjikaifaqu', 'X', '1', null, '3418');
INSERT INTO `system_area` VALUES ('1206', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '宁国市', '341881', '3', 'ningguoshi', 'N', '1', null, '3418');
INSERT INTO `system_area` VALUES ('1207', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '广德市', '341882', '3', 'guangdeshi', 'G', '1', null, '3418');
INSERT INTO `system_area` VALUES ('1208', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '福建省', '35', '1', 'fujiansheng', 'F', '1', null, null);
INSERT INTO `system_area` VALUES ('1209', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '福州市', '3501', '2', 'fuzhoushi', 'F', '1', null, '35');
INSERT INTO `system_area` VALUES ('1210', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '鼓楼区', '350102', '3', 'gulouqu', 'G', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1211', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '台江区', '350103', '3', 'taijiangqu', 'T', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1212', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '仓山区', '350104', '3', 'cangshanqu', 'C', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1213', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '马尾区', '350105', '3', 'mayiqu', 'M', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1214', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '晋安区', '350111', '3', 'jinanqu', 'J', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1215', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '长乐区', '350112', '3', 'changlequ', 'C', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1216', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '闽侯县', '350121', '3', 'minhouxian', 'M', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1217', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '连江县', '350122', '3', 'lianjiangxian', 'L', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1218', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '罗源县', '350123', '3', 'luoyuanxian', 'L', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1219', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '闽清县', '350124', '3', 'minqingxian', 'M', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1220', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '永泰县', '350125', '3', 'yongtaixian', 'Y', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1221', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '平潭县', '350128', '3', 'pingtanxian', 'P', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1222', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '福清市', '350181', '3', 'fuqingshi', 'F', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1223', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '厦门市', '3502', '2', 'xiamenshi', 'X', '1', null, '35');
INSERT INTO `system_area` VALUES ('1224', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '思明区', '350203', '3', 'simingqu', 'S', '1', null, '3502');
INSERT INTO `system_area` VALUES ('1225', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '海沧区', '350205', '3', 'haicangqu', 'H', '1', null, '3502');
INSERT INTO `system_area` VALUES ('1226', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '湖里区', '350206', '3', 'huliqu', 'H', '1', null, '3502');
INSERT INTO `system_area` VALUES ('1227', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '集美区', '350211', '3', 'jimeiqu', 'J', '1', null, '3502');
INSERT INTO `system_area` VALUES ('1228', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '同安区', '350212', '3', 'tonganqu', 'T', '1', null, '3502');
INSERT INTO `system_area` VALUES ('1229', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '翔安区', '350213', '3', 'xianganqu', 'X', '1', null, '3502');
INSERT INTO `system_area` VALUES ('1230', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '莆田市', '3503', '2', 'putianshi', 'P', '1', null, '35');
INSERT INTO `system_area` VALUES ('1231', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '城厢区', '350302', '3', 'chengxiangqu', 'C', '1', null, '3503');
INSERT INTO `system_area` VALUES ('1232', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '涵江区', '350303', '3', 'hanjiangqu', 'H', '1', null, '3503');
INSERT INTO `system_area` VALUES ('1233', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '荔城区', '350304', '3', 'lichengqu', 'L', '1', null, '3503');
INSERT INTO `system_area` VALUES ('1234', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '秀屿区', '350305', '3', 'xiuyuqu', 'X', '1', null, '3503');
INSERT INTO `system_area` VALUES ('1235', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '仙游县', '350322', '3', 'xianyouxian', 'X', '1', null, '3503');
INSERT INTO `system_area` VALUES ('1236', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '三明市', '3504', '2', 'sanmingshi', 'S', '1', null, '35');
INSERT INTO `system_area` VALUES ('1237', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '梅列区', '350402', '3', 'meiliequ', 'M', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1238', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '三元区', '350403', '3', 'sanyuanqu', 'S', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1239', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '明溪县', '350421', '3', 'mingxixian', 'M', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1240', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '清流县', '350423', '3', 'qingliuxian', 'Q', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1241', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '宁化县', '350424', '3', 'ninghuaxian', 'N', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1242', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '大田县', '350425', '3', 'datianxian', 'D', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1243', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '尤溪县', '350426', '3', 'youxixian', 'Y', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1244', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '沙县', '350427', '3', 'shaxian', 'S', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1245', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '将乐县', '350428', '3', 'jianglexian', 'J', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1246', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '泰宁县', '350429', '3', 'tainingxian', 'T', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1247', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '建宁县', '350430', '3', 'jianningxian', 'J', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1248', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '永安市', '350481', '3', 'yonganshi', 'Y', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1249', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '泉州市', '3505', '2', 'quanzhoushi', 'Q', '1', null, '35');
INSERT INTO `system_area` VALUES ('1250', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '鲤城区', '350502', '3', 'lichengqu', 'L', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1251', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '丰泽区', '350503', '3', 'fengzequ', 'F', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1252', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '洛江区', '350504', '3', 'luojiangqu', 'L', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1253', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '泉港区', '350505', '3', 'quangangqu', 'Q', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1254', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '惠安县', '350521', '3', 'huianxian', 'H', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1255', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '安溪县', '350524', '3', 'anxixian', 'A', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1256', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '永春县', '350525', '3', 'yongchunxian', 'Y', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1257', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '德化县', '350526', '3', 'dehuaxian', 'D', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1258', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '金门县', '350527', '3', 'jinmenxian', 'J', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1259', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '石狮市', '350581', '3', 'shishishi', 'S', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1260', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '晋江市', '350582', '3', 'jinjiangshi', 'J', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1261', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '南安市', '350583', '3', 'nananshi', 'N', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1262', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '漳州市', '3506', '2', 'zhangzhoushi', 'Z', '1', null, '35');
INSERT INTO `system_area` VALUES ('1263', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '芗城区', '350602', '3', 'xiangchengqu', 'X', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1264', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '龙文区', '350603', '3', 'longwenqu', 'L', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1265', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '云霄县', '350622', '3', 'yunxiaoxian', 'Y', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1266', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '漳浦县', '350623', '3', 'zhangpuxian', 'Z', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1267', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '诏安县', '350624', '3', 'zhaoanxian', 'Z', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1268', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '长泰县', '350625', '3', 'zhangtaixian', 'Z', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1269', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '东山县', '350626', '3', 'dongshanxian', 'D', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1270', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '南靖县', '350627', '3', 'nanjingxian', 'N', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1271', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '平和县', '350628', '3', 'pinghexian', 'P', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1272', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '华安县', '350629', '3', 'huaanxian', 'H', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1273', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '龙海市', '350681', '3', 'longhaishi', 'L', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1274', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '南平市', '3507', '2', 'nanpingshi', 'N', '1', null, '35');
INSERT INTO `system_area` VALUES ('1275', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '延平区', '350702', '3', 'yanpingqu', 'Y', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1276', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '建阳区', '350703', '3', 'jianyangqu', 'J', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1277', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '顺昌县', '350721', '3', 'shunchangxian', 'S', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1278', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '浦城县', '350722', '3', 'puchengxian', 'P', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1279', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '光泽县', '350723', '3', 'guangzexian', 'G', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1280', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '松溪县', '350724', '3', 'songxixian', 'S', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1281', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '政和县', '350725', '3', 'zhenghexian', 'Z', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1282', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '邵武市', '350781', '3', 'shaowushi', 'S', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1283', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '武夷山市', '350782', '3', 'wuyishanshi', 'W', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1284', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '建瓯市', '350783', '3', 'jianoushi', 'J', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1285', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '龙岩市', '3508', '2', 'longyanshi', 'L', '1', null, '35');
INSERT INTO `system_area` VALUES ('1286', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '新罗区', '350802', '3', 'xinluoqu', 'X', '1', null, '3508');
INSERT INTO `system_area` VALUES ('1287', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '永定区', '350803', '3', 'yongdingqu', 'Y', '1', null, '3508');
INSERT INTO `system_area` VALUES ('1288', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '长汀县', '350821', '3', 'changtingxian', 'C', '1', null, '3508');
INSERT INTO `system_area` VALUES ('1289', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '上杭县', '350823', '3', 'shanghangxian', 'S', '1', null, '3508');
INSERT INTO `system_area` VALUES ('1290', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '武平县', '350824', '3', 'wupingxian', 'W', '1', null, '3508');
INSERT INTO `system_area` VALUES ('1291', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '连城县', '350825', '3', 'lianchengxian', 'L', '1', null, '3508');
INSERT INTO `system_area` VALUES ('1292', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '漳平市', '350881', '3', 'zhangpingshi', 'Z', '1', null, '3508');
INSERT INTO `system_area` VALUES ('1293', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '宁德市', '3509', '2', 'ningdeshi', 'N', '1', null, '35');
INSERT INTO `system_area` VALUES ('1294', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '蕉城区', '350902', '3', 'jiaochengqu', 'J', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1295', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '霞浦县', '350921', '3', 'xiapuxian', 'X', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1296', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '古田县', '350922', '3', 'gutianxian', 'G', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1297', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '屏南县', '350923', '3', 'pingnanxian', 'P', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1298', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '寿宁县', '350924', '3', 'shouningxian', 'S', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1299', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '周宁县', '350925', '3', 'zhouningxian', 'Z', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1300', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '柘荣县', '350926', '3', 'zherongxian', 'Z', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1301', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '福安市', '350981', '3', 'fuanshi', 'F', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1302', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '福鼎市', '350982', '3', 'fudingshi', 'F', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1303', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '江西省', '36', '1', 'jiangxisheng', 'J', '1', null, null);
INSERT INTO `system_area` VALUES ('1304', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '南昌市', '3601', '2', 'nanchangshi', 'N', '1', null, '36');
INSERT INTO `system_area` VALUES ('1305', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '东湖区', '360102', '3', 'donghuqu', 'D', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1306', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '西湖区', '360103', '3', 'xihuqu', 'X', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1307', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '青云谱区', '360104', '3', 'qingyunpuqu', 'Q', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1308', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '青山湖区', '360111', '3', 'qingshanhuqu', 'Q', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1309', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '新建区', '360112', '3', 'xinjianqu', 'X', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1310', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '红谷滩区', '360113', '3', 'honggutanqu', 'H', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1311', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '南昌县', '360121', '3', 'nanchangxian', 'N', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1312', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '安义县', '360123', '3', 'anyixian', 'A', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1313', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '进贤县', '360124', '3', 'jinxianxian', 'J', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1314', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '景德镇市', '3602', '2', 'jingdezhenshi', 'J', '1', null, '36');
INSERT INTO `system_area` VALUES ('1315', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '昌江区', '360202', '3', 'changjiangqu', 'C', '1', null, '3602');
INSERT INTO `system_area` VALUES ('1316', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '珠山区', '360203', '3', 'zhushanqu', 'Z', '1', null, '3602');
INSERT INTO `system_area` VALUES ('1317', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '浮梁县', '360222', '3', 'fuliangxian', 'F', '1', null, '3602');
INSERT INTO `system_area` VALUES ('1318', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '乐平市', '360281', '3', 'lepingshi', 'L', '1', null, '3602');
INSERT INTO `system_area` VALUES ('1319', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '萍乡市', '3603', '2', 'pingxiangshi', 'P', '1', null, '36');
INSERT INTO `system_area` VALUES ('1320', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '安源区', '360302', '3', 'anyuanqu', 'A', '1', null, '3603');
INSERT INTO `system_area` VALUES ('1321', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '湘东区', '360313', '3', 'xiangdongqu', 'X', '1', null, '3603');
INSERT INTO `system_area` VALUES ('1322', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '莲花县', '360321', '3', 'lianhuaxian', 'L', '1', null, '3603');
INSERT INTO `system_area` VALUES ('1323', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '上栗县', '360322', '3', 'shanglixian', 'S', '1', null, '3603');
INSERT INTO `system_area` VALUES ('1324', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '芦溪县', '360323', '3', 'luxixian', 'L', '1', null, '3603');
INSERT INTO `system_area` VALUES ('1325', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '九江市', '3604', '2', 'jiujiangshi', 'J', '1', null, '36');
INSERT INTO `system_area` VALUES ('1326', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '濂溪区', '360402', '3', 'lianxiqu', 'L', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1327', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '浔阳区', '360403', '3', 'xunyangqu', 'X', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1328', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '柴桑区', '360404', '3', 'chaisangqu', 'C', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1329', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '武宁县', '360423', '3', 'wuningxian', 'W', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1330', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '修水县', '360424', '3', 'xiushuixian', 'X', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1331', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '永修县', '360425', '3', 'yongxiuxian', 'Y', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1332', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '德安县', '360426', '3', 'deanxian', 'D', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1333', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '都昌县', '360428', '3', 'douchangxian', 'D', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1334', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '湖口县', '360429', '3', 'hukouxian', 'H', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1335', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '彭泽县', '360430', '3', 'pengzexian', 'P', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1336', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '瑞昌市', '360481', '3', 'ruichangshi', 'R', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1337', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '共青城市', '360482', '3', 'gongqingchengshi', 'G', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1338', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '庐山市', '360483', '3', 'lushanshi', 'L', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1339', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '新余市', '3605', '2', 'xinyushi', 'X', '1', null, '36');
INSERT INTO `system_area` VALUES ('1340', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '渝水区', '360502', '3', 'yushuiqu', 'Y', '1', null, '3605');
INSERT INTO `system_area` VALUES ('1341', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '分宜县', '360521', '3', 'fenyixian', 'F', '1', null, '3605');
INSERT INTO `system_area` VALUES ('1342', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '鹰潭市', '3606', '2', 'yingtanshi', 'Y', '1', null, '36');
INSERT INTO `system_area` VALUES ('1343', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '月湖区', '360602', '3', 'yuehuqu', 'Y', '1', null, '3606');
INSERT INTO `system_area` VALUES ('1344', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '余江区', '360603', '3', 'yujiangqu', 'Y', '1', null, '3606');
INSERT INTO `system_area` VALUES ('1345', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '贵溪市', '360681', '3', 'guixishi', 'G', '1', null, '3606');
INSERT INTO `system_area` VALUES ('1346', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '赣州市', '3607', '2', 'ganzhoushi', 'G', '1', null, '36');
INSERT INTO `system_area` VALUES ('1347', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '章贡区', '360702', '3', 'zhanggongqu', 'Z', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1348', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '南康区', '360703', '3', 'nankangqu', 'N', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1349', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '赣县区', '360704', '3', 'ganxianqu', 'G', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1350', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '信丰县', '360722', '3', 'xinfengxian', 'X', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1351', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '大余县', '360723', '3', 'dayuxian', 'D', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1352', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '上犹县', '360724', '3', 'shangyouxian', 'S', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1353', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '崇义县', '360725', '3', 'chongyixian', 'C', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1354', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '安远县', '360726', '3', 'anyuanxian', 'A', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1355', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '定南县', '360728', '3', 'dingnanxian', 'D', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1356', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '全南县', '360729', '3', 'quannanxian', 'Q', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1357', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '宁都县', '360730', '3', 'ningdouxian', 'N', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1358', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '于都县', '360731', '3', 'yudouxian', 'Y', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1359', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '兴国县', '360732', '3', 'xingguoxian', 'X', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1360', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '会昌县', '360733', '3', 'huichangxian', 'H', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1361', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '寻乌县', '360734', '3', 'xunwuxian', 'X', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1362', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '石城县', '360735', '3', 'shichengxian', 'S', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1363', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '瑞金市', '360781', '3', 'ruijinshi', 'R', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1364', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '龙南市', '360783', '3', 'longnanshi', 'L', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1365', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '吉安市', '3608', '2', 'jianshi', 'J', '1', null, '36');
INSERT INTO `system_area` VALUES ('1366', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '吉州区', '360802', '3', 'jizhouqu', 'J', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1367', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '青原区', '360803', '3', 'qingyuanqu', 'Q', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1368', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '吉安县', '360821', '3', 'jianxian', 'J', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1369', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '吉水县', '360822', '3', 'jishuixian', 'J', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1370', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '峡江县', '360823', '3', 'xiajiangxian', 'X', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1371', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '新干县', '360824', '3', 'xinganxian', 'X', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1372', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '永丰县', '360825', '3', 'yongfengxian', 'Y', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1373', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '泰和县', '360826', '3', 'taihexian', 'T', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1374', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '遂川县', '360827', '3', 'suichuanxian', 'S', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1375', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '万安县', '360828', '3', 'wananxian', 'W', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1376', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '安福县', '360829', '3', 'anfuxian', 'A', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1377', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '永新县', '360830', '3', 'yongxinxian', 'Y', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1378', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '井冈山市', '360881', '3', 'jinggangshanshi', 'J', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1379', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '宜春市', '3609', '2', 'yichunshi', 'Y', '1', null, '36');
INSERT INTO `system_area` VALUES ('1380', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '袁州区', '360902', '3', 'yuanzhouqu', 'Y', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1381', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '奉新县', '360921', '3', 'fengxinxian', 'F', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1382', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '万载县', '360922', '3', 'wanzaixian', 'W', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1383', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '上高县', '360923', '3', 'shanggaoxian', 'S', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1384', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '宜丰县', '360924', '3', 'yifengxian', 'Y', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1385', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '靖安县', '360925', '3', 'jinganxian', 'J', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1386', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '铜鼓县', '360926', '3', 'tongguxian', 'T', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1387', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '丰城市', '360981', '3', 'fengchengshi', 'F', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1388', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '樟树市', '360982', '3', 'zhangshushi', 'Z', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1389', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '高安市', '360983', '3', 'gaoanshi', 'G', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1390', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '抚州市', '3610', '2', 'fuzhoushi', 'F', '1', null, '36');
INSERT INTO `system_area` VALUES ('1391', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '临川区', '361002', '3', 'linchuanqu', 'L', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1392', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '东乡区', '361003', '3', 'dongxiangqu', 'D', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1393', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '南城县', '361021', '3', 'nanchengxian', 'N', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1394', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '黎川县', '361022', '3', 'lichuanxian', 'L', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1395', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '南丰县', '361023', '3', 'nanfengxian', 'N', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1396', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '崇仁县', '361024', '3', 'chongrenxian', 'C', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1397', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '乐安县', '361025', '3', 'leanxian', 'L', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1398', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '宜黄县', '361026', '3', 'yihuangxian', 'Y', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1399', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '金溪县', '361027', '3', 'jinxixian', 'J', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1400', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '资溪县', '361028', '3', 'zixixian', 'Z', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1401', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '广昌县', '361030', '3', 'guangchangxian', 'G', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1402', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '上饶市', '3611', '2', 'shangraoshi', 'S', '1', null, '36');
INSERT INTO `system_area` VALUES ('1403', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '信州区', '361102', '3', 'xinzhouqu', 'X', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1404', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '广丰区', '361103', '3', 'guangfengqu', 'G', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1405', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '广信区', '361104', '3', 'guangxinqu', 'G', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1406', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '玉山县', '361123', '3', 'yushanxian', 'Y', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1407', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '铅山县', '361124', '3', 'yanshanxian', 'Y', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1408', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '横峰县', '361125', '3', 'hengfengxian', 'H', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1409', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '弋阳县', '361126', '3', 'yiyangxian', 'Y', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1410', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '余干县', '361127', '3', 'yuganxian', 'Y', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1411', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '鄱阳县', '361128', '3', 'poyangxian', 'P', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1412', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '万年县', '361129', '3', 'wannianxian', 'W', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1413', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '婺源县', '361130', '3', 'wuyuanxian', 'W', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1414', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '德兴市', '361181', '3', 'dexingshi', 'D', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1415', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '山东省', '37', '1', 'shandongsheng', 'S', '1', null, null);
INSERT INTO `system_area` VALUES ('1416', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '济南市', '3701', '2', 'jinanshi', 'J', '1', null, '37');
INSERT INTO `system_area` VALUES ('1417', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '历下区', '370102', '3', 'lixiaqu', 'L', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1418', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '市中区', '370103', '3', 'shizhongqu', 'S', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1419', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '槐荫区', '370104', '3', 'huaiyinqu', 'H', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1420', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '天桥区', '370105', '3', 'tianqiaoqu', 'T', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1421', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '历城区', '370112', '3', 'lichengqu', 'L', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1422', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '长清区', '370113', '3', 'zhangqingqu', 'Z', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1423', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '章丘区', '370114', '3', 'zhangqiuqu', 'Z', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1424', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '济阳区', '370115', '3', 'jiyangqu', 'J', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1425', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '莱芜区', '370116', '3', 'laiwuqu', 'L', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1426', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '钢城区', '370117', '3', 'gangchengqu', 'G', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1427', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '平阴县', '370124', '3', 'pingyinxian', 'P', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1428', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '商河县', '370126', '3', 'shanghexian', 'S', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1429', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '济南高新技术产业开发区', '370171', '3', 'jinangaoxinjishuchanyekaifaqu', 'J', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1430', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '青岛市', '3702', '2', 'qingdaoshi', 'Q', '1', null, '37');
INSERT INTO `system_area` VALUES ('1431', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '市南区', '370202', '3', 'shinanqu', 'S', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1432', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '市北区', '370203', '3', 'shibeiqu', 'S', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1433', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '黄岛区', '370211', '3', 'huangdaoqu', 'H', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1434', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '崂山区', '370212', '3', 'laoshanqu', 'L', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1435', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '李沧区', '370213', '3', 'licangqu', 'L', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1436', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '城阳区', '370214', '3', 'chengyangqu', 'C', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1437', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '即墨区', '370215', '3', 'jimoqu', 'J', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1438', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '青岛高新技术产业开发区', '370271', '3', 'qingdaogaoxinjishuchanyekaifaqu', 'Q', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1439', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '胶州市', '370281', '3', 'jiaozhoushi', 'J', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1440', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '平度市', '370283', '3', 'pingdushi', 'P', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1441', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '莱西市', '370285', '3', 'laixishi', 'L', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1442', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '淄博市', '3703', '2', 'ziboshi', 'Z', '1', null, '37');
INSERT INTO `system_area` VALUES ('1443', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '淄川区', '370302', '3', 'zichuanqu', 'Z', '1', null, '3703');
INSERT INTO `system_area` VALUES ('1444', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '张店区', '370303', '3', 'zhangdianqu', 'Z', '1', null, '3703');
INSERT INTO `system_area` VALUES ('1445', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '博山区', '370304', '3', 'boshanqu', 'B', '1', null, '3703');
INSERT INTO `system_area` VALUES ('1446', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '临淄区', '370305', '3', 'linziqu', 'L', '1', null, '3703');
INSERT INTO `system_area` VALUES ('1447', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '周村区', '370306', '3', 'zhoucunqu', 'Z', '1', null, '3703');
INSERT INTO `system_area` VALUES ('1448', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.269879', '1', '桓台县', '370321', '3', 'huantaixian', 'H', '1', null, '3703');
INSERT INTO `system_area` VALUES ('1449', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '高青县', '370322', '3', 'gaoqingxian', 'G', '1', null, '3703');
INSERT INTO `system_area` VALUES ('1450', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '沂源县', '370323', '3', 'yiyuanxian', 'Y', '1', null, '3703');
INSERT INTO `system_area` VALUES ('1451', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '枣庄市', '3704', '2', 'zaozhuangshi', 'Z', '1', null, '37');
INSERT INTO `system_area` VALUES ('1452', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '市中区', '370402', '3', 'shizhongqu', 'S', '1', null, '3704');
INSERT INTO `system_area` VALUES ('1453', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '薛城区', '370403', '3', 'xuechengqu', 'X', '1', null, '3704');
INSERT INTO `system_area` VALUES ('1454', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '峄城区', '370404', '3', 'yichengqu', 'Y', '1', null, '3704');
INSERT INTO `system_area` VALUES ('1455', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '台儿庄区', '370405', '3', 'taierzhuangqu', 'T', '1', null, '3704');
INSERT INTO `system_area` VALUES ('1456', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '山亭区', '370406', '3', 'shantingqu', 'S', '1', null, '3704');
INSERT INTO `system_area` VALUES ('1457', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '滕州市', '370481', '3', 'tengzhoushi', 'T', '1', null, '3704');
INSERT INTO `system_area` VALUES ('1458', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '东营市', '3705', '2', 'dongyingshi', 'D', '1', null, '37');
INSERT INTO `system_area` VALUES ('1459', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '东营区', '370502', '3', 'dongyingqu', 'D', '1', null, '3705');
INSERT INTO `system_area` VALUES ('1460', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '河口区', '370503', '3', 'hekouqu', 'H', '1', null, '3705');
INSERT INTO `system_area` VALUES ('1461', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '垦利区', '370505', '3', 'kenliqu', 'K', '1', null, '3705');
INSERT INTO `system_area` VALUES ('1462', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '利津县', '370522', '3', 'lijinxian', 'L', '1', null, '3705');
INSERT INTO `system_area` VALUES ('1463', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '广饶县', '370523', '3', 'guangraoxian', 'G', '1', null, '3705');
INSERT INTO `system_area` VALUES ('1464', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '东营经济技术开发区', '370571', '3', 'dongyingjingjijishukaifaqu', 'D', '1', null, '3705');
INSERT INTO `system_area` VALUES ('1465', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '东营港经济开发区', '370572', '3', 'dongyinggangjingjikaifaqu', 'D', '1', null, '3705');
INSERT INTO `system_area` VALUES ('1466', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '烟台市', '3706', '2', 'yantaishi', 'Y', '1', null, '37');
INSERT INTO `system_area` VALUES ('1467', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '芝罘区', '370602', '3', 'zhifuqu', 'Z', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1468', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '福山区', '370611', '3', 'fushanqu', 'F', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1469', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '牟平区', '370612', '3', 'mupingqu', 'M', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1470', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '莱山区', '370613', '3', 'laishanqu', 'L', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1471', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '蓬莱区', '370614', '3', 'penglaiqu', 'P', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1472', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '烟台高新技术产业开发区', '370671', '3', 'yantaigaoxinjishuchanyekaifaqu', 'Y', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1473', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '烟台经济技术开发区', '370672', '3', 'yantaijingjijishukaifaqu', 'Y', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1474', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '龙口市', '370681', '3', 'longkoushi', 'L', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1475', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '莱阳市', '370682', '3', 'laiyangshi', 'L', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1476', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '莱州市', '370683', '3', 'laizhoushi', 'L', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1477', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '招远市', '370685', '3', 'zhaoyuanshi', 'Z', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1478', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '栖霞市', '370686', '3', 'qixiashi', 'Q', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1479', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '海阳市', '370687', '3', 'haiyangshi', 'H', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1480', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '潍坊市', '3707', '2', 'weifangshi', 'W', '1', null, '37');
INSERT INTO `system_area` VALUES ('1481', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '潍城区', '370702', '3', 'weichengqu', 'W', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1482', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '寒亭区', '370703', '3', 'hantingqu', 'H', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1483', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '坊子区', '370704', '3', 'fangziqu', 'F', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1484', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '奎文区', '370705', '3', 'kuiwenqu', 'K', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1485', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '临朐县', '370724', '3', 'linquxian', 'L', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1486', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '昌乐县', '370725', '3', 'changlexian', 'C', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1487', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '潍坊滨海经济技术开发区', '370772', '3', 'weifangbinhaijingjijishukaifaqu', 'W', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1488', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '青州市', '370781', '3', 'qingzhoushi', 'Q', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1489', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '诸城市', '370782', '3', 'zhuchengshi', 'Z', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1490', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '寿光市', '370783', '3', 'shouguangshi', 'S', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1491', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '安丘市', '370784', '3', 'anqiushi', 'A', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1492', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '高密市', '370785', '3', 'gaomishi', 'G', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1493', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '昌邑市', '370786', '3', 'changyishi', 'C', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1494', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '济宁市', '3708', '2', 'jiningshi', 'J', '1', null, '37');
INSERT INTO `system_area` VALUES ('1495', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '任城区', '370811', '3', 'renchengqu', 'R', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1496', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '兖州区', '370812', '3', 'yanzhouqu', 'Y', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1497', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '微山县', '370826', '3', 'weishanxian', 'W', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1498', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '鱼台县', '370827', '3', 'yutaixian', 'Y', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1499', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '金乡县', '370828', '3', 'jinxiangxian', 'J', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1500', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '嘉祥县', '370829', '3', 'jiaxiangxian', 'J', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1501', null, null, null, '2022-12-24 14:21:06.273889', '2022-12-24 14:21:06.273889', '1', '汶上县', '370830', '3', 'wenshangxian', 'W', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1502', null, null, null, '2022-12-24 14:21:06.273889', '2022-12-24 14:21:06.273889', '1', '泗水县', '370831', '3', 'sishuixian', 'S', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1503', null, null, null, '2022-12-24 14:21:06.273889', '2022-12-24 14:21:06.273889', '1', '梁山县', '370832', '3', 'liangshanxian', 'L', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1504', null, null, null, '2022-12-24 14:21:06.273889', '2022-12-24 14:21:06.273889', '1', '济宁高新技术产业开发区', '370871', '3', 'jininggaoxinjishuchanyekaifaqu', 'J', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1505', null, null, null, '2022-12-24 14:21:06.273889', '2022-12-24 14:21:06.273889', '1', '曲阜市', '370881', '3', 'qufushi', 'Q', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1506', null, null, null, '2022-12-24 14:21:06.273889', '2022-12-24 14:21:06.273889', '1', '邹城市', '370883', '3', 'zouchengshi', 'Z', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1507', null, null, null, '2022-12-24 14:21:06.273889', '2022-12-24 14:21:06.273889', '1', '泰安市', '3709', '2', 'taianshi', 'T', '1', null, '37');
INSERT INTO `system_area` VALUES ('1508', null, null, null, '2022-12-24 14:21:06.273889', '2022-12-24 14:21:06.274887', '1', '泰山区', '370902', '3', 'taishanqu', 'T', '1', null, '3709');
INSERT INTO `system_area` VALUES ('1509', null, null, null, '2022-12-24 14:21:06.274887', '2022-12-24 14:21:06.274887', '1', '岱岳区', '370911', '3', 'daiyuequ', 'D', '1', null, '3709');
INSERT INTO `system_area` VALUES ('1510', null, null, null, '2022-12-24 14:21:06.274887', '2022-12-24 14:21:06.274887', '1', '宁阳县', '370921', '3', 'ningyangxian', 'N', '1', null, '3709');
INSERT INTO `system_area` VALUES ('1511', null, null, null, '2022-12-24 14:21:06.274887', '2022-12-24 14:21:06.274887', '1', '东平县', '370923', '3', 'dongpingxian', 'D', '1', null, '3709');
INSERT INTO `system_area` VALUES ('1512', null, null, null, '2022-12-24 14:21:06.274887', '2022-12-24 14:21:06.274887', '1', '新泰市', '370982', '3', 'xintaishi', 'X', '1', null, '3709');
INSERT INTO `system_area` VALUES ('1513', null, null, null, '2022-12-24 14:21:06.274887', '2022-12-24 14:21:06.274887', '1', '肥城市', '370983', '3', 'feichengshi', 'F', '1', null, '3709');
INSERT INTO `system_area` VALUES ('1514', null, null, null, '2022-12-24 14:21:06.274887', '2022-12-24 14:21:06.274887', '1', '威海市', '3710', '2', 'weihaishi', 'W', '1', null, '37');
INSERT INTO `system_area` VALUES ('1515', null, null, null, '2022-12-24 14:21:06.274887', '2022-12-24 14:21:06.274887', '1', '环翠区', '371002', '3', 'huancuiqu', 'H', '1', null, '3710');
INSERT INTO `system_area` VALUES ('1516', null, null, null, '2022-12-24 14:21:06.274887', '2022-12-24 14:21:06.274887', '1', '文登区', '371003', '3', 'wendengqu', 'W', '1', null, '3710');
INSERT INTO `system_area` VALUES ('1517', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '威海火炬高技术产业开发区', '371071', '3', 'weihaihuojugaojishuchanyekaifaqu', 'W', '1', null, '3710');
INSERT INTO `system_area` VALUES ('1518', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '威海经济技术开发区', '371072', '3', 'weihaijingjijishukaifaqu', 'W', '1', null, '3710');
INSERT INTO `system_area` VALUES ('1519', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '威海临港经济技术开发区', '371073', '3', 'weihailingangjingjijishukaifaqu', 'W', '1', null, '3710');
INSERT INTO `system_area` VALUES ('1520', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '荣成市', '371082', '3', 'rongchengshi', 'R', '1', null, '3710');
INSERT INTO `system_area` VALUES ('1521', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '乳山市', '371083', '3', 'rushanshi', 'R', '1', null, '3710');
INSERT INTO `system_area` VALUES ('1522', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '日照市', '3711', '2', 'rizhaoshi', 'R', '1', null, '37');
INSERT INTO `system_area` VALUES ('1523', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '东港区', '371102', '3', 'donggangqu', 'D', '1', null, '3711');
INSERT INTO `system_area` VALUES ('1524', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '岚山区', '371103', '3', 'lanshanqu', 'L', '1', null, '3711');
INSERT INTO `system_area` VALUES ('1525', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '五莲县', '371121', '3', 'wulianxian', 'W', '1', null, '3711');
INSERT INTO `system_area` VALUES ('1526', null, null, null, '2022-12-24 14:21:06.276885', '2022-12-24 14:21:06.276885', '1', '莒县', '371122', '3', 'juxian', 'J', '1', null, '3711');
INSERT INTO `system_area` VALUES ('1527', null, null, null, '2022-12-24 14:21:06.276885', '2022-12-24 14:21:06.276885', '1', '日照经济技术开发区', '371171', '3', 'rizhaojingjijishukaifaqu', 'R', '1', null, '3711');
INSERT INTO `system_area` VALUES ('1528', null, null, null, '2022-12-24 14:21:06.276885', '2022-12-24 14:21:06.276885', '1', '临沂市', '3713', '2', 'linyishi', 'L', '1', null, '37');
INSERT INTO `system_area` VALUES ('1529', null, null, null, '2022-12-24 14:21:06.276885', '2022-12-24 14:21:06.276885', '1', '兰山区', '371302', '3', 'lanshanqu', 'L', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1530', null, null, null, '2022-12-24 14:21:06.276885', '2022-12-24 14:21:06.276885', '1', '罗庄区', '371311', '3', 'luozhuangqu', 'L', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1531', null, null, null, '2022-12-24 14:21:06.276885', '2022-12-24 14:21:06.276885', '1', '河东区', '371312', '3', 'hedongqu', 'H', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1532', null, null, null, '2022-12-24 14:21:06.276885', '2022-12-24 14:21:06.276885', '1', '沂南县', '371321', '3', 'yinanxian', 'Y', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1533', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '郯城县', '371322', '3', 'tanchengxian', 'T', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1534', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '沂水县', '371323', '3', 'yishuixian', 'Y', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1535', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '兰陵县', '371324', '3', 'lanlingxian', 'L', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1536', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '费县', '371325', '3', 'feixian', 'F', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1537', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '平邑县', '371326', '3', 'pingyixian', 'P', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1538', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '莒南县', '371327', '3', 'junanxian', 'J', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1539', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '蒙阴县', '371328', '3', 'mengyinxian', 'M', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1540', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '临沭县', '371329', '3', 'linshuxian', 'L', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1541', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '临沂高新技术产业开发区', '371371', '3', 'linyigaoxinjishuchanyekaifaqu', 'L', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1542', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '德州市', '3714', '2', 'dezhoushi', 'D', '1', null, '37');
INSERT INTO `system_area` VALUES ('1543', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '德城区', '371402', '3', 'dechengqu', 'D', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1544', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '陵城区', '371403', '3', 'lingchengqu', 'L', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1545', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '宁津县', '371422', '3', 'ningjinxian', 'N', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1546', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '庆云县', '371423', '3', 'qingyunxian', 'Q', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1547', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '临邑县', '371424', '3', 'linyixian', 'L', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1548', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '齐河县', '371425', '3', 'qihexian', 'Q', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1549', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '平原县', '371426', '3', 'pingyuanxian', 'P', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1550', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '夏津县', '371427', '3', 'xiajinxian', 'X', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1551', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '武城县', '371428', '3', 'wuchengxian', 'W', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1552', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '德州经济技术开发区', '371471', '3', 'dezhoujingjijishukaifaqu', 'D', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1553', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '德州运河经济开发区', '371472', '3', 'dezhouyunhejingjikaifaqu', 'D', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1554', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '乐陵市', '371481', '3', 'lelingshi', 'L', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1555', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '禹城市', '371482', '3', 'yuchengshi', 'Y', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1556', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '聊城市', '3715', '2', 'liaochengshi', 'L', '1', null, '37');
INSERT INTO `system_area` VALUES ('1557', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '东昌府区', '371502', '3', 'dongchangfuqu', 'D', '1', null, '3715');
INSERT INTO `system_area` VALUES ('1558', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '茌平区', '371503', '3', 'chipingqu', 'C', '1', null, '3715');
INSERT INTO `system_area` VALUES ('1559', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '阳谷县', '371521', '3', 'yangguxian', 'Y', '1', null, '3715');
INSERT INTO `system_area` VALUES ('1560', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '莘县', '371522', '3', 'shenxian', 'S', '1', null, '3715');
INSERT INTO `system_area` VALUES ('1561', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '东阿县', '371524', '3', 'dongexian', 'D', '1', null, '3715');
INSERT INTO `system_area` VALUES ('1562', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '冠县', '371525', '3', 'guanxian', 'G', '1', null, '3715');
INSERT INTO `system_area` VALUES ('1563', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '高唐县', '371526', '3', 'gaotangxian', 'G', '1', null, '3715');
INSERT INTO `system_area` VALUES ('1564', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '临清市', '371581', '3', 'linqingshi', 'L', '1', null, '3715');
INSERT INTO `system_area` VALUES ('1565', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '滨州市', '3716', '2', 'binzhoushi', 'B', '1', null, '37');
INSERT INTO `system_area` VALUES ('1566', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '滨城区', '371602', '3', 'binchengqu', 'B', '1', null, '3716');
INSERT INTO `system_area` VALUES ('1567', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '沾化区', '371603', '3', 'zhanhuaqu', 'Z', '1', null, '3716');
INSERT INTO `system_area` VALUES ('1568', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '惠民县', '371621', '3', 'huiminxian', 'H', '1', null, '3716');
INSERT INTO `system_area` VALUES ('1569', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '阳信县', '371622', '3', 'yangxinxian', 'Y', '1', null, '3716');
INSERT INTO `system_area` VALUES ('1570', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '无棣县', '371623', '3', 'wudixian', 'W', '1', null, '3716');
INSERT INTO `system_area` VALUES ('1571', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '博兴县', '371625', '3', 'boxingxian', 'B', '1', null, '3716');
INSERT INTO `system_area` VALUES ('1572', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '邹平市', '371681', '3', 'zoupingshi', 'Z', '1', null, '3716');
INSERT INTO `system_area` VALUES ('1573', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '菏泽市', '3717', '2', 'hezeshi', 'H', '1', null, '37');
INSERT INTO `system_area` VALUES ('1574', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '牡丹区', '371702', '3', 'mudanqu', 'M', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1575', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '定陶区', '371703', '3', 'dingtaoqu', 'D', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1576', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '曹县', '371721', '3', 'caoxian', 'C', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1577', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '单县', '371722', '3', 'danxian', 'D', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1578', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '成武县', '371723', '3', 'chengwuxian', 'C', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1579', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '巨野县', '371724', '3', 'juyexian', 'J', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1580', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '郓城县', '371725', '3', 'yunchengxian', 'Y', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1581', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '鄄城县', '371726', '3', 'juanchengxian', 'J', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1582', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '东明县', '371728', '3', 'dongmingxian', 'D', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1583', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '菏泽经济技术开发区', '371771', '3', 'hezejingjijishukaifaqu', 'H', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1584', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '菏泽高新技术开发区', '371772', '3', 'hezegaoxinjishukaifaqu', 'H', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1585', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '河南省', '41', '1', 'henansheng', 'H', '1', null, null);
INSERT INTO `system_area` VALUES ('1586', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '郑州市', '4101', '2', 'zhengzhoushi', 'Z', '1', null, '41');
INSERT INTO `system_area` VALUES ('1587', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '中原区', '410102', '3', 'zhongyuanqu', 'Z', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1588', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '二七区', '410103', '3', 'erqiqu', 'E', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1589', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '管城回族区', '410104', '3', 'guanchenghuizuqu', 'G', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1590', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '金水区', '410105', '3', 'jinshuiqu', 'J', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1591', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '上街区', '410106', '3', 'shangjiequ', 'S', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1592', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '惠济区', '410108', '3', 'huijiqu', 'H', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1593', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '中牟县', '410122', '3', 'zhongmuxian', 'Z', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1594', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '郑州经济技术开发区', '410171', '3', 'zhengzhoujingjijishukaifaqu', 'Z', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1595', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '郑州高新技术产业开发区', '410172', '3', 'zhengzhougaoxinjishuchanyekaifaqu', 'Z', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1596', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '郑州航空港经济综合实验区', '410173', '3', 'zhengzhouhangkonggangjingjizongheshiyanqu', 'Z', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1597', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '巩义市', '410181', '3', 'gongyishi', 'G', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1598', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '荥阳市', '410182', '3', 'xingyangshi', 'X', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1599', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '新密市', '410183', '3', 'xinmishi', 'X', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1600', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '新郑市', '410184', '3', 'xinzhengshi', 'X', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1601', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '登封市', '410185', '3', 'dengfengshi', 'D', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1602', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '开封市', '4102', '2', 'kaifengshi', 'K', '1', null, '41');
INSERT INTO `system_area` VALUES ('1603', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '龙亭区', '410202', '3', 'longtingqu', 'L', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1604', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '顺河回族区', '410203', '3', 'shunhehuizuqu', 'S', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1605', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '鼓楼区', '410204', '3', 'gulouqu', 'G', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1606', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '禹王台区', '410205', '3', 'yuwangtaiqu', 'Y', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1607', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '祥符区', '410212', '3', 'xiangfuqu', 'X', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1608', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '杞县', '410221', '3', 'qixian', 'Q', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1609', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '通许县', '410222', '3', 'tongxuxian', 'T', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1610', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '尉氏县', '410223', '3', 'weishixian', 'W', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1611', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '兰考县', '410225', '3', 'lankaoxian', 'L', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1612', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '洛阳市', '4103', '2', 'luoyangshi', 'L', '1', null, '41');
INSERT INTO `system_area` VALUES ('1613', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '老城区', '410302', '3', 'laochengqu', 'L', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1614', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '西工区', '410303', '3', 'xigongqu', 'X', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1615', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '瀍河回族区', '410304', '3', 'chanhehuizuqu', 'C', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1616', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '涧西区', '410305', '3', 'jianxiqu', 'J', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1617', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '吉利区', '410306', '3', 'jiliqu', 'J', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1618', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '洛龙区', '410311', '3', 'luolongqu', 'L', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1619', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '孟津县', '410322', '3', 'mengjinxian', 'M', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1620', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '新安县', '410323', '3', 'xinanxian', 'X', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1621', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '栾川县', '410324', '3', 'luanchuanxian', 'L', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1622', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '嵩县', '410325', '3', 'songxian', 'S', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1623', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '汝阳县', '410326', '3', 'ruyangxian', 'R', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1624', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '宜阳县', '410327', '3', 'yiyangxian', 'Y', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1625', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '洛宁县', '410328', '3', 'luoningxian', 'L', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1626', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '伊川县', '410329', '3', 'yichuanxian', 'Y', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1627', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '洛阳高新技术产业开发区', '410371', '3', 'luoyanggaoxinjishuchanyekaifaqu', 'L', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1628', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '偃师市', '410381', '3', 'yanshishi', 'Y', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1629', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '平顶山市', '4104', '2', 'pingdingshanshi', 'P', '1', null, '41');
INSERT INTO `system_area` VALUES ('1630', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '新华区', '410402', '3', 'xinhuaqu', 'X', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1631', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '卫东区', '410403', '3', 'weidongqu', 'W', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1632', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '石龙区', '410404', '3', 'shilongqu', 'S', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1633', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '湛河区', '410411', '3', 'zhanhequ', 'Z', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1634', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '宝丰县', '410421', '3', 'baofengxian', 'B', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1635', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '叶县', '410422', '3', 'yexian', 'Y', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1636', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '鲁山县', '410423', '3', 'lushanxian', 'L', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1637', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '郏县', '410425', '3', 'jiaxian', 'J', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1638', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '平顶山高新技术产业开发区', '410471', '3', 'pingdingshangaoxinjishuchanyekaifaqu', 'P', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1639', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '平顶山市城乡一体化示范区', '410472', '3', 'pingdingshanshichengxiangyitihuashifanqu', 'P', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1640', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '舞钢市', '410481', '3', 'wugangshi', 'W', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1641', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '汝州市', '410482', '3', 'ruzhoushi', 'R', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1642', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '安阳市', '4105', '2', 'anyangshi', 'A', '1', null, '41');
INSERT INTO `system_area` VALUES ('1643', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '文峰区', '410502', '3', 'wenfengqu', 'W', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1644', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '北关区', '410503', '3', 'beiguanqu', 'B', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1645', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '殷都区', '410505', '3', 'yindouqu', 'Y', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1646', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '龙安区', '410506', '3', 'longanqu', 'L', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1647', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '安阳县', '410522', '3', 'anyangxian', 'A', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1648', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '汤阴县', '410523', '3', 'tangyinxian', 'T', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1649', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '滑县', '410526', '3', 'huaxian', 'H', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1650', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '内黄县', '410527', '3', 'neihuangxian', 'N', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1651', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '安阳高新技术产业开发区', '410571', '3', 'anyanggaoxinjishuchanyekaifaqu', 'A', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1652', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '林州市', '410581', '3', 'linzhoushi', 'L', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1653', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '鹤壁市', '4106', '2', 'hebishi', 'H', '1', null, '41');
INSERT INTO `system_area` VALUES ('1654', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '鹤山区', '410602', '3', 'heshanqu', 'H', '1', null, '4106');
INSERT INTO `system_area` VALUES ('1655', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '山城区', '410603', '3', 'shanchengqu', 'S', '1', null, '4106');
INSERT INTO `system_area` VALUES ('1656', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '淇滨区', '410611', '3', 'qibinqu', 'Q', '1', null, '4106');
INSERT INTO `system_area` VALUES ('1657', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '浚县', '410621', '3', 'junxian', 'J', '1', null, '4106');
INSERT INTO `system_area` VALUES ('1658', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.285879', '1', '淇县', '410622', '3', 'qixian', 'Q', '1', null, '4106');
INSERT INTO `system_area` VALUES ('1659', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '鹤壁经济技术开发区', '410671', '3', 'hebijingjijishukaifaqu', 'H', '1', null, '4106');
INSERT INTO `system_area` VALUES ('1660', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '新乡市', '4107', '2', 'xinxiangshi', 'X', '1', null, '41');
INSERT INTO `system_area` VALUES ('1661', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '红旗区', '410702', '3', 'hongqiqu', 'H', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1662', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '卫滨区', '410703', '3', 'weibinqu', 'W', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1663', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '凤泉区', '410704', '3', 'fengquanqu', 'F', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1664', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '牧野区', '410711', '3', 'muyequ', 'M', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1665', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '新乡县', '410721', '3', 'xinxiangxian', 'X', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1666', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '获嘉县', '410724', '3', 'huojiaxian', 'H', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1667', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '原阳县', '410725', '3', 'yuanyangxian', 'Y', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1668', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '延津县', '410726', '3', 'yanjinxian', 'Y', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1669', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '封丘县', '410727', '3', 'fengqiuxian', 'F', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1670', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '新乡高新技术产业开发区', '410771', '3', 'xinxianggaoxinjishuchanyekaifaqu', 'X', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1671', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '新乡经济技术开发区', '410772', '3', 'xinxiangjingjijishukaifaqu', 'X', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1672', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '新乡市平原城乡一体化示范区', '410773', '3', 'xinxiangshipingyuanchengxiangyitihuashifanqu', 'X', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1673', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '卫辉市', '410781', '3', 'weihuishi', 'W', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1674', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '辉县市', '410782', '3', 'huixianshi', 'H', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1675', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '长垣市', '410783', '3', 'zhangyuanshi', 'Z', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1676', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '焦作市', '4108', '2', 'jiaozuoshi', 'J', '1', null, '41');
INSERT INTO `system_area` VALUES ('1677', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '解放区', '410802', '3', 'jiefangqu', 'J', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1678', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '中站区', '410803', '3', 'zhongzhanqu', 'Z', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1679', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '马村区', '410804', '3', 'macunqu', 'M', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1680', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '山阳区', '410811', '3', 'shanyangqu', 'S', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1681', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '修武县', '410821', '3', 'xiuwuxian', 'X', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1682', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '博爱县', '410822', '3', 'boaixian', 'B', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1683', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '武陟县', '410823', '3', 'wuzhixian', 'W', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1684', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '温县', '410825', '3', 'wenxian', 'W', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1685', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '焦作城乡一体化示范区', '410871', '3', 'jiaozuochengxiangyitihuashifanqu', 'J', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1686', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '沁阳市', '410882', '3', 'qinyangshi', 'Q', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1687', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '孟州市', '410883', '3', 'mengzhoushi', 'M', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1688', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '濮阳市', '4109', '2', 'puyangshi', 'P', '1', null, '41');
INSERT INTO `system_area` VALUES ('1689', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '华龙区', '410902', '3', 'hualongqu', 'H', '1', null, '4109');
INSERT INTO `system_area` VALUES ('1690', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '清丰县', '410922', '3', 'qingfengxian', 'Q', '1', null, '4109');
INSERT INTO `system_area` VALUES ('1691', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '南乐县', '410923', '3', 'nanlexian', 'N', '1', null, '4109');
INSERT INTO `system_area` VALUES ('1692', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '范县', '410926', '3', 'fanxian', 'F', '1', null, '4109');
INSERT INTO `system_area` VALUES ('1693', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '台前县', '410927', '3', 'taiqianxian', 'T', '1', null, '4109');
INSERT INTO `system_area` VALUES ('1694', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '濮阳县', '410928', '3', 'puyangxian', 'P', '1', null, '4109');
INSERT INTO `system_area` VALUES ('1695', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '河南濮阳工业园区', '410971', '3', 'henanpuyanggongyeyuanqu', 'H', '1', null, '4109');
INSERT INTO `system_area` VALUES ('1696', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '濮阳经济技术开发区', '410972', '3', 'puyangjingjijishukaifaqu', 'P', '1', null, '4109');
INSERT INTO `system_area` VALUES ('1697', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '许昌市', '4110', '2', 'xuchangshi', 'X', '1', null, '41');
INSERT INTO `system_area` VALUES ('1698', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '魏都区', '411002', '3', 'weidouqu', 'W', '1', null, '4110');
INSERT INTO `system_area` VALUES ('1699', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '建安区', '411003', '3', 'jiananqu', 'J', '1', null, '4110');
INSERT INTO `system_area` VALUES ('1700', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '鄢陵县', '411024', '3', 'yanlingxian', 'Y', '1', null, '4110');
INSERT INTO `system_area` VALUES ('1701', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '襄城县', '411025', '3', 'xiangchengxian', 'X', '1', null, '4110');
INSERT INTO `system_area` VALUES ('1702', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '许昌经济技术开发区', '411071', '3', 'xuchangjingjijishukaifaqu', 'X', '1', null, '4110');
INSERT INTO `system_area` VALUES ('1703', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '禹州市', '411081', '3', 'yuzhoushi', 'Y', '1', null, '4110');
INSERT INTO `system_area` VALUES ('1704', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '长葛市', '411082', '3', 'zhanggeshi', 'Z', '1', null, '4110');
INSERT INTO `system_area` VALUES ('1705', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '漯河市', '4111', '2', 'taheshi', 'T', '1', null, '41');
INSERT INTO `system_area` VALUES ('1706', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '源汇区', '411102', '3', 'yuanhuiqu', 'Y', '1', null, '4111');
INSERT INTO `system_area` VALUES ('1707', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '郾城区', '411103', '3', 'yanchengqu', 'Y', '1', null, '4111');
INSERT INTO `system_area` VALUES ('1708', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '召陵区', '411104', '3', 'zhaolingqu', 'Z', '1', null, '4111');
INSERT INTO `system_area` VALUES ('1709', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '舞阳县', '411121', '3', 'wuyangxian', 'W', '1', null, '4111');
INSERT INTO `system_area` VALUES ('1710', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '临颍县', '411122', '3', 'linyingxian', 'L', '1', null, '4111');
INSERT INTO `system_area` VALUES ('1711', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '漯河经济技术开发区', '411171', '3', 'tahejingjijishukaifaqu', 'T', '1', null, '4111');
INSERT INTO `system_area` VALUES ('1712', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '三门峡市', '4112', '2', 'sanmenxiashi', 'S', '1', null, '41');
INSERT INTO `system_area` VALUES ('1713', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '湖滨区', '411202', '3', 'hubinqu', 'H', '1', null, '4112');
INSERT INTO `system_area` VALUES ('1714', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '陕州区', '411203', '3', 'shanzhouqu', 'S', '1', null, '4112');
INSERT INTO `system_area` VALUES ('1715', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '渑池县', '411221', '3', 'mianchixian', 'M', '1', null, '4112');
INSERT INTO `system_area` VALUES ('1716', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '卢氏县', '411224', '3', 'lushixian', 'L', '1', null, '4112');
INSERT INTO `system_area` VALUES ('1717', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '河南三门峡经济开发区', '411271', '3', 'henansanmenxiajingjikaifaqu', 'H', '1', null, '4112');
INSERT INTO `system_area` VALUES ('1718', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '义马市', '411281', '3', 'yimashi', 'Y', '1', null, '4112');
INSERT INTO `system_area` VALUES ('1719', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '灵宝市', '411282', '3', 'lingbaoshi', 'L', '1', null, '4112');
INSERT INTO `system_area` VALUES ('1720', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '南阳市', '4113', '2', 'nanyangshi', 'N', '1', null, '41');
INSERT INTO `system_area` VALUES ('1721', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '宛城区', '411302', '3', 'wanchengqu', 'W', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1722', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '卧龙区', '411303', '3', 'wolongqu', 'W', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1723', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '南召县', '411321', '3', 'nanzhaoxian', 'N', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1724', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '方城县', '411322', '3', 'fangchengxian', 'F', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1725', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '西峡县', '411323', '3', 'xixiaxian', 'X', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1726', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '镇平县', '411324', '3', 'zhenpingxian', 'Z', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1727', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '内乡县', '411325', '3', 'neixiangxian', 'N', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1728', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '淅川县', '411326', '3', 'xichuanxian', 'X', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1729', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '社旗县', '411327', '3', 'sheqixian', 'S', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1730', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '唐河县', '411328', '3', 'tanghexian', 'T', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1731', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '新野县', '411329', '3', 'xinyexian', 'X', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1732', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '桐柏县', '411330', '3', 'tongbaixian', 'T', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1733', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '南阳高新技术产业开发区', '411371', '3', 'nanyanggaoxinjishuchanyekaifaqu', 'N', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1734', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '南阳市城乡一体化示范区', '411372', '3', 'nanyangshichengxiangyitihuashifanqu', 'N', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1735', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '邓州市', '411381', '3', 'dengzhoushi', 'D', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1736', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '商丘市', '4114', '2', 'shangqiushi', 'S', '1', null, '41');
INSERT INTO `system_area` VALUES ('1737', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '梁园区', '411402', '3', 'liangyuanqu', 'L', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1738', null, null, null, '2022-12-24 14:21:06.291876', '2022-12-24 14:21:06.291876', '1', '睢阳区', '411403', '3', 'suiyangqu', 'S', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1739', null, null, null, '2022-12-24 14:21:06.291876', '2022-12-24 14:21:06.291876', '1', '民权县', '411421', '3', 'minquanxian', 'M', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1740', null, null, null, '2022-12-24 14:21:06.292101', '2022-12-24 14:21:06.292101', '1', '睢县', '411422', '3', 'suixian', 'S', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1741', null, null, null, '2022-12-24 14:21:06.292101', '2022-12-24 14:21:06.292101', '1', '宁陵县', '411423', '3', 'ninglingxian', 'N', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1742', null, null, null, '2022-12-24 14:21:06.292101', '2022-12-24 14:21:06.292101', '1', '柘城县', '411424', '3', 'zhechengxian', 'Z', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1743', null, null, null, '2022-12-24 14:21:06.292101', '2022-12-24 14:21:06.292101', '1', '虞城县', '411425', '3', 'yuchengxian', 'Y', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1744', null, null, null, '2022-12-24 14:21:06.292101', '2022-12-24 14:21:06.292101', '1', '夏邑县', '411426', '3', 'xiayixian', 'X', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1745', null, null, null, '2022-12-24 14:21:06.292622', '2022-12-24 14:21:06.292700', '1', '豫东综合物流产业聚集区', '411471', '3', 'yudongzonghewuliuchanyejujiqu', 'Y', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1746', null, null, null, '2022-12-24 14:21:06.292700', '2022-12-24 14:21:06.292700', '1', '河南商丘经济开发区', '411472', '3', 'henanshangqiujingjikaifaqu', 'H', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1747', null, null, null, '2022-12-24 14:21:06.292700', '2022-12-24 14:21:06.292700', '1', '永城市', '411481', '3', 'yongchengshi', 'Y', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1748', null, null, null, '2022-12-24 14:21:06.292700', '2022-12-24 14:21:06.292700', '1', '信阳市', '4115', '2', 'xinyangshi', 'X', '1', null, '41');
INSERT INTO `system_area` VALUES ('1749', null, null, null, '2022-12-24 14:21:06.292700', '2022-12-24 14:21:06.292700', '1', '浉河区', '411502', '3', 'shihequ', 'S', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1750', null, null, null, '2022-12-24 14:21:06.292700', '2022-12-24 14:21:06.292700', '1', '平桥区', '411503', '3', 'pingqiaoqu', 'P', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1751', null, null, null, '2022-12-24 14:21:06.293284', '2022-12-24 14:21:06.293284', '1', '罗山县', '411521', '3', 'luoshanxian', 'L', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1752', null, null, null, '2022-12-24 14:21:06.293284', '2022-12-24 14:21:06.293284', '1', '光山县', '411522', '3', 'guangshanxian', 'G', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1753', null, null, null, '2022-12-24 14:21:06.293284', '2022-12-24 14:21:06.293284', '1', '新县', '411523', '3', 'xinxian', 'X', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1754', null, null, null, '2022-12-24 14:21:06.293284', '2022-12-24 14:21:06.293284', '1', '商城县', '411524', '3', 'shangchengxian', 'S', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1755', null, null, null, '2022-12-24 14:21:06.293284', '2022-12-24 14:21:06.293284', '1', '固始县', '411525', '3', 'gushixian', 'G', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1756', null, null, null, '2022-12-24 14:21:06.293284', '2022-12-24 14:21:06.293804', '1', '潢川县', '411526', '3', 'huangchuanxian', 'H', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1757', null, null, null, '2022-12-24 14:21:06.293850', '2022-12-24 14:21:06.293850', '1', '淮滨县', '411527', '3', 'huaibinxian', 'H', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1758', null, null, null, '2022-12-24 14:21:06.293850', '2022-12-24 14:21:06.293850', '1', '息县', '411528', '3', 'xixian', 'X', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1759', null, null, null, '2022-12-24 14:21:06.293850', '2022-12-24 14:21:06.293850', '1', '信阳高新技术产业开发区', '411571', '3', 'xinyanggaoxinjishuchanyekaifaqu', 'X', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1760', null, null, null, '2022-12-24 14:21:06.293850', '2022-12-24 14:21:06.293850', '1', '周口市', '4116', '2', 'zhoukoushi', 'Z', '1', null, '41');
INSERT INTO `system_area` VALUES ('1761', null, null, null, '2022-12-24 14:21:06.293850', '2022-12-24 14:21:06.293850', '1', '川汇区', '411602', '3', 'chuanhuiqu', 'C', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1762', null, null, null, '2022-12-24 14:21:06.294409', '2022-12-24 14:21:06.294409', '1', '淮阳区', '411603', '3', 'huaiyangqu', 'H', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1763', null, null, null, '2022-12-24 14:21:06.294409', '2022-12-24 14:21:06.294409', '1', '扶沟县', '411621', '3', 'fugouxian', 'F', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1764', null, null, null, '2022-12-24 14:21:06.294409', '2022-12-24 14:21:06.294409', '1', '西华县', '411622', '3', 'xihuaxian', 'X', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1765', null, null, null, '2022-12-24 14:21:06.294409', '2022-12-24 14:21:06.294409', '1', '商水县', '411623', '3', 'shangshuixian', 'S', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1766', null, null, null, '2022-12-24 14:21:06.294409', '2022-12-24 14:21:06.294409', '1', '沈丘县', '411624', '3', 'shenqiuxian', 'S', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1767', null, null, null, '2022-12-24 14:21:06.294928', '2022-12-24 14:21:06.294928', '1', '郸城县', '411625', '3', 'danchengxian', 'D', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1768', null, null, null, '2022-12-24 14:21:06.294966', '2022-12-24 14:21:06.294966', '1', '太康县', '411627', '3', 'taikangxian', 'T', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1769', null, null, null, '2022-12-24 14:21:06.294966', '2022-12-24 14:21:06.294966', '1', '鹿邑县', '411628', '3', 'luyixian', 'L', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1770', null, null, null, '2022-12-24 14:21:06.294966', '2022-12-24 14:21:06.294966', '1', '河南周口经济开发区', '411671', '3', 'henanzhoukoujingjikaifaqu', 'H', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1771', null, null, null, '2022-12-24 14:21:06.294966', '2022-12-24 14:21:06.294966', '1', '项城市', '411681', '3', 'xiangchengshi', 'X', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1772', null, null, null, '2022-12-24 14:21:06.294966', '2022-12-24 14:21:06.294966', '1', '驻马店市', '4117', '2', 'zhumadianshi', 'Z', '1', null, '41');
INSERT INTO `system_area` VALUES ('1773', null, null, null, '2022-12-24 14:21:06.295523', '2022-12-24 14:21:06.295523', '1', '驿城区', '411702', '3', 'yichengqu', 'Y', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1774', null, null, null, '2022-12-24 14:21:06.295523', '2022-12-24 14:21:06.295523', '1', '西平县', '411721', '3', 'xipingxian', 'X', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1775', null, null, null, '2022-12-24 14:21:06.295523', '2022-12-24 14:21:06.295523', '1', '上蔡县', '411722', '3', 'shangcaixian', 'S', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1776', null, null, null, '2022-12-24 14:21:06.295523', '2022-12-24 14:21:06.295523', '1', '平舆县', '411723', '3', 'pingyuxian', 'P', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1777', null, null, null, '2022-12-24 14:21:06.295523', '2022-12-24 14:21:06.295523', '1', '正阳县', '411724', '3', 'zhengyangxian', 'Z', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1778', null, null, null, '2022-12-24 14:21:06.296039', '2022-12-24 14:21:06.296039', '1', '确山县', '411725', '3', 'queshanxian', 'Q', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1779', null, null, null, '2022-12-24 14:21:06.296134', '2022-12-24 14:21:06.296134', '1', '泌阳县', '411726', '3', 'biyangxian', 'B', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1780', null, null, null, '2022-12-24 14:21:06.296134', '2022-12-24 14:21:06.296134', '1', '汝南县', '411727', '3', 'runanxian', 'R', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1781', null, null, null, '2022-12-24 14:21:06.296134', '2022-12-24 14:21:06.296134', '1', '遂平县', '411728', '3', 'suipingxian', 'S', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1782', null, null, null, '2022-12-24 14:21:06.296134', '2022-12-24 14:21:06.296134', '1', '新蔡县', '411729', '3', 'xincaixian', 'X', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1783', null, null, null, '2022-12-24 14:21:06.296134', '2022-12-24 14:21:06.296134', '1', '河南驻马店经济开发区', '411771', '3', 'henanzhumadianjingjikaifaqu', 'H', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1784', null, null, null, '2022-12-24 14:21:06.296654', '2022-12-24 14:21:06.296691', '1', '省直辖县级行政区划', '4190', '2', 'shengzhixiaxianjixingzhengquhua', 'S', '1', null, '41');
INSERT INTO `system_area` VALUES ('1785', null, null, null, '2022-12-24 14:21:06.296691', '2022-12-24 14:21:06.296691', '1', '济源市', '419001', '3', 'jiyuanshi', 'J', '1', null, '4190');
INSERT INTO `system_area` VALUES ('1786', null, null, null, '2022-12-24 14:21:06.296691', '2022-12-24 14:21:06.296691', '1', '湖北省', '42', '1', 'hubeisheng', 'H', '1', null, null);
INSERT INTO `system_area` VALUES ('1787', null, null, null, '2022-12-24 14:21:06.296691', '2022-12-24 14:21:06.296691', '1', '武汉市', '4201', '2', 'wuhanshi', 'W', '1', null, '42');
INSERT INTO `system_area` VALUES ('1788', null, null, null, '2022-12-24 14:21:06.296691', '2022-12-24 14:21:06.296691', '1', '江岸区', '420102', '3', 'jianganqu', 'J', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1789', null, null, null, '2022-12-24 14:21:06.296691', '2022-12-24 14:21:06.296691', '1', '江汉区', '420103', '3', 'jianghanqu', 'J', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1790', null, null, null, '2022-12-24 14:21:06.297249', '2022-12-24 14:21:06.297249', '1', '硚口区', '420104', '3', 'qiaokouqu', 'Q', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1791', null, null, null, '2022-12-24 14:21:06.297249', '2022-12-24 14:21:06.297249', '1', '汉阳区', '420105', '3', 'hanyangqu', 'H', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1792', null, null, null, '2022-12-24 14:21:06.297249', '2022-12-24 14:21:06.297249', '1', '武昌区', '420106', '3', 'wuchangqu', 'W', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1793', null, null, null, '2022-12-24 14:21:06.297249', '2022-12-24 14:21:06.297249', '1', '青山区', '420107', '3', 'qingshanqu', 'Q', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1794', null, null, null, '2022-12-24 14:21:06.297249', '2022-12-24 14:21:06.297249', '1', '洪山区', '420111', '3', 'hongshanqu', 'H', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1795', null, null, null, '2022-12-24 14:21:06.297807', '2022-12-24 14:21:06.297807', '1', '东西湖区', '420112', '3', 'dongxihuqu', 'D', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1796', null, null, null, '2022-12-24 14:21:06.297807', '2022-12-24 14:21:06.297807', '1', '汉南区', '420113', '3', 'hannanqu', 'H', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1797', null, null, null, '2022-12-24 14:21:06.297807', '2022-12-24 14:21:06.297807', '1', '蔡甸区', '420114', '3', 'caidianqu', 'C', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1798', null, null, null, '2022-12-24 14:21:06.297807', '2022-12-24 14:21:06.297807', '1', '江夏区', '420115', '3', 'jiangxiaqu', 'J', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1799', null, null, null, '2022-12-24 14:21:06.297807', '2022-12-24 14:21:06.297807', '1', '黄陂区', '420116', '3', 'huangpiqu', 'H', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1800', null, null, null, '2022-12-24 14:21:06.297807', '2022-12-24 14:21:06.298327', '1', '新洲区', '420117', '3', 'xinzhouqu', 'X', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1801', null, null, null, '2022-12-24 14:21:06.298366', '2022-12-24 14:21:06.298366', '1', '黄石市', '4202', '2', 'huangshishi', 'H', '1', null, '42');
INSERT INTO `system_area` VALUES ('1802', null, null, null, '2022-12-24 14:21:06.298366', '2022-12-24 14:21:06.298366', '1', '黄石港区', '420202', '3', 'huangshigangqu', 'H', '1', null, '4202');
INSERT INTO `system_area` VALUES ('1803', null, null, null, '2022-12-24 14:21:06.298366', '2022-12-24 14:21:06.298366', '1', '西塞山区', '420203', '3', 'xisaishanqu', 'X', '1', null, '4202');
INSERT INTO `system_area` VALUES ('1804', null, null, null, '2022-12-24 14:21:06.298366', '2022-12-24 14:21:06.298366', '1', '下陆区', '420204', '3', 'xialuqu', 'X', '1', null, '4202');
INSERT INTO `system_area` VALUES ('1805', null, null, null, '2022-12-24 14:21:06.298366', '2022-12-24 14:21:06.298366', '1', '铁山区', '420205', '3', 'tieshanqu', 'T', '1', null, '4202');
INSERT INTO `system_area` VALUES ('1806', null, null, null, '2022-12-24 14:21:06.298890', '2022-12-24 14:21:06.298890', '1', '阳新县', '420222', '3', 'yangxinxian', 'Y', '1', null, '4202');
INSERT INTO `system_area` VALUES ('1807', null, null, null, '2022-12-24 14:21:06.299010', '2022-12-24 14:21:06.299010', '1', '大冶市', '420281', '3', 'dayeshi', 'D', '1', null, '4202');
INSERT INTO `system_area` VALUES ('1808', null, null, null, '2022-12-24 14:21:06.299010', '2022-12-24 14:21:06.299010', '1', '十堰市', '4203', '2', 'shiyanshi', 'S', '1', null, '42');
INSERT INTO `system_area` VALUES ('1809', null, null, null, '2022-12-24 14:21:06.299010', '2022-12-24 14:21:06.299010', '1', '茅箭区', '420302', '3', 'maojianqu', 'M', '1', null, '4203');
INSERT INTO `system_area` VALUES ('1810', null, null, null, '2022-12-24 14:21:06.299010', '2022-12-24 14:21:06.299010', '1', '张湾区', '420303', '3', 'zhangwanqu', 'Z', '1', null, '4203');
INSERT INTO `system_area` VALUES ('1811', null, null, null, '2022-12-24 14:21:06.299010', '2022-12-24 14:21:06.299010', '1', '郧阳区', '420304', '3', 'yunyangqu', 'Y', '1', null, '4203');
INSERT INTO `system_area` VALUES ('1812', null, null, null, '2022-12-24 14:21:06.299010', '2022-12-24 14:21:06.299010', '1', '郧西县', '420322', '3', 'yunxixian', 'Y', '1', null, '4203');
INSERT INTO `system_area` VALUES ('1813', null, null, null, '2022-12-24 14:21:06.299613', '2022-12-24 14:21:06.299613', '1', '竹山县', '420323', '3', 'zhushanxian', 'Z', '1', null, '4203');
INSERT INTO `system_area` VALUES ('1814', null, null, null, '2022-12-24 14:21:06.299613', '2022-12-24 14:21:06.299613', '1', '竹溪县', '420324', '3', 'zhuxixian', 'Z', '1', null, '4203');
INSERT INTO `system_area` VALUES ('1815', null, null, null, '2022-12-24 14:21:06.299613', '2022-12-24 14:21:06.299613', '1', '房县', '420325', '3', 'fangxian', 'F', '1', null, '4203');
INSERT INTO `system_area` VALUES ('1816', null, null, null, '2022-12-24 14:21:06.299613', '2022-12-24 14:21:06.299613', '1', '丹江口市', '420381', '3', 'danjiangkoushi', 'D', '1', null, '4203');
INSERT INTO `system_area` VALUES ('1817', null, null, null, '2022-12-24 14:21:06.299613', '2022-12-24 14:21:06.299613', '1', '宜昌市', '4205', '2', 'yichangshi', 'Y', '1', null, '42');
INSERT INTO `system_area` VALUES ('1818', null, null, null, '2022-12-24 14:21:06.299613', '2022-12-24 14:21:06.300134', '1', '西陵区', '420502', '3', 'xilingqu', 'X', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1819', null, null, null, '2022-12-24 14:21:06.300209', '2022-12-24 14:21:06.300209', '1', '伍家岗区', '420503', '3', 'wujiagangqu', 'W', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1820', null, null, null, '2022-12-24 14:21:06.300209', '2022-12-24 14:21:06.300209', '1', '点军区', '420504', '3', 'dianjunqu', 'D', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1821', null, null, null, '2022-12-24 14:21:06.300209', '2022-12-24 14:21:06.300209', '1', '猇亭区', '420505', '3', 'xiaotingqu', 'X', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1822', null, null, null, '2022-12-24 14:21:06.300209', '2022-12-24 14:21:06.300209', '1', '夷陵区', '420506', '3', 'yilingqu', 'Y', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1823', null, null, null, '2022-12-24 14:21:06.300209', '2022-12-24 14:21:06.300209', '1', '远安县', '420525', '3', 'yuananxian', 'Y', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1824', null, null, null, '2022-12-24 14:21:06.300733', '2022-12-24 14:21:06.300733', '1', '兴山县', '420526', '3', 'xingshanxian', 'X', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1825', null, null, null, '2022-12-24 14:21:06.300775', '2022-12-24 14:21:06.300775', '1', '秭归县', '420527', '3', 'ziguixian', 'Z', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1826', null, null, null, '2022-12-24 14:21:06.300775', '2022-12-24 14:21:06.300775', '1', '长阳土家族自治县', '420528', '3', 'zhangyangtujiazuzizhixian', 'Z', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1827', null, null, null, '2022-12-24 14:21:06.300775', '2022-12-24 14:21:06.300775', '1', '五峰土家族自治县', '420529', '3', 'wufengtujiazuzizhixian', 'W', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1828', null, null, null, '2022-12-24 14:21:06.300775', '2022-12-24 14:21:06.300775', '1', '宜都市', '420581', '3', 'yidushi', 'Y', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1829', null, null, null, '2022-12-24 14:21:06.300775', '2022-12-24 14:21:06.300775', '1', '当阳市', '420582', '3', 'dangyangshi', 'D', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1830', null, null, null, '2022-12-24 14:21:06.301362', '2022-12-24 14:21:06.301362', '1', '枝江市', '420583', '3', 'zhijiangshi', 'Z', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1831', null, null, null, '2022-12-24 14:21:06.301362', '2022-12-24 14:21:06.301362', '1', '襄阳市', '4206', '2', 'xiangyangshi', 'X', '1', null, '42');
INSERT INTO `system_area` VALUES ('1832', null, null, null, '2022-12-24 14:21:06.301362', '2022-12-24 14:21:06.301362', '1', '襄城区', '420602', '3', 'xiangchengqu', 'X', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1833', null, null, null, '2022-12-24 14:21:06.301362', '2022-12-24 14:21:06.301362', '1', '樊城区', '420606', '3', 'fanchengqu', 'F', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1834', null, null, null, '2022-12-24 14:21:06.301362', '2022-12-24 14:21:06.301362', '1', '襄州区', '420607', '3', 'xiangzhouqu', 'X', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1835', null, null, null, '2022-12-24 14:21:06.301362', '2022-12-24 14:21:06.301888', '1', '南漳县', '420624', '3', 'nanzhangxian', 'N', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1836', null, null, null, '2022-12-24 14:21:06.301943', '2022-12-24 14:21:06.301943', '1', '谷城县', '420625', '3', 'guchengxian', 'G', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1837', null, null, null, '2022-12-24 14:21:06.301943', '2022-12-24 14:21:06.301943', '1', '保康县', '420626', '3', 'baokangxian', 'B', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1838', null, null, null, '2022-12-24 14:21:06.301943', '2022-12-24 14:21:06.301943', '1', '老河口市', '420682', '3', 'laohekoushi', 'L', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1839', null, null, null, '2022-12-24 14:21:06.301943', '2022-12-24 14:21:06.301943', '1', '枣阳市', '420683', '3', 'zaoyangshi', 'Z', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1840', null, null, null, '2022-12-24 14:21:06.301943', '2022-12-24 14:21:06.301943', '1', '宜城市', '420684', '3', 'yichengshi', 'Y', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1841', null, null, null, '2022-12-24 14:21:06.302461', '2022-12-24 14:21:06.302461', '1', '鄂州市', '4207', '2', 'ezhoushi', 'E', '1', null, '42');
INSERT INTO `system_area` VALUES ('1842', null, null, null, '2022-12-24 14:21:06.302510', '2022-12-24 14:21:06.302510', '1', '梁子湖区', '420702', '3', 'liangzihuqu', 'L', '1', null, '4207');
INSERT INTO `system_area` VALUES ('1843', null, null, null, '2022-12-24 14:21:06.302510', '2022-12-24 14:21:06.302510', '1', '华容区', '420703', '3', 'huarongqu', 'H', '1', null, '4207');
INSERT INTO `system_area` VALUES ('1844', null, null, null, '2022-12-24 14:21:06.302510', '2022-12-24 14:21:06.302510', '1', '鄂城区', '420704', '3', 'echengqu', 'E', '1', null, '4207');
INSERT INTO `system_area` VALUES ('1845', null, null, null, '2022-12-24 14:21:06.302510', '2022-12-24 14:21:06.302510', '1', '荆门市', '4208', '2', 'jingmenshi', 'J', '1', null, '42');
INSERT INTO `system_area` VALUES ('1846', null, null, null, '2022-12-24 14:21:06.302510', '2022-12-24 14:21:06.302510', '1', '东宝区', '420802', '3', 'dongbaoqu', 'D', '1', null, '4208');
INSERT INTO `system_area` VALUES ('1847', null, null, null, '2022-12-24 14:21:06.303038', '2022-12-24 14:21:06.303038', '1', '掇刀区', '420804', '3', 'duodaoqu', 'D', '1', null, '4208');
INSERT INTO `system_area` VALUES ('1848', null, null, null, '2022-12-24 14:21:06.303124', '2022-12-24 14:21:06.303124', '1', '沙洋县', '420822', '3', 'shayangxian', 'S', '1', null, '4208');
INSERT INTO `system_area` VALUES ('1849', null, null, null, '2022-12-24 14:21:06.303124', '2022-12-24 14:21:06.303124', '1', '钟祥市', '420881', '3', 'zhongxiangshi', 'Z', '1', null, '4208');
INSERT INTO `system_area` VALUES ('1850', null, null, null, '2022-12-24 14:21:06.303124', '2022-12-24 14:21:06.303124', '1', '京山市', '420882', '3', 'jingshanshi', 'J', '1', null, '4208');
INSERT INTO `system_area` VALUES ('1851', null, null, null, '2022-12-24 14:21:06.303124', '2022-12-24 14:21:06.303124', '1', '孝感市', '4209', '2', 'xiaoganshi', 'X', '1', null, '42');
INSERT INTO `system_area` VALUES ('1852', null, null, null, '2022-12-24 14:21:06.303124', '2022-12-24 14:21:06.303124', '1', '孝南区', '420902', '3', 'xiaonanqu', 'X', '1', null, '4209');
INSERT INTO `system_area` VALUES ('1853', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '孝昌县', '420921', '3', 'xiaochangxian', 'X', '1', null, '4209');
INSERT INTO `system_area` VALUES ('1854', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '大悟县', '420922', '3', 'dawuxian', 'D', '1', null, '4209');
INSERT INTO `system_area` VALUES ('1855', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '云梦县', '420923', '3', 'yunmengxian', 'Y', '1', null, '4209');
INSERT INTO `system_area` VALUES ('1856', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '应城市', '420981', '3', 'yingchengshi', 'Y', '1', null, '4209');
INSERT INTO `system_area` VALUES ('1857', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '安陆市', '420982', '3', 'anlushi', 'A', '1', null, '4209');
INSERT INTO `system_area` VALUES ('1858', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '汉川市', '420984', '3', 'hanchuanshi', 'H', '1', null, '4209');
INSERT INTO `system_area` VALUES ('1859', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '荆州市', '4210', '2', 'jingzhoushi', 'J', '1', null, '42');
INSERT INTO `system_area` VALUES ('1860', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '沙市区', '421002', '3', 'shashiqu', 'S', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1861', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '荆州区', '421003', '3', 'jingzhouqu', 'J', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1862', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '公安县', '421022', '3', 'gonganxian', 'G', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1863', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '监利县', '421023', '3', 'jianlixian', 'J', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1864', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '江陵县', '421024', '3', 'jianglingxian', 'J', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1865', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '荆州经济技术开发区', '421071', '3', 'jingzhoujingjijishukaifaqu', 'J', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1866', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '石首市', '421081', '3', 'shishoushi', 'S', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1867', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '洪湖市', '421083', '3', 'honghushi', 'H', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1868', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '松滋市', '421087', '3', 'songzishi', 'S', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1869', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '黄冈市', '4211', '2', 'huanggangshi', 'H', '1', null, '42');
INSERT INTO `system_area` VALUES ('1870', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '黄州区', '421102', '3', 'huangzhouqu', 'H', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1871', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '团风县', '421121', '3', 'tuanfengxian', 'T', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1872', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '红安县', '421122', '3', 'honganxian', 'H', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1873', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '罗田县', '421123', '3', 'luotianxian', 'L', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1874', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '英山县', '421124', '3', 'yingshanxian', 'Y', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1875', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '浠水县', '421125', '3', 'xishuixian', 'X', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1876', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '蕲春县', '421126', '3', 'qichunxian', 'Q', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1877', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '黄梅县', '421127', '3', 'huangmeixian', 'H', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1878', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '龙感湖管理区', '421171', '3', 'longganhuguanliqu', 'L', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1879', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '麻城市', '421181', '3', 'machengshi', 'M', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1880', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '武穴市', '421182', '3', 'wuxueshi', 'W', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1881', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '咸宁市', '4212', '2', 'xianningshi', 'X', '1', null, '42');
INSERT INTO `system_area` VALUES ('1882', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '咸安区', '421202', '3', 'xiananqu', 'X', '1', null, '4212');
INSERT INTO `system_area` VALUES ('1883', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '嘉鱼县', '421221', '3', 'jiayuxian', 'J', '1', null, '4212');
INSERT INTO `system_area` VALUES ('1884', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '通城县', '421222', '3', 'tongchengxian', 'T', '1', null, '4212');
INSERT INTO `system_area` VALUES ('1885', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '崇阳县', '421223', '3', 'chongyangxian', 'C', '1', null, '4212');
INSERT INTO `system_area` VALUES ('1886', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '通山县', '421224', '3', 'tongshanxian', 'T', '1', null, '4212');
INSERT INTO `system_area` VALUES ('1887', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '赤壁市', '421281', '3', 'chibishi', 'C', '1', null, '4212');
INSERT INTO `system_area` VALUES ('1888', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '随州市', '4213', '2', 'suizhoushi', 'S', '1', null, '42');
INSERT INTO `system_area` VALUES ('1889', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '曾都区', '421303', '3', 'cengdouqu', 'C', '1', null, '4213');
INSERT INTO `system_area` VALUES ('1890', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '随县', '421321', '3', 'suixian', 'S', '1', null, '4213');
INSERT INTO `system_area` VALUES ('1891', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '广水市', '421381', '3', 'guangshuishi', 'G', '1', null, '4213');
INSERT INTO `system_area` VALUES ('1892', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '恩施土家族苗族自治州', '4228', '2', 'enshitujiazumiaozuzizhizhou', 'E', '1', null, '42');
INSERT INTO `system_area` VALUES ('1893', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '恩施市', '422801', '3', 'enshishi', 'E', '1', null, '4228');
INSERT INTO `system_area` VALUES ('1894', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '利川市', '422802', '3', 'lichuanshi', 'L', '1', null, '4228');
INSERT INTO `system_area` VALUES ('1895', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '建始县', '422822', '3', 'jianshixian', 'J', '1', null, '4228');
INSERT INTO `system_area` VALUES ('1896', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '巴东县', '422823', '3', 'badongxian', 'B', '1', null, '4228');
INSERT INTO `system_area` VALUES ('1897', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.307676', '1', '宣恩县', '422825', '3', 'xuanenxian', 'X', '1', null, '4228');
INSERT INTO `system_area` VALUES ('1898', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '咸丰县', '422826', '3', 'xianfengxian', 'X', '1', null, '4228');
INSERT INTO `system_area` VALUES ('1899', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '来凤县', '422827', '3', 'laifengxian', 'L', '1', null, '4228');
INSERT INTO `system_area` VALUES ('1900', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '鹤峰县', '422828', '3', 'hefengxian', 'H', '1', null, '4228');
INSERT INTO `system_area` VALUES ('1901', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '省直辖县级行政区划', '4290', '2', 'shengzhixiaxianjixingzhengquhua', 'S', '1', null, '42');
INSERT INTO `system_area` VALUES ('1902', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '仙桃市', '429004', '3', 'xiantaoshi', 'X', '1', null, '4290');
INSERT INTO `system_area` VALUES ('1903', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '潜江市', '429005', '3', 'qianjiangshi', 'Q', '1', null, '4290');
INSERT INTO `system_area` VALUES ('1904', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '天门市', '429006', '3', 'tianmenshi', 'T', '1', null, '4290');
INSERT INTO `system_area` VALUES ('1905', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '神农架林区', '429021', '3', 'shennongjialinqu', 'S', '1', null, '4290');
INSERT INTO `system_area` VALUES ('1906', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '湖南省', '43', '1', 'hunansheng', 'H', '1', null, null);
INSERT INTO `system_area` VALUES ('1907', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '长沙市', '4301', '2', 'changshashi', 'C', '1', null, '43');
INSERT INTO `system_area` VALUES ('1908', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '芙蓉区', '430102', '3', 'furongqu', 'F', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1909', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '天心区', '430103', '3', 'tianxinqu', 'T', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1910', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '岳麓区', '430104', '3', 'yueluqu', 'Y', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1911', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '开福区', '430105', '3', 'kaifuqu', 'K', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1912', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '雨花区', '430111', '3', 'yuhuaqu', 'Y', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1913', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '望城区', '430112', '3', 'wangchengqu', 'W', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1914', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.308671', '1', '长沙县', '430121', '3', 'changshaxian', 'C', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1915', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '浏阳市', '430181', '3', 'liuyangshi', 'L', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1916', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '宁乡市', '430182', '3', 'ningxiangshi', 'N', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1917', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '株洲市', '4302', '2', 'zhuzhoushi', 'Z', '1', null, '43');
INSERT INTO `system_area` VALUES ('1918', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '荷塘区', '430202', '3', 'hetangqu', 'H', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1919', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '芦淞区', '430203', '3', 'lusongqu', 'L', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1920', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '石峰区', '430204', '3', 'shifengqu', 'S', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1921', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '天元区', '430211', '3', 'tianyuanqu', 'T', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1922', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '渌口区', '430212', '3', 'lukouqu', 'L', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1923', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '攸县', '430223', '3', 'youxian', 'Y', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1924', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '茶陵县', '430224', '3', 'chalingxian', 'C', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1925', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '炎陵县', '430225', '3', 'yanlingxian', 'Y', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1926', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '云龙示范区', '430271', '3', 'yunlongshifanqu', 'Y', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1927', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '醴陵市', '430281', '3', 'lilingshi', 'L', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1928', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '湘潭市', '4303', '2', 'xiangtanshi', 'X', '1', null, '43');
INSERT INTO `system_area` VALUES ('1929', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '雨湖区', '430302', '3', 'yuhuqu', 'Y', '1', null, '4303');
INSERT INTO `system_area` VALUES ('1930', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '岳塘区', '430304', '3', 'yuetangqu', 'Y', '1', null, '4303');
INSERT INTO `system_area` VALUES ('1931', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '湘潭县', '430321', '3', 'xiangtanxian', 'X', '1', null, '4303');
INSERT INTO `system_area` VALUES ('1932', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '湖南湘潭高新技术产业园区', '430371', '3', 'hunanxiangtangaoxinjishuchanyeyuanqu', 'H', '1', null, '4303');
INSERT INTO `system_area` VALUES ('1933', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '湘潭昭山示范区', '430372', '3', 'xiangtanzhaoshanshifanqu', 'X', '1', null, '4303');
INSERT INTO `system_area` VALUES ('1934', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '湘潭九华示范区', '430373', '3', 'xiangtanjiuhuashifanqu', 'X', '1', null, '4303');
INSERT INTO `system_area` VALUES ('1935', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '湘乡市', '430381', '3', 'xiangxiangshi', 'X', '1', null, '4303');
INSERT INTO `system_area` VALUES ('1936', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '韶山市', '430382', '3', 'shaoshanshi', 'S', '1', null, '4303');
INSERT INTO `system_area` VALUES ('1937', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '衡阳市', '4304', '2', 'hengyangshi', 'H', '1', null, '43');
INSERT INTO `system_area` VALUES ('1938', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '珠晖区', '430405', '3', 'zhuhuiqu', 'Z', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1939', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '雁峰区', '430406', '3', 'yanfengqu', 'Y', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1940', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '石鼓区', '430407', '3', 'shiguqu', 'S', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1941', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '蒸湘区', '430408', '3', 'zhengxiangqu', 'Z', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1942', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '南岳区', '430412', '3', 'nanyuequ', 'N', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1943', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '衡阳县', '430421', '3', 'hengyangxian', 'H', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1944', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '衡南县', '430422', '3', 'hengnanxian', 'H', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1945', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '衡山县', '430423', '3', 'hengshanxian', 'H', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1946', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '衡东县', '430424', '3', 'hengdongxian', 'H', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1947', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '祁东县', '430426', '3', 'qidongxian', 'Q', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1948', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '衡阳综合保税区', '430471', '3', 'hengyangzonghebaoshuiqu', 'H', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1949', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '湖南衡阳高新技术产业园区', '430472', '3', 'hunanhengyanggaoxinjishuchanyeyuanqu', 'H', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1950', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '湖南衡阳松木经济开发区', '430473', '3', 'hunanhengyangsongmujingjikaifaqu', 'H', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1951', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '耒阳市', '430481', '3', 'leiyangshi', 'L', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1952', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '常宁市', '430482', '3', 'changningshi', 'C', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1953', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '邵阳市', '4305', '2', 'shaoyangshi', 'S', '1', null, '43');
INSERT INTO `system_area` VALUES ('1954', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '双清区', '430502', '3', 'shuangqingqu', 'S', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1955', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '大祥区', '430503', '3', 'daxiangqu', 'D', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1956', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '北塔区', '430511', '3', 'beitaqu', 'B', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1957', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '新邵县', '430522', '3', 'xinshaoxian', 'X', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1958', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '邵阳县', '430523', '3', 'shaoyangxian', 'S', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1959', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '隆回县', '430524', '3', 'longhuixian', 'L', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1960', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '洞口县', '430525', '3', 'dongkouxian', 'D', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1961', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '绥宁县', '430527', '3', 'suiningxian', 'S', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1962', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '新宁县', '430528', '3', 'xinningxian', 'X', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1963', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '城步苗族自治县', '430529', '3', 'chengbumiaozuzizhixian', 'C', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1964', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '武冈市', '430581', '3', 'wugangshi', 'W', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1965', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '邵东市', '430582', '3', 'shaodongshi', 'S', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1966', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '岳阳市', '4306', '2', 'yueyangshi', 'Y', '1', null, '43');
INSERT INTO `system_area` VALUES ('1967', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '岳阳楼区', '430602', '3', 'yueyanglouqu', 'Y', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1968', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '云溪区', '430603', '3', 'yunxiqu', 'Y', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1969', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '君山区', '430611', '3', 'junshanqu', 'J', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1970', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '岳阳县', '430621', '3', 'yueyangxian', 'Y', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1971', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '华容县', '430623', '3', 'huarongxian', 'H', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1972', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '湘阴县', '430624', '3', 'xiangyinxian', 'X', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1973', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '平江县', '430626', '3', 'pingjiangxian', 'P', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1974', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '岳阳市屈原管理区', '430671', '3', 'yueyangshiquyuanguanliqu', 'Y', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1975', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '汨罗市', '430681', '3', 'miluoshi', 'M', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1976', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '临湘市', '430682', '3', 'linxiangshi', 'L', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1977', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '常德市', '4307', '2', 'changdeshi', 'C', '1', null, '43');
INSERT INTO `system_area` VALUES ('1978', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '武陵区', '430702', '3', 'wulingqu', 'W', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1979', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '鼎城区', '430703', '3', 'dingchengqu', 'D', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1980', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '安乡县', '430721', '3', 'anxiangxian', 'A', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1981', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '汉寿县', '430722', '3', 'hanshouxian', 'H', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1982', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '澧县', '430723', '3', 'lixian', 'L', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1983', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '临澧县', '430724', '3', 'linlixian', 'L', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1984', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '桃源县', '430725', '3', 'taoyuanxian', 'T', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1985', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '石门县', '430726', '3', 'shimenxian', 'S', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1986', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '常德市西洞庭管理区', '430771', '3', 'changdeshixidongtingguanliqu', 'C', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1987', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '津市市', '430781', '3', 'jinshishi', 'J', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1988', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '张家界市', '4308', '2', 'zhangjiajieshi', 'Z', '1', null, '43');
INSERT INTO `system_area` VALUES ('1989', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '永定区', '430802', '3', 'yongdingqu', 'Y', '1', null, '4308');
INSERT INTO `system_area` VALUES ('1990', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '武陵源区', '430811', '3', 'wulingyuanqu', 'W', '1', null, '4308');
INSERT INTO `system_area` VALUES ('1991', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '慈利县', '430821', '3', 'cilixian', 'C', '1', null, '4308');
INSERT INTO `system_area` VALUES ('1992', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '桑植县', '430822', '3', 'sangzhixian', 'S', '1', null, '4308');
INSERT INTO `system_area` VALUES ('1993', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '益阳市', '4309', '2', 'yiyangshi', 'Y', '1', null, '43');
INSERT INTO `system_area` VALUES ('1994', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '资阳区', '430902', '3', 'ziyangqu', 'Z', '1', null, '4309');
INSERT INTO `system_area` VALUES ('1995', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '赫山区', '430903', '3', 'heshanqu', 'H', '1', null, '4309');
INSERT INTO `system_area` VALUES ('1996', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '南县', '430921', '3', 'nanxian', 'N', '1', null, '4309');
INSERT INTO `system_area` VALUES ('1997', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '桃江县', '430922', '3', 'taojiangxian', 'T', '1', null, '4309');
INSERT INTO `system_area` VALUES ('1998', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '安化县', '430923', '3', 'anhuaxian', 'A', '1', null, '4309');
INSERT INTO `system_area` VALUES ('1999', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '益阳市大通湖管理区', '430971', '3', 'yiyangshidatonghuguanliqu', 'Y', '1', null, '4309');
INSERT INTO `system_area` VALUES ('2000', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '湖南益阳高新技术产业园区', '430972', '3', 'hunanyiyanggaoxinjishuchanyeyuanqu', 'H', '1', null, '4309');
INSERT INTO `system_area` VALUES ('2001', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '沅江市', '430981', '3', 'yuanjiangshi', 'Y', '1', null, '4309');
INSERT INTO `system_area` VALUES ('2002', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '郴州市', '4310', '2', 'chenzhoushi', 'C', '1', null, '43');
INSERT INTO `system_area` VALUES ('2003', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '北湖区', '431002', '3', 'beihuqu', 'B', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2004', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '苏仙区', '431003', '3', 'suxianqu', 'S', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2005', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '桂阳县', '431021', '3', 'guiyangxian', 'G', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2006', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '宜章县', '431022', '3', 'yizhangxian', 'Y', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2007', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '永兴县', '431023', '3', 'yongxingxian', 'Y', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2008', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '嘉禾县', '431024', '3', 'jiahexian', 'J', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2009', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '临武县', '431025', '3', 'linwuxian', 'L', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2010', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '汝城县', '431026', '3', 'ruchengxian', 'R', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2011', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '桂东县', '431027', '3', 'guidongxian', 'G', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2012', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '安仁县', '431028', '3', 'anrenxian', 'A', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2013', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '资兴市', '431081', '3', 'zixingshi', 'Z', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2014', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '永州市', '4311', '2', 'yongzhoushi', 'Y', '1', null, '43');
INSERT INTO `system_area` VALUES ('2015', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '零陵区', '431102', '3', 'linglingqu', 'L', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2016', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '冷水滩区', '431103', '3', 'lengshuitanqu', 'L', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2017', null, null, null, '2022-12-24 14:21:06.314670', '2022-12-24 14:21:06.314670', '1', '祁阳县', '431121', '3', 'qiyangxian', 'Q', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2018', null, null, null, '2022-12-24 14:21:06.314670', '2022-12-24 14:21:06.314670', '1', '东安县', '431122', '3', 'donganxian', 'D', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2019', null, null, null, '2022-12-24 14:21:06.314670', '2022-12-24 14:21:06.314670', '1', '双牌县', '431123', '3', 'shuangpaixian', 'S', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2020', null, null, null, '2022-12-24 14:21:06.314670', '2022-12-24 14:21:06.314670', '1', '道县', '431124', '3', 'daoxian', 'D', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2021', null, null, null, '2022-12-24 14:21:06.314670', '2022-12-24 14:21:06.314670', '1', '江永县', '431125', '3', 'jiangyongxian', 'J', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2022', null, null, null, '2022-12-24 14:21:06.315676', '2022-12-24 14:21:06.315676', '1', '宁远县', '431126', '3', 'ningyuanxian', 'N', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2023', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '蓝山县', '431127', '3', 'lanshanxian', 'L', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2024', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '新田县', '431128', '3', 'xintianxian', 'X', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2025', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '江华瑶族自治县', '431129', '3', 'jianghuayaozuzizhixian', 'J', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2026', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '永州经济技术开发区', '431171', '3', 'yongzhoujingjijishukaifaqu', 'Y', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2027', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '永州市金洞管理区', '431172', '3', 'yongzhoushijindongguanliqu', 'Y', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2028', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '永州市回龙圩管理区', '431173', '3', 'yongzhoushihuilongweiguanliqu', 'Y', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2029', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '怀化市', '4312', '2', 'huaihuashi', 'H', '1', null, '43');
INSERT INTO `system_area` VALUES ('2030', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '鹤城区', '431202', '3', 'hechengqu', 'H', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2031', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '中方县', '431221', '3', 'zhongfangxian', 'Z', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2032', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '沅陵县', '431222', '3', 'yuanlingxian', 'Y', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2033', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '辰溪县', '431223', '3', 'chenxixian', 'C', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2034', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '溆浦县', '431224', '3', 'xupuxian', 'X', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2035', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '会同县', '431225', '3', 'huitongxian', 'H', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2036', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '麻阳苗族自治县', '431226', '3', 'mayangmiaozuzizhixian', 'M', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2037', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '新晃侗族自治县', '431227', '3', 'xinhuangdongzuzizhixian', 'X', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2038', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '芷江侗族自治县', '431228', '3', 'zhijiangdongzuzizhixian', 'Z', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2039', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '靖州苗族侗族自治县', '431229', '3', 'jingzhoumiaozudongzuzizhixian', 'J', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2040', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '通道侗族自治县', '431230', '3', 'tongdaodongzuzizhixian', 'T', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2041', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '怀化市洪江管理区', '431271', '3', 'huaihuashihongjiangguanliqu', 'H', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2042', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '洪江市', '431281', '3', 'hongjiangshi', 'H', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2043', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '娄底市', '4313', '2', 'loudishi', 'L', '1', null, '43');
INSERT INTO `system_area` VALUES ('2044', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '娄星区', '431302', '3', 'louxingqu', 'L', '1', null, '4313');
INSERT INTO `system_area` VALUES ('2045', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '双峰县', '431321', '3', 'shuangfengxian', 'S', '1', null, '4313');
INSERT INTO `system_area` VALUES ('2046', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '新化县', '431322', '3', 'xinhuaxian', 'X', '1', null, '4313');
INSERT INTO `system_area` VALUES ('2047', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '冷水江市', '431381', '3', 'lengshuijiangshi', 'L', '1', null, '4313');
INSERT INTO `system_area` VALUES ('2048', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '涟源市', '431382', '3', 'lianyuanshi', 'L', '1', null, '4313');
INSERT INTO `system_area` VALUES ('2049', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '湘西土家族苗族自治州', '4331', '2', 'xiangxitujiazumiaozuzizhizhou', 'X', '1', null, '43');
INSERT INTO `system_area` VALUES ('2050', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '吉首市', '433101', '3', 'jishoushi', 'J', '1', null, '4331');
INSERT INTO `system_area` VALUES ('2051', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '泸溪县', '433122', '3', 'luxixian', 'L', '1', null, '4331');
INSERT INTO `system_area` VALUES ('2052', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '凤凰县', '433123', '3', 'fenghuangxian', 'F', '1', null, '4331');
INSERT INTO `system_area` VALUES ('2053', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '花垣县', '433124', '3', 'huayuanxian', 'H', '1', null, '4331');
INSERT INTO `system_area` VALUES ('2054', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '保靖县', '433125', '3', 'baojingxian', 'B', '1', null, '4331');
INSERT INTO `system_area` VALUES ('2055', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '古丈县', '433126', '3', 'guzhangxian', 'G', '1', null, '4331');
INSERT INTO `system_area` VALUES ('2056', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '永顺县', '433127', '3', 'yongshunxian', 'Y', '1', null, '4331');
INSERT INTO `system_area` VALUES ('2057', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '龙山县', '433130', '3', 'longshanxian', 'L', '1', null, '4331');
INSERT INTO `system_area` VALUES ('2058', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '广东省', '44', '1', 'guangdongsheng', 'G', '1', null, null);
INSERT INTO `system_area` VALUES ('2059', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '广州市', '4401', '2', 'guangzhoushi', 'G', '1', null, '44');
INSERT INTO `system_area` VALUES ('2060', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '荔湾区', '440103', '3', 'liwanqu', 'L', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2061', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '越秀区', '440104', '3', 'yuexiuqu', 'Y', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2062', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '海珠区', '440105', '3', 'haizhuqu', 'H', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2063', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '天河区', '440106', '3', 'tianhequ', 'T', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2064', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '白云区', '440111', '3', 'baiyunqu', 'B', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2065', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '黄埔区', '440112', '3', 'huangpuqu', 'H', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2066', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '番禺区', '440113', '3', 'panyuqu', 'P', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2067', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '花都区', '440114', '3', 'huadouqu', 'H', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2068', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '南沙区', '440115', '3', 'nanshaqu', 'N', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2069', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '从化区', '440117', '3', 'conghuaqu', 'C', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2070', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '增城区', '440118', '3', 'zengchengqu', 'Z', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2071', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '韶关市', '4402', '2', 'shaoguanshi', 'S', '1', null, '44');
INSERT INTO `system_area` VALUES ('2072', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '武江区', '440203', '3', 'wujiangqu', 'W', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2073', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.319670', '1', '浈江区', '440204', '3', 'zhenjiangqu', 'Z', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2074', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '曲江区', '440205', '3', 'qujiangqu', 'Q', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2075', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '始兴县', '440222', '3', 'shixingxian', 'S', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2076', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '仁化县', '440224', '3', 'renhuaxian', 'R', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2077', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '翁源县', '440229', '3', 'wengyuanxian', 'W', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2078', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '乳源瑶族自治县', '440232', '3', 'ruyuanyaozuzizhixian', 'R', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2079', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '新丰县', '440233', '3', 'xinfengxian', 'X', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2080', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '乐昌市', '440281', '3', 'lechangshi', 'L', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2081', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '南雄市', '440282', '3', 'nanxiongshi', 'N', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2082', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '深圳市', '4403', '2', 'shenzhenshi', 'S', '1', null, '44');
INSERT INTO `system_area` VALUES ('2083', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '罗湖区', '440303', '3', 'luohuqu', 'L', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2084', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '福田区', '440304', '3', 'futianqu', 'F', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2085', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '南山区', '440305', '3', 'nanshanqu', 'N', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2086', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '宝安区', '440306', '3', 'baoanqu', 'B', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2087', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '龙岗区', '440307', '3', 'longgangqu', 'L', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2088', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '盐田区', '440308', '3', 'yantianqu', 'Y', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2089', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '龙华区', '440309', '3', 'longhuaqu', 'L', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2090', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '坪山区', '440310', '3', 'pingshanqu', 'P', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2091', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '光明区', '440311', '3', 'guangmingqu', 'G', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2092', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '珠海市', '4404', '2', 'zhuhaishi', 'Z', '1', null, '44');
INSERT INTO `system_area` VALUES ('2093', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '香洲区', '440402', '3', 'xiangzhouqu', 'X', '1', null, '4404');
INSERT INTO `system_area` VALUES ('2094', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '斗门区', '440403', '3', 'doumenqu', 'D', '1', null, '4404');
INSERT INTO `system_area` VALUES ('2095', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '金湾区', '440404', '3', 'jinwanqu', 'J', '1', null, '4404');
INSERT INTO `system_area` VALUES ('2096', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '汕头市', '4405', '2', 'shantoushi', 'S', '1', null, '44');
INSERT INTO `system_area` VALUES ('2097', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '龙湖区', '440507', '3', 'longhuqu', 'L', '1', null, '4405');
INSERT INTO `system_area` VALUES ('2098', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '金平区', '440511', '3', 'jinpingqu', 'J', '1', null, '4405');
INSERT INTO `system_area` VALUES ('2099', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '濠江区', '440512', '3', 'haojiangqu', 'H', '1', null, '4405');
INSERT INTO `system_area` VALUES ('2100', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '潮阳区', '440513', '3', 'chaoyangqu', 'C', '1', null, '4405');
INSERT INTO `system_area` VALUES ('2101', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '潮南区', '440514', '3', 'chaonanqu', 'C', '1', null, '4405');
INSERT INTO `system_area` VALUES ('2102', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '澄海区', '440515', '3', 'chenghaiqu', 'C', '1', null, '4405');
INSERT INTO `system_area` VALUES ('2103', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '南澳县', '440523', '3', 'nanaoxian', 'N', '1', null, '4405');
INSERT INTO `system_area` VALUES ('2104', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '佛山市', '4406', '2', 'foshanshi', 'F', '1', null, '44');
INSERT INTO `system_area` VALUES ('2105', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '禅城区', '440604', '3', 'chanchengqu', 'C', '1', null, '4406');
INSERT INTO `system_area` VALUES ('2106', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '南海区', '440605', '3', 'nanhaiqu', 'N', '1', null, '4406');
INSERT INTO `system_area` VALUES ('2107', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '顺德区', '440606', '3', 'shundequ', 'S', '1', null, '4406');
INSERT INTO `system_area` VALUES ('2108', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '三水区', '440607', '3', 'sanshuiqu', 'S', '1', null, '4406');
INSERT INTO `system_area` VALUES ('2109', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '高明区', '440608', '3', 'gaomingqu', 'G', '1', null, '4406');
INSERT INTO `system_area` VALUES ('2110', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '江门市', '4407', '2', 'jiangmenshi', 'J', '1', null, '44');
INSERT INTO `system_area` VALUES ('2111', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '蓬江区', '440703', '3', 'pengjiangqu', 'P', '1', null, '4407');
INSERT INTO `system_area` VALUES ('2112', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '江海区', '440704', '3', 'jianghaiqu', 'J', '1', null, '4407');
INSERT INTO `system_area` VALUES ('2113', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '新会区', '440705', '3', 'xinhuiqu', 'X', '1', null, '4407');
INSERT INTO `system_area` VALUES ('2114', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '台山市', '440781', '3', 'taishanshi', 'T', '1', null, '4407');
INSERT INTO `system_area` VALUES ('2115', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '开平市', '440783', '3', 'kaipingshi', 'K', '1', null, '4407');
INSERT INTO `system_area` VALUES ('2116', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '鹤山市', '440784', '3', 'heshanshi', 'H', '1', null, '4407');
INSERT INTO `system_area` VALUES ('2117', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '恩平市', '440785', '3', 'enpingshi', 'E', '1', null, '4407');
INSERT INTO `system_area` VALUES ('2118', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '湛江市', '4408', '2', 'zhanjiangshi', 'Z', '1', null, '44');
INSERT INTO `system_area` VALUES ('2119', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '赤坎区', '440802', '3', 'chikanqu', 'C', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2120', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '霞山区', '440803', '3', 'xiashanqu', 'X', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2121', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '坡头区', '440804', '3', 'potouqu', 'P', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2122', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '麻章区', '440811', '3', 'mazhangqu', 'M', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2123', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '遂溪县', '440823', '3', 'suixixian', 'S', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2124', null, null, null, '2022-12-24 14:21:06.322670', '2022-12-24 14:21:06.322670', '1', '徐闻县', '440825', '3', 'xuwenxian', 'X', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2125', null, null, null, '2022-12-24 14:21:06.322670', '2022-12-24 14:21:06.322670', '1', '廉江市', '440881', '3', 'lianjiangshi', 'L', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2126', null, null, null, '2022-12-24 14:21:06.322670', '2022-12-24 14:21:06.322670', '1', '雷州市', '440882', '3', 'leizhoushi', 'L', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2127', null, null, null, '2022-12-24 14:21:06.322670', '2022-12-24 14:21:06.322670', '1', '吴川市', '440883', '3', 'wuchuanshi', 'W', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2128', null, null, null, '2022-12-24 14:21:06.322670', '2022-12-24 14:21:06.322670', '1', '茂名市', '4409', '2', 'maomingshi', 'M', '1', null, '44');
INSERT INTO `system_area` VALUES ('2129', null, null, null, '2022-12-24 14:21:06.322670', '2022-12-24 14:21:06.322670', '1', '茂南区', '440902', '3', 'maonanqu', 'M', '1', null, '4409');
INSERT INTO `system_area` VALUES ('2130', null, null, null, '2022-12-24 14:21:06.322670', '2022-12-24 14:21:06.322670', '1', '电白区', '440904', '3', 'dianbaiqu', 'D', '1', null, '4409');
INSERT INTO `system_area` VALUES ('2131', null, null, null, '2022-12-24 14:21:06.322670', '2022-12-24 14:21:06.322670', '1', '高州市', '440981', '3', 'gaozhoushi', 'G', '1', null, '4409');
INSERT INTO `system_area` VALUES ('2132', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '化州市', '440982', '3', 'huazhoushi', 'H', '1', null, '4409');
INSERT INTO `system_area` VALUES ('2133', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '信宜市', '440983', '3', 'xinyishi', 'X', '1', null, '4409');
INSERT INTO `system_area` VALUES ('2134', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '肇庆市', '4412', '2', 'zhaoqingshi', 'Z', '1', null, '44');
INSERT INTO `system_area` VALUES ('2135', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '端州区', '441202', '3', 'duanzhouqu', 'D', '1', null, '4412');
INSERT INTO `system_area` VALUES ('2136', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '鼎湖区', '441203', '3', 'dinghuqu', 'D', '1', null, '4412');
INSERT INTO `system_area` VALUES ('2137', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '高要区', '441204', '3', 'gaoyaoqu', 'G', '1', null, '4412');
INSERT INTO `system_area` VALUES ('2138', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '广宁县', '441223', '3', 'guangningxian', 'G', '1', null, '4412');
INSERT INTO `system_area` VALUES ('2139', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '怀集县', '441224', '3', 'huaijixian', 'H', '1', null, '4412');
INSERT INTO `system_area` VALUES ('2140', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '封开县', '441225', '3', 'fengkaixian', 'F', '1', null, '4412');
INSERT INTO `system_area` VALUES ('2141', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '德庆县', '441226', '3', 'deqingxian', 'D', '1', null, '4412');
INSERT INTO `system_area` VALUES ('2142', null, null, null, '2022-12-24 14:21:06.324682', '2022-12-24 14:21:06.324682', '1', '四会市', '441284', '3', 'sihuishi', 'S', '1', null, '4412');
INSERT INTO `system_area` VALUES ('2143', null, null, null, '2022-12-24 14:21:06.324682', '2022-12-24 14:21:06.324682', '1', '惠州市', '4413', '2', 'huizhoushi', 'H', '1', null, '44');
INSERT INTO `system_area` VALUES ('2144', null, null, null, '2022-12-24 14:21:06.324682', '2022-12-24 14:21:06.324682', '1', '惠城区', '441302', '3', 'huichengqu', 'H', '1', null, '4413');
INSERT INTO `system_area` VALUES ('2145', null, null, null, '2022-12-24 14:21:06.324682', '2022-12-24 14:21:06.324682', '1', '惠阳区', '441303', '3', 'huiyangqu', 'H', '1', null, '4413');
INSERT INTO `system_area` VALUES ('2146', null, null, null, '2022-12-24 14:21:06.324682', '2022-12-24 14:21:06.324682', '1', '博罗县', '441322', '3', 'boluoxian', 'B', '1', null, '4413');
INSERT INTO `system_area` VALUES ('2147', null, null, null, '2022-12-24 14:21:06.324682', '2022-12-24 14:21:06.324682', '1', '惠东县', '441323', '3', 'huidongxian', 'H', '1', null, '4413');
INSERT INTO `system_area` VALUES ('2148', null, null, null, '2022-12-24 14:21:06.324682', '2022-12-24 14:21:06.324682', '1', '龙门县', '441324', '3', 'longmenxian', 'L', '1', null, '4413');
INSERT INTO `system_area` VALUES ('2149', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '梅州市', '4414', '2', 'meizhoushi', 'M', '1', null, '44');
INSERT INTO `system_area` VALUES ('2150', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '梅江区', '441402', '3', 'meijiangqu', 'M', '1', null, '4414');
INSERT INTO `system_area` VALUES ('2151', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '梅县区', '441403', '3', 'meixianqu', 'M', '1', null, '4414');
INSERT INTO `system_area` VALUES ('2152', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '大埔县', '441422', '3', 'dabuxian', 'D', '1', null, '4414');
INSERT INTO `system_area` VALUES ('2153', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '丰顺县', '441423', '3', 'fengshunxian', 'F', '1', null, '4414');
INSERT INTO `system_area` VALUES ('2154', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '五华县', '441424', '3', 'wuhuaxian', 'W', '1', null, '4414');
INSERT INTO `system_area` VALUES ('2155', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '平远县', '441426', '3', 'pingyuanxian', 'P', '1', null, '4414');
INSERT INTO `system_area` VALUES ('2156', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '蕉岭县', '441427', '3', 'jiaolingxian', 'J', '1', null, '4414');
INSERT INTO `system_area` VALUES ('2157', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '兴宁市', '441481', '3', 'xingningshi', 'X', '1', null, '4414');
INSERT INTO `system_area` VALUES ('2158', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '汕尾市', '4415', '2', 'shanweishi', 'S', '1', null, '44');
INSERT INTO `system_area` VALUES ('2159', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '城区', '441502', '3', 'chengqu', 'C', '1', null, '4415');
INSERT INTO `system_area` VALUES ('2160', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '海丰县', '441521', '3', 'haifengxian', 'H', '1', null, '4415');
INSERT INTO `system_area` VALUES ('2161', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '陆河县', '441523', '3', 'luhexian', 'L', '1', null, '4415');
INSERT INTO `system_area` VALUES ('2162', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '陆丰市', '441581', '3', 'lufengshi', 'L', '1', null, '4415');
INSERT INTO `system_area` VALUES ('2163', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '河源市', '4416', '2', 'heyuanshi', 'H', '1', null, '44');
INSERT INTO `system_area` VALUES ('2164', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '源城区', '441602', '3', 'yuanchengqu', 'Y', '1', null, '4416');
INSERT INTO `system_area` VALUES ('2165', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '紫金县', '441621', '3', 'zijinxian', 'Z', '1', null, '4416');
INSERT INTO `system_area` VALUES ('2166', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '龙川县', '441622', '3', 'longchuanxian', 'L', '1', null, '4416');
INSERT INTO `system_area` VALUES ('2167', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '连平县', '441623', '3', 'lianpingxian', 'L', '1', null, '4416');
INSERT INTO `system_area` VALUES ('2168', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '和平县', '441624', '3', 'hepingxian', 'H', '1', null, '4416');
INSERT INTO `system_area` VALUES ('2169', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '东源县', '441625', '3', 'dongyuanxian', 'D', '1', null, '4416');
INSERT INTO `system_area` VALUES ('2170', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '阳江市', '4417', '2', 'yangjiangshi', 'Y', '1', null, '44');
INSERT INTO `system_area` VALUES ('2171', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '江城区', '441702', '3', 'jiangchengqu', 'J', '1', null, '4417');
INSERT INTO `system_area` VALUES ('2172', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '阳东区', '441704', '3', 'yangdongqu', 'Y', '1', null, '4417');
INSERT INTO `system_area` VALUES ('2173', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '阳西县', '441721', '3', 'yangxixian', 'Y', '1', null, '4417');
INSERT INTO `system_area` VALUES ('2174', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '阳春市', '441781', '3', 'yangchunshi', 'Y', '1', null, '4417');
INSERT INTO `system_area` VALUES ('2175', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '清远市', '4418', '2', 'qingyuanshi', 'Q', '1', null, '44');
INSERT INTO `system_area` VALUES ('2176', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '清城区', '441802', '3', 'qingchengqu', 'Q', '1', null, '4418');
INSERT INTO `system_area` VALUES ('2177', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '清新区', '441803', '3', 'qingxinqu', 'Q', '1', null, '4418');
INSERT INTO `system_area` VALUES ('2178', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '佛冈县', '441821', '3', 'fugangxian', 'F', '1', null, '4418');
INSERT INTO `system_area` VALUES ('2179', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '阳山县', '441823', '3', 'yangshanxian', 'Y', '1', null, '4418');
INSERT INTO `system_area` VALUES ('2180', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '连山壮族瑶族自治县', '441825', '3', 'lianshanzhuangzuyaozuzizhixian', 'L', '1', null, '4418');
INSERT INTO `system_area` VALUES ('2181', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '连南瑶族自治县', '441826', '3', 'liannanyaozuzizhixian', 'L', '1', null, '4418');
INSERT INTO `system_area` VALUES ('2182', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '英德市', '441881', '3', 'yingdeshi', 'Y', '1', null, '4418');
INSERT INTO `system_area` VALUES ('2183', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '连州市', '441882', '3', 'lianzhoushi', 'L', '1', null, '4418');
INSERT INTO `system_area` VALUES ('2184', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '东莞市', '4419', '2', 'dongguanshi', 'D', '1', null, '44');
INSERT INTO `system_area` VALUES ('2185', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '东城街道', '441900003', '3', 'dongchengjiedao', 'D', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2186', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '南城街道', '441900004', '3', 'nanchengjiedao', 'N', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2187', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '万江街道', '441900005', '3', 'wanjiangjiedao', 'W', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2188', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '莞城街道', '441900006', '3', 'guanchengjiedao', 'G', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2189', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '石碣镇', '441900101', '3', 'shijiezhen', 'S', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2190', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '石龙镇', '441900102', '3', 'shilongzhen', 'S', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2191', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '茶山镇', '441900103', '3', 'chashanzhen', 'C', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2192', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '石排镇', '441900104', '3', 'shipaizhen', 'S', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2193', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '企石镇', '441900105', '3', 'qishizhen', 'Q', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2194', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '横沥镇', '441900106', '3', 'henglizhen', 'H', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2195', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '桥头镇', '441900107', '3', 'qiaotouzhen', 'Q', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2196', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '谢岗镇', '441900108', '3', 'xiegangzhen', 'X', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2197', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '东坑镇', '441900109', '3', 'dongkengzhen', 'D', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2198', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '常平镇', '441900110', '3', 'changpingzhen', 'C', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2199', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '寮步镇', '441900111', '3', 'liaobuzhen', 'L', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2200', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '樟木头镇', '441900112', '3', 'zhangmutouzhen', 'Z', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2201', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '大朗镇', '441900113', '3', 'dalangzhen', 'D', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2202', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '黄江镇', '441900114', '3', 'huangjiangzhen', 'H', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2203', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '清溪镇', '441900115', '3', 'qingxizhen', 'Q', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2204', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '塘厦镇', '441900116', '3', 'tangshazhen', 'T', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2205', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '凤岗镇', '441900117', '3', 'fenggangzhen', 'F', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2206', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '大岭山镇', '441900118', '3', 'dalingshanzhen', 'D', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2207', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '长安镇', '441900119', '3', 'changanzhen', 'C', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2208', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '虎门镇', '441900121', '3', 'humenzhen', 'H', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2209', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '厚街镇', '441900122', '3', 'houjiezhen', 'H', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2210', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '沙田镇', '441900123', '3', 'shatianzhen', 'S', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2211', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.329680', '1', '道滘镇', '441900124', '3', 'daojiaozhen', 'D', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2212', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '洪梅镇', '441900125', '3', 'hongmeizhen', 'H', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2213', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '麻涌镇', '441900126', '3', 'mayongzhen', 'M', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2214', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '望牛墩镇', '441900127', '3', 'wangniudunzhen', 'W', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2215', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '中堂镇', '441900128', '3', 'zhongtangzhen', 'Z', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2216', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '高埗镇', '441900129', '3', 'gaobuzhen', 'G', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2217', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '松山湖', '441900401', '3', 'songshanhu', 'S', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2218', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '东莞港', '441900402', '3', 'dongguangang', 'D', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2219', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '东莞生态园', '441900403', '3', 'dongguanshengtaiyuan', 'D', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2220', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '中山市', '4420', '2', 'zhongshanshi', 'Z', '1', null, '44');
INSERT INTO `system_area` VALUES ('2221', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '石岐街道', '442000001', '3', 'shiqijiedao', 'S', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2222', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '东区街道', '442000002', '3', 'dongqujiedao', 'D', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2223', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '中山港街道', '442000003', '3', 'zhongshangangjiedao', 'Z', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2224', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '西区街道', '442000004', '3', 'xiqujiedao', 'X', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2225', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '南区街道', '442000005', '3', 'nanqujiedao', 'N', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2226', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '五桂山街道', '442000006', '3', 'wuguishanjiedao', 'W', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2227', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '小榄镇', '442000100', '3', 'xiaolanzhen', 'X', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2228', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '黄圃镇', '442000101', '3', 'huangpuzhen', 'H', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2229', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '民众镇', '442000102', '3', 'minzhongzhen', 'M', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2230', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '东凤镇', '442000103', '3', 'dongfengzhen', 'D', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2231', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '东升镇', '442000104', '3', 'dongshengzhen', 'D', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2232', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '古镇镇', '442000105', '3', 'guzhenzhen', 'G', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2233', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '沙溪镇', '442000106', '3', 'shaxizhen', 'S', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2234', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '坦洲镇', '442000107', '3', 'tanzhouzhen', 'T', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2235', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '港口镇', '442000108', '3', 'gangkouzhen', 'G', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2236', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '三角镇', '442000109', '3', 'sanjiaozhen', 'S', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2237', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '横栏镇', '442000110', '3', 'henglanzhen', 'H', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2238', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '南头镇', '442000111', '3', 'nantouzhen', 'N', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2239', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '阜沙镇', '442000112', '3', 'fushazhen', 'F', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2240', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '南朗镇', '442000113', '3', 'nanlangzhen', 'N', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2241', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '三乡镇', '442000114', '3', 'sanxiangzhen', 'S', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2242', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '板芙镇', '442000115', '3', 'banfuzhen', 'B', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2243', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '大涌镇', '442000116', '3', 'dayongzhen', 'D', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2244', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '神湾镇', '442000117', '3', 'shenwanzhen', 'S', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2245', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '潮州市', '4451', '2', 'chaozhoushi', 'C', '1', null, '44');
INSERT INTO `system_area` VALUES ('2246', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '湘桥区', '445102', '3', 'xiangqiaoqu', 'X', '1', null, '4451');
INSERT INTO `system_area` VALUES ('2247', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '潮安区', '445103', '3', 'chaoanqu', 'C', '1', null, '4451');
INSERT INTO `system_area` VALUES ('2248', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '饶平县', '445122', '3', 'raopingxian', 'R', '1', null, '4451');
INSERT INTO `system_area` VALUES ('2249', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '揭阳市', '4452', '2', 'jieyangshi', 'J', '1', null, '44');
INSERT INTO `system_area` VALUES ('2250', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '榕城区', '445202', '3', 'rongchengqu', 'R', '1', null, '4452');
INSERT INTO `system_area` VALUES ('2251', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '揭东区', '445203', '3', 'jiedongqu', 'J', '1', null, '4452');
INSERT INTO `system_area` VALUES ('2252', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '揭西县', '445222', '3', 'jiexixian', 'J', '1', null, '4452');
INSERT INTO `system_area` VALUES ('2253', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '惠来县', '445224', '3', 'huilaixian', 'H', '1', null, '4452');
INSERT INTO `system_area` VALUES ('2254', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '普宁市', '445281', '3', 'puningshi', 'P', '1', null, '4452');
INSERT INTO `system_area` VALUES ('2255', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '云浮市', '4453', '2', 'yunfushi', 'Y', '1', null, '44');
INSERT INTO `system_area` VALUES ('2256', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '云城区', '445302', '3', 'yunchengqu', 'Y', '1', null, '4453');
INSERT INTO `system_area` VALUES ('2257', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '云安区', '445303', '3', 'yunanqu', 'Y', '1', null, '4453');
INSERT INTO `system_area` VALUES ('2258', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '新兴县', '445321', '3', 'xinxingxian', 'X', '1', null, '4453');
INSERT INTO `system_area` VALUES ('2259', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '郁南县', '445322', '3', 'yunanxian', 'Y', '1', null, '4453');
INSERT INTO `system_area` VALUES ('2260', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '罗定市', '445381', '3', 'luodingshi', 'L', '1', null, '4453');
INSERT INTO `system_area` VALUES ('2261', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '广西壮族自治区', '45', '1', 'guangxizhuangzuzizhiqu', 'G', '1', null, null);
INSERT INTO `system_area` VALUES ('2262', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '南宁市', '4501', '2', 'nanningshi', 'N', '1', null, '45');
INSERT INTO `system_area` VALUES ('2263', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '兴宁区', '450102', '3', 'xingningqu', 'X', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2264', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '青秀区', '450103', '3', 'qingxiuqu', 'Q', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2265', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '江南区', '450105', '3', 'jiangnanqu', 'J', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2266', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '西乡塘区', '450107', '3', 'xixiangtangqu', 'X', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2267', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '良庆区', '450108', '3', 'liangqingqu', 'L', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2268', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '邕宁区', '450109', '3', 'yongningqu', 'Y', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2269', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '武鸣区', '450110', '3', 'wumingqu', 'W', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2270', null, null, null, '2022-12-24 14:21:06.333691', '2022-12-24 14:21:06.333691', '1', '隆安县', '450123', '3', 'longanxian', 'L', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2271', null, null, null, '2022-12-24 14:21:06.333691', '2022-12-24 14:21:06.333691', '1', '马山县', '450124', '3', 'mashanxian', 'M', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2272', null, null, null, '2022-12-24 14:21:06.333691', '2022-12-24 14:21:06.333691', '1', '上林县', '450125', '3', 'shanglinxian', 'S', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2273', null, null, null, '2022-12-24 14:21:06.333691', '2022-12-24 14:21:06.333691', '1', '宾阳县', '450126', '3', 'binyangxian', 'B', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2274', null, null, null, '2022-12-24 14:21:06.333691', '2022-12-24 14:21:06.333691', '1', '横县', '450127', '3', 'hengxian', 'H', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2275', null, null, null, '2022-12-24 14:21:06.333691', '2022-12-24 14:21:06.333691', '1', '柳州市', '4502', '2', 'liuzhoushi', 'L', '1', null, '45');
INSERT INTO `system_area` VALUES ('2276', null, null, null, '2022-12-24 14:21:06.333691', '2022-12-24 14:21:06.333691', '1', '城中区', '450202', '3', 'chengzhongqu', 'C', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2277', null, null, null, '2022-12-24 14:21:06.333691', '2022-12-24 14:21:06.333691', '1', '鱼峰区', '450203', '3', 'yufengqu', 'Y', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2278', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '柳南区', '450204', '3', 'liunanqu', 'L', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2279', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '柳北区', '450205', '3', 'liubeiqu', 'L', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2280', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '柳江区', '450206', '3', 'liujiangqu', 'L', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2281', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '柳城县', '450222', '3', 'liuchengxian', 'L', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2282', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '鹿寨县', '450223', '3', 'luzhaixian', 'L', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2283', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '融安县', '450224', '3', 'ronganxian', 'R', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2284', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '融水苗族自治县', '450225', '3', 'rongshuimiaozuzizhixian', 'R', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2285', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '三江侗族自治县', '450226', '3', 'sanjiangdongzuzizhixian', 'S', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2286', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '桂林市', '4503', '2', 'guilinshi', 'G', '1', null, '45');
INSERT INTO `system_area` VALUES ('2287', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '秀峰区', '450302', '3', 'xiufengqu', 'X', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2288', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '叠彩区', '450303', '3', 'diecaiqu', 'D', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2289', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '象山区', '450304', '3', 'xiangshanqu', 'X', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2290', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '七星区', '450305', '3', 'qixingqu', 'Q', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2291', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '雁山区', '450311', '3', 'yanshanqu', 'Y', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2292', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '临桂区', '450312', '3', 'linguiqu', 'L', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2293', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '阳朔县', '450321', '3', 'yangshuoxian', 'Y', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2294', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '灵川县', '450323', '3', 'lingchuanxian', 'L', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2295', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '全州县', '450324', '3', 'quanzhouxian', 'Q', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2296', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '兴安县', '450325', '3', 'xinganxian', 'X', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2297', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '永福县', '450326', '3', 'yongfuxian', 'Y', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2298', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '灌阳县', '450327', '3', 'guanyangxian', 'G', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2299', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '龙胜各族自治县', '450328', '3', 'longshenggezuzizhixian', 'L', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2300', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '资源县', '450329', '3', 'ziyuanxian', 'Z', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2301', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '平乐县', '450330', '3', 'pinglexian', 'P', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2302', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '恭城瑶族自治县', '450332', '3', 'gongchengyaozuzizhixian', 'G', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2303', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '荔浦市', '450381', '3', 'lipushi', 'L', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2304', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '梧州市', '4504', '2', 'wuzhoushi', 'W', '1', null, '45');
INSERT INTO `system_area` VALUES ('2305', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '万秀区', '450403', '3', 'wanxiuqu', 'W', '1', null, '4504');
INSERT INTO `system_area` VALUES ('2306', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '长洲区', '450405', '3', 'zhangzhouqu', 'Z', '1', null, '4504');
INSERT INTO `system_area` VALUES ('2307', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.337679', '1', '龙圩区', '450406', '3', 'longweiqu', 'L', '1', null, '4504');
INSERT INTO `system_area` VALUES ('2308', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '苍梧县', '450421', '3', 'cangwuxian', 'C', '1', null, '4504');
INSERT INTO `system_area` VALUES ('2309', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '藤县', '450422', '3', 'tengxian', 'T', '1', null, '4504');
INSERT INTO `system_area` VALUES ('2310', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '蒙山县', '450423', '3', 'mengshanxian', 'M', '1', null, '4504');
INSERT INTO `system_area` VALUES ('2311', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '岑溪市', '450481', '3', 'cenxishi', 'C', '1', null, '4504');
INSERT INTO `system_area` VALUES ('2312', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '北海市', '4505', '2', 'beihaishi', 'B', '1', null, '45');
INSERT INTO `system_area` VALUES ('2313', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '海城区', '450502', '3', 'haichengqu', 'H', '1', null, '4505');
INSERT INTO `system_area` VALUES ('2314', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '银海区', '450503', '3', 'yinhaiqu', 'Y', '1', null, '4505');
INSERT INTO `system_area` VALUES ('2315', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '铁山港区', '450512', '3', 'tieshangangqu', 'T', '1', null, '4505');
INSERT INTO `system_area` VALUES ('2316', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '合浦县', '450521', '3', 'hepuxian', 'H', '1', null, '4505');
INSERT INTO `system_area` VALUES ('2317', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.338684', '1', '防城港市', '4506', '2', 'fangchenggangshi', 'F', '1', null, '45');
INSERT INTO `system_area` VALUES ('2318', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.338684', '1', '港口区', '450602', '3', 'gangkouqu', 'G', '1', null, '4506');
INSERT INTO `system_area` VALUES ('2319', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.338684', '1', '防城区', '450603', '3', 'fangchengqu', 'F', '1', null, '4506');
INSERT INTO `system_area` VALUES ('2320', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.338684', '1', '上思县', '450621', '3', 'shangsixian', 'S', '1', null, '4506');
INSERT INTO `system_area` VALUES ('2321', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.338684', '1', '东兴市', '450681', '3', 'dongxingshi', 'D', '1', null, '4506');
INSERT INTO `system_area` VALUES ('2322', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.338684', '1', '钦州市', '4507', '2', 'qinzhoushi', 'Q', '1', null, '45');
INSERT INTO `system_area` VALUES ('2323', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.338684', '1', '钦南区', '450702', '3', 'qinnanqu', 'Q', '1', null, '4507');
INSERT INTO `system_area` VALUES ('2324', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.338684', '1', '钦北区', '450703', '3', 'qinbeiqu', 'Q', '1', null, '4507');
INSERT INTO `system_area` VALUES ('2325', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.338684', '1', '灵山县', '450721', '3', 'lingshanxian', 'L', '1', null, '4507');
INSERT INTO `system_area` VALUES ('2326', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.339675', '1', '浦北县', '450722', '3', 'pubeixian', 'P', '1', null, '4507');
INSERT INTO `system_area` VALUES ('2327', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '贵港市', '4508', '2', 'guigangshi', 'G', '1', null, '45');
INSERT INTO `system_area` VALUES ('2328', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '港北区', '450802', '3', 'gangbeiqu', 'G', '1', null, '4508');
INSERT INTO `system_area` VALUES ('2329', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '港南区', '450803', '3', 'gangnanqu', 'G', '1', null, '4508');
INSERT INTO `system_area` VALUES ('2330', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '覃塘区', '450804', '3', 'tantangqu', 'T', '1', null, '4508');
INSERT INTO `system_area` VALUES ('2331', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '平南县', '450821', '3', 'pingnanxian', 'P', '1', null, '4508');
INSERT INTO `system_area` VALUES ('2332', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '桂平市', '450881', '3', 'guipingshi', 'G', '1', null, '4508');
INSERT INTO `system_area` VALUES ('2333', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '玉林市', '4509', '2', 'yulinshi', 'Y', '1', null, '45');
INSERT INTO `system_area` VALUES ('2334', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '玉州区', '450902', '3', 'yuzhouqu', 'Y', '1', null, '4509');
INSERT INTO `system_area` VALUES ('2335', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '福绵区', '450903', '3', 'fumianqu', 'F', '1', null, '4509');
INSERT INTO `system_area` VALUES ('2336', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '容县', '450921', '3', 'rongxian', 'R', '1', null, '4509');
INSERT INTO `system_area` VALUES ('2337', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '陆川县', '450922', '3', 'luchuanxian', 'L', '1', null, '4509');
INSERT INTO `system_area` VALUES ('2338', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '博白县', '450923', '3', 'bobaixian', 'B', '1', null, '4509');
INSERT INTO `system_area` VALUES ('2339', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '兴业县', '450924', '3', 'xingyexian', 'X', '1', null, '4509');
INSERT INTO `system_area` VALUES ('2340', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '北流市', '450981', '3', 'beiliushi', 'B', '1', null, '4509');
INSERT INTO `system_area` VALUES ('2341', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '百色市', '4510', '2', 'baiseshi', 'B', '1', null, '45');
INSERT INTO `system_area` VALUES ('2342', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '右江区', '451002', '3', 'youjiangqu', 'Y', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2343', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '田阳区', '451003', '3', 'tianyangqu', 'T', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2344', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '田东县', '451022', '3', 'tiandongxian', 'T', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2345', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '德保县', '451024', '3', 'debaoxian', 'D', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2346', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '那坡县', '451026', '3', 'napoxian', 'N', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2347', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '凌云县', '451027', '3', 'lingyunxian', 'L', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2348', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '乐业县', '451028', '3', 'leyexian', 'L', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2349', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '田林县', '451029', '3', 'tianlinxian', 'T', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2350', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '西林县', '451030', '3', 'xilinxian', 'X', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2351', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '隆林各族自治县', '451031', '3', 'longlingezuzizhixian', 'L', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2352', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '靖西市', '451081', '3', 'jingxishi', 'J', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2353', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '平果市', '451082', '3', 'pingguoshi', 'P', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2354', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '贺州市', '4511', '2', 'hezhoushi', 'H', '1', null, '45');
INSERT INTO `system_area` VALUES ('2355', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '八步区', '451102', '3', 'babuqu', 'B', '1', null, '4511');
INSERT INTO `system_area` VALUES ('2356', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '平桂区', '451103', '3', 'pingguiqu', 'P', '1', null, '4511');
INSERT INTO `system_area` VALUES ('2357', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '昭平县', '451121', '3', 'zhaopingxian', 'Z', '1', null, '4511');
INSERT INTO `system_area` VALUES ('2358', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '钟山县', '451122', '3', 'zhongshanxian', 'Z', '1', null, '4511');
INSERT INTO `system_area` VALUES ('2359', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '富川瑶族自治县', '451123', '3', 'fuchuanyaozuzizhixian', 'F', '1', null, '4511');
INSERT INTO `system_area` VALUES ('2360', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '河池市', '4512', '2', 'hechishi', 'H', '1', null, '45');
INSERT INTO `system_area` VALUES ('2361', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '金城江区', '451202', '3', 'jinchengjiangqu', 'J', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2362', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '宜州区', '451203', '3', 'yizhouqu', 'Y', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2363', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '南丹县', '451221', '3', 'nandanxian', 'N', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2364', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '天峨县', '451222', '3', 'tianexian', 'T', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2365', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '凤山县', '451223', '3', 'fengshanxian', 'F', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2366', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '东兰县', '451224', '3', 'donglanxian', 'D', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2367', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '罗城仫佬族自治县', '451225', '3', 'luochengmulaozuzizhixian', 'L', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2368', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '环江毛南族自治县', '451226', '3', 'huanjiangmaonanzuzizhixian', 'H', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2369', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '巴马瑶族自治县', '451227', '3', 'bamayaozuzizhixian', 'B', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2370', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '都安瑶族自治县', '451228', '3', 'douanyaozuzizhixian', 'D', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2371', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '大化瑶族自治县', '451229', '3', 'dahuayaozuzizhixian', 'D', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2372', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '来宾市', '4513', '2', 'laibinshi', 'L', '1', null, '45');
INSERT INTO `system_area` VALUES ('2373', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '兴宾区', '451302', '3', 'xingbinqu', 'X', '1', null, '4513');
INSERT INTO `system_area` VALUES ('2374', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '忻城县', '451321', '3', 'xinchengxian', 'X', '1', null, '4513');
INSERT INTO `system_area` VALUES ('2375', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '象州县', '451322', '3', 'xiangzhouxian', 'X', '1', null, '4513');
INSERT INTO `system_area` VALUES ('2376', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '武宣县', '451323', '3', 'wuxuanxian', 'W', '1', null, '4513');
INSERT INTO `system_area` VALUES ('2377', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '金秀瑶族自治县', '451324', '3', 'jinxiuyaozuzizhixian', 'J', '1', null, '4513');
INSERT INTO `system_area` VALUES ('2378', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '合山市', '451381', '3', 'heshanshi', 'H', '1', null, '4513');
INSERT INTO `system_area` VALUES ('2379', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '崇左市', '4514', '2', 'chongzuoshi', 'C', '1', null, '45');
INSERT INTO `system_area` VALUES ('2380', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '江州区', '451402', '3', 'jiangzhouqu', 'J', '1', null, '4514');
INSERT INTO `system_area` VALUES ('2381', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '扶绥县', '451421', '3', 'fusuixian', 'F', '1', null, '4514');
INSERT INTO `system_area` VALUES ('2382', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '宁明县', '451422', '3', 'ningmingxian', 'N', '1', null, '4514');
INSERT INTO `system_area` VALUES ('2383', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '龙州县', '451423', '3', 'longzhouxian', 'L', '1', null, '4514');
INSERT INTO `system_area` VALUES ('2384', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '大新县', '451424', '3', 'daxinxian', 'D', '1', null, '4514');
INSERT INTO `system_area` VALUES ('2385', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '天等县', '451425', '3', 'tiandengxian', 'T', '1', null, '4514');
INSERT INTO `system_area` VALUES ('2386', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '凭祥市', '451481', '3', 'pingxiangshi', 'P', '1', null, '4514');
INSERT INTO `system_area` VALUES ('2387', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '海南省', '46', '1', 'hainansheng', 'H', '1', null, null);
INSERT INTO `system_area` VALUES ('2388', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '海口市', '4601', '2', 'haikoushi', 'H', '1', null, '46');
INSERT INTO `system_area` VALUES ('2389', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '秀英区', '460105', '3', 'xiuyingqu', 'X', '1', null, '4601');
INSERT INTO `system_area` VALUES ('2390', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '龙华区', '460106', '3', 'longhuaqu', 'L', '1', null, '4601');
INSERT INTO `system_area` VALUES ('2391', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '琼山区', '460107', '3', 'qiongshanqu', 'Q', '1', null, '4601');
INSERT INTO `system_area` VALUES ('2392', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '美兰区', '460108', '3', 'meilanqu', 'M', '1', null, '4601');
INSERT INTO `system_area` VALUES ('2393', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '三亚市', '4602', '2', 'sanyashi', 'S', '1', null, '46');
INSERT INTO `system_area` VALUES ('2394', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '海棠区', '460202', '3', 'haitangqu', 'H', '1', null, '4602');
INSERT INTO `system_area` VALUES ('2395', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '吉阳区', '460203', '3', 'jiyangqu', 'J', '1', null, '4602');
INSERT INTO `system_area` VALUES ('2396', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '天涯区', '460204', '3', 'tianyaqu', 'T', '1', null, '4602');
INSERT INTO `system_area` VALUES ('2397', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '崖州区', '460205', '3', 'yazhouqu', 'Y', '1', null, '4602');
INSERT INTO `system_area` VALUES ('2398', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.345680', '1', '三沙市', '4603', '2', 'sanshashi', 'S', '1', null, '46');
INSERT INTO `system_area` VALUES ('2399', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '西沙群岛', '460321', '3', 'xishaqundao', 'X', '1', null, '4603');
INSERT INTO `system_area` VALUES ('2400', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '南沙群岛', '460322', '3', 'nanshaqundao', 'N', '1', null, '4603');
INSERT INTO `system_area` VALUES ('2401', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '中沙群岛的岛礁及其海域', '460323', '3', 'zhongshaqundaodedaojiaojiqihaiyu', 'Z', '1', null, '4603');
INSERT INTO `system_area` VALUES ('2402', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '儋州市', '4604', '2', 'danzhoushi', 'D', '1', null, '46');
INSERT INTO `system_area` VALUES ('2403', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '那大镇', '460400100', '3', 'nadazhen', 'N', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2404', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '和庆镇', '460400101', '3', 'heqingzhen', 'H', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2405', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '南丰镇', '460400102', '3', 'nanfengzhen', 'N', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2406', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '大成镇', '460400103', '3', 'dachengzhen', 'D', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2407', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '雅星镇', '460400104', '3', 'yaxingzhen', 'Y', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2408', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '兰洋镇', '460400105', '3', 'lanyangzhen', 'L', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2409', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '光村镇', '460400106', '3', 'guangcunzhen', 'G', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2410', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '木棠镇', '460400107', '3', 'mutangzhen', 'M', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2411', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '海头镇', '460400108', '3', 'haitouzhen', 'H', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2412', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '峨蔓镇', '460400109', '3', 'emanzhen', 'E', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2413', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '王五镇', '460400111', '3', 'wangwuzhen', 'W', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2414', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '白马井镇', '460400112', '3', 'baimajingzhen', 'B', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2415', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.346679', '1', '中和镇', '460400113', '3', 'zhonghezhen', 'Z', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2416', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '排浦镇', '460400114', '3', 'paipuzhen', 'P', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2417', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '东成镇', '460400115', '3', 'dongchengzhen', 'D', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2418', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '新州镇', '460400116', '3', 'xinzhouzhen', 'X', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2419', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '洋浦经济开发区', '460400499', '3', 'yangpujingjikaifaqu', 'Y', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2420', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '华南热作学院', '460400500', '3', 'huananrezuoxueyuan', 'H', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2421', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '省直辖县级行政区划', '4690', '2', 'shengzhixiaxianjixingzhengquhua', 'S', '1', null, '46');
INSERT INTO `system_area` VALUES ('2422', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '五指山市', '469001', '3', 'wuzhishanshi', 'W', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2423', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '琼海市', '469002', '3', 'qionghaishi', 'Q', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2424', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '文昌市', '469005', '3', 'wenchangshi', 'W', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2425', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '万宁市', '469006', '3', 'wanningshi', 'W', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2426', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '东方市', '469007', '3', 'dongfangshi', 'D', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2427', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '定安县', '469021', '3', 'dinganxian', 'D', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2428', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '屯昌县', '469022', '3', 'tunchangxian', 'T', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2429', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '澄迈县', '469023', '3', 'chengmaixian', 'C', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2430', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '临高县', '469024', '3', 'lingaoxian', 'L', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2431', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '白沙黎族自治县', '469025', '3', 'baishalizuzizhixian', 'B', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2432', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '昌江黎族自治县', '469026', '3', 'changjianglizuzizhixian', 'C', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2433', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '乐东黎族自治县', '469027', '3', 'ledonglizuzizhixian', 'L', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2434', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '陵水黎族自治县', '469028', '3', 'lingshuilizuzizhixian', 'L', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2435', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '保亭黎族苗族自治县', '469029', '3', 'baotinglizumiaozuzizhixian', 'B', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2436', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '琼中黎族苗族自治县', '469030', '3', 'qiongzhonglizumiaozuzizhixian', 'Q', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2437', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '重庆市', '50', '1', 'chongqingshi', 'C', '1', null, null);
INSERT INTO `system_area` VALUES ('2438', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '市辖区', '5001', '2', 'shixiaqu', 'S', '1', null, '50');
INSERT INTO `system_area` VALUES ('2439', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '万州区', '500101', '3', 'wanzhouqu', 'W', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2440', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '涪陵区', '500102', '3', 'fulingqu', 'F', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2441', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '渝中区', '500103', '3', 'yuzhongqu', 'Y', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2442', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '大渡口区', '500104', '3', 'dadukouqu', 'D', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2443', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '江北区', '500105', '3', 'jiangbeiqu', 'J', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2444', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '沙坪坝区', '500106', '3', 'shapingbaqu', 'S', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2445', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '九龙坡区', '500107', '3', 'jiulongpoqu', 'J', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2446', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '南岸区', '500108', '3', 'nananqu', 'N', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2447', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '北碚区', '500109', '3', 'beibeiqu', 'B', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2448', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '綦江区', '500110', '3', 'qijiangqu', 'Q', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2449', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.348681', '1', '大足区', '500111', '3', 'dazuqu', 'D', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2450', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '渝北区', '500112', '3', 'yubeiqu', 'Y', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2451', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '巴南区', '500113', '3', 'bananqu', 'B', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2452', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '黔江区', '500114', '3', 'qianjiangqu', 'Q', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2453', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '长寿区', '500115', '3', 'changshouqu', 'C', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2454', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '江津区', '500116', '3', 'jiangjinqu', 'J', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2455', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '合川区', '500117', '3', 'hechuanqu', 'H', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2456', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '永川区', '500118', '3', 'yongchuanqu', 'Y', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2457', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '南川区', '500119', '3', 'nanchuanqu', 'N', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2458', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '璧山区', '500120', '3', 'bishanqu', 'B', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2459', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '铜梁区', '500151', '3', 'tongliangqu', 'T', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2460', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '潼南区', '500152', '3', 'tongnanqu', 'T', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2461', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '荣昌区', '500153', '3', 'rongchangqu', 'R', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2462', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '开州区', '500154', '3', 'kaizhouqu', 'K', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2463', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '梁平区', '500155', '3', 'liangpingqu', 'L', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2464', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '武隆区', '500156', '3', 'wulongqu', 'W', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2465', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '县', '5002', '2', 'xian', 'X', '1', null, '50');
INSERT INTO `system_area` VALUES ('2466', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '城口县', '500229', '3', 'chengkouxian', 'C', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2467', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '丰都县', '500230', '3', 'fengdouxian', 'F', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2468', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '垫江县', '500231', '3', 'dianjiangxian', 'D', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2469', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '忠县', '500233', '3', 'zhongxian', 'Z', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2470', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '云阳县', '500235', '3', 'yunyangxian', 'Y', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2471', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '奉节县', '500236', '3', 'fengjiexian', 'F', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2472', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '巫山县', '500237', '3', 'wushanxian', 'W', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2473', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '巫溪县', '500238', '3', 'wuxixian', 'W', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2474', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '石柱土家族自治县', '500240', '3', 'shizhutujiazuzizhixian', 'S', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2475', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '秀山土家族苗族自治县', '500241', '3', 'xiushantujiazumiaozuzizhixian', 'X', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2476', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '酉阳土家族苗族自治县', '500242', '3', 'youyangtujiazumiaozuzizhixian', 'Y', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2477', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '彭水苗族土家族自治县', '500243', '3', 'pengshuimiaozutujiazuzizhixian', 'P', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2478', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '四川省', '51', '1', 'sichuansheng', 'S', '1', null, null);
INSERT INTO `system_area` VALUES ('2479', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '成都市', '5101', '2', 'chengdushi', 'C', '1', null, '51');
INSERT INTO `system_area` VALUES ('2480', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '锦江区', '510104', '3', 'jinjiangqu', 'J', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2481', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '青羊区', '510105', '3', 'qingyangqu', 'Q', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2482', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '金牛区', '510106', '3', 'jinniuqu', 'J', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2483', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '武侯区', '510107', '3', 'wuhouqu', 'W', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2484', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '成华区', '510108', '3', 'chenghuaqu', 'C', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2485', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '龙泉驿区', '510112', '3', 'longquanyiqu', 'L', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2486', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '青白江区', '510113', '3', 'qingbaijiangqu', 'Q', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2487', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '新都区', '510114', '3', 'xindouqu', 'X', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2488', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '温江区', '510115', '3', 'wenjiangqu', 'W', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2489', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '双流区', '510116', '3', 'shuangliuqu', 'S', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2490', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '郫都区', '510117', '3', 'pidouqu', 'P', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2491', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '新津区', '510118', '3', 'xinjinqu', 'X', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2492', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '金堂县', '510121', '3', 'jintangxian', 'J', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2493', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '大邑县', '510129', '3', 'dayixian', 'D', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2494', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '蒲江县', '510131', '3', 'pujiangxian', 'P', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2495', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '都江堰市', '510181', '3', 'dujiangyanshi', 'D', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2496', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '彭州市', '510182', '3', 'pengzhoushi', 'P', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2497', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '邛崃市', '510183', '3', 'qionglaishi', 'Q', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2498', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '崇州市', '510184', '3', 'chongzhoushi', 'C', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2499', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '简阳市', '510185', '3', 'jianyangshi', 'J', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2500', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '自贡市', '5103', '2', 'zigongshi', 'Z', '1', null, '51');
INSERT INTO `system_area` VALUES ('2501', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '自流井区', '510302', '3', 'ziliujingqu', 'Z', '1', null, '5103');
INSERT INTO `system_area` VALUES ('2502', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '贡井区', '510303', '3', 'gongjingqu', 'G', '1', null, '5103');
INSERT INTO `system_area` VALUES ('2503', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '大安区', '510304', '3', 'daanqu', 'D', '1', null, '5103');
INSERT INTO `system_area` VALUES ('2504', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '沿滩区', '510311', '3', 'yantanqu', 'Y', '1', null, '5103');
INSERT INTO `system_area` VALUES ('2505', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '荣县', '510321', '3', 'rongxian', 'R', '1', null, '5103');
INSERT INTO `system_area` VALUES ('2506', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '富顺县', '510322', '3', 'fushunxian', 'F', '1', null, '5103');
INSERT INTO `system_area` VALUES ('2507', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '攀枝花市', '5104', '2', 'panzhihuashi', 'P', '1', null, '51');
INSERT INTO `system_area` VALUES ('2508', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '东区', '510402', '3', 'dongqu', 'D', '1', null, '5104');
INSERT INTO `system_area` VALUES ('2509', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '西区', '510403', '3', 'xiqu', 'X', '1', null, '5104');
INSERT INTO `system_area` VALUES ('2510', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '仁和区', '510411', '3', 'renhequ', 'R', '1', null, '5104');
INSERT INTO `system_area` VALUES ('2511', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '米易县', '510421', '3', 'miyixian', 'M', '1', null, '5104');
INSERT INTO `system_area` VALUES ('2512', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '盐边县', '510422', '3', 'yanbianxian', 'Y', '1', null, '5104');
INSERT INTO `system_area` VALUES ('2513', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '泸州市', '5105', '2', 'luzhoushi', 'L', '1', null, '51');
INSERT INTO `system_area` VALUES ('2514', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '江阳区', '510502', '3', 'jiangyangqu', 'J', '1', null, '5105');
INSERT INTO `system_area` VALUES ('2515', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '纳溪区', '510503', '3', 'naxiqu', 'N', '1', null, '5105');
INSERT INTO `system_area` VALUES ('2516', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '龙马潭区', '510504', '3', 'longmatanqu', 'L', '1', null, '5105');
INSERT INTO `system_area` VALUES ('2517', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '泸县', '510521', '3', 'luxian', 'L', '1', null, '5105');
INSERT INTO `system_area` VALUES ('2518', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '合江县', '510522', '3', 'hejiangxian', 'H', '1', null, '5105');
INSERT INTO `system_area` VALUES ('2519', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '叙永县', '510524', '3', 'xuyongxian', 'X', '1', null, '5105');
INSERT INTO `system_area` VALUES ('2520', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '古蔺县', '510525', '3', 'gulinxian', 'G', '1', null, '5105');
INSERT INTO `system_area` VALUES ('2521', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '德阳市', '5106', '2', 'deyangshi', 'D', '1', null, '51');
INSERT INTO `system_area` VALUES ('2522', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '旌阳区', '510603', '3', 'jingyangqu', 'J', '1', null, '5106');
INSERT INTO `system_area` VALUES ('2523', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '罗江区', '510604', '3', 'luojiangqu', 'L', '1', null, '5106');
INSERT INTO `system_area` VALUES ('2524', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '中江县', '510623', '3', 'zhongjiangxian', 'Z', '1', null, '5106');
INSERT INTO `system_area` VALUES ('2525', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '广汉市', '510681', '3', 'guanghanshi', 'G', '1', null, '5106');
INSERT INTO `system_area` VALUES ('2526', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '什邡市', '510682', '3', 'shenfangshi', 'S', '1', null, '5106');
INSERT INTO `system_area` VALUES ('2527', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '绵竹市', '510683', '3', 'mianzhushi', 'M', '1', null, '5106');
INSERT INTO `system_area` VALUES ('2528', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '绵阳市', '5107', '2', 'mianyangshi', 'M', '1', null, '51');
INSERT INTO `system_area` VALUES ('2529', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '涪城区', '510703', '3', 'fuchengqu', 'F', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2530', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '游仙区', '510704', '3', 'youxianqu', 'Y', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2531', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '安州区', '510705', '3', 'anzhouqu', 'A', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2532', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '三台县', '510722', '3', 'santaixian', 'S', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2533', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '盐亭县', '510723', '3', 'yantingxian', 'Y', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2534', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '梓潼县', '510725', '3', 'zitongxian', 'Z', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2535', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '北川羌族自治县', '510726', '3', 'beichuanqiangzuzizhixian', 'B', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2536', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '平武县', '510727', '3', 'pingwuxian', 'P', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2537', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '江油市', '510781', '3', 'jiangyoushi', 'J', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2538', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '广元市', '5108', '2', 'guangyuanshi', 'G', '1', null, '51');
INSERT INTO `system_area` VALUES ('2539', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '利州区', '510802', '3', 'lizhouqu', 'L', '1', null, '5108');
INSERT INTO `system_area` VALUES ('2540', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '昭化区', '510811', '3', 'zhaohuaqu', 'Z', '1', null, '5108');
INSERT INTO `system_area` VALUES ('2541', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '朝天区', '510812', '3', 'chaotianqu', 'C', '1', null, '5108');
INSERT INTO `system_area` VALUES ('2542', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '旺苍县', '510821', '3', 'wangcangxian', 'W', '1', null, '5108');
INSERT INTO `system_area` VALUES ('2543', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '青川县', '510822', '3', 'qingchuanxian', 'Q', '1', null, '5108');
INSERT INTO `system_area` VALUES ('2544', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '剑阁县', '510823', '3', 'jiangexian', 'J', '1', null, '5108');
INSERT INTO `system_area` VALUES ('2545', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '苍溪县', '510824', '3', 'cangxixian', 'C', '1', null, '5108');
INSERT INTO `system_area` VALUES ('2546', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '遂宁市', '5109', '2', 'suiningshi', 'S', '1', null, '51');
INSERT INTO `system_area` VALUES ('2547', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '船山区', '510903', '3', 'chuanshanqu', 'C', '1', null, '5109');
INSERT INTO `system_area` VALUES ('2548', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '安居区', '510904', '3', 'anjuqu', 'A', '1', null, '5109');
INSERT INTO `system_area` VALUES ('2549', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '蓬溪县', '510921', '3', 'pengxixian', 'P', '1', null, '5109');
INSERT INTO `system_area` VALUES ('2550', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '大英县', '510923', '3', 'dayingxian', 'D', '1', null, '5109');
INSERT INTO `system_area` VALUES ('2551', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '射洪市', '510981', '3', 'shehongshi', 'S', '1', null, '5109');
INSERT INTO `system_area` VALUES ('2552', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '内江市', '5110', '2', 'neijiangshi', 'N', '1', null, '51');
INSERT INTO `system_area` VALUES ('2553', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '市中区', '511002', '3', 'shizhongqu', 'S', '1', null, '5110');
INSERT INTO `system_area` VALUES ('2554', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '东兴区', '511011', '3', 'dongxingqu', 'D', '1', null, '5110');
INSERT INTO `system_area` VALUES ('2555', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '威远县', '511024', '3', 'weiyuanxian', 'W', '1', null, '5110');
INSERT INTO `system_area` VALUES ('2556', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '资中县', '511025', '3', 'zizhongxian', 'Z', '1', null, '5110');
INSERT INTO `system_area` VALUES ('2557', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '内江经济开发区', '511071', '3', 'neijiangjingjikaifaqu', 'N', '1', null, '5110');
INSERT INTO `system_area` VALUES ('2558', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '隆昌市', '511083', '3', 'longchangshi', 'L', '1', null, '5110');
INSERT INTO `system_area` VALUES ('2559', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '乐山市', '5111', '2', 'leshanshi', 'L', '1', null, '51');
INSERT INTO `system_area` VALUES ('2560', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '市中区', '511102', '3', 'shizhongqu', 'S', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2561', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '沙湾区', '511111', '3', 'shawanqu', 'S', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2562', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '五通桥区', '511112', '3', 'wutongqiaoqu', 'W', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2563', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '金口河区', '511113', '3', 'jinkouhequ', 'J', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2564', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '犍为县', '511123', '3', 'qianweixian', 'Q', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2565', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '井研县', '511124', '3', 'jingyanxian', 'J', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2566', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '夹江县', '511126', '3', 'jiajiangxian', 'J', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2567', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '沐川县', '511129', '3', 'muchuanxian', 'M', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2568', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '峨边彝族自治县', '511132', '3', 'ebianyizuzizhixian', 'E', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2569', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '马边彝族自治县', '511133', '3', 'mabianyizuzizhixian', 'M', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2570', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '峨眉山市', '511181', '3', 'emeishanshi', 'E', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2571', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '南充市', '5113', '2', 'nanchongshi', 'N', '1', null, '51');
INSERT INTO `system_area` VALUES ('2572', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '顺庆区', '511302', '3', 'shunqingqu', 'S', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2573', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '高坪区', '511303', '3', 'gaopingqu', 'G', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2574', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '嘉陵区', '511304', '3', 'jialingqu', 'J', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2575', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '南部县', '511321', '3', 'nanbuxian', 'N', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2576', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '营山县', '511322', '3', 'yingshanxian', 'Y', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2577', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '蓬安县', '511323', '3', 'penganxian', 'P', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2578', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '仪陇县', '511324', '3', 'yilongxian', 'Y', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2579', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '西充县', '511325', '3', 'xichongxian', 'X', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2580', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '阆中市', '511381', '3', 'langzhongshi', 'L', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2581', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '眉山市', '5114', '2', 'meishanshi', 'M', '1', null, '51');
INSERT INTO `system_area` VALUES ('2582', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '东坡区', '511402', '3', 'dongpoqu', 'D', '1', null, '5114');
INSERT INTO `system_area` VALUES ('2583', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '彭山区', '511403', '3', 'pengshanqu', 'P', '1', null, '5114');
INSERT INTO `system_area` VALUES ('2584', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '仁寿县', '511421', '3', 'renshouxian', 'R', '1', null, '5114');
INSERT INTO `system_area` VALUES ('2585', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '洪雅县', '511423', '3', 'hongyaxian', 'H', '1', null, '5114');
INSERT INTO `system_area` VALUES ('2586', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '丹棱县', '511424', '3', 'danlengxian', 'D', '1', null, '5114');
INSERT INTO `system_area` VALUES ('2587', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '青神县', '511425', '3', 'qingshenxian', 'Q', '1', null, '5114');
INSERT INTO `system_area` VALUES ('2588', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '宜宾市', '5115', '2', 'yibinshi', 'Y', '1', null, '51');
INSERT INTO `system_area` VALUES ('2589', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '翠屏区', '511502', '3', 'cuipingqu', 'C', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2590', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '南溪区', '511503', '3', 'nanxiqu', 'N', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2591', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '叙州区', '511504', '3', 'xuzhouqu', 'X', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2592', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '江安县', '511523', '3', 'jianganxian', 'J', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2593', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '长宁县', '511524', '3', 'zhangningxian', 'Z', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2594', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '高县', '511525', '3', 'gaoxian', 'G', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2595', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '珙县', '511526', '3', 'gongxian', 'G', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2596', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '筠连县', '511527', '3', 'yunlianxian', 'Y', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2597', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '兴文县', '511528', '3', 'xingwenxian', 'X', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2598', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '屏山县', '511529', '3', 'pingshanxian', 'P', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2599', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '广安市', '5116', '2', 'guanganshi', 'G', '1', null, '51');
INSERT INTO `system_area` VALUES ('2600', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '广安区', '511602', '3', 'guanganqu', 'G', '1', null, '5116');
INSERT INTO `system_area` VALUES ('2601', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '前锋区', '511603', '3', 'qianfengqu', 'Q', '1', null, '5116');
INSERT INTO `system_area` VALUES ('2602', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.361672', '1', '岳池县', '511621', '3', 'yuechixian', 'Y', '1', null, '5116');
INSERT INTO `system_area` VALUES ('2603', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '武胜县', '511622', '3', 'wushengxian', 'W', '1', null, '5116');
INSERT INTO `system_area` VALUES ('2604', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '邻水县', '511623', '3', 'linshuixian', 'L', '1', null, '5116');
INSERT INTO `system_area` VALUES ('2605', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '华蓥市', '511681', '3', 'huayingshi', 'H', '1', null, '5116');
INSERT INTO `system_area` VALUES ('2606', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '达州市', '5117', '2', 'dazhoushi', 'D', '1', null, '51');
INSERT INTO `system_area` VALUES ('2607', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '通川区', '511702', '3', 'tongchuanqu', 'T', '1', null, '5117');
INSERT INTO `system_area` VALUES ('2608', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '达川区', '511703', '3', 'dachuanqu', 'D', '1', null, '5117');
INSERT INTO `system_area` VALUES ('2609', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '宣汉县', '511722', '3', 'xuanhanxian', 'X', '1', null, '5117');
INSERT INTO `system_area` VALUES ('2610', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '开江县', '511723', '3', 'kaijiangxian', 'K', '1', null, '5117');
INSERT INTO `system_area` VALUES ('2611', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '大竹县', '511724', '3', 'dazhuxian', 'D', '1', null, '5117');
INSERT INTO `system_area` VALUES ('2612', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '渠县', '511725', '3', 'quxian', 'Q', '1', null, '5117');
INSERT INTO `system_area` VALUES ('2613', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '达州经济开发区', '511771', '3', 'dazhoujingjikaifaqu', 'D', '1', null, '5117');
INSERT INTO `system_area` VALUES ('2614', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '万源市', '511781', '3', 'wanyuanshi', 'W', '1', null, '5117');
INSERT INTO `system_area` VALUES ('2615', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '雅安市', '5118', '2', 'yaanshi', 'Y', '1', null, '51');
INSERT INTO `system_area` VALUES ('2616', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '雨城区', '511802', '3', 'yuchengqu', 'Y', '1', null, '5118');
INSERT INTO `system_area` VALUES ('2617', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '名山区', '511803', '3', 'mingshanqu', 'M', '1', null, '5118');
INSERT INTO `system_area` VALUES ('2618', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '荥经县', '511822', '3', 'xingjingxian', 'X', '1', null, '5118');
INSERT INTO `system_area` VALUES ('2619', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '汉源县', '511823', '3', 'hanyuanxian', 'H', '1', null, '5118');
INSERT INTO `system_area` VALUES ('2620', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '石棉县', '511824', '3', 'shimianxian', 'S', '1', null, '5118');
INSERT INTO `system_area` VALUES ('2621', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '天全县', '511825', '3', 'tianquanxian', 'T', '1', null, '5118');
INSERT INTO `system_area` VALUES ('2622', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '芦山县', '511826', '3', 'lushanxian', 'L', '1', null, '5118');
INSERT INTO `system_area` VALUES ('2623', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '宝兴县', '511827', '3', 'baoxingxian', 'B', '1', null, '5118');
INSERT INTO `system_area` VALUES ('2624', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '巴中市', '5119', '2', 'bazhongshi', 'B', '1', null, '51');
INSERT INTO `system_area` VALUES ('2625', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '巴州区', '511902', '3', 'bazhouqu', 'B', '1', null, '5119');
INSERT INTO `system_area` VALUES ('2626', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '恩阳区', '511903', '3', 'enyangqu', 'E', '1', null, '5119');
INSERT INTO `system_area` VALUES ('2627', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '通江县', '511921', '3', 'tongjiangxian', 'T', '1', null, '5119');
INSERT INTO `system_area` VALUES ('2628', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '南江县', '511922', '3', 'nanjiangxian', 'N', '1', null, '5119');
INSERT INTO `system_area` VALUES ('2629', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '平昌县', '511923', '3', 'pingchangxian', 'P', '1', null, '5119');
INSERT INTO `system_area` VALUES ('2630', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '巴中经济开发区', '511971', '3', 'bazhongjingjikaifaqu', 'B', '1', null, '5119');
INSERT INTO `system_area` VALUES ('2631', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '资阳市', '5120', '2', 'ziyangshi', 'Z', '1', null, '51');
INSERT INTO `system_area` VALUES ('2632', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.364678', '1', '雁江区', '512002', '3', 'yanjiangqu', 'Y', '1', null, '5120');
INSERT INTO `system_area` VALUES ('2633', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '安岳县', '512021', '3', 'anyuexian', 'A', '1', null, '5120');
INSERT INTO `system_area` VALUES ('2634', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '乐至县', '512022', '3', 'lezhixian', 'L', '1', null, '5120');
INSERT INTO `system_area` VALUES ('2635', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '阿坝藏族羌族自治州', '5132', '2', 'abazangzuqiangzuzizhizhou', 'A', '1', null, '51');
INSERT INTO `system_area` VALUES ('2636', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '马尔康市', '513201', '3', 'maerkangshi', 'M', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2637', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '汶川县', '513221', '3', 'wenchuanxian', 'W', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2638', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '理县', '513222', '3', 'lixian', 'L', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2639', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '茂县', '513223', '3', 'maoxian', 'M', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2640', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '松潘县', '513224', '3', 'songpanxian', 'S', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2641', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '九寨沟县', '513225', '3', 'jiuzhaigouxian', 'J', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2642', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.365682', '1', '金川县', '513226', '3', 'jinchuanxian', 'J', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2643', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '小金县', '513227', '3', 'xiaojinxian', 'X', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2644', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '黑水县', '513228', '3', 'heishuixian', 'H', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2645', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '壤塘县', '513230', '3', 'rangtangxian', 'R', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2646', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '阿坝县', '513231', '3', 'abaxian', 'A', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2647', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '若尔盖县', '513232', '3', 'ruoergaixian', 'R', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2648', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '红原县', '513233', '3', 'hongyuanxian', 'H', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2649', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '甘孜藏族自治州', '5133', '2', 'ganzizangzuzizhizhou', 'G', '1', null, '51');
INSERT INTO `system_area` VALUES ('2650', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '康定市', '513301', '3', 'kangdingshi', 'K', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2651', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '泸定县', '513322', '3', 'ludingxian', 'L', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2652', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.366685', '1', '丹巴县', '513323', '3', 'danbaxian', 'D', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2653', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '九龙县', '513324', '3', 'jiulongxian', 'J', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2654', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '雅江县', '513325', '3', 'yajiangxian', 'Y', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2655', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '道孚县', '513326', '3', 'daofuxian', 'D', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2656', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '炉霍县', '513327', '3', 'luhuoxian', 'L', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2657', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '甘孜县', '513328', '3', 'ganzixian', 'G', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2658', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '新龙县', '513329', '3', 'xinlongxian', 'X', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2659', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '德格县', '513330', '3', 'degexian', 'D', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2660', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '白玉县', '513331', '3', 'baiyuxian', 'B', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2661', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '石渠县', '513332', '3', 'shiquxian', 'S', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2662', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '色达县', '513333', '3', 'sedaxian', 'S', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2663', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '理塘县', '513334', '3', 'litangxian', 'L', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2664', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '巴塘县', '513335', '3', 'batangxian', 'B', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2665', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '乡城县', '513336', '3', 'xiangchengxian', 'X', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2666', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '稻城县', '513337', '3', 'daochengxian', 'D', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2667', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '得荣县', '513338', '3', 'derongxian', 'D', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2668', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '凉山彝族自治州', '5134', '2', 'liangshanyizuzizhizhou', 'L', '1', null, '51');
INSERT INTO `system_area` VALUES ('2669', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '西昌市', '513401', '3', 'xichangshi', 'X', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2670', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '木里藏族自治县', '513422', '3', 'mulizangzuzizhixian', 'M', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2671', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '盐源县', '513423', '3', 'yanyuanxian', 'Y', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2672', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '德昌县', '513424', '3', 'dechangxian', 'D', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2673', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '会理县', '513425', '3', 'huilixian', 'H', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2674', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '会东县', '513426', '3', 'huidongxian', 'H', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2675', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '宁南县', '513427', '3', 'ningnanxian', 'N', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2676', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '普格县', '513428', '3', 'pugexian', 'P', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2677', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '布拖县', '513429', '3', 'butuoxian', 'B', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2678', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '金阳县', '513430', '3', 'jinyangxian', 'J', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2679', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '昭觉县', '513431', '3', 'zhaojuexian', 'Z', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2680', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '喜德县', '513432', '3', 'xidexian', 'X', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2681', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '冕宁县', '513433', '3', 'mianningxian', 'M', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2682', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '越西县', '513434', '3', 'yuexixian', 'Y', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2683', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '甘洛县', '513435', '3', 'ganluoxian', 'G', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2684', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '美姑县', '513436', '3', 'meiguxian', 'M', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2685', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '雷波县', '513437', '3', 'leiboxian', 'L', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2686', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '贵州省', '52', '1', 'guizhousheng', 'G', '1', null, null);
INSERT INTO `system_area` VALUES ('2687', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '贵阳市', '5201', '2', 'guiyangshi', 'G', '1', null, '52');
INSERT INTO `system_area` VALUES ('2688', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '南明区', '520102', '3', 'nanmingqu', 'N', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2689', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '云岩区', '520103', '3', 'yunyanqu', 'Y', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2690', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '花溪区', '520111', '3', 'huaxiqu', 'H', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2691', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '乌当区', '520112', '3', 'wudangqu', 'W', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2692', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '白云区', '520113', '3', 'baiyunqu', 'B', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2693', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '观山湖区', '520115', '3', 'guanshanhuqu', 'G', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2694', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '开阳县', '520121', '3', 'kaiyangxian', 'K', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2695', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '息烽县', '520122', '3', 'xifengxian', 'X', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2696', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '修文县', '520123', '3', 'xiuwenxian', 'X', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2697', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '清镇市', '520181', '3', 'qingzhenshi', 'Q', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2698', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '六盘水市', '5202', '2', 'liupanshuishi', 'L', '1', null, '52');
INSERT INTO `system_area` VALUES ('2699', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '钟山区', '520201', '3', 'zhongshanqu', 'Z', '1', null, '5202');
INSERT INTO `system_area` VALUES ('2700', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '六枝特区', '520203', '3', 'liuzhitequ', 'L', '1', null, '5202');
INSERT INTO `system_area` VALUES ('2701', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '水城县', '520221', '3', 'shuichengxian', 'S', '1', null, '5202');
INSERT INTO `system_area` VALUES ('2702', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '盘州市', '520281', '3', 'panzhoushi', 'P', '1', null, '5202');
INSERT INTO `system_area` VALUES ('2703', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '遵义市', '5203', '2', 'zunyishi', 'Z', '1', null, '52');
INSERT INTO `system_area` VALUES ('2704', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '红花岗区', '520302', '3', 'honghuagangqu', 'H', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2705', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '汇川区', '520303', '3', 'huichuanqu', 'H', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2706', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '播州区', '520304', '3', 'bozhouqu', 'B', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2707', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '桐梓县', '520322', '3', 'tongzixian', 'T', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2708', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '绥阳县', '520323', '3', 'suiyangxian', 'S', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2709', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '正安县', '520324', '3', 'zhenganxian', 'Z', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2710', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.372679', '1', '道真仡佬族苗族自治县', '520325', '3', 'daozhengelaozumiaozuzizhixian', 'D', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2711', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '务川仡佬族苗族自治县', '520326', '3', 'wuchuangelaozumiaozuzizhixian', 'W', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2712', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '凤冈县', '520327', '3', 'fenggangxian', 'F', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2713', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '湄潭县', '520328', '3', 'meitanxian', 'M', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2714', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '余庆县', '520329', '3', 'yuqingxian', 'Y', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2715', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '习水县', '520330', '3', 'xishuixian', 'X', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2716', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '赤水市', '520381', '3', 'chishuishi', 'C', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2717', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '仁怀市', '520382', '3', 'renhuaishi', 'R', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2718', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '安顺市', '5204', '2', 'anshunshi', 'A', '1', null, '52');
INSERT INTO `system_area` VALUES ('2719', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '西秀区', '520402', '3', 'xixiuqu', 'X', '1', null, '5204');
INSERT INTO `system_area` VALUES ('2720', null, null, null, '2022-12-24 14:21:06.373677', '2022-12-24 14:21:06.373677', '1', '平坝区', '520403', '3', 'pingbaqu', 'P', '1', null, '5204');
INSERT INTO `system_area` VALUES ('2721', null, null, null, '2022-12-24 14:21:06.373677', '2022-12-24 14:21:06.373677', '1', '普定县', '520422', '3', 'pudingxian', 'P', '1', null, '5204');
INSERT INTO `system_area` VALUES ('2722', null, null, null, '2022-12-24 14:21:06.373677', '2022-12-24 14:21:06.373677', '1', '镇宁布依族苗族自治县', '520423', '3', 'zhenningbuyizumiaozuzizhixian', 'Z', '1', null, '5204');
INSERT INTO `system_area` VALUES ('2723', null, null, null, '2022-12-24 14:21:06.373677', '2022-12-24 14:21:06.373677', '1', '关岭布依族苗族自治县', '520424', '3', 'guanlingbuyizumiaozuzizhixian', 'G', '1', null, '5204');
INSERT INTO `system_area` VALUES ('2724', null, null, null, '2022-12-24 14:21:06.373677', '2022-12-24 14:21:06.373677', '1', '紫云苗族布依族自治县', '520425', '3', 'ziyunmiaozubuyizuzizhixian', 'Z', '1', null, '5204');
INSERT INTO `system_area` VALUES ('2725', null, null, null, '2022-12-24 14:21:06.373677', '2022-12-24 14:21:06.373677', '1', '毕节市', '5205', '2', 'bijieshi', 'B', '1', null, '52');
INSERT INTO `system_area` VALUES ('2726', null, null, null, '2022-12-24 14:21:06.373677', '2022-12-24 14:21:06.374681', '1', '七星关区', '520502', '3', 'qixingguanqu', 'Q', '1', null, '5205');
INSERT INTO `system_area` VALUES ('2727', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '大方县', '520521', '3', 'dafangxian', 'D', '1', null, '5205');
INSERT INTO `system_area` VALUES ('2728', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '黔西县', '520522', '3', 'qianxixian', 'Q', '1', null, '5205');
INSERT INTO `system_area` VALUES ('2729', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '金沙县', '520523', '3', 'jinshaxian', 'J', '1', null, '5205');
INSERT INTO `system_area` VALUES ('2730', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '织金县', '520524', '3', 'zhijinxian', 'Z', '1', null, '5205');
INSERT INTO `system_area` VALUES ('2731', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '纳雍县', '520525', '3', 'nayongxian', 'N', '1', null, '5205');
INSERT INTO `system_area` VALUES ('2732', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '威宁彝族回族苗族自治县', '520526', '3', 'weiningyizuhuizumiaozuzizhixian', 'W', '1', null, '5205');
INSERT INTO `system_area` VALUES ('2733', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '赫章县', '520527', '3', 'hezhangxian', 'H', '1', null, '5205');
INSERT INTO `system_area` VALUES ('2734', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '铜仁市', '5206', '2', 'tongrenshi', 'T', '1', null, '52');
INSERT INTO `system_area` VALUES ('2735', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '碧江区', '520602', '3', 'bijiangqu', 'B', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2736', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '万山区', '520603', '3', 'wanshanqu', 'W', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2737', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '江口县', '520621', '3', 'jiangkouxian', 'J', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2738', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '玉屏侗族自治县', '520622', '3', 'yupingdongzuzizhixian', 'Y', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2739', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '石阡县', '520623', '3', 'shiqianxian', 'S', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2740', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '思南县', '520624', '3', 'sinanxian', 'S', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2741', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '印江土家族苗族自治县', '520625', '3', 'yinjiangtujiazumiaozuzizhixian', 'Y', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2742', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '德江县', '520626', '3', 'dejiangxian', 'D', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2743', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '沿河土家族自治县', '520627', '3', 'yanhetujiazuzizhixian', 'Y', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2744', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '松桃苗族自治县', '520628', '3', 'songtaomiaozuzizhixian', 'S', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2745', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '黔西南布依族苗族自治州', '5223', '2', 'qianxinanbuyizumiaozuzizhizhou', 'Q', '1', null, '52');
INSERT INTO `system_area` VALUES ('2746', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '兴义市', '522301', '3', 'xingyishi', 'X', '1', null, '5223');
INSERT INTO `system_area` VALUES ('2747', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '兴仁市', '522302', '3', 'xingrenshi', 'X', '1', null, '5223');
INSERT INTO `system_area` VALUES ('2748', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '普安县', '522323', '3', 'puanxian', 'P', '1', null, '5223');
INSERT INTO `system_area` VALUES ('2749', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '晴隆县', '522324', '3', 'qinglongxian', 'Q', '1', null, '5223');
INSERT INTO `system_area` VALUES ('2750', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '贞丰县', '522325', '3', 'zhenfengxian', 'Z', '1', null, '5223');
INSERT INTO `system_area` VALUES ('2751', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '望谟县', '522326', '3', 'wangmoxian', 'W', '1', null, '5223');
INSERT INTO `system_area` VALUES ('2752', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '册亨县', '522327', '3', 'cehengxian', 'C', '1', null, '5223');
INSERT INTO `system_area` VALUES ('2753', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '安龙县', '522328', '3', 'anlongxian', 'A', '1', null, '5223');
INSERT INTO `system_area` VALUES ('2754', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '黔东南苗族侗族自治州', '5226', '2', 'qiandongnanmiaozudongzuzizhizhou', 'Q', '1', null, '52');
INSERT INTO `system_area` VALUES ('2755', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '凯里市', '522601', '3', 'kailishi', 'K', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2756', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '黄平县', '522622', '3', 'huangpingxian', 'H', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2757', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '施秉县', '522623', '3', 'shibingxian', 'S', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2758', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '三穗县', '522624', '3', 'sansuixian', 'S', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2759', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '镇远县', '522625', '3', 'zhenyuanxian', 'Z', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2760', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '岑巩县', '522626', '3', 'cengongxian', 'C', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2761', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '天柱县', '522627', '3', 'tianzhuxian', 'T', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2762', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '锦屏县', '522628', '3', 'jinpingxian', 'J', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2763', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '剑河县', '522629', '3', 'jianhexian', 'J', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2764', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '台江县', '522630', '3', 'taijiangxian', 'T', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2765', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.378674', '1', '黎平县', '522631', '3', 'lipingxian', 'L', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2766', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '榕江县', '522632', '3', 'rongjiangxian', 'R', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2767', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '从江县', '522633', '3', 'congjiangxian', 'C', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2768', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '雷山县', '522634', '3', 'leishanxian', 'L', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2769', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '麻江县', '522635', '3', 'majiangxian', 'M', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2770', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '丹寨县', '522636', '3', 'danzhaixian', 'D', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2771', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '黔南布依族苗族自治州', '5227', '2', 'qiannanbuyizumiaozuzizhizhou', 'Q', '1', null, '52');
INSERT INTO `system_area` VALUES ('2772', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '都匀市', '522701', '3', 'douyunshi', 'D', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2773', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '福泉市', '522702', '3', 'fuquanshi', 'F', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2774', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '荔波县', '522722', '3', 'liboxian', 'L', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2775', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '贵定县', '522723', '3', 'guidingxian', 'G', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2776', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '瓮安县', '522725', '3', 'wenganxian', 'W', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2777', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '独山县', '522726', '3', 'dushanxian', 'D', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2778', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '平塘县', '522727', '3', 'pingtangxian', 'P', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2779', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '罗甸县', '522728', '3', 'luodianxian', 'L', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2780', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '长顺县', '522729', '3', 'zhangshunxian', 'Z', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2781', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '龙里县', '522730', '3', 'longlixian', 'L', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2782', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '惠水县', '522731', '3', 'huishuixian', 'H', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2783', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '三都水族自治县', '522732', '3', 'sandoushuizuzizhixian', 'S', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2784', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '云南省', '53', '1', 'yunnansheng', 'Y', '1', null, null);
INSERT INTO `system_area` VALUES ('2785', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '昆明市', '5301', '2', 'kunmingshi', 'K', '1', null, '53');
INSERT INTO `system_area` VALUES ('2786', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '五华区', '530102', '3', 'wuhuaqu', 'W', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2787', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '盘龙区', '530103', '3', 'panlongqu', 'P', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2788', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '官渡区', '530111', '3', 'guanduqu', 'G', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2789', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '西山区', '530112', '3', 'xishanqu', 'X', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2790', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '东川区', '530113', '3', 'dongchuanqu', 'D', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2791', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '呈贡区', '530114', '3', 'chenggongqu', 'C', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2792', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '晋宁区', '530115', '3', 'jinningqu', 'J', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2793', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '富民县', '530124', '3', 'fuminxian', 'F', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2794', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.381677', '1', '宜良县', '530125', '3', 'yiliangxian', 'Y', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2795', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '石林彝族自治县', '530126', '3', 'shilinyizuzizhixian', 'S', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2796', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '嵩明县', '530127', '3', 'songmingxian', 'S', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2797', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '禄劝彝族苗族自治县', '530128', '3', 'luquanyizumiaozuzizhixian', 'L', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2798', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '寻甸回族彝族自治县', '530129', '3', 'xundianhuizuyizuzizhixian', 'X', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2799', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '安宁市', '530181', '3', 'anningshi', 'A', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2800', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '曲靖市', '5303', '2', 'qujingshi', 'Q', '1', null, '53');
INSERT INTO `system_area` VALUES ('2801', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '麒麟区', '530302', '3', 'qilinqu', 'Q', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2802', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '沾益区', '530303', '3', 'zhanyiqu', 'Z', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2803', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '马龙区', '530304', '3', 'malongqu', 'M', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2804', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '陆良县', '530322', '3', 'luliangxian', 'L', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2805', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '师宗县', '530323', '3', 'shizongxian', 'S', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2806', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '罗平县', '530324', '3', 'luopingxian', 'L', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2807', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '富源县', '530325', '3', 'fuyuanxian', 'F', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2808', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '会泽县', '530326', '3', 'huizexian', 'H', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2809', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '宣威市', '530381', '3', 'xuanweishi', 'X', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2810', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '玉溪市', '5304', '2', 'yuxishi', 'Y', '1', null, '53');
INSERT INTO `system_area` VALUES ('2811', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '红塔区', '530402', '3', 'hongtaqu', 'H', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2812', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '江川区', '530403', '3', 'jiangchuanqu', 'J', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2813', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '通海县', '530423', '3', 'tonghaixian', 'T', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2814', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '华宁县', '530424', '3', 'huaningxian', 'H', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2815', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '易门县', '530425', '3', 'yimenxian', 'Y', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2816', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '峨山彝族自治县', '530426', '3', 'eshanyizuzizhixian', 'E', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2817', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '新平彝族傣族自治县', '530427', '3', 'xinpingyizudaizuzizhixian', 'X', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2818', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '元江哈尼族彝族傣族自治县', '530428', '3', 'yuanjianghanizuyizudaizuzizhixian', 'Y', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2819', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '澄江市', '530481', '3', 'chengjiangshi', 'C', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2820', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '保山市', '5305', '2', 'baoshanshi', 'B', '1', null, '53');
INSERT INTO `system_area` VALUES ('2821', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '隆阳区', '530502', '3', 'longyangqu', 'L', '1', null, '5305');
INSERT INTO `system_area` VALUES ('2822', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '施甸县', '530521', '3', 'shidianxian', 'S', '1', null, '5305');
INSERT INTO `system_area` VALUES ('2823', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '龙陵县', '530523', '3', 'longlingxian', 'L', '1', null, '5305');
INSERT INTO `system_area` VALUES ('2824', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '昌宁县', '530524', '3', 'changningxian', 'C', '1', null, '5305');
INSERT INTO `system_area` VALUES ('2825', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '腾冲市', '530581', '3', 'tengchongshi', 'T', '1', null, '5305');
INSERT INTO `system_area` VALUES ('2826', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '昭通市', '5306', '2', 'zhaotongshi', 'Z', '1', null, '53');
INSERT INTO `system_area` VALUES ('2827', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '昭阳区', '530602', '3', 'zhaoyangqu', 'Z', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2828', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '鲁甸县', '530621', '3', 'ludianxian', 'L', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2829', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '巧家县', '530622', '3', 'qiaojiaxian', 'Q', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2830', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '盐津县', '530623', '3', 'yanjinxian', 'Y', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2831', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '大关县', '530624', '3', 'daguanxian', 'D', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2832', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '永善县', '530625', '3', 'yongshanxian', 'Y', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2833', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '绥江县', '530626', '3', 'suijiangxian', 'S', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2834', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.384676', '1', '镇雄县', '530627', '3', 'zhenxiongxian', 'Z', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2835', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '彝良县', '530628', '3', 'yiliangxian', 'Y', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2836', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '威信县', '530629', '3', 'weixinxian', 'W', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2837', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '水富市', '530681', '3', 'shuifushi', 'S', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2838', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '丽江市', '5307', '2', 'lijiangshi', 'L', '1', null, '53');
INSERT INTO `system_area` VALUES ('2839', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '古城区', '530702', '3', 'guchengqu', 'G', '1', null, '5307');
INSERT INTO `system_area` VALUES ('2840', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '玉龙纳西族自治县', '530721', '3', 'yulongnaxizuzizhixian', 'Y', '1', null, '5307');
INSERT INTO `system_area` VALUES ('2841', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '永胜县', '530722', '3', 'yongshengxian', 'Y', '1', null, '5307');
INSERT INTO `system_area` VALUES ('2842', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '华坪县', '530723', '3', 'huapingxian', 'H', '1', null, '5307');
INSERT INTO `system_area` VALUES ('2843', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '宁蒗彝族自治县', '530724', '3', 'ninglangyizuzizhixian', 'N', '1', null, '5307');
INSERT INTO `system_area` VALUES ('2844', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '普洱市', '5308', '2', 'puershi', 'P', '1', null, '53');
INSERT INTO `system_area` VALUES ('2845', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '思茅区', '530802', '3', 'simaoqu', 'S', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2846', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '宁洱哈尼族彝族自治县', '530821', '3', 'ningerhanizuyizuzizhixian', 'N', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2847', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '墨江哈尼族自治县', '530822', '3', 'mojianghanizuzizhixian', 'M', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2848', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '景东彝族自治县', '530823', '3', 'jingdongyizuzizhixian', 'J', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2849', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '景谷傣族彝族自治县', '530824', '3', 'jinggudaizuyizuzizhixian', 'J', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2850', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '镇沅彝族哈尼族拉祜族自治县', '530825', '3', 'zhenyuanyizuhanizulahuzuzizhixian', 'Z', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2851', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '江城哈尼族彝族自治县', '530826', '3', 'jiangchenghanizuyizuzizhixian', 'J', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2852', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '孟连傣族拉祜族佤族自治县', '530827', '3', 'mengliandaizulahuzuwazuzizhixian', 'M', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2853', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '澜沧拉祜族自治县', '530828', '3', 'lancanglahuzuzizhixian', 'L', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2854', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '西盟佤族自治县', '530829', '3', 'ximengwazuzizhixian', 'X', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2855', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '临沧市', '5309', '2', 'lincangshi', 'L', '1', null, '53');
INSERT INTO `system_area` VALUES ('2856', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '临翔区', '530902', '3', 'linxiangqu', 'L', '1', null, '5309');
INSERT INTO `system_area` VALUES ('2857', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '凤庆县', '530921', '3', 'fengqingxian', 'F', '1', null, '5309');
INSERT INTO `system_area` VALUES ('2858', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '云县', '530922', '3', 'yunxian', 'Y', '1', null, '5309');
INSERT INTO `system_area` VALUES ('2859', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '永德县', '530923', '3', 'yongdexian', 'Y', '1', null, '5309');
INSERT INTO `system_area` VALUES ('2860', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '镇康县', '530924', '3', 'zhenkangxian', 'Z', '1', null, '5309');
INSERT INTO `system_area` VALUES ('2861', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '双江拉祜族佤族布朗族傣族自治县', '530925', '3', 'shuangjianglahuzuwazubulangzudaizuzizhixian', 'S', '1', null, '5309');
INSERT INTO `system_area` VALUES ('2862', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.386679', '1', '耿马傣族佤族自治县', '530926', '3', 'gengmadaizuwazuzizhixian', 'G', '1', null, '5309');
INSERT INTO `system_area` VALUES ('2863', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '沧源佤族自治县', '530927', '3', 'cangyuanwazuzizhixian', 'C', '1', null, '5309');
INSERT INTO `system_area` VALUES ('2864', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '楚雄彝族自治州', '5323', '2', 'chuxiongyizuzizhizhou', 'C', '1', null, '53');
INSERT INTO `system_area` VALUES ('2865', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '楚雄市', '532301', '3', 'chuxiongshi', 'C', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2866', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '双柏县', '532322', '3', 'shuangbaixian', 'S', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2867', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '牟定县', '532323', '3', 'moudingxian', 'M', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2868', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '南华县', '532324', '3', 'nanhuaxian', 'N', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2869', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '姚安县', '532325', '3', 'yaoanxian', 'Y', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2870', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '大姚县', '532326', '3', 'dayaoxian', 'D', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2871', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '永仁县', '532327', '3', 'yongrenxian', 'Y', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2872', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '元谋县', '532328', '3', 'yuanmouxian', 'Y', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2873', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '武定县', '532329', '3', 'wudingxian', 'W', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2874', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '禄丰县', '532331', '3', 'lufengxian', 'L', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2875', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '红河哈尼族彝族自治州', '5325', '2', 'honghehanizuyizuzizhizhou', 'H', '1', null, '53');
INSERT INTO `system_area` VALUES ('2876', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '个旧市', '532501', '3', 'gejiushi', 'G', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2877', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '开远市', '532502', '3', 'kaiyuanshi', 'K', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2878', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '蒙自市', '532503', '3', 'mengzishi', 'M', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2879', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '弥勒市', '532504', '3', 'mileshi', 'M', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2880', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '屏边苗族自治县', '532523', '3', 'pingbianmiaozuzizhixian', 'P', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2881', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '建水县', '532524', '3', 'jianshuixian', 'J', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2882', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '石屏县', '532525', '3', 'shipingxian', 'S', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2883', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '泸西县', '532527', '3', 'luxixian', 'L', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2884', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '元阳县', '532528', '3', 'yuanyangxian', 'Y', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2885', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '红河县', '532529', '3', 'honghexian', 'H', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2886', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '金平苗族瑶族傣族自治县', '532530', '3', 'jinpingmiaozuyaozudaizuzizhixian', 'J', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2887', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '绿春县', '532531', '3', 'lvchunxian', 'L', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2888', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '河口瑶族自治县', '532532', '3', 'hekouyaozuzizhixian', 'H', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2889', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '文山壮族苗族自治州', '5326', '2', 'wenshanzhuangzumiaozuzizhizhou', 'W', '1', null, '53');
INSERT INTO `system_area` VALUES ('2890', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '文山市', '532601', '3', 'wenshanshi', 'W', '1', null, '5326');
INSERT INTO `system_area` VALUES ('2891', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '砚山县', '532622', '3', 'yanshanxian', 'Y', '1', null, '5326');
INSERT INTO `system_area` VALUES ('2892', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '西畴县', '532623', '3', 'xichouxian', 'X', '1', null, '5326');
INSERT INTO `system_area` VALUES ('2893', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '麻栗坡县', '532624', '3', 'malipoxian', 'M', '1', null, '5326');
INSERT INTO `system_area` VALUES ('2894', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '马关县', '532625', '3', 'maguanxian', 'M', '1', null, '5326');
INSERT INTO `system_area` VALUES ('2895', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '丘北县', '532626', '3', 'qiubeixian', 'Q', '1', null, '5326');
INSERT INTO `system_area` VALUES ('2896', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '广南县', '532627', '3', 'guangnanxian', 'G', '1', null, '5326');
INSERT INTO `system_area` VALUES ('2897', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '富宁县', '532628', '3', 'funingxian', 'F', '1', null, '5326');
INSERT INTO `system_area` VALUES ('2898', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '西双版纳傣族自治州', '5328', '2', 'xishuangbannadaizuzizhizhou', 'X', '1', null, '53');
INSERT INTO `system_area` VALUES ('2899', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '景洪市', '532801', '3', 'jinghongshi', 'J', '1', null, '5328');
INSERT INTO `system_area` VALUES ('2900', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '勐海县', '532822', '3', 'menghaixian', 'M', '1', null, '5328');
INSERT INTO `system_area` VALUES ('2901', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '勐腊县', '532823', '3', 'menglaxian', 'M', '1', null, '5328');
INSERT INTO `system_area` VALUES ('2902', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '大理白族自治州', '5329', '2', 'dalibaizuzizhizhou', 'D', '1', null, '53');
INSERT INTO `system_area` VALUES ('2903', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '大理市', '532901', '3', 'dalishi', 'D', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2904', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '漾濞彝族自治县', '532922', '3', 'yangbiyizuzizhixian', 'Y', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2905', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '祥云县', '532923', '3', 'xiangyunxian', 'X', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2906', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '宾川县', '532924', '3', 'binchuanxian', 'B', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2907', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '弥渡县', '532925', '3', 'miduxian', 'M', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2908', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '南涧彝族自治县', '532926', '3', 'nanjianyizuzizhixian', 'N', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2909', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '巍山彝族回族自治县', '532927', '3', 'weishanyizuhuizuzizhixian', 'W', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2910', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '永平县', '532928', '3', 'yongpingxian', 'Y', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2911', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '云龙县', '532929', '3', 'yunlongxian', 'Y', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2912', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '洱源县', '532930', '3', 'eryuanxian', 'E', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2913', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '剑川县', '532931', '3', 'jianchuanxian', 'J', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2914', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '鹤庆县', '532932', '3', 'heqingxian', 'H', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2915', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '德宏傣族景颇族自治州', '5331', '2', 'dehongdaizujingpozuzizhizhou', 'D', '1', null, '53');
INSERT INTO `system_area` VALUES ('2916', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '瑞丽市', '533102', '3', 'ruilishi', 'R', '1', null, '5331');
INSERT INTO `system_area` VALUES ('2917', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '芒市', '533103', '3', 'mangshi', 'M', '1', null, '5331');
INSERT INTO `system_area` VALUES ('2918', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '梁河县', '533122', '3', 'lianghexian', 'L', '1', null, '5331');
INSERT INTO `system_area` VALUES ('2919', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '盈江县', '533123', '3', 'yingjiangxian', 'Y', '1', null, '5331');
INSERT INTO `system_area` VALUES ('2920', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '陇川县', '533124', '3', 'longchuanxian', 'L', '1', null, '5331');
INSERT INTO `system_area` VALUES ('2921', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '怒江傈僳族自治州', '5333', '2', 'nujianglisuzuzizhizhou', 'N', '1', null, '53');
INSERT INTO `system_area` VALUES ('2922', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '泸水市', '533301', '3', 'lushuishi', 'L', '1', null, '5333');
INSERT INTO `system_area` VALUES ('2923', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '福贡县', '533323', '3', 'fugongxian', 'F', '1', null, '5333');
INSERT INTO `system_area` VALUES ('2924', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '贡山独龙族怒族自治县', '533324', '3', 'gongshandulongzunuzuzizhixian', 'G', '1', null, '5333');
INSERT INTO `system_area` VALUES ('2925', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '兰坪白族普米族自治县', '533325', '3', 'lanpingbaizupumizuzizhixian', 'L', '1', null, '5333');
INSERT INTO `system_area` VALUES ('2926', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '迪庆藏族自治州', '5334', '2', 'diqingzangzuzizhizhou', 'D', '1', null, '53');
INSERT INTO `system_area` VALUES ('2927', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '香格里拉市', '533401', '3', 'xianggelilashi', 'X', '1', null, '5334');
INSERT INTO `system_area` VALUES ('2928', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '德钦县', '533422', '3', 'deqinxian', 'D', '1', null, '5334');
INSERT INTO `system_area` VALUES ('2929', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '维西傈僳族自治县', '533423', '3', 'weixilisuzuzizhixian', 'W', '1', null, '5334');
INSERT INTO `system_area` VALUES ('2930', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '西藏自治区', '54', '1', 'xizangzizhiqu', 'X', '1', null, null);
INSERT INTO `system_area` VALUES ('2931', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '拉萨市', '5401', '2', 'lasashi', 'L', '1', null, '54');
INSERT INTO `system_area` VALUES ('2932', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '城关区', '540102', '3', 'chengguanqu', 'C', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2933', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '堆龙德庆区', '540103', '3', 'duilongdeqingqu', 'D', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2934', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '达孜区', '540104', '3', 'daziqu', 'D', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2935', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '林周县', '540121', '3', 'linzhouxian', 'L', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2936', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '当雄县', '540122', '3', 'dangxiongxian', 'D', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2937', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '尼木县', '540123', '3', 'nimuxian', 'N', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2938', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '曲水县', '540124', '3', 'qushuixian', 'Q', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2939', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '墨竹工卡县', '540127', '3', 'mozhugongkaxian', 'M', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2940', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '格尔木藏青工业园区', '540171', '3', 'geermuzangqinggongyeyuanqu', 'G', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2941', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '拉萨经济技术开发区', '540172', '3', 'lasajingjijishukaifaqu', 'L', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2942', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '西藏文化旅游创意园区', '540173', '3', 'xizangwenhualvyouchuangyiyuanqu', 'X', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2943', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '达孜工业园区', '540174', '3', 'dazigongyeyuanqu', 'D', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2944', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '日喀则市', '5402', '2', 'rikazeshi', 'R', '1', null, '54');
INSERT INTO `system_area` VALUES ('2945', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '桑珠孜区', '540202', '3', 'sangzhuziqu', 'S', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2946', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '南木林县', '540221', '3', 'nanmulinxian', 'N', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2947', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '江孜县', '540222', '3', 'jiangzixian', 'J', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2948', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '定日县', '540223', '3', 'dingrixian', 'D', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2949', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '萨迦县', '540224', '3', 'sajiaxian', 'S', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2950', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '拉孜县', '540225', '3', 'lazixian', 'L', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2951', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '昂仁县', '540226', '3', 'angrenxian', 'A', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2952', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '谢通门县', '540227', '3', 'xietongmenxian', 'X', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2953', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '白朗县', '540228', '3', 'bailangxian', 'B', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2954', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '仁布县', '540229', '3', 'renbuxian', 'R', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2955', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '康马县', '540230', '3', 'kangmaxian', 'K', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2956', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '定结县', '540231', '3', 'dingjiexian', 'D', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2957', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '仲巴县', '540232', '3', 'zhongbaxian', 'Z', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2958', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '亚东县', '540233', '3', 'yadongxian', 'Y', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2959', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '吉隆县', '540234', '3', 'jilongxian', 'J', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2960', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '聂拉木县', '540235', '3', 'nielamuxian', 'N', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2961', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '萨嘎县', '540236', '3', 'sagaxian', 'S', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2962', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '岗巴县', '540237', '3', 'gangbaxian', 'G', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2963', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '昌都市', '5403', '2', 'changdushi', 'C', '1', null, '54');
INSERT INTO `system_area` VALUES ('2964', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.392669', '1', '卡若区', '540302', '3', 'karuoqu', 'K', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2965', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '江达县', '540321', '3', 'jiangdaxian', 'J', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2966', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '贡觉县', '540322', '3', 'gongjuexian', 'G', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2967', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '类乌齐县', '540323', '3', 'leiwuqixian', 'L', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2968', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '丁青县', '540324', '3', 'dingqingxian', 'D', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2969', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '察雅县', '540325', '3', 'chayaxian', 'C', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2970', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '八宿县', '540326', '3', 'basuxian', 'B', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2971', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '左贡县', '540327', '3', 'zuogongxian', 'Z', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2972', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '芒康县', '540328', '3', 'mangkangxian', 'M', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2973', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '洛隆县', '540329', '3', 'luolongxian', 'L', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2974', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '边坝县', '540330', '3', 'bianbaxian', 'B', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2975', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '林芝市', '5404', '2', 'linzhishi', 'L', '1', null, '54');
INSERT INTO `system_area` VALUES ('2976', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '巴宜区', '540402', '3', 'bayiqu', 'B', '1', null, '5404');
INSERT INTO `system_area` VALUES ('2977', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '工布江达县', '540421', '3', 'gongbujiangdaxian', 'G', '1', null, '5404');
INSERT INTO `system_area` VALUES ('2978', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '米林县', '540422', '3', 'milinxian', 'M', '1', null, '5404');
INSERT INTO `system_area` VALUES ('2979', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '墨脱县', '540423', '3', 'motuoxian', 'M', '1', null, '5404');
INSERT INTO `system_area` VALUES ('2980', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '波密县', '540424', '3', 'bomixian', 'B', '1', null, '5404');
INSERT INTO `system_area` VALUES ('2981', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '察隅县', '540425', '3', 'chayuxian', 'C', '1', null, '5404');
INSERT INTO `system_area` VALUES ('2982', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '朗县', '540426', '3', 'langxian', 'L', '1', null, '5404');
INSERT INTO `system_area` VALUES ('2983', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '山南市', '5405', '2', 'shannanshi', 'S', '1', null, '54');
INSERT INTO `system_area` VALUES ('2984', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '乃东区', '540502', '3', 'naidongqu', 'N', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2985', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '扎囊县', '540521', '3', 'zhanangxian', 'Z', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2986', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '贡嘎县', '540522', '3', 'gonggaxian', 'G', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2987', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '桑日县', '540523', '3', 'sangrixian', 'S', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2988', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '琼结县', '540524', '3', 'qiongjiexian', 'Q', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2989', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '曲松县', '540525', '3', 'qusongxian', 'Q', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2990', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '措美县', '540526', '3', 'cuomeixian', 'C', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2991', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '洛扎县', '540527', '3', 'luozhaxian', 'L', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2992', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '加查县', '540528', '3', 'jiachaxian', 'J', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2993', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '隆子县', '540529', '3', 'longzixian', 'L', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2994', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '错那县', '540530', '3', 'cuonaxian', 'C', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2995', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '浪卡子县', '540531', '3', 'langqiazixian', 'L', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2996', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '那曲市', '5406', '2', 'naqushi', 'N', '1', null, '54');
INSERT INTO `system_area` VALUES ('2997', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '色尼区', '540602', '3', 'seniqu', 'S', '1', null, '5406');
INSERT INTO `system_area` VALUES ('2998', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.394669', '1', '嘉黎县', '540621', '3', 'jialixian', 'J', '1', null, '5406');
INSERT INTO `system_area` VALUES ('2999', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '比如县', '540622', '3', 'biruxian', 'B', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3000', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '聂荣县', '540623', '3', 'nierongxian', 'N', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3001', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '安多县', '540624', '3', 'anduoxian', 'A', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3002', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '申扎县', '540625', '3', 'shenzhaxian', 'S', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3003', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '索县', '540626', '3', 'suoxian', 'S', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3004', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '班戈县', '540627', '3', 'bangexian', 'B', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3005', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '巴青县', '540628', '3', 'baqingxian', 'B', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3006', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '尼玛县', '540629', '3', 'nimaxian', 'N', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3007', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '双湖县', '540630', '3', 'shuanghuxian', 'S', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3008', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '阿里地区', '5425', '2', 'alidiqu', 'A', '1', null, '54');
INSERT INTO `system_area` VALUES ('3009', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '普兰县', '542521', '3', 'pulanxian', 'P', '1', null, '5425');
INSERT INTO `system_area` VALUES ('3010', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '札达县', '542522', '3', 'zhadaxian', 'Z', '1', null, '5425');
INSERT INTO `system_area` VALUES ('3011', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '噶尔县', '542523', '3', 'gaerxian', 'G', '1', null, '5425');
INSERT INTO `system_area` VALUES ('3012', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '日土县', '542524', '3', 'rituxian', 'R', '1', null, '5425');
INSERT INTO `system_area` VALUES ('3013', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '革吉县', '542525', '3', 'gejixian', 'G', '1', null, '5425');
INSERT INTO `system_area` VALUES ('3014', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '改则县', '542526', '3', 'gaizexian', 'G', '1', null, '5425');
INSERT INTO `system_area` VALUES ('3015', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '措勤县', '542527', '3', 'cuoqinxian', 'C', '1', null, '5425');
INSERT INTO `system_area` VALUES ('3016', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '陕西省', '61', '1', 'shanxisheng', 'S', '1', null, null);
INSERT INTO `system_area` VALUES ('3017', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '西安市', '6101', '2', 'xianshi', 'X', '1', null, '61');
INSERT INTO `system_area` VALUES ('3018', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '新城区', '610102', '3', 'xinchengqu', 'X', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3019', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '碑林区', '610103', '3', 'beilinqu', 'B', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3020', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '莲湖区', '610104', '3', 'lianhuqu', 'L', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3021', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '灞桥区', '610111', '3', 'baqiaoqu', 'B', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3022', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '未央区', '610112', '3', 'weiyangqu', 'W', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3023', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '雁塔区', '610113', '3', 'yantaqu', 'Y', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3024', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '阎良区', '610114', '3', 'yanliangqu', 'Y', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3025', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '临潼区', '610115', '3', 'lintongqu', 'L', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3026', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '长安区', '610116', '3', 'changanqu', 'C', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3027', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '高陵区', '610117', '3', 'gaolingqu', 'G', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3028', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '鄠邑区', '610118', '3', 'huyiqu', 'H', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3029', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '蓝田县', '610122', '3', 'lantianxian', 'L', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3030', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '周至县', '610124', '3', 'zhouzhixian', 'Z', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3031', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '铜川市', '6102', '2', 'tongchuanshi', 'T', '1', null, '61');
INSERT INTO `system_area` VALUES ('3032', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.396669', '1', '王益区', '610202', '3', 'wangyiqu', 'W', '1', null, '6102');
INSERT INTO `system_area` VALUES ('3033', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '印台区', '610203', '3', 'yintaiqu', 'Y', '1', null, '6102');
INSERT INTO `system_area` VALUES ('3034', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '耀州区', '610204', '3', 'yaozhouqu', 'Y', '1', null, '6102');
INSERT INTO `system_area` VALUES ('3035', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '宜君县', '610222', '3', 'yijunxian', 'Y', '1', null, '6102');
INSERT INTO `system_area` VALUES ('3036', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '宝鸡市', '6103', '2', 'baojishi', 'B', '1', null, '61');
INSERT INTO `system_area` VALUES ('3037', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '渭滨区', '610302', '3', 'weibinqu', 'W', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3038', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '金台区', '610303', '3', 'jintaiqu', 'J', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3039', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '陈仓区', '610304', '3', 'chencangqu', 'C', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3040', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '凤翔县', '610322', '3', 'fengxiangxian', 'F', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3041', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '岐山县', '610323', '3', 'qishanxian', 'Q', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3042', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '扶风县', '610324', '3', 'fufengxian', 'F', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3043', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '眉县', '610326', '3', 'meixian', 'M', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3044', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '陇县', '610327', '3', 'longxian', 'L', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3045', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '千阳县', '610328', '3', 'qianyangxian', 'Q', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3046', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '麟游县', '610329', '3', 'linyouxian', 'L', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3047', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '凤县', '610330', '3', 'fengxian', 'F', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3048', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '太白县', '610331', '3', 'taibaixian', 'T', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3049', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '咸阳市', '6104', '2', 'xianyangshi', 'X', '1', null, '61');
INSERT INTO `system_area` VALUES ('3050', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '秦都区', '610402', '3', 'qindouqu', 'Q', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3051', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '杨陵区', '610403', '3', 'yanglingqu', 'Y', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3052', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '渭城区', '610404', '3', 'weichengqu', 'W', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3053', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '三原县', '610422', '3', 'sanyuanxian', 'S', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3054', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '泾阳县', '610423', '3', 'jingyangxian', 'J', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3055', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '乾县', '610424', '3', 'qianxian', 'Q', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3056', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '礼泉县', '610425', '3', 'liquanxian', 'L', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3057', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '永寿县', '610426', '3', 'yongshouxian', 'Y', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3058', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '长武县', '610428', '3', 'zhangwuxian', 'Z', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3059', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '旬邑县', '610429', '3', 'xunyixian', 'X', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3060', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '淳化县', '610430', '3', 'chunhuaxian', 'C', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3061', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '武功县', '610431', '3', 'wugongxian', 'W', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3062', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '兴平市', '610481', '3', 'xingpingshi', 'X', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3063', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '彬州市', '610482', '3', 'binzhoushi', 'B', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3064', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '渭南市', '6105', '2', 'weinanshi', 'W', '1', null, '61');
INSERT INTO `system_area` VALUES ('3065', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '临渭区', '610502', '3', 'linweiqu', 'L', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3066', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '华州区', '610503', '3', 'huazhouqu', 'H', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3067', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '潼关县', '610522', '3', 'tongguanxian', 'T', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3068', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '大荔县', '610523', '3', 'dalixian', 'D', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3069', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '合阳县', '610524', '3', 'heyangxian', 'H', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3070', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '澄城县', '610525', '3', 'chengchengxian', 'C', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3071', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '蒲城县', '610526', '3', 'puchengxian', 'P', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3072', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '白水县', '610527', '3', 'baishuixian', 'B', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3073', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '富平县', '610528', '3', 'fupingxian', 'F', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3074', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '韩城市', '610581', '3', 'hanchengshi', 'H', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3075', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '华阴市', '610582', '3', 'huayinshi', 'H', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3076', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '延安市', '6106', '2', 'yananshi', 'Y', '1', null, '61');
INSERT INTO `system_area` VALUES ('3077', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '宝塔区', '610602', '3', 'baotaqu', 'B', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3078', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '安塞区', '610603', '3', 'ansaiqu', 'A', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3079', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '延长县', '610621', '3', 'yanchangxian', 'Y', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3080', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '延川县', '610622', '3', 'yanchuanxian', 'Y', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3081', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '志丹县', '610625', '3', 'zhidanxian', 'Z', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3082', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '吴起县', '610626', '3', 'wuqixian', 'W', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3083', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '甘泉县', '610627', '3', 'ganquanxian', 'G', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3084', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.399669', '1', '富县', '610628', '3', 'fuxian', 'F', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3085', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '洛川县', '610629', '3', 'luochuanxian', 'L', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3086', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '宜川县', '610630', '3', 'yichuanxian', 'Y', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3087', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '黄龙县', '610631', '3', 'huanglongxian', 'H', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3088', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '黄陵县', '610632', '3', 'huanglingxian', 'H', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3089', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '子长市', '610681', '3', 'zizhangshi', 'Z', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3090', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '汉中市', '6107', '2', 'hanzhongshi', 'H', '1', null, '61');
INSERT INTO `system_area` VALUES ('3091', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '汉台区', '610702', '3', 'hantaiqu', 'H', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3092', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '南郑区', '610703', '3', 'nanzhengqu', 'N', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3093', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '城固县', '610722', '3', 'chengguxian', 'C', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3094', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '洋县', '610723', '3', 'yangxian', 'Y', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3095', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '西乡县', '610724', '3', 'xixiangxian', 'X', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3096', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '勉县', '610725', '3', 'mianxian', 'M', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3097', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '宁强县', '610726', '3', 'ningqiangxian', 'N', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3098', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '略阳县', '610727', '3', 'lveyangxian', 'L', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3099', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '镇巴县', '610728', '3', 'zhenbaxian', 'Z', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3100', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '留坝县', '610729', '3', 'liubaxian', 'L', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3101', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.400670', '1', '佛坪县', '610730', '3', 'fupingxian', 'F', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3102', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '榆林市', '6108', '2', 'yulinshi', 'Y', '1', null, '61');
INSERT INTO `system_area` VALUES ('3103', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '榆阳区', '610802', '3', 'yuyangqu', 'Y', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3104', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '横山区', '610803', '3', 'hengshanqu', 'H', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3105', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '府谷县', '610822', '3', 'fuguxian', 'F', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3106', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '靖边县', '610824', '3', 'jingbianxian', 'J', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3107', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '定边县', '610825', '3', 'dingbianxian', 'D', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3108', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '绥德县', '610826', '3', 'suidexian', 'S', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3109', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '米脂县', '610827', '3', 'mizhixian', 'M', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3110', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '佳县', '610828', '3', 'jiaxian', 'J', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3111', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '吴堡县', '610829', '3', 'wubuxian', 'W', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3112', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '清涧县', '610830', '3', 'qingjianxian', 'Q', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3113', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '子洲县', '610831', '3', 'zizhouxian', 'Z', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3114', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '神木市', '610881', '3', 'shenmushi', 'S', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3115', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '安康市', '6109', '2', 'ankangshi', 'A', '1', null, '61');
INSERT INTO `system_area` VALUES ('3116', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '汉滨区', '610902', '3', 'hanbinqu', 'H', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3117', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '汉阴县', '610921', '3', 'hanyinxian', 'H', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3118', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '石泉县', '610922', '3', 'shiquanxian', 'S', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3119', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '宁陕县', '610923', '3', 'ningshanxian', 'N', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3120', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '紫阳县', '610924', '3', 'ziyangxian', 'Z', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3121', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '岚皋县', '610925', '3', 'langaoxian', 'L', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3122', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '平利县', '610926', '3', 'pinglixian', 'P', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3123', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '镇坪县', '610927', '3', 'zhenpingxian', 'Z', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3124', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '旬阳县', '610928', '3', 'xunyangxian', 'X', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3125', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '白河县', '610929', '3', 'baihexian', 'B', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3126', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '商洛市', '6110', '2', 'shangluoshi', 'S', '1', null, '61');
INSERT INTO `system_area` VALUES ('3127', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '商州区', '611002', '3', 'shangzhouqu', 'S', '1', null, '6110');
INSERT INTO `system_area` VALUES ('3128', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '洛南县', '611021', '3', 'luonanxian', 'L', '1', null, '6110');
INSERT INTO `system_area` VALUES ('3129', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '丹凤县', '611022', '3', 'danfengxian', 'D', '1', null, '6110');
INSERT INTO `system_area` VALUES ('3130', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '商南县', '611023', '3', 'shangnanxian', 'S', '1', null, '6110');
INSERT INTO `system_area` VALUES ('3131', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '山阳县', '611024', '3', 'shanyangxian', 'S', '1', null, '6110');
INSERT INTO `system_area` VALUES ('3132', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '镇安县', '611025', '3', 'zhenanxian', 'Z', '1', null, '6110');
INSERT INTO `system_area` VALUES ('3133', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '柞水县', '611026', '3', 'zhashuixian', 'Z', '1', null, '6110');
INSERT INTO `system_area` VALUES ('3134', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '甘肃省', '62', '1', 'gansusheng', 'G', '1', null, null);
INSERT INTO `system_area` VALUES ('3135', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '兰州市', '6201', '2', 'lanzhoushi', 'L', '1', null, '62');
INSERT INTO `system_area` VALUES ('3136', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '城关区', '620102', '3', 'chengguanqu', 'C', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3137', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '七里河区', '620103', '3', 'qilihequ', 'Q', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3138', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '西固区', '620104', '3', 'xiguqu', 'X', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3139', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '安宁区', '620105', '3', 'anningqu', 'A', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3140', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '红古区', '620111', '3', 'hongguqu', 'H', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3141', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '永登县', '620121', '3', 'yongdengxian', 'Y', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3142', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '皋兰县', '620122', '3', 'gaolanxian', 'G', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3143', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '榆中县', '620123', '3', 'yuzhongxian', 'Y', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3144', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '兰州新区', '620171', '3', 'lanzhouxinqu', 'L', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3145', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '嘉峪关市', '6202', '2', 'jiayuguanshi', 'J', '1', null, '62');
INSERT INTO `system_area` VALUES ('3146', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '雄关街道', '620201001', '3', 'xiongguanjiedao', 'X', '1', null, '6202');
INSERT INTO `system_area` VALUES ('3147', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '钢城街道', '620201002', '3', 'gangchengjiedao', 'G', '1', null, '6202');
INSERT INTO `system_area` VALUES ('3148', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '新城镇', '620201100', '3', 'xinchengzhen', 'X', '1', null, '6202');
INSERT INTO `system_area` VALUES ('3149', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '峪泉镇', '620201101', '3', 'yuquanzhen', 'Y', '1', null, '6202');
INSERT INTO `system_area` VALUES ('3150', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '文殊镇', '620201102', '3', 'wenshuzhen', 'W', '1', null, '6202');
INSERT INTO `system_area` VALUES ('3151', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '金昌市', '6203', '2', 'jinchangshi', 'J', '1', null, '62');
INSERT INTO `system_area` VALUES ('3152', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '金川区', '620302', '3', 'jinchuanqu', 'J', '1', null, '6203');
INSERT INTO `system_area` VALUES ('3153', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '永昌县', '620321', '3', 'yongchangxian', 'Y', '1', null, '6203');
INSERT INTO `system_area` VALUES ('3154', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '白银市', '6204', '2', 'baiyinshi', 'B', '1', null, '62');
INSERT INTO `system_area` VALUES ('3155', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '白银区', '620402', '3', 'baiyinqu', 'B', '1', null, '6204');
INSERT INTO `system_area` VALUES ('3156', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '平川区', '620403', '3', 'pingchuanqu', 'P', '1', null, '6204');
INSERT INTO `system_area` VALUES ('3157', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '靖远县', '620421', '3', 'jingyuanxian', 'J', '1', null, '6204');
INSERT INTO `system_area` VALUES ('3158', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '会宁县', '620422', '3', 'huiningxian', 'H', '1', null, '6204');
INSERT INTO `system_area` VALUES ('3159', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '景泰县', '620423', '3', 'jingtaixian', 'J', '1', null, '6204');
INSERT INTO `system_area` VALUES ('3160', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '天水市', '6205', '2', 'tianshuishi', 'T', '1', null, '62');
INSERT INTO `system_area` VALUES ('3161', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '秦州区', '620502', '3', 'qinzhouqu', 'Q', '1', null, '6205');
INSERT INTO `system_area` VALUES ('3162', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '麦积区', '620503', '3', 'maijiqu', 'M', '1', null, '6205');
INSERT INTO `system_area` VALUES ('3163', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '清水县', '620521', '3', 'qingshuixian', 'Q', '1', null, '6205');
INSERT INTO `system_area` VALUES ('3164', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '秦安县', '620522', '3', 'qinanxian', 'Q', '1', null, '6205');
INSERT INTO `system_area` VALUES ('3165', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '甘谷县', '620523', '3', 'ganguxian', 'G', '1', null, '6205');
INSERT INTO `system_area` VALUES ('3166', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '武山县', '620524', '3', 'wushanxian', 'W', '1', null, '6205');
INSERT INTO `system_area` VALUES ('3167', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '张家川回族自治县', '620525', '3', 'zhangjiachuanhuizuzizhixian', 'Z', '1', null, '6205');
INSERT INTO `system_area` VALUES ('3168', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '武威市', '6206', '2', 'wuweishi', 'W', '1', null, '62');
INSERT INTO `system_area` VALUES ('3169', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '凉州区', '620602', '3', 'liangzhouqu', 'L', '1', null, '6206');
INSERT INTO `system_area` VALUES ('3170', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '民勤县', '620621', '3', 'minqinxian', 'M', '1', null, '6206');
INSERT INTO `system_area` VALUES ('3171', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '古浪县', '620622', '3', 'gulangxian', 'G', '1', null, '6206');
INSERT INTO `system_area` VALUES ('3172', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '天祝藏族自治县', '620623', '3', 'tianzhuzangzuzizhixian', 'T', '1', null, '6206');
INSERT INTO `system_area` VALUES ('3173', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '张掖市', '6207', '2', 'zhangyeshi', 'Z', '1', null, '62');
INSERT INTO `system_area` VALUES ('3174', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '甘州区', '620702', '3', 'ganzhouqu', 'G', '1', null, '6207');
INSERT INTO `system_area` VALUES ('3175', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '肃南裕固族自治县', '620721', '3', 'sunanyuguzuzizhixian', 'S', '1', null, '6207');
INSERT INTO `system_area` VALUES ('3176', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '民乐县', '620722', '3', 'minyuexian', 'M', '1', null, '6207');
INSERT INTO `system_area` VALUES ('3177', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '临泽县', '620723', '3', 'linzexian', 'L', '1', null, '6207');
INSERT INTO `system_area` VALUES ('3178', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '高台县', '620724', '3', 'gaotaixian', 'G', '1', null, '6207');
INSERT INTO `system_area` VALUES ('3179', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '山丹县', '620725', '3', 'shandanxian', 'S', '1', null, '6207');
INSERT INTO `system_area` VALUES ('3180', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '平凉市', '6208', '2', 'pingliangshi', 'P', '1', null, '62');
INSERT INTO `system_area` VALUES ('3181', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '崆峒区', '620802', '3', 'kongdongqu', 'K', '1', null, '6208');
INSERT INTO `system_area` VALUES ('3182', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '泾川县', '620821', '3', 'jingchuanxian', 'J', '1', null, '6208');
INSERT INTO `system_area` VALUES ('3183', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '灵台县', '620822', '3', 'lingtaixian', 'L', '1', null, '6208');
INSERT INTO `system_area` VALUES ('3184', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '崇信县', '620823', '3', 'chongxinxian', 'C', '1', null, '6208');
INSERT INTO `system_area` VALUES ('3185', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '庄浪县', '620825', '3', 'zhuanglangxian', 'Z', '1', null, '6208');
INSERT INTO `system_area` VALUES ('3186', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '静宁县', '620826', '3', 'jingningxian', 'J', '1', null, '6208');
INSERT INTO `system_area` VALUES ('3187', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '华亭市', '620881', '3', 'huatingshi', 'H', '1', null, '6208');
INSERT INTO `system_area` VALUES ('3188', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '酒泉市', '6209', '2', 'jiuquanshi', 'J', '1', null, '62');
INSERT INTO `system_area` VALUES ('3189', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '肃州区', '620902', '3', 'suzhouqu', 'S', '1', null, '6209');
INSERT INTO `system_area` VALUES ('3190', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '金塔县', '620921', '3', 'jintaxian', 'J', '1', null, '6209');
INSERT INTO `system_area` VALUES ('3191', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '瓜州县', '620922', '3', 'guazhouxian', 'G', '1', null, '6209');
INSERT INTO `system_area` VALUES ('3192', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '肃北蒙古族自治县', '620923', '3', 'subeimengguzuzizhixian', 'S', '1', null, '6209');
INSERT INTO `system_area` VALUES ('3193', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '阿克塞哈萨克族自治县', '620924', '3', 'akesaihasakezuzizhixian', 'A', '1', null, '6209');
INSERT INTO `system_area` VALUES ('3194', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '玉门市', '620981', '3', 'yumenshi', 'Y', '1', null, '6209');
INSERT INTO `system_area` VALUES ('3195', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '敦煌市', '620982', '3', 'dunhuangshi', 'D', '1', null, '6209');
INSERT INTO `system_area` VALUES ('3196', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '庆阳市', '6210', '2', 'qingyangshi', 'Q', '1', null, '62');
INSERT INTO `system_area` VALUES ('3197', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '西峰区', '621002', '3', 'xifengqu', 'X', '1', null, '6210');
INSERT INTO `system_area` VALUES ('3198', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '庆城县', '621021', '3', 'qingchengxian', 'Q', '1', null, '6210');
INSERT INTO `system_area` VALUES ('3199', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '环县', '621022', '3', 'huanxian', 'H', '1', null, '6210');
INSERT INTO `system_area` VALUES ('3200', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '华池县', '621023', '3', 'huachixian', 'H', '1', null, '6210');
INSERT INTO `system_area` VALUES ('3201', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '合水县', '621024', '3', 'heshuixian', 'H', '1', null, '6210');
INSERT INTO `system_area` VALUES ('3202', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '正宁县', '621025', '3', 'zhengningxian', 'Z', '1', null, '6210');
INSERT INTO `system_area` VALUES ('3203', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '宁县', '621026', '3', 'ningxian', 'N', '1', null, '6210');
INSERT INTO `system_area` VALUES ('3204', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '镇原县', '621027', '3', 'zhenyuanxian', 'Z', '1', null, '6210');
INSERT INTO `system_area` VALUES ('3205', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '定西市', '6211', '2', 'dingxishi', 'D', '1', null, '62');
INSERT INTO `system_area` VALUES ('3206', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '安定区', '621102', '3', 'andingqu', 'A', '1', null, '6211');
INSERT INTO `system_area` VALUES ('3207', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '通渭县', '621121', '3', 'tongweixian', 'T', '1', null, '6211');
INSERT INTO `system_area` VALUES ('3208', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '陇西县', '621122', '3', 'longxixian', 'L', '1', null, '6211');
INSERT INTO `system_area` VALUES ('3209', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '渭源县', '621123', '3', 'weiyuanxian', 'W', '1', null, '6211');
INSERT INTO `system_area` VALUES ('3210', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '临洮县', '621124', '3', 'lintaoxian', 'L', '1', null, '6211');
INSERT INTO `system_area` VALUES ('3211', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '漳县', '621125', '3', 'zhangxian', 'Z', '1', null, '6211');
INSERT INTO `system_area` VALUES ('3212', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '岷县', '621126', '3', 'minxian', 'M', '1', null, '6211');
INSERT INTO `system_area` VALUES ('3213', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '陇南市', '6212', '2', 'longnanshi', 'L', '1', null, '62');
INSERT INTO `system_area` VALUES ('3214', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '武都区', '621202', '3', 'wudouqu', 'W', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3215', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '成县', '621221', '3', 'chengxian', 'C', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3216', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '文县', '621222', '3', 'wenxian', 'W', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3217', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '宕昌县', '621223', '3', 'dangchangxian', 'D', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3218', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '康县', '621224', '3', 'kangxian', 'K', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3219', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '西和县', '621225', '3', 'xihexian', 'X', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3220', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '礼县', '621226', '3', 'lixian', 'L', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3221', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '徽县', '621227', '3', 'huixian', 'H', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3222', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '两当县', '621228', '3', 'liangdangxian', 'L', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3223', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '临夏回族自治州', '6229', '2', 'linxiahuizuzizhizhou', 'L', '1', null, '62');
INSERT INTO `system_area` VALUES ('3224', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '临夏市', '622901', '3', 'linxiashi', 'L', '1', null, '6229');
INSERT INTO `system_area` VALUES ('3225', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '临夏县', '622921', '3', 'linxiaxian', 'L', '1', null, '6229');
INSERT INTO `system_area` VALUES ('3226', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '康乐县', '622922', '3', 'kanglexian', 'K', '1', null, '6229');
INSERT INTO `system_area` VALUES ('3227', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '永靖县', '622923', '3', 'yongjingxian', 'Y', '1', null, '6229');
INSERT INTO `system_area` VALUES ('3228', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '广河县', '622924', '3', 'guanghexian', 'G', '1', null, '6229');
INSERT INTO `system_area` VALUES ('3229', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '和政县', '622925', '3', 'hezhengxian', 'H', '1', null, '6229');
INSERT INTO `system_area` VALUES ('3230', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '东乡族自治县', '622926', '3', 'dongxiangzuzizhixian', 'D', '1', null, '6229');
INSERT INTO `system_area` VALUES ('3231', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '积石山保安族东乡族撒拉族自治县', '622927', '3', 'jishishanbaoanzudongxiangzusalazuzizhixian', 'J', '1', null, '6229');
INSERT INTO `system_area` VALUES ('3232', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '甘南藏族自治州', '6230', '2', 'gannanzangzuzizhizhou', 'G', '1', null, '62');
INSERT INTO `system_area` VALUES ('3233', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '合作市', '623001', '3', 'hezuoshi', 'H', '1', null, '6230');
INSERT INTO `system_area` VALUES ('3234', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '临潭县', '623021', '3', 'lintanxian', 'L', '1', null, '6230');
INSERT INTO `system_area` VALUES ('3235', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '卓尼县', '623022', '3', 'zhuonixian', 'Z', '1', null, '6230');
INSERT INTO `system_area` VALUES ('3236', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '舟曲县', '623023', '3', 'zhouquxian', 'Z', '1', null, '6230');
INSERT INTO `system_area` VALUES ('3237', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '迭部县', '623024', '3', 'diebuxian', 'D', '1', null, '6230');
INSERT INTO `system_area` VALUES ('3238', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '玛曲县', '623025', '3', 'maquxian', 'M', '1', null, '6230');
INSERT INTO `system_area` VALUES ('3239', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '碌曲县', '623026', '3', 'luquxian', 'L', '1', null, '6230');
INSERT INTO `system_area` VALUES ('3240', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '夏河县', '623027', '3', 'xiahexian', 'X', '1', null, '6230');
INSERT INTO `system_area` VALUES ('3241', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '青海省', '63', '1', 'qinghaisheng', 'Q', '1', null, null);
INSERT INTO `system_area` VALUES ('3242', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '西宁市', '6301', '2', 'xiningshi', 'X', '1', null, '63');
INSERT INTO `system_area` VALUES ('3243', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '城东区', '630102', '3', 'chengdongqu', 'C', '1', null, '6301');
INSERT INTO `system_area` VALUES ('3244', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '城中区', '630103', '3', 'chengzhongqu', 'C', '1', null, '6301');
INSERT INTO `system_area` VALUES ('3245', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '城西区', '630104', '3', 'chengxiqu', 'C', '1', null, '6301');
INSERT INTO `system_area` VALUES ('3246', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '城北区', '630105', '3', 'chengbeiqu', 'C', '1', null, '6301');
INSERT INTO `system_area` VALUES ('3247', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '湟中区', '630106', '3', 'huangzhongqu', 'H', '1', null, '6301');
INSERT INTO `system_area` VALUES ('3248', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '大通回族土族自治县', '630121', '3', 'datonghuizutuzuzizhixian', 'D', '1', null, '6301');
INSERT INTO `system_area` VALUES ('3249', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '湟源县', '630123', '3', 'huangyuanxian', 'H', '1', null, '6301');
INSERT INTO `system_area` VALUES ('3250', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '海东市', '6302', '2', 'haidongshi', 'H', '1', null, '63');
INSERT INTO `system_area` VALUES ('3251', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '乐都区', '630202', '3', 'ledouqu', 'L', '1', null, '6302');
INSERT INTO `system_area` VALUES ('3252', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '平安区', '630203', '3', 'pinganqu', 'P', '1', null, '6302');
INSERT INTO `system_area` VALUES ('3253', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '民和回族土族自治县', '630222', '3', 'minhehuizutuzuzizhixian', 'M', '1', null, '6302');
INSERT INTO `system_area` VALUES ('3254', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '互助土族自治县', '630223', '3', 'huzhutuzuzizhixian', 'H', '1', null, '6302');
INSERT INTO `system_area` VALUES ('3255', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '化隆回族自治县', '630224', '3', 'hualonghuizuzizhixian', 'H', '1', null, '6302');
INSERT INTO `system_area` VALUES ('3256', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '循化撒拉族自治县', '630225', '3', 'xunhuasalazuzizhixian', 'X', '1', null, '6302');
INSERT INTO `system_area` VALUES ('3257', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '海北藏族自治州', '6322', '2', 'haibeizangzuzizhizhou', 'H', '1', null, '63');
INSERT INTO `system_area` VALUES ('3258', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '门源回族自治县', '632221', '3', 'menyuanhuizuzizhixian', 'M', '1', null, '6322');
INSERT INTO `system_area` VALUES ('3259', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '祁连县', '632222', '3', 'qilianxian', 'Q', '1', null, '6322');
INSERT INTO `system_area` VALUES ('3260', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '海晏县', '632223', '3', 'haiyanxian', 'H', '1', null, '6322');
INSERT INTO `system_area` VALUES ('3261', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '刚察县', '632224', '3', 'gangchaxian', 'G', '1', null, '6322');
INSERT INTO `system_area` VALUES ('3262', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '黄南藏族自治州', '6323', '2', 'huangnanzangzuzizhizhou', 'H', '1', null, '63');
INSERT INTO `system_area` VALUES ('3263', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '同仁县', '632321', '3', 'tongrenxian', 'T', '1', null, '6323');
INSERT INTO `system_area` VALUES ('3264', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '尖扎县', '632322', '3', 'jianzhaxian', 'J', '1', null, '6323');
INSERT INTO `system_area` VALUES ('3265', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '泽库县', '632323', '3', 'zekuxian', 'Z', '1', null, '6323');
INSERT INTO `system_area` VALUES ('3266', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '河南蒙古族自治县', '632324', '3', 'henanmengguzuzizhixian', 'H', '1', null, '6323');
INSERT INTO `system_area` VALUES ('3267', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '海南藏族自治州', '6325', '2', 'hainanzangzuzizhizhou', 'H', '1', null, '63');
INSERT INTO `system_area` VALUES ('3268', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '共和县', '632521', '3', 'gonghexian', 'G', '1', null, '6325');
INSERT INTO `system_area` VALUES ('3269', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '同德县', '632522', '3', 'tongdexian', 'T', '1', null, '6325');
INSERT INTO `system_area` VALUES ('3270', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '贵德县', '632523', '3', 'guidexian', 'G', '1', null, '6325');
INSERT INTO `system_area` VALUES ('3271', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '兴海县', '632524', '3', 'xinghaixian', 'X', '1', null, '6325');
INSERT INTO `system_area` VALUES ('3272', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '贵南县', '632525', '3', 'guinanxian', 'G', '1', null, '6325');
INSERT INTO `system_area` VALUES ('3273', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '果洛藏族自治州', '6326', '2', 'guoluozangzuzizhizhou', 'G', '1', null, '63');
INSERT INTO `system_area` VALUES ('3274', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '玛沁县', '632621', '3', 'maqinxian', 'M', '1', null, '6326');
INSERT INTO `system_area` VALUES ('3275', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '班玛县', '632622', '3', 'banmaxian', 'B', '1', null, '6326');
INSERT INTO `system_area` VALUES ('3276', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '甘德县', '632623', '3', 'gandexian', 'G', '1', null, '6326');
INSERT INTO `system_area` VALUES ('3277', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '达日县', '632624', '3', 'darixian', 'D', '1', null, '6326');
INSERT INTO `system_area` VALUES ('3278', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '久治县', '632625', '3', 'jiuzhixian', 'J', '1', null, '6326');
INSERT INTO `system_area` VALUES ('3279', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '玛多县', '632626', '3', 'maduoxian', 'M', '1', null, '6326');
INSERT INTO `system_area` VALUES ('3280', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '玉树藏族自治州', '6327', '2', 'yushuzangzuzizhizhou', 'Y', '1', null, '63');
INSERT INTO `system_area` VALUES ('3281', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '玉树市', '632701', '3', 'yushushi', 'Y', '1', null, '6327');
INSERT INTO `system_area` VALUES ('3282', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '杂多县', '632722', '3', 'zaduoxian', 'Z', '1', null, '6327');
INSERT INTO `system_area` VALUES ('3283', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '称多县', '632723', '3', 'chengduoxian', 'C', '1', null, '6327');
INSERT INTO `system_area` VALUES ('3284', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '治多县', '632724', '3', 'zhiduoxian', 'Z', '1', null, '6327');
INSERT INTO `system_area` VALUES ('3285', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '囊谦县', '632725', '3', 'nangqianxian', 'N', '1', null, '6327');
INSERT INTO `system_area` VALUES ('3286', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '曲麻莱县', '632726', '3', 'qumalaixian', 'Q', '1', null, '6327');
INSERT INTO `system_area` VALUES ('3287', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '海西蒙古族藏族自治州', '6328', '2', 'haiximengguzuzangzuzizhizhou', 'H', '1', null, '63');
INSERT INTO `system_area` VALUES ('3288', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '格尔木市', '632801', '3', 'geermushi', 'G', '1', null, '6328');
INSERT INTO `system_area` VALUES ('3289', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '德令哈市', '632802', '3', 'delinghashi', 'D', '1', null, '6328');
INSERT INTO `system_area` VALUES ('3290', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '茫崖市', '632803', '3', 'mangyashi', 'M', '1', null, '6328');
INSERT INTO `system_area` VALUES ('3291', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '乌兰县', '632821', '3', 'wulanxian', 'W', '1', null, '6328');
INSERT INTO `system_area` VALUES ('3292', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '都兰县', '632822', '3', 'doulanxian', 'D', '1', null, '6328');
INSERT INTO `system_area` VALUES ('3293', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '天峻县', '632823', '3', 'tianjunxian', 'T', '1', null, '6328');
INSERT INTO `system_area` VALUES ('3294', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '大柴旦行政委员会', '632857', '3', 'dachaidanxingzhengweiyuanhui', 'D', '1', null, '6328');
INSERT INTO `system_area` VALUES ('3295', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '宁夏回族自治区', '64', '1', 'ningxiahuizuzizhiqu', 'N', '1', null, null);
INSERT INTO `system_area` VALUES ('3296', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '银川市', '6401', '2', 'yinchuanshi', 'Y', '1', null, '64');
INSERT INTO `system_area` VALUES ('3297', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '兴庆区', '640104', '3', 'xingqingqu', 'X', '1', null, '6401');
INSERT INTO `system_area` VALUES ('3298', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '西夏区', '640105', '3', 'xixiaqu', 'X', '1', null, '6401');
INSERT INTO `system_area` VALUES ('3299', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '金凤区', '640106', '3', 'jinfengqu', 'J', '1', null, '6401');
INSERT INTO `system_area` VALUES ('3300', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '永宁县', '640121', '3', 'yongningxian', 'Y', '1', null, '6401');
INSERT INTO `system_area` VALUES ('3301', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '贺兰县', '640122', '3', 'helanxian', 'H', '1', null, '6401');
INSERT INTO `system_area` VALUES ('3302', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '灵武市', '640181', '3', 'lingwushi', 'L', '1', null, '6401');
INSERT INTO `system_area` VALUES ('3303', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '石嘴山市', '6402', '2', 'shizuishanshi', 'S', '1', null, '64');
INSERT INTO `system_area` VALUES ('3304', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '大武口区', '640202', '3', 'dawukouqu', 'D', '1', null, '6402');
INSERT INTO `system_area` VALUES ('3305', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '惠农区', '640205', '3', 'huinongqu', 'H', '1', null, '6402');
INSERT INTO `system_area` VALUES ('3306', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '平罗县', '640221', '3', 'pingluoxian', 'P', '1', null, '6402');
INSERT INTO `system_area` VALUES ('3307', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '吴忠市', '6403', '2', 'wuzhongshi', 'W', '1', null, '64');
INSERT INTO `system_area` VALUES ('3308', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '利通区', '640302', '3', 'litongqu', 'L', '1', null, '6403');
INSERT INTO `system_area` VALUES ('3309', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '红寺堡区', '640303', '3', 'hongsibaoqu', 'H', '1', null, '6403');
INSERT INTO `system_area` VALUES ('3310', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '盐池县', '640323', '3', 'yanchixian', 'Y', '1', null, '6403');
INSERT INTO `system_area` VALUES ('3311', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '同心县', '640324', '3', 'tongxinxian', 'T', '1', null, '6403');
INSERT INTO `system_area` VALUES ('3312', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '青铜峡市', '640381', '3', 'qingtongxiashi', 'Q', '1', null, '6403');
INSERT INTO `system_area` VALUES ('3313', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '固原市', '6404', '2', 'guyuanshi', 'G', '1', null, '64');
INSERT INTO `system_area` VALUES ('3314', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '原州区', '640402', '3', 'yuanzhouqu', 'Y', '1', null, '6404');
INSERT INTO `system_area` VALUES ('3315', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '西吉县', '640422', '3', 'xijixian', 'X', '1', null, '6404');
INSERT INTO `system_area` VALUES ('3316', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '隆德县', '640423', '3', 'longdexian', 'L', '1', null, '6404');
INSERT INTO `system_area` VALUES ('3317', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '泾源县', '640424', '3', 'jingyuanxian', 'J', '1', null, '6404');
INSERT INTO `system_area` VALUES ('3318', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '彭阳县', '640425', '3', 'pengyangxian', 'P', '1', null, '6404');
INSERT INTO `system_area` VALUES ('3319', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '中卫市', '6405', '2', 'zhongweishi', 'Z', '1', null, '64');
INSERT INTO `system_area` VALUES ('3320', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '沙坡头区', '640502', '3', 'shapotouqu', 'S', '1', null, '6405');
INSERT INTO `system_area` VALUES ('3321', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '中宁县', '640521', '3', 'zhongningxian', 'Z', '1', null, '6405');
INSERT INTO `system_area` VALUES ('3322', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '海原县', '640522', '3', 'haiyuanxian', 'H', '1', null, '6405');
INSERT INTO `system_area` VALUES ('3323', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '新疆维吾尔自治区', '65', '1', 'xinjiangweiwuerzizhiqu', 'X', '1', null, null);
INSERT INTO `system_area` VALUES ('3324', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '乌鲁木齐市', '6501', '2', 'wulumuqishi', 'W', '1', null, '65');
INSERT INTO `system_area` VALUES ('3325', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '天山区', '650102', '3', 'tianshanqu', 'T', '1', null, '6501');
INSERT INTO `system_area` VALUES ('3326', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '沙依巴克区', '650103', '3', 'shayibakequ', 'S', '1', null, '6501');
INSERT INTO `system_area` VALUES ('3327', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '新市区', '650104', '3', 'xinshiqu', 'X', '1', null, '6501');
INSERT INTO `system_area` VALUES ('3328', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '水磨沟区', '650105', '3', 'shuimogouqu', 'S', '1', null, '6501');
INSERT INTO `system_area` VALUES ('3329', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '头屯河区', '650106', '3', 'toutunhequ', 'T', '1', null, '6501');
INSERT INTO `system_area` VALUES ('3330', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '达坂城区', '650107', '3', 'dabanchengqu', 'D', '1', null, '6501');
INSERT INTO `system_area` VALUES ('3331', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '米东区', '650109', '3', 'midongqu', 'M', '1', null, '6501');
INSERT INTO `system_area` VALUES ('3332', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '乌鲁木齐县', '650121', '3', 'wulumuqixian', 'W', '1', null, '6501');
INSERT INTO `system_area` VALUES ('3333', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '克拉玛依市', '6502', '2', 'kelamayishi', 'K', '1', null, '65');
INSERT INTO `system_area` VALUES ('3334', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '独山子区', '650202', '3', 'dushanziqu', 'D', '1', null, '6502');
INSERT INTO `system_area` VALUES ('3335', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '克拉玛依区', '650203', '3', 'kelamayiqu', 'K', '1', null, '6502');
INSERT INTO `system_area` VALUES ('3336', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '白碱滩区', '650204', '3', 'baijiantanqu', 'B', '1', null, '6502');
INSERT INTO `system_area` VALUES ('3337', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '乌尔禾区', '650205', '3', 'wuerhequ', 'W', '1', null, '6502');
INSERT INTO `system_area` VALUES ('3338', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '吐鲁番市', '6504', '2', 'tulufanshi', 'T', '1', null, '65');
INSERT INTO `system_area` VALUES ('3339', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '高昌区', '650402', '3', 'gaochangqu', 'G', '1', null, '6504');
INSERT INTO `system_area` VALUES ('3340', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '鄯善县', '650421', '3', 'shanshanxian', 'S', '1', null, '6504');
INSERT INTO `system_area` VALUES ('3341', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '托克逊县', '650422', '3', 'tuokexunxian', 'T', '1', null, '6504');
INSERT INTO `system_area` VALUES ('3342', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '哈密市', '6505', '2', 'hamishi', 'H', '1', null, '65');
INSERT INTO `system_area` VALUES ('3343', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.415669', '1', '伊州区', '650502', '3', 'yizhouqu', 'Y', '1', null, '6505');
INSERT INTO `system_area` VALUES ('3344', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '巴里坤哈萨克自治县', '650521', '3', 'balikunhasakezizhixian', 'B', '1', null, '6505');
INSERT INTO `system_area` VALUES ('3345', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '伊吾县', '650522', '3', 'yiwuxian', 'Y', '1', null, '6505');
INSERT INTO `system_area` VALUES ('3346', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '昌吉回族自治州', '6523', '2', 'changjihuizuzizhizhou', 'C', '1', null, '65');
INSERT INTO `system_area` VALUES ('3347', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '昌吉市', '652301', '3', 'changjishi', 'C', '1', null, '6523');
INSERT INTO `system_area` VALUES ('3348', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '阜康市', '652302', '3', 'fukangshi', 'F', '1', null, '6523');
INSERT INTO `system_area` VALUES ('3349', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '呼图壁县', '652323', '3', 'hutubixian', 'H', '1', null, '6523');
INSERT INTO `system_area` VALUES ('3350', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '玛纳斯县', '652324', '3', 'manasixian', 'M', '1', null, '6523');
INSERT INTO `system_area` VALUES ('3351', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '奇台县', '652325', '3', 'qitaixian', 'Q', '1', null, '6523');
INSERT INTO `system_area` VALUES ('3352', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '吉木萨尔县', '652327', '3', 'jimusaerxian', 'J', '1', null, '6523');
INSERT INTO `system_area` VALUES ('3353', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '木垒哈萨克自治县', '652328', '3', 'muleihasakezizhixian', 'M', '1', null, '6523');
INSERT INTO `system_area` VALUES ('3354', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '博尔塔拉蒙古自治州', '6527', '2', 'boertalamengguzizhizhou', 'B', '1', null, '65');
INSERT INTO `system_area` VALUES ('3355', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '博乐市', '652701', '3', 'boleshi', 'B', '1', null, '6527');
INSERT INTO `system_area` VALUES ('3356', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '阿拉山口市', '652702', '3', 'alashankoushi', 'A', '1', null, '6527');
INSERT INTO `system_area` VALUES ('3357', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '精河县', '652722', '3', 'jinghexian', 'J', '1', null, '6527');
INSERT INTO `system_area` VALUES ('3358', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '温泉县', '652723', '3', 'wenquanxian', 'W', '1', null, '6527');
INSERT INTO `system_area` VALUES ('3359', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '巴音郭楞蒙古自治州', '6528', '2', 'bayinguolengmengguzizhizhou', 'B', '1', null, '65');
INSERT INTO `system_area` VALUES ('3360', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '库尔勒市', '652801', '3', 'kuerleishi', 'K', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3361', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '轮台县', '652822', '3', 'luntaixian', 'L', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3362', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '尉犁县', '652823', '3', 'yulixian', 'Y', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3363', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '若羌县', '652824', '3', 'ruoqiangxian', 'R', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3364', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '且末县', '652825', '3', 'qiemoxian', 'Q', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3365', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '焉耆回族自治县', '652826', '3', 'yanqihuizuzizhixian', 'Y', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3366', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '和静县', '652827', '3', 'hejingxian', 'H', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3367', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '和硕县', '652828', '3', 'heshuoxian', 'H', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3368', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '博湖县', '652829', '3', 'bohuxian', 'B', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3369', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '库尔勒经济技术开发区', '652871', '3', 'kuerleijingjijishukaifaqu', 'K', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3370', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '阿克苏地区', '6529', '2', 'akesudiqu', 'A', '1', null, '65');
INSERT INTO `system_area` VALUES ('3371', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '阿克苏市', '652901', '3', 'akesushi', 'A', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3372', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '库车市', '652902', '3', 'kucheshi', 'K', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3373', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '温宿县', '652922', '3', 'wensuxian', 'W', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3374', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '沙雅县', '652924', '3', 'shayaxian', 'S', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3375', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '新和县', '652925', '3', 'xinhexian', 'X', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3376', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '拜城县', '652926', '3', 'baichengxian', 'B', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3377', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '乌什县', '652927', '3', 'wushenxian', 'W', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3378', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '阿瓦提县', '652928', '3', 'awatixian', 'A', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3379', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '柯坪县', '652929', '3', 'kepingxian', 'K', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3380', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '克孜勒苏柯尔克孜自治州', '6530', '2', 'kezileisukeerkezizizhizhou', 'K', '1', null, '65');
INSERT INTO `system_area` VALUES ('3381', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '阿图什市', '653001', '3', 'atushenshi', 'A', '1', null, '6530');
INSERT INTO `system_area` VALUES ('3382', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '阿克陶县', '653022', '3', 'aketaoxian', 'A', '1', null, '6530');
INSERT INTO `system_area` VALUES ('3383', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '阿合奇县', '653023', '3', 'aheqixian', 'A', '1', null, '6530');
INSERT INTO `system_area` VALUES ('3384', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '乌恰县', '653024', '3', 'wuqiaxian', 'W', '1', null, '6530');
INSERT INTO `system_area` VALUES ('3385', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '喀什地区', '6531', '2', 'kashidiqu', 'K', '1', null, '65');
INSERT INTO `system_area` VALUES ('3386', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '喀什市', '653101', '3', 'kashishi', 'K', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3387', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '疏附县', '653121', '3', 'shufuxian', 'S', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3388', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '疏勒县', '653122', '3', 'shulexian', 'S', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3389', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '英吉沙县', '653123', '3', 'yingjishaxian', 'Y', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3390', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '泽普县', '653124', '3', 'zepuxian', 'Z', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3391', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '莎车县', '653125', '3', 'shachexian', 'S', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3392', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '叶城县', '653126', '3', 'yechengxian', 'Y', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3393', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '麦盖提县', '653127', '3', 'maigaitixian', 'M', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3394', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '岳普湖县', '653128', '3', 'yuepuhuxian', 'Y', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3395', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '伽师县', '653129', '3', 'gashixian', 'G', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3396', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '巴楚县', '653130', '3', 'bachuxian', 'B', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3397', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '塔什库尔干塔吉克自治县', '653131', '3', 'tashenkuergantajikezizhixian', 'T', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3398', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '和田地区', '6532', '2', 'hetiandiqu', 'H', '1', null, '65');
INSERT INTO `system_area` VALUES ('3399', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '和田市', '653201', '3', 'hetianshi', 'H', '1', null, '6532');
INSERT INTO `system_area` VALUES ('3400', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '和田县', '653221', '3', 'hetianxian', 'H', '1', null, '6532');
INSERT INTO `system_area` VALUES ('3401', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '墨玉县', '653222', '3', 'moyuxian', 'M', '1', null, '6532');
INSERT INTO `system_area` VALUES ('3402', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '皮山县', '653223', '3', 'pishanxian', 'P', '1', null, '6532');
INSERT INTO `system_area` VALUES ('3403', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '洛浦县', '653224', '3', 'luopuxian', 'L', '1', null, '6532');
INSERT INTO `system_area` VALUES ('3404', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '策勒县', '653225', '3', 'celeixian', 'C', '1', null, '6532');
INSERT INTO `system_area` VALUES ('3405', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '于田县', '653226', '3', 'yutianxian', 'Y', '1', null, '6532');
INSERT INTO `system_area` VALUES ('3406', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '民丰县', '653227', '3', 'minfengxian', 'M', '1', null, '6532');
INSERT INTO `system_area` VALUES ('3407', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '伊犁哈萨克自治州', '6540', '2', 'yilihasakezizhizhou', 'Y', '1', null, '65');
INSERT INTO `system_area` VALUES ('3408', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '伊宁市', '654002', '3', 'yiningshi', 'Y', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3409', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '奎屯市', '654003', '3', 'kuitunshi', 'K', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3410', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '霍尔果斯市', '654004', '3', 'huoerguosishi', 'H', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3411', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '伊宁县', '654021', '3', 'yiningxian', 'Y', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3412', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '察布查尔锡伯自治县', '654022', '3', 'chabuchaerxibozizhixian', 'C', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3413', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '霍城县', '654023', '3', 'huochengxian', 'H', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3414', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '巩留县', '654024', '3', 'gongliuxian', 'G', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3415', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '新源县', '654025', '3', 'xinyuanxian', 'X', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3416', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '昭苏县', '654026', '3', 'zhaosuxian', 'Z', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3417', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '特克斯县', '654027', '3', 'tekesixian', 'T', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3418', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '尼勒克县', '654028', '3', 'nileikexian', 'N', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3419', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '塔城地区', '6542', '2', 'tachengdiqu', 'T', '1', null, '65');
INSERT INTO `system_area` VALUES ('3420', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '塔城市', '654201', '3', 'tachengshi', 'T', '1', null, '6542');
INSERT INTO `system_area` VALUES ('3421', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '乌苏市', '654202', '3', 'wusushi', 'W', '1', null, '6542');
INSERT INTO `system_area` VALUES ('3422', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '额敏县', '654221', '3', 'eminxian', 'E', '1', null, '6542');
INSERT INTO `system_area` VALUES ('3423', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '沙湾县', '654223', '3', 'shawanxian', 'S', '1', null, '6542');
INSERT INTO `system_area` VALUES ('3424', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '托里县', '654224', '3', 'tuolixian', 'T', '1', null, '6542');
INSERT INTO `system_area` VALUES ('3425', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '裕民县', '654225', '3', 'yuminxian', 'Y', '1', null, '6542');
INSERT INTO `system_area` VALUES ('3426', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '和布克赛尔蒙古自治县', '654226', '3', 'hebukesaiermengguzizhixian', 'H', '1', null, '6542');
INSERT INTO `system_area` VALUES ('3427', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '阿勒泰地区', '6543', '2', 'aleitaidiqu', 'A', '1', null, '65');
INSERT INTO `system_area` VALUES ('3428', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '阿勒泰市', '654301', '3', 'aleitaishi', 'A', '1', null, '6543');
INSERT INTO `system_area` VALUES ('3429', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '布尔津县', '654321', '3', 'buerjinxian', 'B', '1', null, '6543');
INSERT INTO `system_area` VALUES ('3430', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '富蕴县', '654322', '3', 'fuyunxian', 'F', '1', null, '6543');
INSERT INTO `system_area` VALUES ('3431', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '福海县', '654323', '3', 'fuhaixian', 'F', '1', null, '6543');
INSERT INTO `system_area` VALUES ('3432', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '哈巴河县', '654324', '3', 'habahexian', 'H', '1', null, '6543');
INSERT INTO `system_area` VALUES ('3433', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '青河县', '654325', '3', 'qinghexian', 'Q', '1', null, '6543');
INSERT INTO `system_area` VALUES ('3434', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '吉木乃县', '654326', '3', 'jimunaixian', 'J', '1', null, '6543');
INSERT INTO `system_area` VALUES ('3435', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '自治区直辖县级行政区划', '6590', '2', 'zizhiquzhixiaxianjixingzhengquhua', 'Z', '1', null, '65');
INSERT INTO `system_area` VALUES ('3436', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '石河子市', '659001', '3', 'shihezishi', 'S', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3437', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '阿拉尔市', '659002', '3', 'alaershi', 'A', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3438', null, null, null, '2022-12-24 14:21:06.421670', '2022-12-24 14:21:06.421670', '1', '图木舒克市', '659003', '3', 'tumushukeshi', 'T', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3439', null, null, null, '2022-12-24 14:21:06.421670', '2022-12-24 14:21:06.421670', '1', '五家渠市', '659004', '3', 'wujiaqushi', 'W', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3440', null, null, null, '2022-12-24 14:21:06.421670', '2022-12-24 14:21:06.421670', '1', '北屯市', '659005', '3', 'beitunshi', 'B', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3441', null, null, null, '2022-12-24 14:21:06.421670', '2022-12-24 14:21:06.421670', '1', '铁门关市', '659006', '3', 'tiemenguanshi', 'T', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3442', null, null, null, '2022-12-24 14:21:06.421670', '2022-12-24 14:21:06.421670', '1', '双河市', '659007', '3', 'shuangheshi', 'S', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3443', null, null, null, '2022-12-24 14:21:06.421670', '2022-12-24 14:21:06.421670', '1', '可克达拉市', '659008', '3', 'kekedalashi', 'K', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3444', null, null, null, '2022-12-24 14:21:06.421670', '2022-12-24 14:21:06.421670', '1', '昆玉市', '659009', '3', 'kunyushi', 'K', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3445', null, null, null, '2022-12-24 14:21:06.421670', '2022-12-24 14:21:06.421670', '1', '胡杨河市', '659010', '3', 'huyangheshi', 'H', '1', null, '6590');

-- ----------------------------
-- Table structure for `system_button`
-- ----------------------------
DROP TABLE IF EXISTS `system_button`;
CREATE TABLE `system_button` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `belong_dept` int(11) DEFAULT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  `create_datetime` datetime(6) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `code` (`code`),
  KEY `system_button_creator_id_2b6b251e` (`creator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_button
-- ----------------------------

-- ----------------------------
-- Table structure for `system_category_dict`
-- ----------------------------
DROP TABLE IF EXISTS `system_category_dict`;
CREATE TABLE `system_category_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `belong_dept` int(11) DEFAULT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  `create_datetime` datetime(6) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `system_category_dict_creator_id_a9a7bb57` (`creator_id`),
  KEY `system_category_dict_parent_id_3ce561f6` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_category_dict
-- ----------------------------

-- ----------------------------
-- Table structure for `system_config`
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `belong_dept` int(11) DEFAULT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  `create_datetime` datetime(6) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `key` varchar(20) NOT NULL,
  `value` json DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `data_options` json DEFAULT NULL,
  `form_item_type` int(11) NOT NULL,
  `rule` json DEFAULT NULL,
  `placeholder` varchar(50) DEFAULT NULL,
  `setting` json DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_config_creator_id_72aae803` (`creator_id`),
  KEY `system_config_parent_id_eec270d2` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_config
-- ----------------------------

-- ----------------------------
-- Table structure for `system_dept`
-- ----------------------------
DROP TABLE IF EXISTS `system_dept`;
CREATE TABLE `system_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `belong_dept` int(11) DEFAULT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  `create_datetime` datetime(6) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `owner` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_dept_creator_id_bbfb6d95` (`creator_id`),
  KEY `system_dept_parent_id_04e6e6fd` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_dept
-- ----------------------------
INSERT INTO `system_dept` VALUES ('1', null, '超级管理员', null, '2022-12-24 14:20:32.862219', '2022-12-24 14:20:32.862219', '1', '北京公司', null, '13244724433', '939589097@qq.com', '1', '1', null);
INSERT INTO `system_dept` VALUES ('2', null, '超级管理员', null, '2022-12-24 14:20:32.869211', '2022-12-24 14:20:32.869211', '2', '大连公司', null, '13244724433', '939589097@qq.com', '1', '1', null);
INSERT INTO `system_dept` VALUES ('3', null, '超级管理员', null, '2022-12-24 14:20:32.879212', '2022-12-24 14:20:32.879212', '1', 'IT部门', null, '13244724433', '939589097@qq.com', '1', '1', '1');
INSERT INTO `system_dept` VALUES ('4', null, '超级管理员', null, '2022-12-24 14:20:32.887216', '2022-12-24 14:20:32.887216', '2', '财务部门', null, '13244724433', '939589097@qq.com', '1', '1', '1');
INSERT INTO `system_dept` VALUES ('5', null, '超级管理员', null, '2022-12-24 14:20:32.894216', '2022-12-24 14:20:32.894216', '1', 'IT部门', null, '13244724433', '939589097@qq.com', '1', '1', '2');
INSERT INTO `system_dept` VALUES ('6', null, '超级管理员', null, '2022-12-24 14:20:32.901220', '2022-12-24 14:20:32.901220', '2', '财务部门', null, '13244724433', '939589097@qq.com', '1', '1', '2');

-- ----------------------------
-- Table structure for `system_dict`
-- ----------------------------
DROP TABLE IF EXISTS `system_dict`;
CREATE TABLE `system_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `modifier` varchar(255) DEFAULT NULL,
  `belong_dept` int(11) DEFAULT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  `create_datetime` datetime(6) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `remark` varchar(2000) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_dict_creator_id_a74b7b8d` (`creator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_dict
-- ----------------------------
INSERT INTO `system_dict` VALUES ('1', '超级管理员', null, '2022-12-24 14:20:33.408695', '2022-12-24 14:20:33.408695', '1', '项目状态', 'project_status', '1', null, '1');

-- ----------------------------
-- Table structure for `system_dict_item`
-- ----------------------------
DROP TABLE IF EXISTS `system_dict_item`;
CREATE TABLE `system_dict_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `modifier` varchar(255) DEFAULT NULL,
  `belong_dept` int(11) DEFAULT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  `create_datetime` datetime(6) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `remark` varchar(2000) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `dict_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `system_dict_item_creator_id_75bc03e7` (`creator_id`),
  KEY `system_dict_item_dict_id_787b070f` (`dict_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_dict_item
-- ----------------------------
INSERT INTO `system_dict_item` VALUES ('1', '超级管理员', null, '2022-12-24 14:20:33.423732', '2022-12-24 14:20:33.423732', '2', '未建', '未建', '1', null, '1', '1');
INSERT INTO `system_dict_item` VALUES ('2', '超级管理员', null, '2022-12-24 14:20:33.430729', '2022-12-24 14:20:33.430729', '1', '在建', '在建', '1', null, '1', '1');
INSERT INTO `system_dict_item` VALUES ('3', '超级管理员', null, '2022-12-24 14:20:33.438721', '2022-12-24 14:20:33.438721', '3', '竣工', '竣工', '1', null, '1', '1');

-- ----------------------------
-- Table structure for `system_file`
-- ----------------------------
DROP TABLE IF EXISTS `system_file`;
CREATE TABLE `system_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `belong_dept` int(11) DEFAULT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  `create_datetime` datetime(6) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `save_name` varchar(255) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  `size` bigint(20) DEFAULT NULL,
  `md5sum` varchar(36) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_file_creator_id_f4a6ecfa` (`creator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_file
-- ----------------------------

-- ----------------------------
-- Table structure for `system_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `system_login_log`;
CREATE TABLE `system_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `belong_dept` int(11) DEFAULT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  `create_datetime` datetime(6) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `agent` longtext,
  `browser` varchar(200) DEFAULT NULL,
  `os` varchar(200) DEFAULT NULL,
  `continent` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `isp` varchar(50) DEFAULT NULL,
  `area_code` varchar(50) DEFAULT NULL,
  `country_english` varchar(50) DEFAULT NULL,
  `country_code` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `login_type` int(11) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_login_log_creator_id_1c6a4055` (`creator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_login_log
-- ----------------------------
INSERT INTO `system_login_log` VALUES ('1', null, null, null, '2022-12-24 14:57:12.978713', '2022-12-24 14:57:12.978713', '1', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 87.0.4280', 'Chrome 87.0.4280', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', '1', '1');

-- ----------------------------
-- Table structure for `system_menu`
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `belong_dept` int(11) DEFAULT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  `create_datetime` datetime(6) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `icon` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `permission` varchar(64) DEFAULT NULL,
  `is_ext` tinyint(1) NOT NULL,
  `type` int(11) NOT NULL,
  `path` varchar(128) DEFAULT NULL,
  `redirect` varchar(128) DEFAULT NULL,
  `component` varchar(128) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `keepalive` tinyint(1) NOT NULL,
  `hide_menu` tinyint(1) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_menu_creator_id_d58495af` (`creator_id`),
  KEY `system_menu_parent_id_c715739f` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('1', null, '超级管理员', null, '2022-12-24 14:20:32.923168', '2022-12-24 14:20:32.923168', '2', 'ion:settings-outline', '系统管理', null, '0', '0', '/system', '/system/account', 'LAYOUT', null, '1', '0', '0', '1', null);
INSERT INTO `system_menu` VALUES ('2', null, '超级管理员', null, '2022-12-24 14:20:32.932169', '2022-12-24 14:20:32.932169', '3', 'ant-design:appstore-outlined', '系统工具', null, '0', '0', '/tool', null, 'LAYOUT', null, '1', '0', '0', '1', null);
INSERT INTO `system_menu` VALUES ('3', null, '超级管理员', null, '2022-12-24 14:20:32.941182', '2022-12-24 14:20:32.941182', '4', 'ant-design:code-filled', '日志管理', null, '0', '0', '/log', null, 'LAYOUT', null, '1', '0', '0', '1', null);
INSERT INTO `system_menu` VALUES ('4', null, '超级管理员', null, '2022-12-24 14:20:32.950169', '2022-12-24 14:20:32.950169', '1', 'ant-design:bars-outlined', '菜单管理', null, '0', '1', 'menu', null, '/fuadmin/system/menu/index', 'MenuManagement', '1', '0', '0', '1', '1');
INSERT INTO `system_menu` VALUES ('5', null, '超级管理员', null, '2022-12-24 14:20:32.957353', '2022-12-24 14:20:32.957353', '2', 'ant-design:contacts-outlined', '岗位管理', null, '0', '1', 'post', null, '/fuadmin/system/post/index', 'PostManagement', '1', '0', '0', '1', '1');
INSERT INTO `system_menu` VALUES ('6', null, '超级管理员', null, '2022-12-24 14:20:32.965357', '2022-12-24 14:20:32.965357', '3', 'ant-design:user-outlined', '用户管理', null, '0', '1', 'account', null, '/fuadmin/system/account/index', 'AccountManagement', '1', '0', '0', '1', '1');
INSERT INTO `system_menu` VALUES ('7', null, '超级管理员', null, '2022-12-24 14:20:32.974359', '2022-12-24 14:20:32.974359', '4', 'ant-design:project-outlined', '部门管理', null, '0', '1', 'dept', null, '/fuadmin/system/dept/index', 'DeptManagement', '1', '0', '0', '1', '1');
INSERT INTO `system_menu` VALUES ('8', null, '超级管理员', null, '2022-12-24 14:20:32.981354', '2022-12-24 14:20:32.981354', '5', 'ant-design:team-outlined', '角色管理', null, '0', '1', 'role', null, '/fuadmin/system/role/index', 'RoleManagement', '1', '0', '0', '1', '1');
INSERT INTO `system_menu` VALUES ('9', null, '超级管理员', null, '2022-12-24 14:20:32.988349', '2022-12-24 14:20:32.988349', '1', 'ant-design:database-outlined', '数据字典', null, '0', '1', 'dict', null, '/fuadmin/system/data-dict/index', 'DataDict', '1', '0', '0', '1', '2');
INSERT INTO `system_menu` VALUES ('10', null, '超级管理员', null, '2022-12-24 14:20:32.995353', '2022-12-24 14:20:32.995353', '2', 'ant-design:database-filled', '分类字典', null, '0', '1', 'category', null, '/fuadmin/system/category_dict/index', 'CategoryDict', '1', '0', '0', '1', '2');
INSERT INTO `system_menu` VALUES ('11', null, '超级管理员', null, '2022-12-24 14:20:33.002357', '2022-12-24 14:20:33.002357', '3', 'ant-design:clock-circle-outlined', '定时任务', null, '0', '1', 'celery', null, '/fuadmin/system/celery/index', 'Celery', '1', '0', '0', '1', '2');
INSERT INTO `system_menu` VALUES ('12', null, '超级管理员', null, '2022-12-24 14:20:33.009372', '2022-12-24 14:20:33.009372', '4', 'ant-design:folder-open-outlined', '文件管理', null, '0', '1', 'file', null, '/fuadmin/system/file/index', 'FileManagement', '1', '0', '0', '1', '2');
INSERT INTO `system_menu` VALUES ('13', null, '超级管理员', null, '2022-12-24 14:20:33.017355', '2022-12-24 14:20:33.017355', '1', 'ant-design:book-outlined', '登录日志', null, '0', '1', 'login_log', null, '/fuadmin/system/log/login_log/index', 'LoginLogManagement', '1', '0', '0', '1', '3');
INSERT INTO `system_menu` VALUES ('14', null, '超级管理员', null, '2022-12-24 14:20:33.024359', '2022-12-24 14:20:33.024359', '2', 'ant-design:book-outlined', '操作日志', null, '0', '1', 'operation_log', null, '/fuadmin/system/log/operation_log/index', 'OperationLogManagement', '1', '0', '0', '1', '3');
INSERT INTO `system_menu` VALUES ('15', null, '超级管理员', null, '2022-12-24 14:20:33.031353', '2022-12-24 14:20:33.031353', '3', 'ant-design:book-outlined', '任务日志', null, '0', '1', 'celery_log', null, '/fuadmin/system/log/celery_log/index', 'CeleryLog', '1', '0', '0', '1', '3');
INSERT INTO `system_menu` VALUES ('16', null, '超级管理员', null, '2022-12-24 14:20:33.039564', '2022-12-24 14:20:33.039564', '1', 'bx:bx-home', 'Dashboard', null, '0', '0', '/dashboard', '/dashboard/analysis', 'LAYOUT', null, '1', '0', '0', '1', null);
INSERT INTO `system_menu` VALUES ('17', null, '超级管理员', null, '2022-12-24 14:20:33.047571', '2022-12-24 14:20:33.047571', '1', 'bx:bx-home', '分析页', null, '0', '1', 'analysis', null, '/dashboard/analysis/index', 'Analysis', '1', '0', '0', '1', '16');
INSERT INTO `system_menu` VALUES ('18', null, '超级管理员', null, '2022-12-24 14:20:33.056565', '2022-12-24 14:20:33.056565', '2', 'bx:bx-home', '工作台', null, '0', '1', 'workbench', null, '/dashboard/workbench/index', 'Workbench', '1', '0', '0', '1', '16');
INSERT INTO `system_menu` VALUES ('19', null, '超级管理员', null, '2022-12-24 14:20:33.063563', '2022-12-24 14:20:33.063563', '6', 'ant-design:setting-outlined', '个人设置', null, '0', '1', 'account/setting/:id', null, '/fuadmin/system/account/setting/index', 'AccountSetting', '1', '0', '0', '1', '1');
INSERT INTO `system_menu` VALUES ('20', null, '超级管理员', null, '2022-12-24 14:20:33.071559', '2022-12-24 14:20:33.071559', '5', 'ant-design:bar-chart-outlined', '图表演示', null, '0', '0', '/chart', '/chart/amap', 'LAYOUT', null, '1', '0', '0', '1', null);
INSERT INTO `system_menu` VALUES ('21', null, '超级管理员', null, '2022-12-24 14:20:33.078562', '2022-12-24 14:20:33.078562', '1', 'ant-design:environment-outlined', '百度地图', null, '0', '1', 'bmap', null, '/fuadmin/charts/map/Baidu', 'BaiduMap', '1', '0', '0', '1', '20');
INSERT INTO `system_menu` VALUES ('22', null, '超级管理员', null, '2022-12-24 14:20:33.086565', '2022-12-24 14:20:33.086565', '2', 'ant-design:environment-outlined', '高德地图', null, '0', '1', 'amap', null, '/fuadmin/charts/map/Gaode', 'AMap', '1', '0', '0', '1', '20');
INSERT INTO `system_menu` VALUES ('23', null, '超级管理员', null, '2022-12-24 14:20:33.094564', '2022-12-24 14:20:33.094564', '3', 'ant-design:bar-chart-outlined', 'Echart Map', null, '0', '1', 'echartmap', null, '/fuadmin/charts/Map', 'AMap', '1', '0', '0', '1', '20');
INSERT INTO `system_menu` VALUES ('24', null, '超级管理员', null, '2022-12-24 14:20:33.102562', '2022-12-24 14:20:33.102562', '7', 'ant-design:audit-outlined', '项目演示', null, '0', '1', '/demo', null, '/demo/index', 'Demo', '1', '0', '0', '1', null);
INSERT INTO `system_menu` VALUES ('25', null, '超级管理员', null, '2022-12-24 14:20:33.110561', '2022-12-24 14:20:33.110561', '6', 'ant-design:fund-projection-screen-outlined', '运维管理', null, '0', '0', '/operation', '/chart/amap', 'LAYOUT', null, '1', '0', '0', '1', null);
INSERT INTO `system_menu` VALUES ('26', null, '超级管理员', null, '2022-12-24 14:20:33.118570', '2022-12-24 14:20:33.118570', '1', 'ant-design:monitor-outlined', '服务监控', null, '0', '1', 'monitor', null, '/fuadmin/system/monitor/server', 'Server', '1', '0', '0', '1', '25');

-- ----------------------------
-- Table structure for `system_menu_button`
-- ----------------------------
DROP TABLE IF EXISTS `system_menu_button`;
CREATE TABLE `system_menu_button` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `belong_dept` int(11) DEFAULT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  `create_datetime` datetime(6) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `api` varchar(200) NOT NULL,
  `method` int(11) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `system_menu_button_creator_id_c3d89b15` (`creator_id`),
  KEY `system_menu_button_menu_id_eb56b604` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_menu_button
-- ----------------------------
INSERT INTO `system_menu_button` VALUES ('1', null, '超级管理员', null, '2022-12-24 14:20:33.132557', '2022-12-24 14:20:33.132557', '1', '新增', 'post:add', '/api/system/post', '1', '1', '5');
INSERT INTO `system_menu_button` VALUES ('2', '', '超级管理员', null, '2022-12-24 14:20:33.140561', '2022-12-24 14:20:33.140561', '2', '删除', 'post:delete', '/api/system/post/{post_id}', '3', '1', '5');
INSERT INTO `system_menu_button` VALUES ('3', null, '超级管理员', null, '2022-12-24 14:20:33.147561', '2022-12-24 14:20:33.147561', '3', '编辑', 'post:update', '/api/system/post/{post_id}', '2', '1', '5');
INSERT INTO `system_menu_button` VALUES ('4', '', '超级管理员', null, '2022-12-24 14:20:33.155566', '2022-12-24 14:20:33.155566', '4', '查询', 'post:search', '/api/system/post', '0', '1', '5');
INSERT INTO `system_menu_button` VALUES ('5', null, '超级管理员', null, '2022-12-24 14:20:33.162562', '2022-12-24 14:20:33.162562', '1', '新增', 'menu:add', '/api/system/menu', '1', '1', '4');
INSERT INTO `system_menu_button` VALUES ('6', null, '超级管理员', null, '2022-12-24 14:20:33.169559', '2022-12-24 14:20:33.169559', '2', '删除', 'menu:delete', '/api/system/menu/{menu_id}', '3', '1', '4');
INSERT INTO `system_menu_button` VALUES ('7', null, '超级管理员', null, '2022-12-24 14:20:33.175561', '2022-12-24 14:20:33.175561', '3', '编辑', 'menu:update', '/api/system/menu/{menu_id}', '2', '1', '4');
INSERT INTO `system_menu_button` VALUES ('8', null, '超级管理员', null, '2022-12-24 14:20:33.181561', '2022-12-24 14:20:33.181561', '4', '查询', 'menu:search', '/api/system/menu', '0', '1', '4');
INSERT INTO `system_menu_button` VALUES ('9', null, '超级管理员', null, '2022-12-24 14:20:33.188573', '2022-12-24 14:20:33.188573', '4', '按钮查询', 'button:add', '/api/system/menu_button', '0', '1', '8');
INSERT INTO `system_menu_button` VALUES ('10', null, '超级管理员', null, '2022-12-24 14:20:33.195559', '2022-12-24 14:20:33.195559', '7', '按钮编辑', 'button:update', '/api/system/menu_button/{menu_button_id}', '2', '1', '4');
INSERT INTO `system_menu_button` VALUES ('11', '', '超级管理员', null, '2022-12-24 14:20:33.203569', '2022-12-24 14:20:33.203569', '5', '按钮新增', 'button:add', '/api/system/menu_button', '1', '1', '4');
INSERT INTO `system_menu_button` VALUES ('12', '', '超级管理员', null, '2022-12-24 14:20:33.210561', '2022-12-24 14:20:33.210561', '6', '按钮删除', 'button:delete', '/api/system/menu_button/{menu_button}', '3', '1', '4');
INSERT INTO `system_menu_button` VALUES ('13', null, '超级管理员', null, '2022-12-24 14:20:33.217561', '2022-12-24 14:20:33.217561', '1', '新增', 'user:add', '/api/system/user', '1', '1', '6');
INSERT INTO `system_menu_button` VALUES ('14', null, '超级管理员', null, '2022-12-24 14:20:33.223562', '2022-12-24 14:20:33.223562', '2', '删除', 'user:delete', '/api/system/user/{user_id}', '3', '1', '6');
INSERT INTO `system_menu_button` VALUES ('15', null, '超级管理员', null, '2022-12-24 14:20:33.231185', '2022-12-24 14:20:33.231185', '3', '修改', 'user:update', '/api/system/user/{user_id}', '2', '1', '6');
INSERT INTO `system_menu_button` VALUES ('16', '', '超级管理员', null, '2022-12-24 14:20:33.237186', '2022-12-24 14:20:33.237186', '4', '查询', 'user:search', '/api/system/user', '0', '1', '6');
INSERT INTO `system_menu_button` VALUES ('17', null, '超级管理员', null, '2022-12-24 14:20:33.244182', '2022-12-24 14:20:33.244182', '1', '新增', 'dept:add', '/api/system/dept', '1', '1', '7');
INSERT INTO `system_menu_button` VALUES ('18', null, '超级管理员', null, '2022-12-24 14:20:33.251190', '2022-12-24 14:20:33.251190', '2', '删除', 'dept:delete', '/api/system/dept/{dept_id}', '3', '1', '7');
INSERT INTO `system_menu_button` VALUES ('19', null, '超级管理员', null, '2022-12-24 14:20:33.258186', '2022-12-24 14:20:33.258186', '3', '修改', 'dept:update', '/api/system/dept/{dept_id}', '2', '1', '7');
INSERT INTO `system_menu_button` VALUES ('20', null, '超级管理员', null, '2022-12-24 14:20:33.266185', '2022-12-24 14:20:33.266185', '4', '查询', 'dept:search', '/api/system/dept', '0', '1', '7');
INSERT INTO `system_menu_button` VALUES ('21', null, '超级管理员', null, '2022-12-24 14:20:33.274181', '2022-12-24 14:20:33.274181', '1', '新增', 'role:add', '/api/system/role', '1', '1', '8');
INSERT INTO `system_menu_button` VALUES ('22', null, '超级管理员', null, '2022-12-24 14:20:33.283188', '2022-12-24 14:20:33.283188', '2', '删除', 'role:delete', '/api/system/role/{role_id}', '3', '1', '8');
INSERT INTO `system_menu_button` VALUES ('23', null, '超级管理员', null, '2022-12-24 14:20:33.292185', '2022-12-24 14:20:33.292185', '3', '修改', 'role:update', '/api/system/role/{role_id}', '2', '1', '8');
INSERT INTO `system_menu_button` VALUES ('24', '', '超级管理员', null, '2022-12-24 14:20:33.300184', '2022-12-24 14:20:33.300184', '4', '查询', 'role:search', '/api/system/role', '0', '1', '8');
INSERT INTO `system_menu_button` VALUES ('25', null, '超级管理员', null, '2022-12-24 14:20:33.308194', '2022-12-24 14:20:33.308194', '1', '新增', 'dict:add', '/api/dict/post', '1', '1', '9');
INSERT INTO `system_menu_button` VALUES ('26', null, '超级管理员', null, '2022-12-24 14:20:33.316189', '2022-12-24 14:20:33.316189', '2', '删除', 'dict:delete', '/api/system/dict/{dict_id}', '3', '1', '9');
INSERT INTO `system_menu_button` VALUES ('27', null, '超级管理员', null, '2022-12-24 14:20:33.324192', '2022-12-24 14:20:33.324192', '3', '编辑', 'dict:update', '/api/system/dict/{dict_id}', '2', '1', '9');
INSERT INTO `system_menu_button` VALUES ('28', null, '超级管理员', null, '2022-12-24 14:20:33.332185', '2022-12-24 14:20:33.332185', '4', '查询', 'dict:search', '/api/system/dict', '0', '1', '9');
INSERT INTO `system_menu_button` VALUES ('29', null, '超级管理员', null, '2022-12-24 14:20:33.339182', '2022-12-24 14:20:33.339182', '1', '新增', 'category:add', '/api/system/category_dict', '1', '1', '10');
INSERT INTO `system_menu_button` VALUES ('30', null, '超级管理员', null, '2022-12-24 14:20:33.347184', '2022-12-24 14:20:33.347184', '2', '删除', 'category:delete', '/api/system/category_dict/{category_dict_id}', '3', '1', '10');
INSERT INTO `system_menu_button` VALUES ('31', null, '超级管理员', null, '2022-12-24 14:20:33.354186', '2022-12-24 14:20:33.354186', '3', '编辑', 'category:update', '/api/system/category_dict/{category_dict_id}', '2', '1', '10');
INSERT INTO `system_menu_button` VALUES ('32', null, '超级管理员', null, '2022-12-24 14:20:33.362562', '2022-12-24 14:20:33.362562', '4', '查询', 'category:search', '/api/system/category_dict', '0', '1', '10');
INSERT INTO `system_menu_button` VALUES ('33', null, '超级管理员', null, '2022-12-24 14:20:33.371552', '2022-12-24 14:20:33.372555', '1', '新增', 'demo:add', '/api/demo/demo', '1', '1', '24');
INSERT INTO `system_menu_button` VALUES ('34', null, '超级管理员', null, '2022-12-24 14:20:33.379554', '2022-12-24 14:20:33.379554', '2', '删除', 'demo:delete', '/api/demo/demo/{demo_id}', '3', '1', '24');
INSERT INTO `system_menu_button` VALUES ('35', null, '超级管理员', null, '2022-12-24 14:20:33.386552', '2022-12-24 14:20:33.386552', '2', '修改', 'demo:update', '/api/demo/demo/{demo_id}', '3', '1', '24');
INSERT INTO `system_menu_button` VALUES ('36', null, '超级管理员', null, '2022-12-24 14:20:33.393552', '2022-12-24 14:20:33.393552', '4', '查询', 'demo:search', '/api/demo/demo', '0', '1', '24');

-- ----------------------------
-- Table structure for `system_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `system_operation_log`;
CREATE TABLE `system_operation_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `belong_dept` int(11) DEFAULT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  `create_datetime` datetime(6) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `request_username` varchar(50) DEFAULT NULL,
  `request_modular` varchar(64) DEFAULT NULL,
  `request_path` varchar(400) DEFAULT NULL,
  `request_body` longtext,
  `request_method` varchar(8) DEFAULT NULL,
  `request_msg` longtext,
  `request_ip` varchar(32) DEFAULT NULL,
  `request_browser` varchar(64) DEFAULT NULL,
  `response_code` varchar(32) DEFAULT NULL,
  `request_os` varchar(64) DEFAULT NULL,
  `json_result` longtext,
  `status` tinyint(1) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_operation_log_creator_id_5407dfa5` (`creator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_operation_log
-- ----------------------------
INSERT INTO `system_operation_log` VALUES ('1', null, null, null, '2022-12-24 14:35:05.207900', '2022-12-24 14:35:05.207900', '1', 'superadmin', null, '/api/system/login', '{\'password\': \'******\', \'username\': \'superadmin\'}', 'POST', null, '127.0.0.1', 'Chrome 87.0.4280', '500', 'Windows 10', '{\'code\': 500, \'msg\': []}', '0', '1');
INSERT INTO `system_operation_log` VALUES ('2', null, null, null, '2022-12-24 14:35:11.538952', '2022-12-24 14:35:11.538952', '1', 'superadmin', null, '/api/system/login', '{\'password\': \'******\', \'username\': \'superadmin\'}', 'POST', null, '127.0.0.1', 'Chrome 87.0.4280', '500', 'Windows 10', '{\'code\': 500, \'msg\': []}', '0', '1');
INSERT INTO `system_operation_log` VALUES ('3', null, null, null, '2022-12-24 14:35:31.319353', '2022-12-24 14:35:31.319353', '1', 'superadmin', null, '/api/system/login', '{\'password\': \'******\', \'username\': \'superadmin\'}', 'POST', null, '127.0.0.1', 'Chrome 87.0.4280', '500', 'Windows 10', '{\'code\': 500, \'msg\': []}', '0', '1');
INSERT INTO `system_operation_log` VALUES ('4', null, null, null, '2022-12-24 14:42:53.622586', '2022-12-24 14:42:53.622586', '1', 'superadmin', null, '/api/system/login', '{\'username\': \'superadmin\', \'password\': \'******\'}', 'POST', null, '127.0.0.1', 'Chrome 87.0.4280', '500', 'Windows 10', '{\'code\': 500, \'msg\': []}', '0', '1');
INSERT INTO `system_operation_log` VALUES ('5', null, null, null, '2022-12-24 14:45:34.571091', '2022-12-24 14:45:34.571091', '1', 'superadmin', null, '/api/system/login', '{\'username\': \'superadmin\', \'password\': \'******\'}', 'POST', null, '127.0.0.1', 'Chrome 87.0.4280', '500', 'Windows 10', '{\'code\': 500, \'msg\': []}', '0', '1');
INSERT INTO `system_operation_log` VALUES ('6', null, null, null, '2022-12-24 14:48:21.189098', '2022-12-24 14:48:21.189098', '1', 'superadmin', null, '/api/system/login', '{\'username\': \'superadmin\', \'password\': \'******\'}', 'POST', null, '127.0.0.1', 'Chrome 87.0.4280', '500', 'Windows 10', '{\'code\': 500, \'msg\': []}', '0', '1');
INSERT INTO `system_operation_log` VALUES ('7', null, null, null, '2022-12-24 14:49:17.614919', '2022-12-24 14:49:17.614919', '1', 'superadmin', null, '/api/system/login', '{\'username\': \'superadmin\', \'password\': \'******\'}', 'POST', null, '127.0.0.1', 'Chrome 87.0.4280', '500', 'Windows 10', '{\'code\': 500, \'msg\': []}', '0', '1');
INSERT INTO `system_operation_log` VALUES ('8', null, null, null, '2022-12-24 14:49:58.760175', '2022-12-24 14:49:58.760175', '1', 'superadmin', null, '/api/system/login', '{\'username\': \'superadmin\', \'password\': \'******\'}', 'POST', null, '127.0.0.1', 'Chrome 87.0.4280', '500', 'Windows 10', '{\'code\': 500, \'msg\': []}', '0', '1');
INSERT INTO `system_operation_log` VALUES ('9', null, null, null, '2022-12-24 14:57:12.993714', '2022-12-24 14:57:12.993714', '1', 'superadmin', null, '/api/system/login', '{\'password\': \'******\', \'username\': \'superadmin\'}', 'POST', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'multi_depart\': \'1\', \'sysAllDictItems\': \'q\', \'departs\': \'e\', \'userInfo\': {\'last_login\': None, \'is_superuser\': True, \'is_staff\': True, \'is_active\': True, \'date_joined\': \'2022-12-24T14:20:33.469\', \'id\': 1, \'remark\': None, \'creator\': None, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': None, \'create_datetime\': None, \'sort\': 1, \'username\': \'superadmin\', \'email\': \'\', \'mobile\': None, \'avatar\': None, \'name\': \'超级管理员\', \'status\': True, \'gender\': 1, \'user_type\': 0, \'dept\': None, \'first_name\': \'\', \'last_name\': \'\', \'groups\': [], \'user_permissions\': []}, \'token\': \'bearer eyJ0eXBlIjogIkpXVCIsICJhbGciOiAiSFMyNTYifQ.eyJleHAiOiAxNjcxOTA4MjMxLCAibGFzdF9sb2dpbiI6IG51bGwsICJpc19zdXBlcnVzZXIiOiB0cnVlLCAiaXNfc3RhZmYiOiB0cnVlLCAiaXNfYWN0aXZlIjogdHJ1ZSwgImRhdGVfam9pbmVkIjogIjIwMjItMTItMjQgMTQ6MjA6MzMiLCAiaWQiOiAxLCAicmVtYXJrIjogbnVsbCwgImNyZWF0b3IiOiBudWxsLCAibW9kaWZpZXIiOiBudWxsLCAiYmVsb25nX2RlcHQiOiBudWxsLCAic29ydCI6IDEsICJ1c2VybmFtZSI6ICJzdXBlcmFkbWluIiwgImVtYWlsIjogIiIsICJtb2JpbGUiOiBudWxsLCAibmFtZSI6ICJcdThkODVcdTdlYTdcdTdiYTFcdTc0MDZcdTU0NTgiLCAic3RhdHVzIjogdHJ1ZSwgImdlbmRlciI6IDEsICJ1c2VyX3R5cGUiOiAwLCAiZGVwdCI6IG51bGwsICJmaXJzdF9uYW1lIjogIiIsICJsYXN0X25hbWUiOiAiIiwgImdyb3VwcyI6IFtdLCAidXNlcl9wZXJtaXNzaW9ucyI6IFtdLCAicG9zdCI6IFtdLCAicm9sZSI6IFtdfQ.73r7VN2l2tpT1nOAHPQ7muY48w3fVEkcmvgOR0D4pwI\'}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('10', null, null, null, '2022-12-24 14:57:13.173515', '2022-12-24 14:57:13.173515', '1', 'superadmin', null, '/api/system/userinfo', '{\'_t\': \'1671865033013\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'last_login\': None, \'is_superuser\': True, \'is_staff\': True, \'is_active\': True, \'date_joined\': \'2022-12-24T14:20:33.469\', \'id\': 1, \'remark\': None, \'creator\': None, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:20:33.483\', \'create_datetime\': \'2022-12-24T14:20:33.483\', \'sort\': 1, \'username\': \'superadmin\', \'email\': \'\', \'mobile\': None, \'avatar\': None, \'name\': \'超级管理员\', \'status\': True, \'gender\': 1, \'user_type\': 0, \'dept\': None, \'first_name\': \'\', \'last_name\': \'\', \'groups\': [], \'user_permissions\': []}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('11', null, null, null, '2022-12-24 14:57:13.289590', '2022-12-24 14:57:13.289590', '1', 'superadmin', null, '/api/system/permCode', '{\'_t\': \'1671865033210\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': [\'post:add\', \'menu:add\', \'user:add\', \'dept:add\', \'role:add\', \'dict:add\', \'category:add\', \'demo:add\', \'post:delete\', \'menu:delete\', \'user:delete\', \'dept:delete\', \'role:delete\', \'dict:delete\', \'category:delete\', \'demo:delete\', \'demo:update\', \'post:update\', \'menu:update\', \'user:update\', \'dept:update\', \'role:update\', \'dict:update\', \'category:update\', \'post:search\', \'menu:search\', \'button:add\', \'user:search\', \'dept:search\', \'role:search\', \'dict:search\', \'category:search\', \'demo:search\', \'button:add\', \'button:delete\', \'button:update\']}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('12', null, null, null, '2022-12-24 14:57:13.347593', '2022-12-24 14:57:13.347593', '1', 'superadmin', null, '/api/system/menu/route/tree', '{\'_t\': \'1671865033210\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': [{\'id\': 16, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/dashboard\', \'redirect\': \'/dashboard/analysis\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'Dashboard\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'bx:bx-home\'}, \'choice\': 0, \'children\': [{\'id\': 17, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 16, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'analysis\', \'redirect\': None, \'component\': \'/dashboard/analysis/index\', \'name\': \'Analysis\', \'status\': True, \'meta\': {\'title\': \'分析页\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'bx:bx-home\'}, \'choice\': 1, \'children\': []}, {\'id\': 18, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 16, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'workbench\', \'redirect\': None, \'component\': \'/dashboard/workbench/index\', \'name\': \'Workbench\', \'status\': True, \'meta\': {\'title\': \'工作台\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'bx:bx-home\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 1, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/system\', \'redirect\': \'/system/account\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'系统管理\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ion:settings-outline\'}, \'choice\': 0, \'children\': [{\'id\': 4, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'menu\', \'redirect\': None, \'component\': \'/fuadmin/system/menu/index\', \'name\': \'MenuManagement\', \'status\': True, \'meta\': {\'title\': \'菜单管理\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:bars-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 5, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'post\', \'redirect\': None, \'component\': \'/fuadmin/system/post/index\', \'name\': \'PostManagement\', \'status\': True, \'meta\': {\'title\': \'岗位管理\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ant-design:contacts-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 6, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'account\', \'redirect\': None, \'component\': \'/fuadmin/system/account/index\', \'name\': \'AccountManagement\', \'status\': True, \'meta\': {\'title\': \'用户管理\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:user-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 7, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'dept\', \'redirect\': None, \'component\': \'/fuadmin/system/dept/index\', \'name\': \'DeptManagement\', \'status\': True, \'meta\': {\'title\': \'部门管理\', \'ignoreKeepAlive\': False, \'orderNo\': 4, \'hideMenu\': False, \'icon\': \'ant-design:project-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 8, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'role\', \'redirect\': None, \'component\': \'/fuadmin/system/role/index\', \'name\': \'RoleManagement\', \'status\': True, \'meta\': {\'title\': \'角色管理\', \'ignoreKeepAlive\': False, \'orderNo\': 5, \'hideMenu\': False, \'icon\': \'ant-design:team-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 19, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'account/setting/:id\', \'redirect\': None, \'component\': \'/fuadmin/system/account/setting/index\', \'name\': \'AccountSetting\', \'status\': True, \'meta\': {\'title\': \'个人设置\', \'ignoreKeepAlive\': False, \'orderNo\': 6, \'hideMenu\': False, \'icon\': \'ant-design:setting-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 2, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/tool\', \'redirect\': None, \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'系统工具\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:appstore-outlined\'}, \'choice\': 0, \'children\': [{\'id\': 9, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 2, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'dict\', \'redirect\': None, \'component\': \'/fuadmin/system/data-dict/index\', \'name\': \'DataDict\', \'status\': True, \'meta\': {\'title\': \'数据字典\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:database-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 10, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 2, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'category\', \'redirect\': None, \'component\': \'/fuadmin/system/category_dict/index\', \'name\': \'CategoryDict\', \'status\': True, \'meta\': {\'title\': \'分类字典\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ant-design:database-filled\'}, \'choice\': 1, \'children\': []}, {\'id\': 11, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 2, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'celery\', \'redirect\': None, \'component\': \'/fuadmin/system/celery/index\', \'name\': \'Celery\', \'status\': True, \'meta\': {\'title\': \'定时任务\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:clock-circle-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 12, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 2, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'file\', \'redirect\': None, \'component\': \'/fuadmin/system/file/index\', \'name\': \'FileManagement\', \'status\': True, \'meta\': {\'title\': \'文件管理\', \'ignoreKeepAlive\': False, \'orderNo\': 4, \'hideMenu\': False, \'icon\': \'ant-design:folder-open-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 3, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/log\', \'redirect\': None, \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'日志管理\', \'ignoreKeepAlive\': False, \'orderNo\': 4, \'hideMenu\': False, \'icon\': \'ant-design:code-filled\'}, \'choice\': 0, \'children\': [{\'id\': 13, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 3, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'login_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/login_log/index\', \'name\': \'LoginLogManagement\', \'status\': True, \'meta\': {\'title\': \'登录日志\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:book-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 14, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 3, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'operation_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/operation_log/index\', \'name\': \'OperationLogManagement\', \'status\': True, \'meta\': {\'title\': \'操作日志\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ant-design:book-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 15, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 3, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'celery_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/celery_log/index\', \'name\': \'CeleryLog\', \'status\': True, \'meta\': {\'title\': \'任务日志\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:book-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 20, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/chart\', \'redirect\': \'/chart/amap\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'图表演示\', \'ignoreKeepAlive\': False, \'orderNo\': 5, \'hideMenu\': False, \'icon\': \'ant-design:bar-chart-outlined\'}, \'choice\': 0, \'children\': [{\'id\': 21, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 20, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'bmap\', \'redirect\': None, \'component\': \'/fuadmin/charts/map/Baidu\', \'name\': \'BaiduMap\', \'status\': True, \'meta\': {\'title\': \'百度地图\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:environment-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 22, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 20, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'amap\', \'redirect\': None, \'component\': \'/fuadmin/charts/map/Gaode\', \'name\': \'AMap\', \'status\': True, \'meta\': {\'title\': \'高德地图\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ant-design:environment-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 23, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 20, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'echartmap\', \'redirect\': None, \'component\': \'/fuadmin/charts/Map\', \'name\': \'AMap\', \'status\': True, \'meta\': {\'title\': \'Echart Map\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:bar-chart-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 25, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/operation\', \'redirect\': \'/chart/amap\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'运维管理\', \'ignoreKeepAlive\': False, \'orderNo\': 6, \'hideMenu\': False, \'icon\': \'ant-design:fund-projection-screen-outlined\'}, \'choice\': 0, \'children\': [{\'id\': 26, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 25, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'monitor\', \'redirect\': None, \'component\': \'/fuadmin/system/monitor/server\', \'name\': \'Server\', \'status\': True, \'meta\': {\'title\': \'服务监控\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:monitor-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 24, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'/demo\', \'redirect\': None, \'component\': \'/demo/index\', \'name\': \'Demo\', \'status\': True, \'meta\': {\'title\': \'项目演示\', \'ignoreKeepAlive\': False, \'orderNo\': 7, \'hideMenu\': False, \'icon\': \'ant-design:audit-outlined\'}, \'choice\': 1, \'children\': []}]}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('13', null, null, null, '2022-12-24 14:58:22.411593', '2022-12-24 14:58:22.411593', '1', 'superadmin', null, '/api/system/login_log', '{\'page\': \'1\', \'pageSize\': \'10\', \'_t\': \'1671865102320\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [{\'id\': 1, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:57:12.978\', \'create_datetime\': \'2022-12-24T14:57:12.978\', \'sort\': 1, \'username\': \'superadmin\', \'ip\': \'127.0.0.1\', \'agent\': \'PC / Windows 10 / Chrome 87.0.4280\', \'browser\': \'Chrome 87.0.4280\', \'os\': \'Windows 10\', \'continent\': \'\', \'country\': \'保留\', \'province\': \'\', \'city\': \'\', \'district\': \'\', \'isp\': \'\', \'area_code\': \'\', \'country_english\': \'\', \'country_code\': \'\', \'longitude\': \'\', \'latitude\': \'\', \'login_type\': 1}], \'total\': 1}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('14', null, null, null, '2022-12-24 14:58:28.096678', '2022-12-24 14:58:28.096678', '1', 'superadmin', null, '/api/system/operation_log', '{\'page\': \'1\', \'pageSize\': \'10\', \'_t\': \'1671865108014\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [{\'id\': 13, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:58:22.411\', \'create_datetime\': \'2022-12-24T14:58:22.411\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/login_log\', \'request_body\': \"{\'page\': \'1\', \'pageSize\': \'10\', \'_t\': \'1671865102320\'}\", \'request_method\': \'GET\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'2000\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 2000, \'msg\': {\'items\': [{\'id\': 1, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:57:12.978\', \'create_datetime\': \'2022-12-24T14:57:12.978\', \'sort\': 1, \'username\': \'superadmin\', \'ip\': \'127.0.0.1\', \'agent\': \'PC / Windows 10 / Chrome 87.0.4280\', \'browser\': \'Chrome 87.0.4280\', \'os\': \'Windows 10\', \'continent\': \'\', \'country\': \'保留\', \'province\': \'\', \'city\': \'\', \'district\': \'\', \'isp\': \'\', \'area_code\': \'\', \'country_english\': \'\', \'country_code\': \'\', \'longitude\': \'\', \'latitude\': \'\', \'login_type\': 1}], \'total\': 1}}\", \'status\': True}, {\'id\': 12, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:57:13.347\', \'create_datetime\': \'2022-12-24T14:57:13.347\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/menu/route/tree\', \'request_body\': \"{\'_t\': \'1671865033210\'}\", \'request_method\': \'GET\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'2000\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 2000, \'msg\': [{\'id\': 16, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/dashboard\', \'redirect\': \'/dashboard/analysis\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'Dashboard\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'bx:bx-home\'}, \'choice\': 0, \'children\': [{\'id\': 17, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 16, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'analysis\', \'redirect\': None, \'component\': \'/dashboard/analysis/index\', \'name\': \'Analysis\', \'status\': True, \'meta\': {\'title\': \'分析页\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'bx:bx-home\'}, \'choice\': 1, \'children\': []}, {\'id\': 18, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 16, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'workbench\', \'redirect\': None, \'component\': \'/dashboard/workbench/index\', \'name\': \'Workbench\', \'status\': True, \'meta\': {\'title\': \'工作台\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'bx:bx-home\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 1, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/system\', \'redirect\': \'/system/account\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'系统管理\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ion:settings-outline\'}, \'choice\': 0, \'children\': [{\'id\': 4, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'menu\', \'redirect\': None, \'component\': \'/fuadmin/system/menu/index\', \'name\': \'MenuManagement\', \'status\': True, \'meta\': {\'title\': \'菜单管理\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:bars-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 5, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'post\', \'redirect\': None, \'component\': \'/fuadmin/system/post/index\', \'name\': \'PostManagement\', \'status\': True, \'meta\': {\'title\': \'岗位管理\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ant-design:contacts-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 6, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'account\', \'redirect\': None, \'component\': \'/fuadmin/system/account/index\', \'name\': \'AccountManagement\', \'status\': True, \'meta\': {\'title\': \'用户管理\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:user-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 7, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'dept\', \'redirect\': None, \'component\': \'/fuadmin/system/dept/index\', \'name\': \'DeptManagement\', \'status\': True, \'meta\': {\'title\': \'部门管理\', \'ignoreKeepAlive\': False, \'orderNo\': 4, \'hideMenu\': False, \'icon\': \'ant-design:project-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 8, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'role\', \'redirect\': None, \'component\': \'/fuadmin/system/role/index\', \'name\': \'RoleManagement\', \'status\': True, \'meta\': {\'title\': \'角色管理\', \'ignoreKeepAlive\': False, \'orderNo\': 5, \'hideMenu\': False, \'icon\': \'ant-design:team-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 19, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'account/setting/:id\', \'redirect\': None, \'component\': \'/fuadmin/system/account/setting/index\', \'name\': \'AccountSetting\', \'status\': True, \'meta\': {\'title\': \'个人设置\', \'ignoreKeepAlive\': False, \'orderNo\': 6, \'hideMenu\': False, \'icon\': \'ant-design:setting-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 2, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/tool\', \'redirect\': None, \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'系统工具\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:appstore-outlined\'}, \'choice\': 0, \'children\': [{\'id\': 9, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 2, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'dict\', \'redirect\': None, \'component\': \'/fuadmin/system/data-dict/index\', \'name\': \'DataDict\', \'status\': True, \'meta\': {\'title\': \'数据字典\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:database-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 10, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 2, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'category\', \'redirect\': None, \'component\': \'/fuadmin/system/category_dict/index\', \'name\': \'CategoryDict\', \'status\': True, \'meta\': {\'title\': \'分类字典\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ant-design:database-filled\'}, \'choice\': 1, \'children\': []}, {\'id\': 11, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 2, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'celery\', \'redirect\': None, \'component\': \'/fuadmin/system/celery/index\', \'name\': \'Celery\', \'status\': True, \'meta\': {\'title\': \'定时任务\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:clock-circle-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 12, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 2, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'file\', \'redirect\': None, \'component\': \'/fuadmin/system/file/index\', \'name\': \'FileManagement\', \'status\': True, \'meta\': {\'title\': \'文件管理\', \'ignoreKeepAlive\': False, \'orderNo\': 4, \'hideMenu\': False, \'icon\': \'ant-design:folder-open-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 3, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/log\', \'redirect\': None, \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'日志管理\', \'ignoreKeepAlive\': False, \'orderNo\': 4, \'hideMenu\': False, \'icon\': \'ant-design:code-filled\'}, \'choice\': 0, \'children\': [{\'id\': 13, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 3, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'login_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/login_log/index\', \'name\': \'LoginLogManagement\', \'status\': True, \'meta\': {\'title\': \'登录日志\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:book-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 14, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 3, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'operation_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/operation_log/index\', \'name\': \'OperationLogManagement\', \'status\': True, \'meta\': {\'title\': \'操作日志\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ant-design:book-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 15, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 3, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'celery_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/celery_log/index\', \'name\': \'CeleryLog\', \'status\': True, \'meta\': {\'title\': \'任务日志\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:book-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 20, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/chart\', \'redirect\': \'/chart/amap\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'图表演示\', \'ignoreKeepAlive\': False, \'orderNo\': 5, \'hideMenu\': False, \'icon\': \'ant-design:bar-chart-outlined\'}, \'choice\': 0, \'children\': [{\'id\': 21, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 20, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'bmap\', \'redirect\': None, \'component\': \'/fuadmin/charts/map/Baidu\', \'name\': \'BaiduMap\', \'status\': True, \'meta\': {\'title\': \'百度地图\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:environment-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 22, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 20, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'amap\', \'redirect\': None, \'component\': \'/fuadmin/charts/map/Gaode\', \'name\': \'AMap\', \'status\': True, \'meta\': {\'title\': \'高德地图\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ant-design:environment-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 23, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 20, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'echartmap\', \'redirect\': None, \'component\': \'/fuadmin/charts/Map\', \'name\': \'AMap\', \'status\': True, \'meta\': {\'title\': \'Echart Map\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:bar-chart-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 25, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/operation\', \'redirect\': \'/chart/amap\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'运维管理\', \'ignoreKeepAlive\': False, \'orderNo\': 6, \'hideMenu\': False, \'icon\': \'ant-design:fund-projection-screen-outlined\'}, \'choice\': 0, \'children\': [{\'id\': 26, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 25, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'monitor\', \'redirect\': None, \'component\': \'/fuadmin/system/monitor/server\', \'name\': \'Server\', \'status\': True, \'meta\': {\'title\': \'服务监控\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:monitor-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 24, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'/demo\', \'redirect\': None, \'component\': \'/demo/index\', \'name\': \'Demo\', \'status\': True, \'meta\': {\'title\': \'项目演示\', \'ignoreKeepAlive\': False, \'orderNo\': 7, \'hideMenu\': False, \'icon\': \'ant-design:audit-outlined\'}, \'choice\': 1, \'children\': []}]}\", \'status\': True}, {\'id\': 11, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:57:13.289\', \'create_datetime\': \'2022-12-24T14:57:13.289\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/permCode\', \'request_body\': \"{\'_t\': \'1671865033210\'}\", \'request_method\': \'GET\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'2000\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 2000, \'msg\': [\'post:add\', \'menu:add\', \'user:add\', \'dept:add\', \'role:add\', \'dict:add\', \'category:add\', \'demo:add\', \'post:delete\', \'menu:delete\', \'user:delete\', \'dept:delete\', \'role:delete\', \'dict:delete\', \'category:delete\', \'demo:delete\', \'demo:update\', \'post:update\', \'menu:update\', \'user:update\', \'dept:update\', \'role:update\', \'dict:update\', \'category:update\', \'post:search\', \'menu:search\', \'button:add\', \'user:search\', \'dept:search\', \'role:search\', \'dict:search\', \'category:search\', \'demo:search\', \'button:add\', \'button:delete\', \'button:update\']}\", \'status\': True}, {\'id\': 10, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:57:13.173\', \'create_datetime\': \'2022-12-24T14:57:13.173\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/userinfo\', \'request_body\': \"{\'_t\': \'1671865033013\'}\", \'request_method\': \'GET\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'2000\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 2000, \'msg\': {\'last_login\': None, \'is_superuser\': True, \'is_staff\': True, \'is_active\': True, \'date_joined\': \'2022-12-24T14:20:33.469\', \'id\': 1, \'remark\': None, \'creator\': None, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:20:33.483\', \'create_datetime\': \'2022-12-24T14:20:33.483\', \'sort\': 1, \'username\': \'superadmin\', \'email\': \'\', \'mobile\': None, \'avatar\': None, \'name\': \'超级管理员\', \'status\': True, \'gender\': 1, \'user_type\': 0, \'dept\': None, \'first_name\': \'\', \'last_name\': \'\', \'groups\': [], \'user_permissions\': []}}\", \'status\': True}, {\'id\': 9, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:57:12.993\', \'create_datetime\': \'2022-12-24T14:57:12.993\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/login\', \'request_body\': \"{\'password\': \'******\', \'username\': \'superadmin\'}\", \'request_method\': \'POST\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'2000\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 2000, \'msg\': {\'multi_depart\': \'1\', \'sysAllDictItems\': \'q\', \'departs\': \'e\', \'userInfo\': {\'last_login\': None, \'is_superuser\': True, \'is_staff\': True, \'is_active\': True, \'date_joined\': \'2022-12-24T14:20:33.469\', \'id\': 1, \'remark\': None, \'creator\': None, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': None, \'create_datetime\': None, \'sort\': 1, \'username\': \'superadmin\', \'email\': \'\', \'mobile\': None, \'avatar\': None, \'name\': \'超级管理员\', \'status\': True, \'gender\': 1, \'user_type\': 0, \'dept\': None, \'first_name\': \'\', \'last_name\': \'\', \'groups\': [], \'user_permissions\': []}, \'token\': \'bearer eyJ0eXBlIjogIkpXVCIsICJhbGciOiAiSFMyNTYifQ.eyJleHAiOiAxNjcxOTA4MjMxLCAibGFzdF9sb2dpbiI6IG51bGwsICJpc19zdXBlcnVzZXIiOiB0cnVlLCAiaXNfc3RhZmYiOiB0cnVlLCAiaXNfYWN0aXZlIjogdHJ1ZSwgImRhdGVfam9pbmVkIjogIjIwMjItMTItMjQgMTQ6MjA6MzMiLCAiaWQiOiAxLCAicmVtYXJrIjogbnVsbCwgImNyZWF0b3IiOiBudWxsLCAibW9kaWZpZXIiOiBudWxsLCAiYmVsb25nX2RlcHQiOiBudWxsLCAic29ydCI6IDEsICJ1c2VybmFtZSI6ICJzdXBlcmFkbWluIiwgImVtYWlsIjogIiIsICJtb2JpbGUiOiBudWxsLCAibmFtZSI6ICJcdThkODVcdTdlYTdcdTdiYTFcdTc0MDZcdTU0NTgiLCAic3RhdHVzIjogdHJ1ZSwgImdlbmRlciI6IDEsICJ1c2VyX3R5cGUiOiAwLCAiZGVwdCI6IG51bGwsICJmaXJzdF9uYW1lIjogIiIsICJsYXN0X25hbWUiOiAiIiwgImdyb3VwcyI6IFtdLCAidXNlcl9wZXJtaXNzaW9ucyI6IFtdLCAicG9zdCI6IFtdLCAicm9sZSI6IFtdfQ.73r7VN2l2tpT1nOAHPQ7muY48w3fVEkcmvgOR0D4pwI\'}}\", \'status\': True}, {\'id\': 8, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:49:58.760\', \'create_datetime\': \'2022-12-24T14:49:58.760\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/login\', \'request_body\': \"{\'username\': \'superadmin\', \'password\': \'******\'}\", \'request_method\': \'POST\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'500\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 500, \'msg\': []}\", \'status\': False}, {\'id\': 7, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:49:17.614\', \'create_datetime\': \'2022-12-24T14:49:17.614\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/login\', \'request_body\': \"{\'username\': \'superadmin\', \'password\': \'******\'}\", \'request_method\': \'POST\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'500\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 500, \'msg\': []}\", \'status\': False}, {\'id\': 6, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:48:21.189\', \'create_datetime\': \'2022-12-24T14:48:21.189\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/login\', \'request_body\': \"{\'username\': \'superadmin\', \'password\': \'******\'}\", \'request_method\': \'POST\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'500\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 500, \'msg\': []}\", \'status\': False}, {\'id\': 5, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:45:34.571\', \'create_datetime\': \'2022-12-24T14:45:34.571\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/login\', \'request_body\': \"{\'username\': \'superadmin\', \'password\': \'******\'}\", \'request_method\': \'POST\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'500\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 500, \'msg\': []}\", \'status\': False}, {\'id\': 4, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:42:53.622\', \'create_datetime\': \'2022-12-24T14:42:53.622\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/login\', \'request_body\': \"{\'username\': \'superadmin\', \'password\': \'******\'}\", \'request_method\': \'POST\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'500\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 500, \'msg\': []}\", \'status\': False}], \'total\': 13}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('15', null, null, null, '2022-12-24 14:58:36.749723', '2022-12-24 14:58:36.749723', '1', 'superadmin', null, '/api/system/celery_log', '{\'page\': \'1\', \'pageSize\': \'10\', \'_t\': \'1671865116686\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [], \'total\': 0}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('16', null, null, null, '2022-12-24 14:58:42.350689', '2022-12-24 14:58:42.350689', '1', 'superadmin', null, '/api/system/menu', '{\'_t\': \'1671865122229\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': [{\'id\': 16, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 1, \'parent_id\': None, \'icon\': \'bx:bx-home\', \'title\': \'Dashboard\', \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/dashboard\', \'redirect\': \'/dashboard/analysis\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 0, \'children\': [{\'id\': 17, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 1, \'parent_id\': 16, \'icon\': \'bx:bx-home\', \'title\': \'分析页\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'analysis\', \'redirect\': None, \'component\': \'/dashboard/analysis/index\', \'name\': \'Analysis\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 18, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 2, \'parent_id\': 16, \'icon\': \'bx:bx-home\', \'title\': \'工作台\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'workbench\', \'redirect\': None, \'component\': \'/dashboard/workbench/index\', \'name\': \'Workbench\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}]}, {\'id\': 1, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'parent_id\': None, \'icon\': \'ion:settings-outline\', \'title\': \'系统管理\', \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/system\', \'redirect\': \'/system/account\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 0, \'children\': [{\'id\': 4, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 1, \'parent_id\': 1, \'icon\': \'ant-design:bars-outlined\', \'title\': \'菜单管理\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'menu\', \'redirect\': None, \'component\': \'/fuadmin/system/menu/index\', \'name\': \'MenuManagement\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 5, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'parent_id\': 1, \'icon\': \'ant-design:contacts-outlined\', \'title\': \'岗位管理\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'post\', \'redirect\': None, \'component\': \'/fuadmin/system/post/index\', \'name\': \'PostManagement\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 6, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 3, \'parent_id\': 1, \'icon\': \'ant-design:user-outlined\', \'title\': \'用户管理\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'account\', \'redirect\': None, \'component\': \'/fuadmin/system/account/index\', \'name\': \'AccountManagement\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 7, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 4, \'parent_id\': 1, \'icon\': \'ant-design:project-outlined\', \'title\': \'部门管理\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'dept\', \'redirect\': None, \'component\': \'/fuadmin/system/dept/index\', \'name\': \'DeptManagement\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 8, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 5, \'parent_id\': 1, \'icon\': \'ant-design:team-outlined\', \'title\': \'角色管理\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'role\', \'redirect\': None, \'component\': \'/fuadmin/system/role/index\', \'name\': \'RoleManagement\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 19, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 6, \'parent_id\': 1, \'icon\': \'ant-design:setting-outlined\', \'title\': \'个人设置\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'account/setting/:id\', \'redirect\': None, \'component\': \'/fuadmin/system/account/setting/index\', \'name\': \'AccountSetting\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}]}, {\'id\': 2, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 3, \'parent_id\': None, \'icon\': \'ant-design:appstore-outlined\', \'title\': \'系统工具\', \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/tool\', \'redirect\': None, \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 0, \'children\': [{\'id\': 9, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 1, \'parent_id\': 2, \'icon\': \'ant-design:database-outlined\', \'title\': \'数据字典\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'dict\', \'redirect\': None, \'component\': \'/fuadmin/system/data-dict/index\', \'name\': \'DataDict\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 10, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'parent_id\': 2, \'icon\': \'ant-design:database-filled\', \'title\': \'分类字典\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'category\', \'redirect\': None, \'component\': \'/fuadmin/system/category_dict/index\', \'name\': \'CategoryDict\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 11, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 3, \'parent_id\': 2, \'icon\': \'ant-design:clock-circle-outlined\', \'title\': \'定时任务\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'celery\', \'redirect\': None, \'component\': \'/fuadmin/system/celery/index\', \'name\': \'Celery\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 12, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 4, \'parent_id\': 2, \'icon\': \'ant-design:folder-open-outlined\', \'title\': \'文件管理\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'file\', \'redirect\': None, \'component\': \'/fuadmin/system/file/index\', \'name\': \'FileManagement\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}]}, {\'id\': 3, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 4, \'parent_id\': None, \'icon\': \'ant-design:code-filled\', \'title\': \'日志管理\', \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/log\', \'redirect\': None, \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 0, \'children\': [{\'id\': 13, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 1, \'parent_id\': 3, \'icon\': \'ant-design:book-outlined\', \'title\': \'登录日志\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'login_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/login_log/index\', \'name\': \'LoginLogManagement\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 14, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 2, \'parent_id\': 3, \'icon\': \'ant-design:book-outlined\', \'title\': \'操作日志\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'operation_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/operation_log/index\', \'name\': \'OperationLogManagement\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 15, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 3, \'parent_id\': 3, \'icon\': \'ant-design:book-outlined\', \'title\': \'任务日志\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'celery_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/celery_log/index\', \'name\': \'CeleryLog\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}]}, {\'id\': 20, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 5, \'parent_id\': None, \'icon\': \'ant-design:bar-chart-outlined\', \'title\': \'图表演示\', \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/chart\', \'redirect\': \'/chart/amap\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 0, \'children\': [{\'id\': 21, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 1, \'parent_id\': 20, \'icon\': \'ant-design:environment-outlined\', \'title\': \'百度地图\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'bmap\', \'redirect\': None, \'component\': \'/fuadmin/charts/map/Baidu\', \'name\': \'BaiduMap\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 22, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 2, \'parent_id\': 20, \'icon\': \'ant-design:environment-outlined\', \'title\': \'高德地图\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'amap\', \'redirect\': None, \'component\': \'/fuadmin/charts/map/Gaode\', \'name\': \'AMap\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 23, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 3, \'parent_id\': 20, \'icon\': \'ant-design:bar-chart-outlined\', \'title\': \'Echart Map\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'echartmap\', \'redirect\': None, \'component\': \'/fuadmin/charts/Map\', \'name\': \'AMap\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}]}, {\'id\': 25, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 6, \'parent_id\': None, \'icon\': \'ant-design:fund-projection-screen-outlined\', \'title\': \'运维管理\', \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/operation\', \'redirect\': \'/chart/amap\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 0, \'children\': [{\'id\': 26, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 1, \'parent_id\': 25, \'icon\': \'ant-design:monitor-outlined\', \'title\': \'服务监控\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'monitor\', \'redirect\': None, \'component\': \'/fuadmin/system/monitor/server\', \'name\': \'Server\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}]}, {\'id\': 24, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 7, \'parent_id\': None, \'icon\': \'ant-design:audit-outlined\', \'title\': \'项目演示\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'/demo\', \'redirect\': None, \'component\': \'/demo/index\', \'name\': \'Demo\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}]}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('17', null, null, null, '2022-12-24 14:59:07.761300', '2022-12-24 14:59:07.761300', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865146077\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.55, \'used\': 17.68}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': -0.0, \'down\': -0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': -0.0, \'down\': -0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': -0.0, \'down\': -0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': -0.0, \'down\': -0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490751316, \'downTotal\': 26696792862, \'up\': -0.0, \'down\': -0.0, \'downPackets\': 18780484, \'upPackets\': 6197784}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': -0.0, \'down\': -0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490751316, \'downTotal\': 26696792862, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 18780484, \'upPackets\': 6197784, \'iostat\': {}}, \'cpu\': [27.28, 16, [31.9, 13.4, 39.0, 14.5, 30.9, 17.8, 31.8, 19.9, 36.7, 15.3, 41.0, 20.1, 38.1, 18.0, 32.0, 36.0], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('18', null, null, null, '2022-12-24 14:59:09.643078', '2022-12-24 14:59:09.643078', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865149175\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.55, \'used\': 17.67}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490774036, \'downTotal\': 26697712571, \'up\': 7.57, \'down\': 306.31, \'downPackets\': 18781203, \'upPackets\': 6197951}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490774036, \'downTotal\': 26697712571, \'up\': 7.57, \'down\': 306.31, \'downPackets\': 18781203, \'upPackets\': 6197951, \'iostat\': {}}, \'cpu\': [24.6, 16, [21.1, 13.5, 35.7, 13.5, 31.5, 17.5, 24.6, 22.2, 32.5, 11.9, 35.4, 15.9, 27.8, 12.7, 36.5, 41.3], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('19', null, null, null, '2022-12-24 14:59:12.643688', '2022-12-24 14:59:12.643688', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865152172\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.55, \'used\': 17.67}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490801441, \'downTotal\': 26698295188, \'up\': 9.07, \'down\': 192.8, \'downPackets\': 18781704, \'upPackets\': 6198100}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490801441, \'downTotal\': 26698295188, \'up\': 9.07, \'down\': 192.8, \'downPackets\': 18781704, \'upPackets\': 6198100, \'iostat\': {}}, \'cpu\': [22.88, 16, [23.6, 14.6, 34.9, 13.0, 25.4, 13.0, 24.0, 14.1, 44.8, 14.6, 43.5, 14.6, 33.9, 14.1, 19.8, 18.2], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('20', null, null, null, '2022-12-24 14:59:15.690107', '2022-12-24 14:59:15.690107', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865155170\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.56, \'used\': 17.66}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490821548, \'downTotal\': 26698867483, \'up\': 6.69, \'down\': 190.54, \'downPackets\': 18782191, \'upPackets\': 6198265}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490821548, \'downTotal\': 26698867483, \'up\': 6.69, \'down\': 190.54, \'downPackets\': 18782191, \'upPackets\': 6198265, \'iostat\': {}}, \'cpu\': [25.01, 16, [24.9, 19.2, 43.0, 14.5, 22.7, 18.7, 21.6, 19.2, 41.5, 22.3, 48.7, 12.4, 32.0, 8.3, 22.2, 28.9], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('21', null, null, null, '2022-12-24 14:59:18.636855', '2022-12-24 14:59:18.636855', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865158167\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.58, \'used\': 17.65}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490842582, \'downTotal\': 26699509849, \'up\': 7.05, \'down\': 215.24, \'downPackets\': 18782706, \'upPackets\': 6198412}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490842582, \'downTotal\': 26699509849, \'up\': 7.05, \'down\': 215.24, \'downPackets\': 18782706, \'upPackets\': 6198412, \'iostat\': {}}, \'cpu\': [21.88, 16, [26.8, 10.5, 31.6, 7.4, 18.4, 6.8, 29.5, 8.9, 35.6, 17.9, 39.5, 18.4, 29.5, 7.4, 25.1, 36.8], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('22', null, null, null, '2022-12-24 14:59:21.608873', '2022-12-24 14:59:21.609895', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865161182\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.58, \'used\': 17.64}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490864376, \'downTotal\': 26700430170, \'up\': 7.18, \'down\': 303.2, \'downPackets\': 18783412, \'upPackets\': 6198623}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490864376, \'downTotal\': 26700430170, \'up\': 7.18, \'down\': 303.2, \'downPackets\': 18783412, \'upPackets\': 6198623, \'iostat\': {}}, \'cpu\': [22.31, 16, [25.3, 8.2, 36.9, 9.8, 22.8, 10.9, 19.2, 13.5, 49.7, 9.3, 43.0, 15.0, 30.1, 9.8, 24.4, 29.0], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('23', null, null, null, '2022-12-24 14:59:24.487670', '2022-12-24 14:59:24.487670', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865164169\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.58, \'used\': 17.64}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490889820, \'downTotal\': 26700758885, \'up\': 8.47, \'down\': 109.36, \'downPackets\': 18783743, \'upPackets\': 6198791}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490889820, \'downTotal\': 26700758885, \'up\': 8.47, \'down\': 109.36, \'downPackets\': 18783743, \'upPackets\': 6198791, \'iostat\': {}}, \'cpu\': [21.32, 16, [29.6, 5.7, 28.8, 17.3, 37.2, 11.0, 20.8, 12.0, 27.1, 12.0, 37.0, 11.5, 23.6, 7.9, 24.0, 35.6], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('24', null, null, null, '2022-12-24 14:59:27.698407', '2022-12-24 14:59:27.698407', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865167177\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.58, \'used\': 17.64}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490898068, \'downTotal\': 26700775446, \'up\': 2.73, \'down\': 5.48, \'downPackets\': 18783827, \'upPackets\': 6198874}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490898068, \'downTotal\': 26700775446, \'up\': 2.73, \'down\': 5.48, \'downPackets\': 18783827, \'upPackets\': 6198874, \'iostat\': {}}, \'cpu\': [17.77, 16, [23.1, 5.2, 32.6, 5.2, 13.5, 11.4, 16.6, 6.2, 30.6, 8.3, 36.8, 6.7, 17.1, 11.4, 14.0, 45.6], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('25', null, null, null, '2022-12-24 14:59:30.626916', '2022-12-24 14:59:30.626916', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865170174\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.3, \'total\': 47.23, \'free\': 29.59, \'used\': 17.63}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490919038, \'downTotal\': 26702243098, \'up\': 6.98, \'down\': 488.37, \'downPackets\': 18784901, \'upPackets\': 6199089}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490919038, \'downTotal\': 26702243098, \'up\': 6.98, \'down\': 488.37, \'downPackets\': 18784901, \'upPackets\': 6199089, \'iostat\': {}}, \'cpu\': [20.4, 16, [22.7, 6.8, 31.4, 4.2, 20.9, 9.4, 22.3, 11.0, 45.8, 7.3, 43.5, 13.6, 28.3, 9.4, 21.5, 28.3], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('26', null, null, null, '2022-12-24 14:59:33.649401', '2022-12-24 14:59:33.649401', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865173168\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.3, \'total\': 47.23, \'free\': 29.6, \'used\': 17.63}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490933594, \'downTotal\': 26702817665, \'up\': 4.83, \'down\': 190.51, \'downPackets\': 18785370, \'upPackets\': 6199238}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490933594, \'downTotal\': 26702817665, \'up\': 4.83, \'down\': 190.51, \'downPackets\': 18785370, \'upPackets\': 6199238, \'iostat\': {}}, \'cpu\': [26.57, 16, [24.6, 11.4, 45.9, 12.4, 26.8, 14.5, 27.5, 19.2, 37.3, 13.0, 31.4, 28.5, 36.8, 34.2, 28.5, 33.2], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('27', null, null, null, '2022-12-24 14:59:36.614674', '2022-12-24 14:59:36.614674', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865176169\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.3, \'total\': 47.23, \'free\': 29.6, \'used\': 17.63}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490956144, \'downTotal\': 26703394801, \'up\': 7.49, \'down\': 191.8, \'downPackets\': 18785869, \'upPackets\': 6199388}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490956144, \'downTotal\': 26703394801, \'up\': 7.49, \'down\': 191.8, \'downPackets\': 18785869, \'upPackets\': 6199388, \'iostat\': {}}, \'cpu\': [22.66, 16, [26.0, 13.1, 45.5, 7.9, 22.5, 16.8, 22.5, 12.0, 44.0, 13.1, 34.6, 14.1, 35.4, 17.3, 24.6, 13.1], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('28', null, null, null, '2022-12-24 14:59:39.730239', '2022-12-24 14:59:39.730239', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865179175\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.3, \'total\': 47.23, \'free\': 29.62, \'used\': 17.61}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490980319, \'downTotal\': 26703675570, \'up\': 7.97, \'down\': 92.59, \'downPackets\': 18786171, \'upPackets\': 6199510}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490980319, \'downTotal\': 26703675570, \'up\': 7.97, \'down\': 92.59, \'downPackets\': 18786171, \'upPackets\': 6199510, \'iostat\': {}}, \'cpu\': [30.07, 16, [37.1, 16.4, 42.9, 14.9, 29.6, 19.0, 26.2, 29.2, 40.3, 15.8, 38.5, 21.5, 36.9, 20.0, 65.6, 27.2], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('29', null, null, null, '2022-12-24 14:59:42.669513', '2022-12-24 14:59:42.669513', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865182166\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.3, \'total\': 47.23, \'free\': 29.61, \'used\': 17.61}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 491013164, \'downTotal\': 26704933362, \'up\': 11.06, \'down\': 423.48, \'downPackets\': 18787119, \'upPackets\': 6199714}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 491013164, \'downTotal\': 26704933362, \'up\': 11.06, \'down\': 423.48, \'downPackets\': 18787119, \'upPackets\': 6199714, \'iostat\': {}}, \'cpu\': [31.17, 16, [39.2, 13.8, 41.3, 16.9, 31.7, 16.9, 36.5, 15.9, 62.4, 16.4, 55.6, 19.0, 50.5, 13.8, 41.8, 27.0], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('30', null, null, null, '2022-12-24 14:59:45.668831', '2022-12-24 14:59:45.668831', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865185179\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.3, \'total\': 47.23, \'free\': 29.61, \'used\': 17.62}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 491035231, \'downTotal\': 26705258024, \'up\': 7.29, \'down\': 107.28, \'downPackets\': 18787425, \'upPackets\': 6199846}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 491035231, \'downTotal\': 26705258024, \'up\': 7.29, \'down\': 107.28, \'downPackets\': 18787425, \'upPackets\': 6199846, \'iostat\': {}}, \'cpu\': [29.17, 16, [36.0, 10.9, 32.1, 17.7, 25.4, 20.2, 32.6, 19.7, 56.5, 10.8, 42.7, 24.9, 30.6, 13.0, 38.0, 55.7], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('31', null, null, null, '2022-12-24 14:59:48.750831', '2022-12-24 14:59:48.750831', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865188261\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.3, \'total\': 47.23, \'free\': 29.59, \'used\': 17.63}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 491055132, \'downTotal\': 26705276802, \'up\': 6.4, \'down\': 6.04, \'downPackets\': 18787531, \'upPackets\': 6199991}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 491055132, \'downTotal\': 26705276802, \'up\': 6.4, \'down\': 6.04, \'downPackets\': 18787531, \'upPackets\': 6199991, \'iostat\': {}}, \'cpu\': [30.99, 16, [42.4, 13.6, 43.7, 13.1, 33.2, 14.1, 46.5, 21.6, 56.6, 19.2, 47.2, 18.7, 34.3, 17.5, 19.6, 54.5], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('32', null, null, null, '2022-12-24 14:59:51.688720', '2022-12-24 14:59:51.688720', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865191172\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.59, \'used\': 17.64}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 491085134, \'downTotal\': 26706725281, \'up\': 10.29, \'down\': 497.03, \'downPackets\': 18788630, \'upPackets\': 6200188}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 491085134, \'downTotal\': 26706725281, \'up\': 10.29, \'down\': 497.03, \'downPackets\': 18788630, \'upPackets\': 6200188, \'iostat\': {}}, \'cpu\': [30.29, 16, [41.6, 13.4, 43.9, 16.0, 35.8, 18.3, 42.8, 16.7, 69.9, 10.2, 53.2, 15.6, 34.2, 19.9, 30.1, 23.0], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('33', null, null, null, '2022-12-24 15:00:10.494259', '2022-12-24 15:00:10.494259', '1', 'superadmin', null, '/api/demo/demo', '{\'page\': \'1\', \'pageSize\': \'10\', \'_t\': \'1671865210439\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '500', 'Windows 10', '{\'code\': 500, \'msg\': []}', '0', '1');
INSERT INTO `system_operation_log` VALUES ('34', null, null, null, '2022-12-24 15:00:39.628179', '2022-12-24 15:00:39.628179', '1', 'superadmin', null, '/api/system/dept/list/tree', '{\'_t\': \'1671865239546\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': [{\'id\': 1, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 1, \'name\': \'北京公司\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': None, \'choice\': 0, \'children\': [{\'id\': 3, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 1, \'name\': \'IT部门\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': 1, \'choice\': 1, \'children\': []}, {\'id\': 4, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'name\': \'财务部门\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': 1, \'choice\': 1, \'children\': []}]}, {\'id\': 2, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'name\': \'大连公司\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': None, \'choice\': 0, \'children\': [{\'id\': 5, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 1, \'name\': \'IT部门\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': 2, \'choice\': 1, \'children\': []}, {\'id\': 6, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'name\': \'财务部门\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': 2, \'choice\': 1, \'children\': []}]}]}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('35', null, null, null, '2022-12-24 15:00:39.729408', '2022-12-24 15:00:39.729408', '1', 'superadmin', null, '/api/system/user', '{\'page\': \'1\', \'pageSize\': \'10\', \'_t\': \'1671865239674\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [{\'last_login\': None, \'is_superuser\': False, \'is_staff\': False, \'is_active\': True, \'date_joined\': \'2022-12-24T14:20:33.469\', \'id\': 4, \'remark\': None, \'creator\': None, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:20:33.492\', \'create_datetime\': \'2022-12-24T14:20:33.492\', \'sort\': 1, \'username\': \'test\', \'email\': \'dlpuzcl@163.com\', \'mobile\': None, \'avatar\': None, \'name\': \'Test\', \'status\': True, \'gender\': 1, \'user_type\': 0, \'dept\': 2, \'first_name\': None, \'last_name\': None, \'groups\': [], \'user_permissions\': [], \'post\': [], \'role\': []}, {\'last_login\': None, \'is_superuser\': True, \'is_staff\': True, \'is_active\': True, \'date_joined\': \'2022-12-24T14:20:33.469\', \'id\': 1, \'remark\': None, \'creator\': None, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:20:33.483\', \'create_datetime\': \'2022-12-24T14:20:33.483\', \'sort\': 1, \'username\': \'superadmin\', \'email\': \'\', \'mobile\': None, \'avatar\': None, \'name\': \'超级管理员\', \'status\': True, \'gender\': 1, \'user_type\': 0, \'dept\': None, \'first_name\': \'\', \'last_name\': \'\', \'groups\': [], \'user_permissions\': [], \'post\': [], \'role\': []}], \'total\': 2}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('36', null, null, null, '2022-12-24 15:00:44.302505', '2022-12-24 15:00:44.302505', '1', 'superadmin', null, '/api/system/post/all/list', '{\'_t\': \'1671865243814\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': []}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('37', null, null, null, '2022-12-24 15:00:44.328511', '2022-12-24 15:00:44.328511', '1', 'superadmin', null, '/api/system/role/all/list', '{\'_t\': \'1671865243790\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': [{\'id\': 1, \'remark\': None, \'creator\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:20:33.454\', \'create_datetime\': \'2022-12-24T14:20:33.454\', \'sort\': 1, \'name\': \'行政人员\', \'code\': \'official\', \'status\': True, \'admin\': False, \'data_range\': 4, \'dept\': [], \'menu\': [], \'permission\': []}, {\'id\': 2, \'remark\': None, \'creator\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:20:33.462\', \'create_datetime\': \'2022-12-24T14:20:33.462\', \'sort\': 2, \'name\': \'技术人员\', \'code\': \'technicist\', \'status\': True, \'admin\': False, \'data_range\': 4, \'dept\': [], \'menu\': [], \'permission\': []}]}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('38', null, null, null, '2022-12-24 15:00:44.381021', '2022-12-24 15:00:44.381021', '1', 'superadmin', null, '/api/system/dept/list/tree', '{\'_t\': \'1671865244024\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': [{\'id\': 1, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 1, \'name\': \'北京公司\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': None, \'choice\': 0, \'children\': [{\'id\': 3, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 1, \'name\': \'IT部门\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': 1, \'choice\': 1, \'children\': []}, {\'id\': 4, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'name\': \'财务部门\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': 1, \'choice\': 1, \'children\': []}]}, {\'id\': 2, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'name\': \'大连公司\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': None, \'choice\': 0, \'children\': [{\'id\': 5, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 1, \'name\': \'IT部门\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': 2, \'choice\': 1, \'children\': []}, {\'id\': 6, \'remark\': None, \'creator_id\': 1, \'modifier\': \'超级管理员\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'name\': \'财务部门\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': 2, \'choice\': 1, \'children\': []}]}]}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('39', null, null, null, '2022-12-24 15:01:22.481234', '2022-12-24 15:01:22.481234', '1', 'superadmin', null, '/api/system/user', '{\'page\': \'1\', \'pageSize\': \'10\', \'dept_ids[]\': \'3\', \'_t\': \'1671865282355\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [], \'total\': 0}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('40', null, null, null, '2022-12-24 15:01:25.028319', '2022-12-24 15:01:25.028319', '1', 'superadmin', null, '/api/system/user', '{\'page\': \'1\', \'pageSize\': \'10\', \'dept_ids[]\': \'4\', \'_t\': \'1671865284946\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [], \'total\': 0}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('41', null, null, null, '2022-12-24 15:01:26.345784', '2022-12-24 15:01:26.345784', '1', 'superadmin', null, '/api/system/user', '{\'page\': \'1\', \'pageSize\': \'10\', \'dept_ids[]\': \'3\', \'_t\': \'1671865286265\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [], \'total\': 0}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('42', null, null, null, '2022-12-24 15:01:27.715281', '2022-12-24 15:01:27.715281', '1', 'superadmin', null, '/api/system/user', '{\'page\': \'1\', \'pageSize\': \'10\', \'dept_ids[]\': \'4\', \'_t\': \'1671865287631\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [], \'total\': 0}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('43', null, null, null, '2022-12-24 15:01:41.580891', '2022-12-24 15:01:41.580891', '1', 'superadmin', null, '/api/system/post', '{\'page\': \'1\', \'pageSize\': \'10\', \'_t\': \'1671865301513\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [], \'total\': 0}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('44', null, null, null, '2022-12-24 15:02:46.865246', '2022-12-24 15:02:46.865246', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865365365\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.5, \'total\': 47.23, \'free\': 29.5, \'used\': 17.73}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 492244149, \'downTotal\': 26741790931, \'up\': 6.5, \'down\': 196.65, \'downPackets\': 18818112, \'upPackets\': 6208944}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 492244149, \'downTotal\': 26741790931, \'up\': 6.5, \'down\': 196.65, \'downPackets\': 18818112, \'upPackets\': 6208944, \'iostat\': {}}, \'cpu\': [24.99, 16, [29.9, 10.5, 36.8, 12.5, 26.6, 13.8, 26.0, 17.6, 38.0, 12.0, 43.3, 19.3, 34.3, 15.5, 30.1, 33.7], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.94 GB\', \'11.06 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.59 GB\', \'85.41 GB\', 47.9], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('45', null, null, null, '2022-12-24 15:02:48.822863', '2022-12-24 15:02:48.822863', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865368365\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.5, \'total\': 47.23, \'free\': 29.5, \'used\': 17.73}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 492275750, \'downTotal\': 26742383924, \'up\': 10.53, \'down\': 197.58, \'downPackets\': 18818625, \'upPackets\': 6209159}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 492275750, \'downTotal\': 26742383924, \'up\': 10.53, \'down\': 197.58, \'downPackets\': 18818625, \'upPackets\': 6209159, \'iostat\': {}}, \'cpu\': [23.29, 16, [34.4, 6.3, 49.2, 2.4, 31.5, 5.5, 28.3, 8.7, 34.6, 9.4, 42.2, 12.6, 32.3, 9.4, 52.4, 13.4], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.94 GB\', \'11.06 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.59 GB\', \'85.41 GB\', 47.9], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('46', null, null, null, '2022-12-24 15:02:51.897294', '2022-12-24 15:02:51.897294', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865371366\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.5, \'total\': 47.23, \'free\': 29.5, \'used\': 17.73}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'以太网\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'以太网 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'本地连接* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 492292554, \'downTotal\': 26743329927, \'up\': 5.55, \'down\': 312.59, \'downPackets\': 18819350, \'upPackets\': 6209302}, \'蓝牙网络连接\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 492292554, \'downTotal\': 26743329927, \'up\': 5.55, \'down\': 312.59, \'downPackets\': 18819350, \'upPackets\': 6209302, \'iostat\': {}}, \'cpu\': [23.78, 16, [29.4, 17.6, 43.8, 13.4, 22.3, 8.8, 27.5, 11.9, 36.1, 14.5, 35.1, 17.6, 32.6, 14.5, 18.6, 36.8], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.94 GB\', \'11.06 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.59 GB\', \'85.41 GB\', 47.9], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0天\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');

-- ----------------------------
-- Table structure for `system_post`
-- ----------------------------
DROP TABLE IF EXISTS `system_post`;
CREATE TABLE `system_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `belong_dept` int(11) DEFAULT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  `create_datetime` datetime(6) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` int(11) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_post_creator_id_e3f13f28` (`creator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_post
-- ----------------------------

-- ----------------------------
-- Table structure for `system_role`
-- ----------------------------
DROP TABLE IF EXISTS `system_role`;
CREATE TABLE `system_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `belong_dept` int(11) DEFAULT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  `create_datetime` datetime(6) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `data_range` int(11) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `system_role_creator_id_ea515370` (`creator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_role
-- ----------------------------
INSERT INTO `system_role` VALUES ('1', null, '超级管理员', null, '2022-12-24 14:20:33.454723', '2022-12-24 14:20:33.454723', '1', '行政人员', 'official', '1', '0', '4', '1');
INSERT INTO `system_role` VALUES ('2', null, '超级管理员', null, '2022-12-24 14:20:33.462724', '2022-12-24 14:20:33.462724', '2', '技术人员', 'technicist', '1', '0', '4', '1');

-- ----------------------------
-- Table structure for `system_role_dept`
-- ----------------------------
DROP TABLE IF EXISTS `system_role_dept`;
CREATE TABLE `system_role_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `dept_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `system_role_dept_role_id_dept_id_e50efeba_uniq` (`role_id`,`dept_id`),
  KEY `system_role_dept_role_id_b44a7cef` (`role_id`),
  KEY `system_role_dept_dept_id_f2f8d11a` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for `system_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `system_role_menu`;
CREATE TABLE `system_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `system_role_menu_role_id_menu_id_bceffeea_uniq` (`role_id`,`menu_id`),
  KEY `system_role_menu_role_id_381c2e52` (`role_id`),
  KEY `system_role_menu_menu_id_400f4f82` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `system_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `system_role_permission`;
CREATE TABLE `system_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `menubutton_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `system_role_permission_role_id_menubutton_id_5fb41eb5_uniq` (`role_id`,`menubutton_id`),
  KEY `system_role_permission_role_id_ca5e9412` (`role_id`),
  KEY `system_role_permission_menubutton_id_aef88309` (`menubutton_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for `system_users`
-- ----------------------------
DROP TABLE IF EXISTS `system_users`;
CREATE TABLE `system_users` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `belong_dept` int(11) DEFAULT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  `create_datetime` datetime(6) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `avatar` longtext,
  `name` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `gender` int(11) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `first_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `dept_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `system_users_creator_id_610a4b11` (`creator_id`),
  KEY `system_users_dept_id_9060c641` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_users
-- ----------------------------
INSERT INTO `system_users` VALUES ('pbkdf2_sha256$320000$w6qJldmyHhHA2LJLROT5bx$Q/SDb4mvQ7qT5qYKV3naEFJqVHoq5yUSfSAiwssIEM8=', null, '1', '1', '1', '2022-12-24 14:20:33.469729', '1', null, null, null, '2022-12-24 14:20:33.483725', '2022-12-24 14:20:33.483725', '1', 'superadmin', '', null, null, '超级管理员', '1', '1', '0', '', '', null, null);
INSERT INTO `system_users` VALUES ('pbkdf2_sha256$320000$w6qJldmyHhHA2LJLROT5bx$Q/SDb4mvQ7qT5qYKV3naEFJqVHoq5yUSfSAiwssIEM8=', null, '0', '0', '1', '2022-12-24 14:20:33.469729', '4', null, null, null, '2022-12-24 14:20:33.492728', '2022-12-24 14:20:33.492728', '1', 'test', 'dlpuzcl@163.com', null, null, 'Test', '1', '1', '0', null, null, null, '2');

-- ----------------------------
-- Table structure for `system_users_groups`
-- ----------------------------
DROP TABLE IF EXISTS `system_users_groups`;
CREATE TABLE `system_users_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `system_users_groups_users_id_group_id_7483be9d_uniq` (`users_id`,`group_id`),
  KEY `system_users_groups_group_id_13685d93_fk_auth_group_id` (`group_id`),
  CONSTRAINT `system_users_groups_group_id_13685d93_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `system_users_groups_users_id_3c266c8f_fk_system_users_id` FOREIGN KEY (`users_id`) REFERENCES `system_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_users_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `system_users_post`
-- ----------------------------
DROP TABLE IF EXISTS `system_users_post`;
CREATE TABLE `system_users_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `system_users_post_users_id_post_id_1932458d_uniq` (`users_id`,`post_id`),
  KEY `system_users_post_users_id_5046a91b` (`users_id`),
  KEY `system_users_post_post_id_6560916c` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_users_post
-- ----------------------------

-- ----------------------------
-- Table structure for `system_users_role`
-- ----------------------------
DROP TABLE IF EXISTS `system_users_role`;
CREATE TABLE `system_users_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `system_users_role_users_id_role_id_efdd1ca1_uniq` (`users_id`,`role_id`),
  KEY `system_users_role_users_id_898e5d39` (`users_id`),
  KEY `system_users_role_role_id_056fc093` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_users_role
-- ----------------------------

-- ----------------------------
-- Table structure for `system_users_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `system_users_user_permissions`;
CREATE TABLE `system_users_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `system_users_user_permis_users_id_permission_id_84c282cb_uniq` (`users_id`,`permission_id`),
  KEY `system_users_user_pe_permission_id_691fa57c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `system_users_user_pe_permission_id_691fa57c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `system_users_user_pe_users_id_1cfa57c2_fk_system_us` FOREIGN KEY (`users_id`) REFERENCES `system_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_users_user_permissions
-- ----------------------------
