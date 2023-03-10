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
INSERT INTO `auth_permission` VALUES ('57', 'Can add ?????????', '15', 'add_users');
INSERT INTO `auth_permission` VALUES ('58', 'Can change ?????????', '15', 'change_users');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete ?????????', '15', 'delete_users');
INSERT INTO `auth_permission` VALUES ('60', 'Can view ?????????', '15', 'view_users');
INSERT INTO `auth_permission` VALUES ('61', 'Can add ?????????', '16', 'add_dept');
INSERT INTO `auth_permission` VALUES ('62', 'Can change ?????????', '16', 'change_dept');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete ?????????', '16', 'delete_dept');
INSERT INTO `auth_permission` VALUES ('64', 'Can view ?????????', '16', 'view_dept');
INSERT INTO `auth_permission` VALUES ('65', 'Can add ?????????', '17', 'add_dict');
INSERT INTO `auth_permission` VALUES ('66', 'Can change ?????????', '17', 'change_dict');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete ?????????', '17', 'delete_dict');
INSERT INTO `auth_permission` VALUES ('68', 'Can view ?????????', '17', 'view_dict');
INSERT INTO `auth_permission` VALUES ('69', 'Can add ?????????', '18', 'add_menu');
INSERT INTO `auth_permission` VALUES ('70', 'Can change ?????????', '18', 'change_menu');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete ?????????', '18', 'delete_menu');
INSERT INTO `auth_permission` VALUES ('72', 'Can view ?????????', '18', 'view_menu');
INSERT INTO `auth_permission` VALUES ('73', 'Can add ???????????????', '19', 'add_menubutton');
INSERT INTO `auth_permission` VALUES ('74', 'Can change ???????????????', '19', 'change_menubutton');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete ???????????????', '19', 'delete_menubutton');
INSERT INTO `auth_permission` VALUES ('76', 'Can view ???????????????', '19', 'view_menubutton');
INSERT INTO `auth_permission` VALUES ('77', 'Can add ???????????????', '20', 'add_systemconfig');
INSERT INTO `auth_permission` VALUES ('78', 'Can change ???????????????', '20', 'change_systemconfig');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete ???????????????', '20', 'delete_systemconfig');
INSERT INTO `auth_permission` VALUES ('80', 'Can view ???????????????', '20', 'view_systemconfig');
INSERT INTO `auth_permission` VALUES ('81', 'Can add ?????????', '21', 'add_role');
INSERT INTO `auth_permission` VALUES ('82', 'Can change ?????????', '21', 'change_role');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete ?????????', '21', 'delete_role');
INSERT INTO `auth_permission` VALUES ('84', 'Can view ?????????', '21', 'view_role');
INSERT INTO `auth_permission` VALUES ('85', 'Can add ?????????', '22', 'add_post');
INSERT INTO `auth_permission` VALUES ('86', 'Can change ?????????', '22', 'change_post');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete ?????????', '22', 'delete_post');
INSERT INTO `auth_permission` VALUES ('88', 'Can view ?????????', '22', 'view_post');
INSERT INTO `auth_permission` VALUES ('89', 'Can add ????????????', '23', 'add_operationlog');
INSERT INTO `auth_permission` VALUES ('90', 'Can change ????????????', '23', 'change_operationlog');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete ????????????', '23', 'delete_operationlog');
INSERT INTO `auth_permission` VALUES ('92', 'Can view ????????????', '23', 'view_operationlog');
INSERT INTO `auth_permission` VALUES ('93', 'Can add ????????????', '24', 'add_loginlog');
INSERT INTO `auth_permission` VALUES ('94', 'Can change ????????????', '24', 'change_loginlog');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete ????????????', '24', 'delete_loginlog');
INSERT INTO `auth_permission` VALUES ('96', 'Can view ????????????', '24', 'view_loginlog');
INSERT INTO `auth_permission` VALUES ('97', 'Can add ????????????', '25', 'add_file');
INSERT INTO `auth_permission` VALUES ('98', 'Can change ????????????', '25', 'change_file');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete ????????????', '25', 'delete_file');
INSERT INTO `auth_permission` VALUES ('100', 'Can view ????????????', '25', 'view_file');
INSERT INTO `auth_permission` VALUES ('101', 'Can add ??????????????????', '26', 'add_dictitem');
INSERT INTO `auth_permission` VALUES ('102', 'Can change ??????????????????', '26', 'change_dictitem');
INSERT INTO `auth_permission` VALUES ('103', 'Can delete ??????????????????', '26', 'delete_dictitem');
INSERT INTO `auth_permission` VALUES ('104', 'Can view ??????????????????', '26', 'view_dictitem');
INSERT INTO `auth_permission` VALUES ('105', 'Can add ???????????????', '27', 'add_categorydict');
INSERT INTO `auth_permission` VALUES ('106', 'Can change ???????????????', '27', 'change_categorydict');
INSERT INTO `auth_permission` VALUES ('107', 'Can delete ???????????????', '27', 'delete_categorydict');
INSERT INTO `auth_permission` VALUES ('108', 'Can view ???????????????', '27', 'view_categorydict');
INSERT INTO `auth_permission` VALUES ('109', 'Can add ???????????????', '28', 'add_button');
INSERT INTO `auth_permission` VALUES ('110', 'Can change ???????????????', '28', 'change_button');
INSERT INTO `auth_permission` VALUES ('111', 'Can delete ???????????????', '28', 'delete_button');
INSERT INTO `auth_permission` VALUES ('112', 'Can view ???????????????', '28', 'view_button');
INSERT INTO `auth_permission` VALUES ('113', 'Can add ?????????', '29', 'add_area');
INSERT INTO `auth_permission` VALUES ('114', 'Can change ?????????', '29', 'change_area');
INSERT INTO `auth_permission` VALUES ('115', 'Can delete ?????????', '29', 'delete_area');
INSERT INTO `auth_permission` VALUES ('116', 'Can view ?????????', '29', 'view_area');
INSERT INTO `auth_permission` VALUES ('117', 'Can add ???????????????', '30', 'add_apiwhitelist');
INSERT INTO `auth_permission` VALUES ('118', 'Can change ???????????????', '30', 'change_apiwhitelist');
INSERT INTO `auth_permission` VALUES ('119', 'Can delete ???????????????', '30', 'delete_apiwhitelist');
INSERT INTO `auth_permission` VALUES ('120', 'Can view ???????????????', '30', 'view_apiwhitelist');
INSERT INTO `auth_permission` VALUES ('121', 'Can add ????????????', '31', 'add_demo');
INSERT INTO `auth_permission` VALUES ('122', 'Can change ????????????', '31', 'change_demo');
INSERT INTO `auth_permission` VALUES ('123', 'Can delete ????????????', '31', 'delete_demo');
INSERT INTO `auth_permission` VALUES ('124', 'Can view ????????????', '31', 'view_demo');

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
INSERT INTO `system_area` VALUES ('1', null, null, null, '2022-12-24 14:21:06.180875', '2022-12-24 14:21:06.180875', '1', '?????????', '11', '1', 'beijingshi', 'B', '1', null, null);
INSERT INTO `system_area` VALUES ('2', null, null, null, '2022-12-24 14:21:06.180875', '2022-12-24 14:21:06.180875', '1', '?????????', '1101', '2', 'shixiaqu', 'S', '1', null, '11');
INSERT INTO `system_area` VALUES ('3', null, null, null, '2022-12-24 14:21:06.180875', '2022-12-24 14:21:06.180875', '1', '?????????', '110101', '3', 'dongchengqu', 'D', '1', null, '1101');
INSERT INTO `system_area` VALUES ('4', null, null, null, '2022-12-24 14:21:06.180875', '2022-12-24 14:21:06.180875', '1', '?????????', '110102', '3', 'xichengqu', 'X', '1', null, '1101');
INSERT INTO `system_area` VALUES ('5', null, null, null, '2022-12-24 14:21:06.180875', '2022-12-24 14:21:06.180875', '1', '?????????', '110105', '3', 'chaoyangqu', 'C', '1', null, '1101');
INSERT INTO `system_area` VALUES ('6', null, null, null, '2022-12-24 14:21:06.180875', '2022-12-24 14:21:06.180875', '1', '?????????', '110106', '3', 'fengtaiqu', 'F', '1', null, '1101');
INSERT INTO `system_area` VALUES ('7', null, null, null, '2022-12-24 14:21:06.180875', '2022-12-24 14:21:06.180875', '1', '????????????', '110107', '3', 'shijingshanqu', 'S', '1', null, '1101');
INSERT INTO `system_area` VALUES ('8', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '?????????', '110108', '3', 'haidianqu', 'H', '1', null, '1101');
INSERT INTO `system_area` VALUES ('9', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '????????????', '110109', '3', 'mentougouqu', 'M', '1', null, '1101');
INSERT INTO `system_area` VALUES ('10', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '?????????', '110111', '3', 'fangshanqu', 'F', '1', null, '1101');
INSERT INTO `system_area` VALUES ('11', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '?????????', '110112', '3', 'tongzhouqu', 'T', '1', null, '1101');
INSERT INTO `system_area` VALUES ('12', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '?????????', '110113', '3', 'shunyiqu', 'S', '1', null, '1101');
INSERT INTO `system_area` VALUES ('13', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '?????????', '110114', '3', 'changpingqu', 'C', '1', null, '1101');
INSERT INTO `system_area` VALUES ('14', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '?????????', '110115', '3', 'daxingqu', 'D', '1', null, '1101');
INSERT INTO `system_area` VALUES ('15', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '?????????', '110116', '3', 'huairouqu', 'H', '1', null, '1101');
INSERT INTO `system_area` VALUES ('16', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '?????????', '110117', '3', 'pingguqu', 'P', '1', null, '1101');
INSERT INTO `system_area` VALUES ('17', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '?????????', '110118', '3', 'miyunqu', 'M', '1', null, '1101');
INSERT INTO `system_area` VALUES ('18', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '?????????', '110119', '3', 'yanqingqu', 'Y', '1', null, '1101');
INSERT INTO `system_area` VALUES ('19', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '?????????', '12', '1', 'tianjinshi', 'T', '1', null, null);
INSERT INTO `system_area` VALUES ('20', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '?????????', '1201', '2', 'shixiaqu', 'S', '1', null, '12');
INSERT INTO `system_area` VALUES ('21', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '?????????', '120101', '3', 'hepingqu', 'H', '1', null, '1201');
INSERT INTO `system_area` VALUES ('22', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '?????????', '120102', '3', 'hedongqu', 'H', '1', null, '1201');
INSERT INTO `system_area` VALUES ('23', null, null, null, '2022-12-24 14:21:06.181880', '2022-12-24 14:21:06.181880', '1', '?????????', '120103', '3', 'hexiqu', 'H', '1', null, '1201');
INSERT INTO `system_area` VALUES ('24', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '?????????', '120104', '3', 'nankaiqu', 'N', '1', null, '1201');
INSERT INTO `system_area` VALUES ('25', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '?????????', '120105', '3', 'hebeiqu', 'H', '1', null, '1201');
INSERT INTO `system_area` VALUES ('26', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '?????????', '120106', '3', 'hongqiaoqu', 'H', '1', null, '1201');
INSERT INTO `system_area` VALUES ('27', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '?????????', '120110', '3', 'dongliqu', 'D', '1', null, '1201');
INSERT INTO `system_area` VALUES ('28', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '?????????', '120111', '3', 'xiqingqu', 'X', '1', null, '1201');
INSERT INTO `system_area` VALUES ('29', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '?????????', '120112', '3', 'jinnanqu', 'J', '1', null, '1201');
INSERT INTO `system_area` VALUES ('30', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '?????????', '120113', '3', 'beichenqu', 'B', '1', null, '1201');
INSERT INTO `system_area` VALUES ('31', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '?????????', '120114', '3', 'wuqingqu', 'W', '1', null, '1201');
INSERT INTO `system_area` VALUES ('32', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '?????????', '120115', '3', 'baodiqu', 'B', '1', null, '1201');
INSERT INTO `system_area` VALUES ('33', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '????????????', '120116', '3', 'binhaixinqu', 'B', '1', null, '1201');
INSERT INTO `system_area` VALUES ('34', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '?????????', '120117', '3', 'ninghequ', 'N', '1', null, '1201');
INSERT INTO `system_area` VALUES ('35', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '?????????', '120118', '3', 'jinghaiqu', 'J', '1', null, '1201');
INSERT INTO `system_area` VALUES ('36', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '?????????', '120119', '3', 'jizhouqu', 'J', '1', null, '1201');
INSERT INTO `system_area` VALUES ('37', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '?????????', '13', '1', 'hebeisheng', 'H', '1', null, null);
INSERT INTO `system_area` VALUES ('38', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.182885', '1', '????????????', '1301', '2', 'shijiazhuangshi', 'S', '1', null, '13');
INSERT INTO `system_area` VALUES ('39', null, null, null, '2022-12-24 14:21:06.182885', '2022-12-24 14:21:06.183880', '1', '?????????', '130102', '3', 'changanqu', 'C', '1', null, '1301');
INSERT INTO `system_area` VALUES ('40', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '?????????', '130104', '3', 'qiaoxiqu', 'Q', '1', null, '1301');
INSERT INTO `system_area` VALUES ('41', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '?????????', '130105', '3', 'xinhuaqu', 'X', '1', null, '1301');
INSERT INTO `system_area` VALUES ('42', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '????????????', '130107', '3', 'jingxingkuangqu', 'J', '1', null, '1301');
INSERT INTO `system_area` VALUES ('43', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '?????????', '130108', '3', 'yuhuaqu', 'Y', '1', null, '1301');
INSERT INTO `system_area` VALUES ('44', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '?????????', '130109', '3', 'gaochengqu', 'G', '1', null, '1301');
INSERT INTO `system_area` VALUES ('45', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '?????????', '130110', '3', 'luquanqu', 'L', '1', null, '1301');
INSERT INTO `system_area` VALUES ('46', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '?????????', '130111', '3', 'luanchengqu', 'L', '1', null, '1301');
INSERT INTO `system_area` VALUES ('47', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '?????????', '130121', '3', 'jingxingxian', 'J', '1', null, '1301');
INSERT INTO `system_area` VALUES ('48', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '?????????', '130123', '3', 'zhengdingxian', 'Z', '1', null, '1301');
INSERT INTO `system_area` VALUES ('49', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '?????????', '130125', '3', 'xingtangxian', 'X', '1', null, '1301');
INSERT INTO `system_area` VALUES ('50', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '?????????', '130126', '3', 'lingshouxian', 'L', '1', null, '1301');
INSERT INTO `system_area` VALUES ('51', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '?????????', '130127', '3', 'gaoyixian', 'G', '1', null, '1301');
INSERT INTO `system_area` VALUES ('52', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '?????????', '130128', '3', 'shenzexian', 'S', '1', null, '1301');
INSERT INTO `system_area` VALUES ('53', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '?????????', '130129', '3', 'zanhuangxian', 'Z', '1', null, '1301');
INSERT INTO `system_area` VALUES ('54', null, null, null, '2022-12-24 14:21:06.183880', '2022-12-24 14:21:06.183880', '1', '?????????', '130130', '3', 'wujixian', 'W', '1', null, '1301');
INSERT INTO `system_area` VALUES ('55', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '?????????', '130131', '3', 'pingshanxian', 'P', '1', null, '1301');
INSERT INTO `system_area` VALUES ('56', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '?????????', '130132', '3', 'yuanshixian', 'Y', '1', null, '1301');
INSERT INTO `system_area` VALUES ('57', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '??????', '130133', '3', 'zhaoxian', 'Z', '1', null, '1301');
INSERT INTO `system_area` VALUES ('58', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '????????????????????????????????????', '130171', '3', 'shijiazhuanggaoxinjishuchanyekaifaqu', 'S', '1', null, '1301');
INSERT INTO `system_area` VALUES ('59', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '???????????????????????????', '130172', '3', 'shijiazhuangxunhuanhuagongyuanqu', 'S', '1', null, '1301');
INSERT INTO `system_area` VALUES ('60', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '?????????', '130181', '3', 'xinjishi', 'X', '1', null, '1301');
INSERT INTO `system_area` VALUES ('61', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '?????????', '130183', '3', 'jinzhoushi', 'J', '1', null, '1301');
INSERT INTO `system_area` VALUES ('62', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '?????????', '130184', '3', 'xinleshi', 'X', '1', null, '1301');
INSERT INTO `system_area` VALUES ('63', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '?????????', '1302', '2', 'tangshanshi', 'T', '1', null, '13');
INSERT INTO `system_area` VALUES ('64', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '?????????', '130202', '3', 'lunanqu', 'L', '1', null, '1302');
INSERT INTO `system_area` VALUES ('65', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '?????????', '130203', '3', 'lubeiqu', 'L', '1', null, '1302');
INSERT INTO `system_area` VALUES ('66', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '?????????', '130204', '3', 'guyequ', 'G', '1', null, '1302');
INSERT INTO `system_area` VALUES ('67', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '?????????', '130205', '3', 'kaipingqu', 'K', '1', null, '1302');
INSERT INTO `system_area` VALUES ('68', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '?????????', '130207', '3', 'fengnanqu', 'F', '1', null, '1302');
INSERT INTO `system_area` VALUES ('69', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '?????????', '130208', '3', 'fengrunqu', 'F', '1', null, '1302');
INSERT INTO `system_area` VALUES ('70', null, null, null, '2022-12-24 14:21:06.184875', '2022-12-24 14:21:06.184875', '1', '????????????', '130209', '3', 'caofeidianqu', 'C', '1', null, '1302');
INSERT INTO `system_area` VALUES ('71', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '?????????', '130224', '3', 'luannanxian', 'L', '1', null, '1302');
INSERT INTO `system_area` VALUES ('72', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '?????????', '130225', '3', 'letingxian', 'L', '1', null, '1302');
INSERT INTO `system_area` VALUES ('73', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '?????????', '130227', '3', 'qianxixian', 'Q', '1', null, '1302');
INSERT INTO `system_area` VALUES ('74', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '?????????', '130229', '3', 'yutianxian', 'Y', '1', null, '1302');
INSERT INTO `system_area` VALUES ('75', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '?????????????????????????????????', '130271', '3', 'hebeitangshanlutaijingjikaifaqu', 'H', '1', null, '1302');
INSERT INTO `system_area` VALUES ('76', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '????????????????????????', '130272', '3', 'tangshanshihanguguanliqu', 'T', '1', null, '1302');
INSERT INTO `system_area` VALUES ('77', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '?????????????????????????????????', '130273', '3', 'tangshangaoxinjishuchanyekaifaqu', 'T', '1', null, '1302');
INSERT INTO `system_area` VALUES ('78', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '?????????????????????????????????', '130274', '3', 'hebeitangshanhaigangjingjikaifaqu', 'H', '1', null, '1302');
INSERT INTO `system_area` VALUES ('79', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '?????????', '130281', '3', 'zunhuashi', 'Z', '1', null, '1302');
INSERT INTO `system_area` VALUES ('80', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '?????????', '130283', '3', 'qiananshi', 'Q', '1', null, '1302');
INSERT INTO `system_area` VALUES ('81', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '?????????', '130284', '3', 'luanzhoushi', 'L', '1', null, '1302');
INSERT INTO `system_area` VALUES ('82', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '????????????', '1303', '2', 'qinhuangdaoshi', 'Q', '1', null, '13');
INSERT INTO `system_area` VALUES ('83', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '?????????', '130302', '3', 'haigangqu', 'H', '1', null, '1303');
INSERT INTO `system_area` VALUES ('84', null, null, null, '2022-12-24 14:21:06.185881', '2022-12-24 14:21:06.185881', '1', '????????????', '130303', '3', 'shanhaiguanqu', 'S', '1', null, '1303');
INSERT INTO `system_area` VALUES ('85', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '????????????', '130304', '3', 'beidaihequ', 'B', '1', null, '1303');
INSERT INTO `system_area` VALUES ('86', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '?????????', '130306', '3', 'funingqu', 'F', '1', null, '1303');
INSERT INTO `system_area` VALUES ('87', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '?????????????????????', '130321', '3', 'qinglongmanzuzizhixian', 'Q', '1', null, '1303');
INSERT INTO `system_area` VALUES ('88', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '?????????', '130322', '3', 'changlixian', 'C', '1', null, '1303');
INSERT INTO `system_area` VALUES ('89', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '?????????', '130324', '3', 'lulongxian', 'L', '1', null, '1303');
INSERT INTO `system_area` VALUES ('90', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '?????????????????????????????????', '130371', '3', 'qinhuangdaoshijingjijishukaifaqu', 'Q', '1', null, '1303');
INSERT INTO `system_area` VALUES ('91', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '???????????????', '130372', '3', 'beidaihexinqu', 'B', '1', null, '1303');
INSERT INTO `system_area` VALUES ('92', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '?????????', '1304', '2', 'handanshi', 'H', '1', null, '13');
INSERT INTO `system_area` VALUES ('93', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '?????????', '130402', '3', 'hanshanqu', 'H', '1', null, '1304');
INSERT INTO `system_area` VALUES ('94', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '?????????', '130403', '3', 'congtaiqu', 'C', '1', null, '1304');
INSERT INTO `system_area` VALUES ('95', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '?????????', '130404', '3', 'fuxingqu', 'F', '1', null, '1304');
INSERT INTO `system_area` VALUES ('96', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '????????????', '130406', '3', 'fengfengkuangqu', 'F', '1', null, '1304');
INSERT INTO `system_area` VALUES ('97', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '?????????', '130407', '3', 'feixiangqu', 'F', '1', null, '1304');
INSERT INTO `system_area` VALUES ('98', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '?????????', '130408', '3', 'yongnianqu', 'Y', '1', null, '1304');
INSERT INTO `system_area` VALUES ('99', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '?????????', '130423', '3', 'linzhangxian', 'L', '1', null, '1304');
INSERT INTO `system_area` VALUES ('100', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '?????????', '130424', '3', 'chenganxian', 'C', '1', null, '1304');
INSERT INTO `system_area` VALUES ('101', null, null, null, '2022-12-24 14:21:06.186880', '2022-12-24 14:21:06.186880', '1', '?????????', '130425', '3', 'damingxian', 'D', '1', null, '1304');
INSERT INTO `system_area` VALUES ('102', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '??????', '130426', '3', 'shexian', 'S', '1', null, '1304');
INSERT INTO `system_area` VALUES ('103', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '??????', '130427', '3', 'cixian', 'C', '1', null, '1304');
INSERT INTO `system_area` VALUES ('104', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '??????', '130430', '3', 'qiuxian', 'Q', '1', null, '1304');
INSERT INTO `system_area` VALUES ('105', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '?????????', '130431', '3', 'jizexian', 'J', '1', null, '1304');
INSERT INTO `system_area` VALUES ('106', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '?????????', '130432', '3', 'guangpingxian', 'G', '1', null, '1304');
INSERT INTO `system_area` VALUES ('107', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '?????????', '130433', '3', 'guantaoxian', 'G', '1', null, '1304');
INSERT INTO `system_area` VALUES ('108', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '??????', '130434', '3', 'weixian', 'W', '1', null, '1304');
INSERT INTO `system_area` VALUES ('109', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '?????????', '130435', '3', 'quzhouxian', 'Q', '1', null, '1304');
INSERT INTO `system_area` VALUES ('110', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '???????????????????????????', '130471', '3', 'handanjingjijishukaifaqu', 'H', '1', null, '1304');
INSERT INTO `system_area` VALUES ('111', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '??????????????????', '130473', '3', 'handanjinanxinqu', 'H', '1', null, '1304');
INSERT INTO `system_area` VALUES ('112', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '?????????', '130481', '3', 'wuanshi', 'W', '1', null, '1304');
INSERT INTO `system_area` VALUES ('113', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '?????????', '1305', '2', 'xingtaishi', 'X', '1', null, '13');
INSERT INTO `system_area` VALUES ('114', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '?????????', '130502', '3', 'xiangdouqu', 'X', '1', null, '1305');
INSERT INTO `system_area` VALUES ('115', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '?????????', '130503', '3', 'xindouqu', 'X', '1', null, '1305');
INSERT INTO `system_area` VALUES ('116', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '?????????', '130505', '3', 'renzequ', 'R', '1', null, '1305');
INSERT INTO `system_area` VALUES ('117', null, null, null, '2022-12-24 14:21:06.187878', '2022-12-24 14:21:06.187878', '1', '?????????', '130506', '3', 'nanhequ', 'N', '1', null, '1305');
INSERT INTO `system_area` VALUES ('118', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '?????????', '130522', '3', 'linchengxian', 'L', '1', null, '1305');
INSERT INTO `system_area` VALUES ('119', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '?????????', '130523', '3', 'neiqiuxian', 'N', '1', null, '1305');
INSERT INTO `system_area` VALUES ('120', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '?????????', '130524', '3', 'baixiangxian', 'B', '1', null, '1305');
INSERT INTO `system_area` VALUES ('121', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '?????????', '130525', '3', 'longyaoxian', 'L', '1', null, '1305');
INSERT INTO `system_area` VALUES ('122', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '?????????', '130528', '3', 'ningjinxian', 'N', '1', null, '1305');
INSERT INTO `system_area` VALUES ('123', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '?????????', '130529', '3', 'juluxian', 'J', '1', null, '1305');
INSERT INTO `system_area` VALUES ('124', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '?????????', '130530', '3', 'xinhexian', 'X', '1', null, '1305');
INSERT INTO `system_area` VALUES ('125', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '?????????', '130531', '3', 'guangzongxian', 'G', '1', null, '1305');
INSERT INTO `system_area` VALUES ('126', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '?????????', '130532', '3', 'pingxiangxian', 'P', '1', null, '1305');
INSERT INTO `system_area` VALUES ('127', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '??????', '130533', '3', 'weixian', 'W', '1', null, '1305');
INSERT INTO `system_area` VALUES ('128', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '?????????', '130534', '3', 'qinghexian', 'Q', '1', null, '1305');
INSERT INTO `system_area` VALUES ('129', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '?????????', '130535', '3', 'linxixian', 'L', '1', null, '1305');
INSERT INTO `system_area` VALUES ('130', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '???????????????????????????', '130571', '3', 'hebeixingtaijingjikaifaqu', 'H', '1', null, '1305');
INSERT INTO `system_area` VALUES ('131', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '?????????', '130581', '3', 'nangongshi', 'N', '1', null, '1305');
INSERT INTO `system_area` VALUES ('132', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '?????????', '130582', '3', 'shaheshi', 'S', '1', null, '1305');
INSERT INTO `system_area` VALUES ('133', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '?????????', '1306', '2', 'baodingshi', 'B', '1', null, '13');
INSERT INTO `system_area` VALUES ('134', null, null, null, '2022-12-24 14:21:06.188878', '2022-12-24 14:21:06.188878', '1', '?????????', '130602', '3', 'jingxiuqu', 'J', '1', null, '1306');
INSERT INTO `system_area` VALUES ('135', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '?????????', '130606', '3', 'lianchiqu', 'L', '1', null, '1306');
INSERT INTO `system_area` VALUES ('136', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '?????????', '130607', '3', 'manchengqu', 'M', '1', null, '1306');
INSERT INTO `system_area` VALUES ('137', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '?????????', '130608', '3', 'qingyuanqu', 'Q', '1', null, '1306');
INSERT INTO `system_area` VALUES ('138', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '?????????', '130609', '3', 'xushuiqu', 'X', '1', null, '1306');
INSERT INTO `system_area` VALUES ('139', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '?????????', '130623', '3', 'laishuixian', 'L', '1', null, '1306');
INSERT INTO `system_area` VALUES ('140', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '?????????', '130624', '3', 'fupingxian', 'F', '1', null, '1306');
INSERT INTO `system_area` VALUES ('141', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '?????????', '130626', '3', 'dingxingxian', 'D', '1', null, '1306');
INSERT INTO `system_area` VALUES ('142', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '??????', '130627', '3', 'tangxian', 'T', '1', null, '1306');
INSERT INTO `system_area` VALUES ('143', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '?????????', '130628', '3', 'gaoyangxian', 'G', '1', null, '1306');
INSERT INTO `system_area` VALUES ('144', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '?????????', '130629', '3', 'rongchengxian', 'R', '1', null, '1306');
INSERT INTO `system_area` VALUES ('145', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '?????????', '130630', '3', 'laiyuanxian', 'L', '1', null, '1306');
INSERT INTO `system_area` VALUES ('146', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '?????????', '130631', '3', 'wangdouxian', 'W', '1', null, '1306');
INSERT INTO `system_area` VALUES ('147', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '?????????', '130632', '3', 'anxinxian', 'A', '1', null, '1306');
INSERT INTO `system_area` VALUES ('148', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '??????', '130633', '3', 'yixian', 'Y', '1', null, '1306');
INSERT INTO `system_area` VALUES ('149', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '?????????', '130634', '3', 'quyangxian', 'Q', '1', null, '1306');
INSERT INTO `system_area` VALUES ('150', null, null, null, '2022-12-24 14:21:06.189879', '2022-12-24 14:21:06.189879', '1', '??????', '130635', '3', 'lixian', 'L', '1', null, '1306');
INSERT INTO `system_area` VALUES ('151', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '?????????', '130636', '3', 'shunpingxian', 'S', '1', null, '1306');
INSERT INTO `system_area` VALUES ('152', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '?????????', '130637', '3', 'boyexian', 'B', '1', null, '1306');
INSERT INTO `system_area` VALUES ('153', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '??????', '130638', '3', 'xiongxian', 'X', '1', null, '1306');
INSERT INTO `system_area` VALUES ('154', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '?????????????????????????????????', '130671', '3', 'baodinggaoxinjishuchanyekaifaqu', 'B', '1', null, '1306');
INSERT INTO `system_area` VALUES ('155', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '??????????????????', '130672', '3', 'baodingbaigouxincheng', 'B', '1', null, '1306');
INSERT INTO `system_area` VALUES ('156', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '?????????', '130681', '3', 'zhuozhoushi', 'Z', '1', null, '1306');
INSERT INTO `system_area` VALUES ('157', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '?????????', '130682', '3', 'dingzhoushi', 'D', '1', null, '1306');
INSERT INTO `system_area` VALUES ('158', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '?????????', '130683', '3', 'anguoshi', 'A', '1', null, '1306');
INSERT INTO `system_area` VALUES ('159', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '????????????', '130684', '3', 'gaobeidianshi', 'G', '1', null, '1306');
INSERT INTO `system_area` VALUES ('160', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '????????????', '1307', '2', 'zhangjiakoushi', 'Z', '1', null, '13');
INSERT INTO `system_area` VALUES ('161', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '?????????', '130702', '3', 'qiaodongqu', 'Q', '1', null, '1307');
INSERT INTO `system_area` VALUES ('162', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '?????????', '130703', '3', 'qiaoxiqu', 'Q', '1', null, '1307');
INSERT INTO `system_area` VALUES ('163', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '?????????', '130705', '3', 'xuanhuaqu', 'X', '1', null, '1307');
INSERT INTO `system_area` VALUES ('164', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '????????????', '130706', '3', 'xiahuayuanqu', 'X', '1', null, '1307');
INSERT INTO `system_area` VALUES ('165', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.190885', '1', '?????????', '130708', '3', 'wanquanqu', 'W', '1', null, '1307');
INSERT INTO `system_area` VALUES ('166', null, null, null, '2022-12-24 14:21:06.190885', '2022-12-24 14:21:06.191883', '1', '?????????', '130709', '3', 'chongliqu', 'C', '1', null, '1307');
INSERT INTO `system_area` VALUES ('167', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '?????????', '130722', '3', 'zhangbeixian', 'Z', '1', null, '1307');
INSERT INTO `system_area` VALUES ('168', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '?????????', '130723', '3', 'kangbaoxian', 'K', '1', null, '1307');
INSERT INTO `system_area` VALUES ('169', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '?????????', '130724', '3', 'guyuanxian', 'G', '1', null, '1307');
INSERT INTO `system_area` VALUES ('170', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '?????????', '130725', '3', 'shangyixian', 'S', '1', null, '1307');
INSERT INTO `system_area` VALUES ('171', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '??????', '130726', '3', 'yuxian', 'Y', '1', null, '1307');
INSERT INTO `system_area` VALUES ('172', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '?????????', '130727', '3', 'yangyuanxian', 'Y', '1', null, '1307');
INSERT INTO `system_area` VALUES ('173', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '?????????', '130728', '3', 'huaianxian', 'H', '1', null, '1307');
INSERT INTO `system_area` VALUES ('174', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '?????????', '130730', '3', 'huailaixian', 'H', '1', null, '1307');
INSERT INTO `system_area` VALUES ('175', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '?????????', '130731', '3', 'zhuoluxian', 'Z', '1', null, '1307');
INSERT INTO `system_area` VALUES ('176', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '?????????', '130732', '3', 'chichengxian', 'C', '1', null, '1307');
INSERT INTO `system_area` VALUES ('177', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '????????????????????????', '130771', '3', 'zhangjiakoujingjikaifaqu', 'Z', '1', null, '1307');
INSERT INTO `system_area` VALUES ('178', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '???????????????????????????', '130772', '3', 'zhangjiakoushichabeiguanliqu', 'Z', '1', null, '1307');
INSERT INTO `system_area` VALUES ('179', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '???????????????????????????', '130773', '3', 'zhangjiakoushisaibeiguanliqu', 'Z', '1', null, '1307');
INSERT INTO `system_area` VALUES ('180', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '?????????', '1308', '2', 'chengdeshi', 'C', '1', null, '13');
INSERT INTO `system_area` VALUES ('181', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '?????????', '130802', '3', 'shuangqiaoqu', 'S', '1', null, '1308');
INSERT INTO `system_area` VALUES ('182', null, null, null, '2022-12-24 14:21:06.191883', '2022-12-24 14:21:06.191883', '1', '?????????', '130803', '3', 'shuangluanqu', 'S', '1', null, '1308');
INSERT INTO `system_area` VALUES ('183', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '??????????????????', '130804', '3', 'yingshouyingzikuangqu', 'Y', '1', null, '1308');
INSERT INTO `system_area` VALUES ('184', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '?????????', '130821', '3', 'chengdexian', 'C', '1', null, '1308');
INSERT INTO `system_area` VALUES ('185', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '?????????', '130822', '3', 'xinglongxian', 'X', '1', null, '1308');
INSERT INTO `system_area` VALUES ('186', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '?????????', '130824', '3', 'luanpingxian', 'L', '1', null, '1308');
INSERT INTO `system_area` VALUES ('187', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '?????????', '130825', '3', 'longhuaxian', 'L', '1', null, '1308');
INSERT INTO `system_area` VALUES ('188', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '?????????????????????', '130826', '3', 'fengningmanzuzizhixian', 'F', '1', null, '1308');
INSERT INTO `system_area` VALUES ('189', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '?????????????????????', '130827', '3', 'kuanchengmanzuzizhixian', 'K', '1', null, '1308');
INSERT INTO `system_area` VALUES ('190', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '??????????????????????????????', '130828', '3', 'weichangmanzumengguzuzizhixian', 'W', '1', null, '1308');
INSERT INTO `system_area` VALUES ('191', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '?????????????????????????????????', '130871', '3', 'chengdegaoxinjishuchanyekaifaqu', 'C', '1', null, '1308');
INSERT INTO `system_area` VALUES ('192', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '?????????', '130881', '3', 'pingquanshi', 'P', '1', null, '1308');
INSERT INTO `system_area` VALUES ('193', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '?????????', '1309', '2', 'cangzhoushi', 'C', '1', null, '13');
INSERT INTO `system_area` VALUES ('194', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '?????????', '130902', '3', 'xinhuaqu', 'X', '1', null, '1309');
INSERT INTO `system_area` VALUES ('195', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '?????????', '130903', '3', 'yunhequ', 'Y', '1', null, '1309');
INSERT INTO `system_area` VALUES ('196', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '??????', '130921', '3', 'cangxian', 'C', '1', null, '1309');
INSERT INTO `system_area` VALUES ('197', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '??????', '130922', '3', 'qingxian', 'Q', '1', null, '1309');
INSERT INTO `system_area` VALUES ('198', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '?????????', '130923', '3', 'dongguangxian', 'D', '1', null, '1309');
INSERT INTO `system_area` VALUES ('199', null, null, null, '2022-12-24 14:21:06.192875', '2022-12-24 14:21:06.192875', '1', '?????????', '130924', '3', 'haixingxian', 'H', '1', null, '1309');
INSERT INTO `system_area` VALUES ('200', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '?????????', '130925', '3', 'yanshanxian', 'Y', '1', null, '1309');
INSERT INTO `system_area` VALUES ('201', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '?????????', '130926', '3', 'suningxian', 'S', '1', null, '1309');
INSERT INTO `system_area` VALUES ('202', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '?????????', '130927', '3', 'nanpixian', 'N', '1', null, '1309');
INSERT INTO `system_area` VALUES ('203', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '?????????', '130928', '3', 'wuqiaoxian', 'W', '1', null, '1309');
INSERT INTO `system_area` VALUES ('204', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '??????', '130929', '3', 'xianxian', 'X', '1', null, '1309');
INSERT INTO `system_area` VALUES ('205', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '?????????????????????', '130930', '3', 'mengcunhuizuzizhixian', 'M', '1', null, '1309');
INSERT INTO `system_area` VALUES ('206', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '???????????????????????????', '130971', '3', 'hebeicangzhoujingjikaifaqu', 'H', '1', null, '1309');
INSERT INTO `system_area` VALUES ('207', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '?????????????????????????????????', '130972', '3', 'cangzhougaoxinjishuchanyekaifaqu', 'C', '1', null, '1309');
INSERT INTO `system_area` VALUES ('208', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '??????????????????', '130973', '3', 'cangzhoubohaixinqu', 'C', '1', null, '1309');
INSERT INTO `system_area` VALUES ('209', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '?????????', '130981', '3', 'potoushi', 'P', '1', null, '1309');
INSERT INTO `system_area` VALUES ('210', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '?????????', '130982', '3', 'renqiushi', 'R', '1', null, '1309');
INSERT INTO `system_area` VALUES ('211', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '?????????', '130983', '3', 'huanghuashi', 'H', '1', null, '1309');
INSERT INTO `system_area` VALUES ('212', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '?????????', '130984', '3', 'hejianshi', 'H', '1', null, '1309');
INSERT INTO `system_area` VALUES ('213', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '?????????', '1310', '2', 'langfangshi', 'L', '1', null, '13');
INSERT INTO `system_area` VALUES ('214', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '?????????', '131002', '3', 'anciqu', 'A', '1', null, '1310');
INSERT INTO `system_area` VALUES ('215', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '?????????', '131003', '3', 'guangyangqu', 'G', '1', null, '1310');
INSERT INTO `system_area` VALUES ('216', null, null, null, '2022-12-24 14:21:06.193887', '2022-12-24 14:21:06.193887', '1', '?????????', '131022', '3', 'guanxian', 'G', '1', null, '1310');
INSERT INTO `system_area` VALUES ('217', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '?????????', '131023', '3', 'yongqingxian', 'Y', '1', null, '1310');
INSERT INTO `system_area` VALUES ('218', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '?????????', '131024', '3', 'xianghexian', 'X', '1', null, '1310');
INSERT INTO `system_area` VALUES ('219', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '?????????', '131025', '3', 'daichengxian', 'D', '1', null, '1310');
INSERT INTO `system_area` VALUES ('220', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '?????????', '131026', '3', 'wenanxian', 'W', '1', null, '1310');
INSERT INTO `system_area` VALUES ('221', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '?????????????????????', '131028', '3', 'dachanghuizuzizhixian', 'D', '1', null, '1310');
INSERT INTO `system_area` VALUES ('222', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '???????????????????????????', '131071', '3', 'langfangjingjijishukaifaqu', 'L', '1', null, '1310');
INSERT INTO `system_area` VALUES ('223', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '?????????', '131081', '3', 'bazhoushi', 'B', '1', null, '1310');
INSERT INTO `system_area` VALUES ('224', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '?????????', '131082', '3', 'sanheshi', 'S', '1', null, '1310');
INSERT INTO `system_area` VALUES ('225', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '?????????', '1311', '2', 'hengshuishi', 'H', '1', null, '13');
INSERT INTO `system_area` VALUES ('226', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '?????????', '131102', '3', 'taochengqu', 'T', '1', null, '1311');
INSERT INTO `system_area` VALUES ('227', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '?????????', '131103', '3', 'jizhouqu', 'J', '1', null, '1311');
INSERT INTO `system_area` VALUES ('228', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '?????????', '131121', '3', 'zaoqiangxian', 'Z', '1', null, '1311');
INSERT INTO `system_area` VALUES ('229', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '?????????', '131122', '3', 'wuyixian', 'W', '1', null, '1311');
INSERT INTO `system_area` VALUES ('230', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '?????????', '131123', '3', 'wuqiangxian', 'W', '1', null, '1311');
INSERT INTO `system_area` VALUES ('231', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '?????????', '131124', '3', 'raoyangxian', 'R', '1', null, '1311');
INSERT INTO `system_area` VALUES ('232', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '?????????', '131125', '3', 'anpingxian', 'A', '1', null, '1311');
INSERT INTO `system_area` VALUES ('233', null, null, null, '2022-12-24 14:21:06.194874', '2022-12-24 14:21:06.194874', '1', '?????????', '131126', '3', 'guchengxian', 'G', '1', null, '1311');
INSERT INTO `system_area` VALUES ('234', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '??????', '131127', '3', 'jingxian', 'J', '1', null, '1311');
INSERT INTO `system_area` VALUES ('235', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '?????????', '131128', '3', 'fuchengxian', 'F', '1', null, '1311');
INSERT INTO `system_area` VALUES ('236', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '???????????????????????????????????????', '131171', '3', 'hebeihengshuigaoxinjishuchanyekaifaqu', 'H', '1', null, '1311');
INSERT INTO `system_area` VALUES ('237', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '??????????????????', '131172', '3', 'hengshuibinhuxinqu', 'H', '1', null, '1311');
INSERT INTO `system_area` VALUES ('238', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '?????????', '131182', '3', 'shenzhoushi', 'S', '1', null, '1311');
INSERT INTO `system_area` VALUES ('239', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '?????????', '14', '1', 'shanxisheng', 'S', '1', null, null);
INSERT INTO `system_area` VALUES ('240', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '?????????', '1401', '2', 'taiyuanshi', 'T', '1', null, '14');
INSERT INTO `system_area` VALUES ('241', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '?????????', '140105', '3', 'xiaodianqu', 'X', '1', null, '1401');
INSERT INTO `system_area` VALUES ('242', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '?????????', '140106', '3', 'yingzequ', 'Y', '1', null, '1401');
INSERT INTO `system_area` VALUES ('243', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '????????????', '140107', '3', 'xinghualingqu', 'X', '1', null, '1401');
INSERT INTO `system_area` VALUES ('244', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '????????????', '140108', '3', 'jiancaopingqu', 'J', '1', null, '1401');
INSERT INTO `system_area` VALUES ('245', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '????????????', '140109', '3', 'wanbolinqu', 'W', '1', null, '1401');
INSERT INTO `system_area` VALUES ('246', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '?????????', '140110', '3', 'jinyuanqu', 'J', '1', null, '1401');
INSERT INTO `system_area` VALUES ('247', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '?????????', '140121', '3', 'qingxuxian', 'Q', '1', null, '1401');
INSERT INTO `system_area` VALUES ('248', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '?????????', '140122', '3', 'yangquxian', 'Y', '1', null, '1401');
INSERT INTO `system_area` VALUES ('249', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '?????????', '140123', '3', 'loufanxian', 'L', '1', null, '1401');
INSERT INTO `system_area` VALUES ('250', null, null, null, '2022-12-24 14:21:06.195884', '2022-12-24 14:21:06.195884', '1', '?????????????????????????????????', '140171', '3', 'shanxizhuanxingzonghegaigeshifanqu', 'S', '1', null, '1401');
INSERT INTO `system_area` VALUES ('251', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '?????????', '140181', '3', 'gujiaoshi', 'G', '1', null, '1401');
INSERT INTO `system_area` VALUES ('252', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '?????????', '1402', '2', 'datongshi', 'D', '1', null, '14');
INSERT INTO `system_area` VALUES ('253', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '?????????', '140212', '3', 'xinrongqu', 'X', '1', null, '1402');
INSERT INTO `system_area` VALUES ('254', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '?????????', '140213', '3', 'pingchengqu', 'P', '1', null, '1402');
INSERT INTO `system_area` VALUES ('255', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '?????????', '140214', '3', 'yungangqu', 'Y', '1', null, '1402');
INSERT INTO `system_area` VALUES ('256', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '?????????', '140215', '3', 'yunzhouqu', 'Y', '1', null, '1402');
INSERT INTO `system_area` VALUES ('257', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '?????????', '140221', '3', 'yanggaoxian', 'Y', '1', null, '1402');
INSERT INTO `system_area` VALUES ('258', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '?????????', '140222', '3', 'tianzhenxian', 'T', '1', null, '1402');
INSERT INTO `system_area` VALUES ('259', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '?????????', '140223', '3', 'guanglingxian', 'G', '1', null, '1402');
INSERT INTO `system_area` VALUES ('260', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '?????????', '140224', '3', 'lingqiuxian', 'L', '1', null, '1402');
INSERT INTO `system_area` VALUES ('261', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '?????????', '140225', '3', 'hunyuanxian', 'H', '1', null, '1402');
INSERT INTO `system_area` VALUES ('262', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '?????????', '140226', '3', 'zuoyunxian', 'Z', '1', null, '1402');
INSERT INTO `system_area` VALUES ('263', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '???????????????????????????', '140271', '3', 'shanxidatongjingjikaifaqu', 'S', '1', null, '1402');
INSERT INTO `system_area` VALUES ('264', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '?????????', '1403', '2', 'yangquanshi', 'Y', '1', null, '14');
INSERT INTO `system_area` VALUES ('265', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '??????', '140302', '3', 'chengqu', 'C', '1', null, '1403');
INSERT INTO `system_area` VALUES ('266', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '??????', '140303', '3', 'kuangqu', 'K', '1', null, '1403');
INSERT INTO `system_area` VALUES ('267', null, null, null, '2022-12-24 14:21:06.196880', '2022-12-24 14:21:06.196880', '1', '??????', '140311', '3', 'jiaoqu', 'J', '1', null, '1403');
INSERT INTO `system_area` VALUES ('268', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '?????????', '140321', '3', 'pingdingxian', 'P', '1', null, '1403');
INSERT INTO `system_area` VALUES ('269', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '??????', '140322', '3', 'yuxian', 'Y', '1', null, '1403');
INSERT INTO `system_area` VALUES ('270', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '?????????', '1404', '2', 'zhangzhishi', 'Z', '1', null, '14');
INSERT INTO `system_area` VALUES ('271', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '?????????', '140403', '3', 'luzhouqu', 'L', '1', null, '1404');
INSERT INTO `system_area` VALUES ('272', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '?????????', '140404', '3', 'shangdangqu', 'S', '1', null, '1404');
INSERT INTO `system_area` VALUES ('273', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '?????????', '140405', '3', 'tunliuqu', 'T', '1', null, '1404');
INSERT INTO `system_area` VALUES ('274', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '?????????', '140406', '3', 'luchengqu', 'L', '1', null, '1404');
INSERT INTO `system_area` VALUES ('275', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '?????????', '140423', '3', 'xiangyuanxian', 'X', '1', null, '1404');
INSERT INTO `system_area` VALUES ('276', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '?????????', '140425', '3', 'pingshunxian', 'P', '1', null, '1404');
INSERT INTO `system_area` VALUES ('277', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '?????????', '140426', '3', 'lichengxian', 'L', '1', null, '1404');
INSERT INTO `system_area` VALUES ('278', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '?????????', '140427', '3', 'huguanxian', 'H', '1', null, '1404');
INSERT INTO `system_area` VALUES ('279', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '?????????', '140428', '3', 'zhangzixian', 'Z', '1', null, '1404');
INSERT INTO `system_area` VALUES ('280', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '?????????', '140429', '3', 'wuxiangxian', 'W', '1', null, '1404');
INSERT INTO `system_area` VALUES ('281', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '??????', '140430', '3', 'qinxian', 'Q', '1', null, '1404');
INSERT INTO `system_area` VALUES ('282', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '?????????', '140431', '3', 'qinyuanxian', 'Q', '1', null, '1404');
INSERT INTO `system_area` VALUES ('283', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '????????????????????????????????????', '140471', '3', 'shanxizhangzhigaoxinjishuchanyeyuanqu', 'S', '1', null, '1404');
INSERT INTO `system_area` VALUES ('284', null, null, null, '2022-12-24 14:21:06.197880', '2022-12-24 14:21:06.197880', '1', '?????????', '1405', '2', 'jinchengshi', 'J', '1', null, '14');
INSERT INTO `system_area` VALUES ('285', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '??????', '140502', '3', 'chengqu', 'C', '1', null, '1405');
INSERT INTO `system_area` VALUES ('286', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '?????????', '140521', '3', 'qinshuixian', 'Q', '1', null, '1405');
INSERT INTO `system_area` VALUES ('287', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '?????????', '140522', '3', 'yangchengxian', 'Y', '1', null, '1405');
INSERT INTO `system_area` VALUES ('288', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '?????????', '140524', '3', 'lingchuanxian', 'L', '1', null, '1405');
INSERT INTO `system_area` VALUES ('289', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '?????????', '140525', '3', 'zezhouxian', 'Z', '1', null, '1405');
INSERT INTO `system_area` VALUES ('290', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '?????????', '140581', '3', 'gaopingshi', 'G', '1', null, '1405');
INSERT INTO `system_area` VALUES ('291', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '?????????', '1406', '2', 'shuozhoushi', 'S', '1', null, '14');
INSERT INTO `system_area` VALUES ('292', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '?????????', '140602', '3', 'shuochengqu', 'S', '1', null, '1406');
INSERT INTO `system_area` VALUES ('293', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '?????????', '140603', '3', 'pingluqu', 'P', '1', null, '1406');
INSERT INTO `system_area` VALUES ('294', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '?????????', '140621', '3', 'shanyinxian', 'S', '1', null, '1406');
INSERT INTO `system_area` VALUES ('295', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '??????', '140622', '3', 'yingxian', 'Y', '1', null, '1406');
INSERT INTO `system_area` VALUES ('296', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '?????????', '140623', '3', 'youyuxian', 'Y', '1', null, '1406');
INSERT INTO `system_area` VALUES ('297', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '???????????????????????????', '140671', '3', 'shanxishuozhoujingjikaifaqu', 'S', '1', null, '1406');
INSERT INTO `system_area` VALUES ('298', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '?????????', '140681', '3', 'huairenshi', 'H', '1', null, '1406');
INSERT INTO `system_area` VALUES ('299', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '?????????', '1407', '2', 'jinzhongshi', 'J', '1', null, '14');
INSERT INTO `system_area` VALUES ('300', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '?????????', '140702', '3', 'yuciqu', 'Y', '1', null, '1407');
INSERT INTO `system_area` VALUES ('301', null, null, null, '2022-12-24 14:21:06.198883', '2022-12-24 14:21:06.198883', '1', '?????????', '140703', '3', 'taiguqu', 'T', '1', null, '1407');
INSERT INTO `system_area` VALUES ('302', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '?????????', '140721', '3', 'yushexian', 'Y', '1', null, '1407');
INSERT INTO `system_area` VALUES ('303', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '?????????', '140722', '3', 'zuoquanxian', 'Z', '1', null, '1407');
INSERT INTO `system_area` VALUES ('304', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '?????????', '140723', '3', 'heshunxian', 'H', '1', null, '1407');
INSERT INTO `system_area` VALUES ('305', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '?????????', '140724', '3', 'xiyangxian', 'X', '1', null, '1407');
INSERT INTO `system_area` VALUES ('306', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '?????????', '140725', '3', 'shouyangxian', 'S', '1', null, '1407');
INSERT INTO `system_area` VALUES ('307', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '??????', '140727', '3', 'qixian', 'Q', '1', null, '1407');
INSERT INTO `system_area` VALUES ('308', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '?????????', '140728', '3', 'pingyaoxian', 'P', '1', null, '1407');
INSERT INTO `system_area` VALUES ('309', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '?????????', '140729', '3', 'lingshixian', 'L', '1', null, '1407');
INSERT INTO `system_area` VALUES ('310', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '?????????', '140781', '3', 'jiexiushi', 'J', '1', null, '1407');
INSERT INTO `system_area` VALUES ('311', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '?????????', '1408', '2', 'yunchengshi', 'Y', '1', null, '14');
INSERT INTO `system_area` VALUES ('312', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '?????????', '140802', '3', 'yanhuqu', 'Y', '1', null, '1408');
INSERT INTO `system_area` VALUES ('313', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '?????????', '140821', '3', 'linyixian', 'L', '1', null, '1408');
INSERT INTO `system_area` VALUES ('314', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '?????????', '140822', '3', 'wanrongxian', 'W', '1', null, '1408');
INSERT INTO `system_area` VALUES ('315', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '?????????', '140823', '3', 'wenxixian', 'W', '1', null, '1408');
INSERT INTO `system_area` VALUES ('316', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '?????????', '140824', '3', 'jishanxian', 'J', '1', null, '1408');
INSERT INTO `system_area` VALUES ('317', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '?????????', '140825', '3', 'xinjiangxian', 'X', '1', null, '1408');
INSERT INTO `system_area` VALUES ('318', null, null, null, '2022-12-24 14:21:06.199882', '2022-12-24 14:21:06.199882', '1', '??????', '140826', '3', 'jiangxian', 'J', '1', null, '1408');
INSERT INTO `system_area` VALUES ('319', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '?????????', '140827', '3', 'yuanquxian', 'Y', '1', null, '1408');
INSERT INTO `system_area` VALUES ('320', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '??????', '140828', '3', 'xiaxian', 'X', '1', null, '1408');
INSERT INTO `system_area` VALUES ('321', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '?????????', '140829', '3', 'pingluxian', 'P', '1', null, '1408');
INSERT INTO `system_area` VALUES ('322', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '?????????', '140830', '3', 'ruichengxian', 'R', '1', null, '1408');
INSERT INTO `system_area` VALUES ('323', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '?????????', '140881', '3', 'yongjishi', 'Y', '1', null, '1408');
INSERT INTO `system_area` VALUES ('324', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '?????????', '140882', '3', 'hejinshi', 'H', '1', null, '1408');
INSERT INTO `system_area` VALUES ('325', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '?????????', '1409', '2', 'xinzhoushi', 'X', '1', null, '14');
INSERT INTO `system_area` VALUES ('326', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '?????????', '140902', '3', 'xinfuqu', 'X', '1', null, '1409');
INSERT INTO `system_area` VALUES ('327', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '?????????', '140921', '3', 'dingxiangxian', 'D', '1', null, '1409');
INSERT INTO `system_area` VALUES ('328', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '?????????', '140922', '3', 'wutaixian', 'W', '1', null, '1409');
INSERT INTO `system_area` VALUES ('329', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '??????', '140923', '3', 'daixian', 'D', '1', null, '1409');
INSERT INTO `system_area` VALUES ('330', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '?????????', '140924', '3', 'fanzhixian', 'F', '1', null, '1409');
INSERT INTO `system_area` VALUES ('331', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '?????????', '140925', '3', 'ningwuxian', 'N', '1', null, '1409');
INSERT INTO `system_area` VALUES ('332', null, null, null, '2022-12-24 14:21:06.200876', '2022-12-24 14:21:06.200876', '1', '?????????', '140926', '3', 'jinglexian', 'J', '1', null, '1409');
INSERT INTO `system_area` VALUES ('333', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '?????????', '140927', '3', 'shenchixian', 'S', '1', null, '1409');
INSERT INTO `system_area` VALUES ('334', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '?????????', '140928', '3', 'wuzhaixian', 'W', '1', null, '1409');
INSERT INTO `system_area` VALUES ('335', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '?????????', '140929', '3', 'kelanxian', 'K', '1', null, '1409');
INSERT INTO `system_area` VALUES ('336', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '?????????', '140930', '3', 'hequxian', 'H', '1', null, '1409');
INSERT INTO `system_area` VALUES ('337', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '?????????', '140931', '3', 'baodexian', 'B', '1', null, '1409');
INSERT INTO `system_area` VALUES ('338', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '?????????', '140932', '3', 'pianguanxian', 'P', '1', null, '1409');
INSERT INTO `system_area` VALUES ('339', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '????????????????????????', '140971', '3', 'wutaishanfengjingmingshengqu', 'W', '1', null, '1409');
INSERT INTO `system_area` VALUES ('340', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '?????????', '140981', '3', 'yuanpingshi', 'Y', '1', null, '1409');
INSERT INTO `system_area` VALUES ('341', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '?????????', '1410', '2', 'linfenshi', 'L', '1', null, '14');
INSERT INTO `system_area` VALUES ('342', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '?????????', '141002', '3', 'yaodouqu', 'Y', '1', null, '1410');
INSERT INTO `system_area` VALUES ('343', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '?????????', '141021', '3', 'quwoxian', 'Q', '1', null, '1410');
INSERT INTO `system_area` VALUES ('344', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '?????????', '141022', '3', 'yichengxian', 'Y', '1', null, '1410');
INSERT INTO `system_area` VALUES ('345', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '?????????', '141023', '3', 'xiangfenxian', 'X', '1', null, '1410');
INSERT INTO `system_area` VALUES ('346', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '?????????', '141024', '3', 'hongdongxian', 'H', '1', null, '1410');
INSERT INTO `system_area` VALUES ('347', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '??????', '141025', '3', 'guxian', 'G', '1', null, '1410');
INSERT INTO `system_area` VALUES ('348', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '?????????', '141026', '3', 'anzexian', 'A', '1', null, '1410');
INSERT INTO `system_area` VALUES ('349', null, null, null, '2022-12-24 14:21:06.201878', '2022-12-24 14:21:06.201878', '1', '?????????', '141027', '3', 'fushanxian', 'F', '1', null, '1410');
INSERT INTO `system_area` VALUES ('350', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '??????', '141028', '3', 'jixian', 'J', '1', null, '1410');
INSERT INTO `system_area` VALUES ('351', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '?????????', '141029', '3', 'xiangningxian', 'X', '1', null, '1410');
INSERT INTO `system_area` VALUES ('352', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '?????????', '141030', '3', 'daningxian', 'D', '1', null, '1410');
INSERT INTO `system_area` VALUES ('353', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '??????', '141031', '3', 'xixian', 'X', '1', null, '1410');
INSERT INTO `system_area` VALUES ('354', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '?????????', '141032', '3', 'yonghexian', 'Y', '1', null, '1410');
INSERT INTO `system_area` VALUES ('355', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '??????', '141033', '3', 'puxian', 'P', '1', null, '1410');
INSERT INTO `system_area` VALUES ('356', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '?????????', '141034', '3', 'fenxixian', 'F', '1', null, '1410');
INSERT INTO `system_area` VALUES ('357', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '?????????', '141081', '3', 'houmashi', 'H', '1', null, '1410');
INSERT INTO `system_area` VALUES ('358', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '?????????', '141082', '3', 'huozhoushi', 'H', '1', null, '1410');
INSERT INTO `system_area` VALUES ('359', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '?????????', '1411', '2', 'lvliangshi', 'L', '1', null, '14');
INSERT INTO `system_area` VALUES ('360', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '?????????', '141102', '3', 'lishiqu', 'L', '1', null, '1411');
INSERT INTO `system_area` VALUES ('361', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '?????????', '141121', '3', 'wenshuixian', 'W', '1', null, '1411');
INSERT INTO `system_area` VALUES ('362', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '?????????', '141122', '3', 'jiaochengxian', 'J', '1', null, '1411');
INSERT INTO `system_area` VALUES ('363', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '??????', '141123', '3', 'xingxian', 'X', '1', null, '1411');
INSERT INTO `system_area` VALUES ('364', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '??????', '141124', '3', 'linxian', 'L', '1', null, '1411');
INSERT INTO `system_area` VALUES ('365', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '?????????', '141125', '3', 'liulinxian', 'L', '1', null, '1411');
INSERT INTO `system_area` VALUES ('366', null, null, null, '2022-12-24 14:21:06.202875', '2022-12-24 14:21:06.202875', '1', '?????????', '141126', '3', 'shilouxian', 'S', '1', null, '1411');
INSERT INTO `system_area` VALUES ('367', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '??????', '141127', '3', 'lanxian', 'L', '1', null, '1411');
INSERT INTO `system_area` VALUES ('368', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '?????????', '141128', '3', 'fangshanxian', 'F', '1', null, '1411');
INSERT INTO `system_area` VALUES ('369', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '?????????', '141129', '3', 'zhongyangxian', 'Z', '1', null, '1411');
INSERT INTO `system_area` VALUES ('370', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '?????????', '141130', '3', 'jiaokouxian', 'J', '1', null, '1411');
INSERT INTO `system_area` VALUES ('371', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '?????????', '141181', '3', 'xiaoyishi', 'X', '1', null, '1411');
INSERT INTO `system_area` VALUES ('372', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '?????????', '141182', '3', 'fenyangshi', 'F', '1', null, '1411');
INSERT INTO `system_area` VALUES ('373', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '??????????????????', '15', '1', 'neimengguzizhiqu', 'N', '1', null, null);
INSERT INTO `system_area` VALUES ('374', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '???????????????', '1501', '2', 'huhehaoteshi', 'H', '1', null, '15');
INSERT INTO `system_area` VALUES ('375', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '?????????', '150102', '3', 'xinchengqu', 'X', '1', null, '1501');
INSERT INTO `system_area` VALUES ('376', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '?????????', '150103', '3', 'huiminqu', 'H', '1', null, '1501');
INSERT INTO `system_area` VALUES ('377', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '?????????', '150104', '3', 'yuquanqu', 'Y', '1', null, '1501');
INSERT INTO `system_area` VALUES ('378', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '?????????', '150105', '3', 'saihanqu', 'S', '1', null, '1501');
INSERT INTO `system_area` VALUES ('379', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '???????????????', '150121', '3', 'tumotezuoqi', 'T', '1', null, '1501');
INSERT INTO `system_area` VALUES ('380', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '????????????', '150122', '3', 'tuoketuoxian', 'T', '1', null, '1501');
INSERT INTO `system_area` VALUES ('381', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '???????????????', '150123', '3', 'helingeerxian', 'H', '1', null, '1501');
INSERT INTO `system_area` VALUES ('382', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '????????????', '150124', '3', 'qingshuihexian', 'Q', '1', null, '1501');
INSERT INTO `system_area` VALUES ('383', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.203874', '1', '?????????', '150125', '3', 'wuchuanxian', 'W', '1', null, '1501');
INSERT INTO `system_area` VALUES ('384', null, null, null, '2022-12-24 14:21:06.203874', '2022-12-24 14:21:06.204876', '1', '?????????????????????????????????', '150172', '3', 'huhehaotejingjijishukaifaqu', 'H', '1', null, '1501');
INSERT INTO `system_area` VALUES ('385', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '?????????', '1502', '2', 'baotoushi', 'B', '1', null, '15');
INSERT INTO `system_area` VALUES ('386', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '?????????', '150202', '3', 'donghequ', 'D', '1', null, '1502');
INSERT INTO `system_area` VALUES ('387', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '????????????', '150203', '3', 'kundoulunqu', 'K', '1', null, '1502');
INSERT INTO `system_area` VALUES ('388', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '?????????', '150204', '3', 'qingshanqu', 'Q', '1', null, '1502');
INSERT INTO `system_area` VALUES ('389', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '?????????', '150205', '3', 'shiguaiqu', 'S', '1', null, '1502');
INSERT INTO `system_area` VALUES ('390', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '??????????????????', '150206', '3', 'baiyunebokuangqu', 'B', '1', null, '1502');
INSERT INTO `system_area` VALUES ('391', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '?????????', '150207', '3', 'jiuyuanqu', 'J', '1', null, '1502');
INSERT INTO `system_area` VALUES ('392', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '???????????????', '150221', '3', 'tumoteyouqi', 'T', '1', null, '1502');
INSERT INTO `system_area` VALUES ('393', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '?????????', '150222', '3', 'guyangxian', 'G', '1', null, '1502');
INSERT INTO `system_area` VALUES ('394', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '???????????????????????????', '150223', '3', 'daerhanmaominganlianheqi', 'D', '1', null, '1502');
INSERT INTO `system_area` VALUES ('395', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '???????????????????????????????????????', '150271', '3', 'baotouxitugaoxinjishuchanyekaifaqu', 'B', '1', null, '1502');
INSERT INTO `system_area` VALUES ('396', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '?????????', '1503', '2', 'wuhaishi', 'W', '1', null, '15');
INSERT INTO `system_area` VALUES ('397', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '????????????', '150302', '3', 'haibowanqu', 'H', '1', null, '1503');
INSERT INTO `system_area` VALUES ('398', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '?????????', '150303', '3', 'hainanqu', 'H', '1', null, '1503');
INSERT INTO `system_area` VALUES ('399', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '?????????', '150304', '3', 'wudaqu', 'W', '1', null, '1503');
INSERT INTO `system_area` VALUES ('400', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '?????????', '1504', '2', 'chifengshi', 'C', '1', null, '15');
INSERT INTO `system_area` VALUES ('401', null, null, null, '2022-12-24 14:21:06.204876', '2022-12-24 14:21:06.204876', '1', '?????????', '150402', '3', 'hongshanqu', 'H', '1', null, '1504');
INSERT INTO `system_area` VALUES ('402', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '????????????', '150403', '3', 'yuanbaoshanqu', 'Y', '1', null, '1504');
INSERT INTO `system_area` VALUES ('403', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '?????????', '150404', '3', 'songshanqu', 'S', '1', null, '1504');
INSERT INTO `system_area` VALUES ('404', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '??????????????????', '150421', '3', 'alukeerqinqi', 'A', '1', null, '1504');
INSERT INTO `system_area` VALUES ('405', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '????????????', '150422', '3', 'balinzuoqi', 'B', '1', null, '1504');
INSERT INTO `system_area` VALUES ('406', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '????????????', '150423', '3', 'balinyouqi', 'B', '1', null, '1504');
INSERT INTO `system_area` VALUES ('407', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '?????????', '150424', '3', 'linxixian', 'L', '1', null, '1504');
INSERT INTO `system_area` VALUES ('408', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '???????????????', '150425', '3', 'keshenketengqi', 'K', '1', null, '1504');
INSERT INTO `system_area` VALUES ('409', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '????????????', '150426', '3', 'wengniuteqi', 'W', '1', null, '1504');
INSERT INTO `system_area` VALUES ('410', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '????????????', '150428', '3', 'kalaqinqi', 'K', '1', null, '1504');
INSERT INTO `system_area` VALUES ('411', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '?????????', '150429', '3', 'ningchengxian', 'N', '1', null, '1504');
INSERT INTO `system_area` VALUES ('412', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '?????????', '150430', '3', 'aohanqi', 'A', '1', null, '1504');
INSERT INTO `system_area` VALUES ('413', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '?????????', '1505', '2', 'tongliaoshi', 'T', '1', null, '15');
INSERT INTO `system_area` VALUES ('414', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '????????????', '150502', '3', 'keerqinqu', 'K', '1', null, '1505');
INSERT INTO `system_area` VALUES ('415', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '?????????????????????', '150521', '3', 'keerqinzuoyizhongqi', 'K', '1', null, '1505');
INSERT INTO `system_area` VALUES ('416', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '?????????????????????', '150522', '3', 'keerqinzuoyihouqi', 'K', '1', null, '1505');
INSERT INTO `system_area` VALUES ('417', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '?????????', '150523', '3', 'kailuxian', 'K', '1', null, '1505');
INSERT INTO `system_area` VALUES ('418', null, null, null, '2022-12-24 14:21:06.205875', '2022-12-24 14:21:06.205875', '1', '?????????', '150524', '3', 'kulunqi', 'K', '1', null, '1505');
INSERT INTO `system_area` VALUES ('419', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '?????????', '150525', '3', 'naimanqi', 'N', '1', null, '1505');
INSERT INTO `system_area` VALUES ('420', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '????????????', '150526', '3', 'zhaluteqi', 'Z', '1', null, '1505');
INSERT INTO `system_area` VALUES ('421', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '???????????????????????????', '150571', '3', 'tongliaojingjijishukaifaqu', 'T', '1', null, '1505');
INSERT INTO `system_area` VALUES ('422', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '???????????????', '150581', '3', 'huolinguoleishi', 'H', '1', null, '1505');
INSERT INTO `system_area` VALUES ('423', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '???????????????', '1506', '2', 'eerduosishi', 'E', '1', null, '15');
INSERT INTO `system_area` VALUES ('424', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '?????????', '150602', '3', 'dongshengqu', 'D', '1', null, '1506');
INSERT INTO `system_area` VALUES ('425', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '????????????', '150603', '3', 'kangbashenqu', 'K', '1', null, '1506');
INSERT INTO `system_area` VALUES ('426', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '????????????', '150621', '3', 'dalateqi', 'D', '1', null, '1506');
INSERT INTO `system_area` VALUES ('427', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '????????????', '150622', '3', 'zhungeerqi', 'Z', '1', null, '1506');
INSERT INTO `system_area` VALUES ('428', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '???????????????', '150623', '3', 'etuokeqianqi', 'E', '1', null, '1506');
INSERT INTO `system_area` VALUES ('429', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '????????????', '150624', '3', 'etuokeqi', 'E', '1', null, '1506');
INSERT INTO `system_area` VALUES ('430', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '?????????', '150625', '3', 'hangjinqi', 'H', '1', null, '1506');
INSERT INTO `system_area` VALUES ('431', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '?????????', '150626', '3', 'wushenqi', 'W', '1', null, '1506');
INSERT INTO `system_area` VALUES ('432', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '???????????????', '150627', '3', 'yijinhuoluoqi', 'Y', '1', null, '1506');
INSERT INTO `system_area` VALUES ('433', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '???????????????', '1507', '2', 'hulunbeiershi', 'H', '1', null, '15');
INSERT INTO `system_area` VALUES ('434', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '????????????', '150702', '3', 'hailaerqu', 'H', '1', null, '1507');
INSERT INTO `system_area` VALUES ('435', null, null, null, '2022-12-24 14:21:06.206875', '2022-12-24 14:21:06.206875', '1', '???????????????', '150703', '3', 'zhalainuoerqu', 'Z', '1', null, '1507');
INSERT INTO `system_area` VALUES ('436', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '?????????', '150721', '3', 'arongqi', 'A', '1', null, '1507');
INSERT INTO `system_area` VALUES ('437', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '?????????????????????????????????', '150722', '3', 'molidawadawoerzuzizhiqi', 'M', '1', null, '1507');
INSERT INTO `system_area` VALUES ('438', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '??????????????????', '150723', '3', 'elunchunzizhiqi', 'E', '1', null, '1507');
INSERT INTO `system_area` VALUES ('439', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '?????????????????????', '150724', '3', 'ewenkezuzizhiqi', 'E', '1', null, '1507');
INSERT INTO `system_area` VALUES ('440', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '???????????????', '150725', '3', 'chenbaerhuqi', 'C', '1', null, '1507');
INSERT INTO `system_area` VALUES ('441', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '??????????????????', '150726', '3', 'xinbaerhuzuoqi', 'X', '1', null, '1507');
INSERT INTO `system_area` VALUES ('442', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '??????????????????', '150727', '3', 'xinbaerhuyouqi', 'X', '1', null, '1507');
INSERT INTO `system_area` VALUES ('443', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '????????????', '150781', '3', 'manzhoulishi', 'M', '1', null, '1507');
INSERT INTO `system_area` VALUES ('444', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '????????????', '150782', '3', 'yakeshishi', 'Y', '1', null, '1507');
INSERT INTO `system_area` VALUES ('445', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '????????????', '150783', '3', 'zhalantunshi', 'Z', '1', null, '1507');
INSERT INTO `system_area` VALUES ('446', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '???????????????', '150784', '3', 'eergunashi', 'E', '1', null, '1507');
INSERT INTO `system_area` VALUES ('447', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '?????????', '150785', '3', 'genheshi', 'G', '1', null, '1507');
INSERT INTO `system_area` VALUES ('448', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '???????????????', '1508', '2', 'bayannaoershi', 'B', '1', null, '15');
INSERT INTO `system_area` VALUES ('449', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '?????????', '150802', '3', 'linhequ', 'L', '1', null, '1508');
INSERT INTO `system_area` VALUES ('450', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '?????????', '150821', '3', 'wuyuanxian', 'W', '1', null, '1508');
INSERT INTO `system_area` VALUES ('451', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.207884', '1', '?????????', '150822', '3', 'dengkouxian', 'D', '1', null, '1508');
INSERT INTO `system_area` VALUES ('452', null, null, null, '2022-12-24 14:21:06.207884', '2022-12-24 14:21:06.208875', '1', '???????????????', '150823', '3', 'wulateqianqi', 'W', '1', null, '1508');
INSERT INTO `system_area` VALUES ('453', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '???????????????', '150824', '3', 'wulatezhongqi', 'W', '1', null, '1508');
INSERT INTO `system_area` VALUES ('454', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '???????????????', '150825', '3', 'wulatehouqi', 'W', '1', null, '1508');
INSERT INTO `system_area` VALUES ('455', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '????????????', '150826', '3', 'hangjinhouqi', 'H', '1', null, '1508');
INSERT INTO `system_area` VALUES ('456', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '???????????????', '1509', '2', 'wulanchabushi', 'W', '1', null, '15');
INSERT INTO `system_area` VALUES ('457', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '?????????', '150902', '3', 'jiningqu', 'J', '1', null, '1509');
INSERT INTO `system_area` VALUES ('458', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '?????????', '150921', '3', 'zhuozixian', 'Z', '1', null, '1509');
INSERT INTO `system_area` VALUES ('459', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '?????????', '150922', '3', 'huadexian', 'H', '1', null, '1509');
INSERT INTO `system_area` VALUES ('460', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '?????????', '150923', '3', 'shangdouxian', 'S', '1', null, '1509');
INSERT INTO `system_area` VALUES ('461', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '?????????', '150924', '3', 'xinghexian', 'X', '1', null, '1509');
INSERT INTO `system_area` VALUES ('462', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '?????????', '150925', '3', 'liangchengxian', 'L', '1', null, '1509');
INSERT INTO `system_area` VALUES ('463', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '?????????????????????', '150926', '3', 'chahaeryouyiqianqi', 'C', '1', null, '1509');
INSERT INTO `system_area` VALUES ('464', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '?????????????????????', '150927', '3', 'chahaeryouyizhongqi', 'C', '1', null, '1509');
INSERT INTO `system_area` VALUES ('465', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '?????????????????????', '150928', '3', 'chahaeryouyihouqi', 'C', '1', null, '1509');
INSERT INTO `system_area` VALUES ('466', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '????????????', '150929', '3', 'siziwangqi', 'S', '1', null, '1509');
INSERT INTO `system_area` VALUES ('467', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '?????????', '150981', '3', 'fengzhenshi', 'F', '1', null, '1509');
INSERT INTO `system_area` VALUES ('468', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.208875', '1', '?????????', '1522', '2', 'xinganmeng', 'X', '1', null, '15');
INSERT INTO `system_area` VALUES ('469', null, null, null, '2022-12-24 14:21:06.208875', '2022-12-24 14:21:06.209875', '1', '???????????????', '152201', '3', 'wulanhaoteshi', 'W', '1', null, '1522');
INSERT INTO `system_area` VALUES ('470', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '????????????', '152202', '3', 'aershanshi', 'A', '1', null, '1522');
INSERT INTO `system_area` VALUES ('471', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '?????????????????????', '152221', '3', 'keerqinyouyiqianqi', 'K', '1', null, '1522');
INSERT INTO `system_area` VALUES ('472', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '?????????????????????', '152222', '3', 'keerqinyouyizhongqi', 'K', '1', null, '1522');
INSERT INTO `system_area` VALUES ('473', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '????????????', '152223', '3', 'zhalaiteqi', 'Z', '1', null, '1522');
INSERT INTO `system_area` VALUES ('474', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '?????????', '152224', '3', 'tuquanxian', 'T', '1', null, '1522');
INSERT INTO `system_area` VALUES ('475', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '???????????????', '1525', '2', 'xilinguoleimeng', 'X', '1', null, '15');
INSERT INTO `system_area` VALUES ('476', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '???????????????', '152501', '3', 'erlianhaoteshi', 'E', '1', null, '1525');
INSERT INTO `system_area` VALUES ('477', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '???????????????', '152502', '3', 'xilinhaoteshi', 'X', '1', null, '1525');
INSERT INTO `system_area` VALUES ('478', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '????????????', '152522', '3', 'abagaqi', 'A', '1', null, '1525');
INSERT INTO `system_area` VALUES ('479', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '???????????????', '152523', '3', 'sunitezuoqi', 'S', '1', null, '1525');
INSERT INTO `system_area` VALUES ('480', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '???????????????', '152524', '3', 'suniteyouqi', 'S', '1', null, '1525');
INSERT INTO `system_area` VALUES ('481', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '??????????????????', '152525', '3', 'dongwuzhumuqinqi', 'D', '1', null, '1525');
INSERT INTO `system_area` VALUES ('482', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '??????????????????', '152526', '3', 'xiwuzhumuqinqi', 'X', '1', null, '1525');
INSERT INTO `system_area` VALUES ('483', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '????????????', '152527', '3', 'taipusiqi', 'T', '1', null, '1525');
INSERT INTO `system_area` VALUES ('484', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '?????????', '152528', '3', 'xianghuangqi', 'X', '1', null, '1525');
INSERT INTO `system_area` VALUES ('485', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '????????????', '152529', '3', 'zhengxiangbaiqi', 'Z', '1', null, '1525');
INSERT INTO `system_area` VALUES ('486', null, null, null, '2022-12-24 14:21:06.209875', '2022-12-24 14:21:06.209875', '1', '?????????', '152530', '3', 'zhenglanqi', 'Z', '1', null, '1525');
INSERT INTO `system_area` VALUES ('487', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '?????????', '152531', '3', 'duolunxian', 'D', '1', null, '1525');
INSERT INTO `system_area` VALUES ('488', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '??????????????????', '152571', '3', 'wulagaiguanweihui', 'W', '1', null, '1525');
INSERT INTO `system_area` VALUES ('489', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '????????????', '1529', '2', 'alashanmeng', 'A', '1', null, '15');
INSERT INTO `system_area` VALUES ('490', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '???????????????', '152921', '3', 'alashanzuoqi', 'A', '1', null, '1529');
INSERT INTO `system_area` VALUES ('491', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '???????????????', '152922', '3', 'alashanyouqi', 'A', '1', null, '1529');
INSERT INTO `system_area` VALUES ('492', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '????????????', '152923', '3', 'ejinaqi', 'E', '1', null, '1529');
INSERT INTO `system_area` VALUES ('493', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '?????????????????????????????????', '152971', '3', 'neimenggualashanjingjikaifaqu', 'N', '1', null, '1529');
INSERT INTO `system_area` VALUES ('494', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '?????????', '21', '1', 'liaoningsheng', 'L', '1', null, null);
INSERT INTO `system_area` VALUES ('495', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '?????????', '2101', '2', 'shenyangshi', 'S', '1', null, '21');
INSERT INTO `system_area` VALUES ('496', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '?????????', '210102', '3', 'hepingqu', 'H', '1', null, '2101');
INSERT INTO `system_area` VALUES ('497', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '?????????', '210103', '3', 'shenhequ', 'S', '1', null, '2101');
INSERT INTO `system_area` VALUES ('498', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '?????????', '210104', '3', 'dadongqu', 'D', '1', null, '2101');
INSERT INTO `system_area` VALUES ('499', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '?????????', '210105', '3', 'huangguqu', 'H', '1', null, '2101');
INSERT INTO `system_area` VALUES ('500', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '?????????', '210106', '3', 'tiexiqu', 'T', '1', null, '2101');
INSERT INTO `system_area` VALUES ('501', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '????????????', '210111', '3', 'sujiatunqu', 'S', '1', null, '2101');
INSERT INTO `system_area` VALUES ('502', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '?????????', '210112', '3', 'hunnanqu', 'H', '1', null, '2101');
INSERT INTO `system_area` VALUES ('503', null, null, null, '2022-12-24 14:21:06.210875', '2022-12-24 14:21:06.210875', '1', '????????????', '210113', '3', 'shenbeixinqu', 'S', '1', null, '2101');
INSERT INTO `system_area` VALUES ('504', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '?????????', '210114', '3', 'yuhongqu', 'Y', '1', null, '2101');
INSERT INTO `system_area` VALUES ('505', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '?????????', '210115', '3', 'liaozhongqu', 'L', '1', null, '2101');
INSERT INTO `system_area` VALUES ('506', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '?????????', '210123', '3', 'kangpingxian', 'K', '1', null, '2101');
INSERT INTO `system_area` VALUES ('507', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '?????????', '210124', '3', 'fakuxian', 'F', '1', null, '2101');
INSERT INTO `system_area` VALUES ('508', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '?????????', '210181', '3', 'xinminshi', 'X', '1', null, '2101');
INSERT INTO `system_area` VALUES ('509', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '?????????', '2102', '2', 'dalianshi', 'D', '1', null, '21');
INSERT INTO `system_area` VALUES ('510', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '?????????', '210202', '3', 'zhongshanqu', 'Z', '1', null, '2102');
INSERT INTO `system_area` VALUES ('511', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '?????????', '210203', '3', 'xigangqu', 'X', '1', null, '2102');
INSERT INTO `system_area` VALUES ('512', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '????????????', '210204', '3', 'shahekouqu', 'S', '1', null, '2102');
INSERT INTO `system_area` VALUES ('513', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '????????????', '210211', '3', 'ganjingziqu', 'G', '1', null, '2102');
INSERT INTO `system_area` VALUES ('514', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '????????????', '210212', '3', 'lvshunkouqu', 'L', '1', null, '2102');
INSERT INTO `system_area` VALUES ('515', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '?????????', '210213', '3', 'jinzhouqu', 'J', '1', null, '2102');
INSERT INTO `system_area` VALUES ('516', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '????????????', '210214', '3', 'pulandianqu', 'P', '1', null, '2102');
INSERT INTO `system_area` VALUES ('517', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '?????????', '210224', '3', 'zhanghaixian', 'Z', '1', null, '2102');
INSERT INTO `system_area` VALUES ('518', null, null, null, '2022-12-24 14:21:06.211878', '2022-12-24 14:21:06.211878', '1', '????????????', '210281', '3', 'wafangdianshi', 'W', '1', null, '2102');
INSERT INTO `system_area` VALUES ('519', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '?????????', '210283', '3', 'zhuangheshi', 'Z', '1', null, '2102');
INSERT INTO `system_area` VALUES ('520', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '?????????', '2103', '2', 'anshanshi', 'A', '1', null, '21');
INSERT INTO `system_area` VALUES ('521', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '?????????', '210302', '3', 'tiedongqu', 'T', '1', null, '2103');
INSERT INTO `system_area` VALUES ('522', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '?????????', '210303', '3', 'tiexiqu', 'T', '1', null, '2103');
INSERT INTO `system_area` VALUES ('523', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '?????????', '210304', '3', 'lishanqu', 'L', '1', null, '2103');
INSERT INTO `system_area` VALUES ('524', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '?????????', '210311', '3', 'qianshanqu', 'Q', '1', null, '2103');
INSERT INTO `system_area` VALUES ('525', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '?????????', '210321', '3', 'taianxian', 'T', '1', null, '2103');
INSERT INTO `system_area` VALUES ('526', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '?????????????????????', '210323', '3', 'xiuyanmanzuzizhixian', 'X', '1', null, '2103');
INSERT INTO `system_area` VALUES ('527', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '?????????', '210381', '3', 'haichengshi', 'H', '1', null, '2103');
INSERT INTO `system_area` VALUES ('528', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '?????????', '2104', '2', 'fushunshi', 'F', '1', null, '21');
INSERT INTO `system_area` VALUES ('529', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '?????????', '210402', '3', 'xinfuqu', 'X', '1', null, '2104');
INSERT INTO `system_area` VALUES ('530', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '?????????', '210403', '3', 'dongzhouqu', 'D', '1', null, '2104');
INSERT INTO `system_area` VALUES ('531', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '?????????', '210404', '3', 'wanghuaqu', 'W', '1', null, '2104');
INSERT INTO `system_area` VALUES ('532', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '?????????', '210411', '3', 'shunchengqu', 'S', '1', null, '2104');
INSERT INTO `system_area` VALUES ('533', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '?????????', '210421', '3', 'fushunxian', 'F', '1', null, '2104');
INSERT INTO `system_area` VALUES ('534', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.212878', '1', '?????????????????????', '210422', '3', 'xinbinmanzuzizhixian', 'X', '1', null, '2104');
INSERT INTO `system_area` VALUES ('535', null, null, null, '2022-12-24 14:21:06.212878', '2022-12-24 14:21:06.213884', '1', '?????????????????????', '210423', '3', 'qingyuanmanzuzizhixian', 'Q', '1', null, '2104');
INSERT INTO `system_area` VALUES ('536', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '?????????', '2105', '2', 'benxishi', 'B', '1', null, '21');
INSERT INTO `system_area` VALUES ('537', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '?????????', '210502', '3', 'pingshanqu', 'P', '1', null, '2105');
INSERT INTO `system_area` VALUES ('538', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '?????????', '210503', '3', 'xihuqu', 'X', '1', null, '2105');
INSERT INTO `system_area` VALUES ('539', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '?????????', '210504', '3', 'mingshanqu', 'M', '1', null, '2105');
INSERT INTO `system_area` VALUES ('540', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '?????????', '210505', '3', 'nanfenqu', 'N', '1', null, '2105');
INSERT INTO `system_area` VALUES ('541', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '?????????????????????', '210521', '3', 'benximanzuzizhixian', 'B', '1', null, '2105');
INSERT INTO `system_area` VALUES ('542', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '?????????????????????', '210522', '3', 'huanrenmanzuzizhixian', 'H', '1', null, '2105');
INSERT INTO `system_area` VALUES ('543', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '?????????', '2106', '2', 'dandongshi', 'D', '1', null, '21');
INSERT INTO `system_area` VALUES ('544', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '?????????', '210602', '3', 'yuanbaoqu', 'Y', '1', null, '2106');
INSERT INTO `system_area` VALUES ('545', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '?????????', '210603', '3', 'zhenxingqu', 'Z', '1', null, '2106');
INSERT INTO `system_area` VALUES ('546', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '?????????', '210604', '3', 'zhenanqu', 'Z', '1', null, '2106');
INSERT INTO `system_area` VALUES ('547', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '?????????????????????', '210624', '3', 'kuandianmanzuzizhixian', 'K', '1', null, '2106');
INSERT INTO `system_area` VALUES ('548', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '?????????', '210681', '3', 'donggangshi', 'D', '1', null, '2106');
INSERT INTO `system_area` VALUES ('549', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '?????????', '210682', '3', 'fengchengshi', 'F', '1', null, '2106');
INSERT INTO `system_area` VALUES ('550', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '?????????', '2107', '2', 'jinzhoushi', 'J', '1', null, '21');
INSERT INTO `system_area` VALUES ('551', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.213884', '1', '?????????', '210702', '3', 'gutaqu', 'G', '1', null, '2107');
INSERT INTO `system_area` VALUES ('552', null, null, null, '2022-12-24 14:21:06.213884', '2022-12-24 14:21:06.214875', '1', '?????????', '210703', '3', 'linghequ', 'L', '1', null, '2107');
INSERT INTO `system_area` VALUES ('553', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '?????????', '210711', '3', 'taihequ', 'T', '1', null, '2107');
INSERT INTO `system_area` VALUES ('554', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '?????????', '210726', '3', 'heishanxian', 'H', '1', null, '2107');
INSERT INTO `system_area` VALUES ('555', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '??????', '210727', '3', 'yixian', 'Y', '1', null, '2107');
INSERT INTO `system_area` VALUES ('556', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '?????????', '210781', '3', 'linghaishi', 'L', '1', null, '2107');
INSERT INTO `system_area` VALUES ('557', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '?????????', '210782', '3', 'beizhenshi', 'B', '1', null, '2107');
INSERT INTO `system_area` VALUES ('558', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '?????????', '2108', '2', 'yingkoushi', 'Y', '1', null, '21');
INSERT INTO `system_area` VALUES ('559', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '?????????', '210802', '3', 'zhanqianqu', 'Z', '1', null, '2108');
INSERT INTO `system_area` VALUES ('560', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '?????????', '210803', '3', 'xishiqu', 'X', '1', null, '2108');
INSERT INTO `system_area` VALUES ('561', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '????????????', '210804', '3', 'bayuquanqu', 'B', '1', null, '2108');
INSERT INTO `system_area` VALUES ('562', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '?????????', '210811', '3', 'laobianqu', 'L', '1', null, '2108');
INSERT INTO `system_area` VALUES ('563', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '?????????', '210881', '3', 'gaizhoushi', 'G', '1', null, '2108');
INSERT INTO `system_area` VALUES ('564', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '????????????', '210882', '3', 'dashiqiaoshi', 'D', '1', null, '2108');
INSERT INTO `system_area` VALUES ('565', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '?????????', '2109', '2', 'fuxinshi', 'F', '1', null, '21');
INSERT INTO `system_area` VALUES ('566', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '?????????', '210902', '3', 'haizhouqu', 'H', '1', null, '2109');
INSERT INTO `system_area` VALUES ('567', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '?????????', '210903', '3', 'xinqiuqu', 'X', '1', null, '2109');
INSERT INTO `system_area` VALUES ('568', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '?????????', '210904', '3', 'taipingqu', 'T', '1', null, '2109');
INSERT INTO `system_area` VALUES ('569', null, null, null, '2022-12-24 14:21:06.214875', '2022-12-24 14:21:06.214875', '1', '????????????', '210905', '3', 'qinghemenqu', 'Q', '1', null, '2109');
INSERT INTO `system_area` VALUES ('570', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '?????????', '210911', '3', 'xihequ', 'X', '1', null, '2109');
INSERT INTO `system_area` VALUES ('571', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '????????????????????????', '210921', '3', 'fuxinmengguzuzizhixian', 'F', '1', null, '2109');
INSERT INTO `system_area` VALUES ('572', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '?????????', '210922', '3', 'zhangwuxian', 'Z', '1', null, '2109');
INSERT INTO `system_area` VALUES ('573', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '?????????', '2110', '2', 'liaoyangshi', 'L', '1', null, '21');
INSERT INTO `system_area` VALUES ('574', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '?????????', '211002', '3', 'baitaqu', 'B', '1', null, '2110');
INSERT INTO `system_area` VALUES ('575', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '?????????', '211003', '3', 'wenshengqu', 'W', '1', null, '2110');
INSERT INTO `system_area` VALUES ('576', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '?????????', '211004', '3', 'hongweiqu', 'H', '1', null, '2110');
INSERT INTO `system_area` VALUES ('577', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '????????????', '211005', '3', 'gongzhanglingqu', 'G', '1', null, '2110');
INSERT INTO `system_area` VALUES ('578', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '????????????', '211011', '3', 'taizihequ', 'T', '1', null, '2110');
INSERT INTO `system_area` VALUES ('579', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '?????????', '211021', '3', 'liaoyangxian', 'L', '1', null, '2110');
INSERT INTO `system_area` VALUES ('580', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '?????????', '211081', '3', 'dengtashi', 'D', '1', null, '2110');
INSERT INTO `system_area` VALUES ('581', null, null, null, '2022-12-24 14:21:06.215878', '2022-12-24 14:21:06.215878', '1', '?????????', '2111', '2', 'panjinshi', 'P', '1', null, '21');
INSERT INTO `system_area` VALUES ('582', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '????????????', '211102', '3', 'shuangtaiziqu', 'S', '1', null, '2111');
INSERT INTO `system_area` VALUES ('583', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '????????????', '211103', '3', 'xinglongtaiqu', 'X', '1', null, '2111');
INSERT INTO `system_area` VALUES ('584', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '?????????', '211104', '3', 'dawaqu', 'D', '1', null, '2111');
INSERT INTO `system_area` VALUES ('585', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '?????????', '211122', '3', 'panshanxian', 'P', '1', null, '2111');
INSERT INTO `system_area` VALUES ('586', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '?????????', '2112', '2', 'tielingshi', 'T', '1', null, '21');
INSERT INTO `system_area` VALUES ('587', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '?????????', '211202', '3', 'yinzhouqu', 'Y', '1', null, '2112');
INSERT INTO `system_area` VALUES ('588', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '?????????', '211204', '3', 'qinghequ', 'Q', '1', null, '2112');
INSERT INTO `system_area` VALUES ('589', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '?????????', '211221', '3', 'tielingxian', 'T', '1', null, '2112');
INSERT INTO `system_area` VALUES ('590', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '?????????', '211223', '3', 'xifengxian', 'X', '1', null, '2112');
INSERT INTO `system_area` VALUES ('591', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '?????????', '211224', '3', 'changtuxian', 'C', '1', null, '2112');
INSERT INTO `system_area` VALUES ('592', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '????????????', '211281', '3', 'diaobingshanshi', 'D', '1', null, '2112');
INSERT INTO `system_area` VALUES ('593', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '?????????', '211282', '3', 'kaiyuanshi', 'K', '1', null, '2112');
INSERT INTO `system_area` VALUES ('594', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '?????????', '2113', '2', 'zhaoyangshi', 'Z', '1', null, '21');
INSERT INTO `system_area` VALUES ('595', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '?????????', '211302', '3', 'shuangtaqu', 'S', '1', null, '2113');
INSERT INTO `system_area` VALUES ('596', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '?????????', '211303', '3', 'longchengqu', 'L', '1', null, '2113');
INSERT INTO `system_area` VALUES ('597', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '?????????', '211321', '3', 'zhaoyangxian', 'Z', '1', null, '2113');
INSERT INTO `system_area` VALUES ('598', null, null, null, '2022-12-24 14:21:06.216880', '2022-12-24 14:21:06.216880', '1', '?????????', '211322', '3', 'jianpingxian', 'J', '1', null, '2113');
INSERT INTO `system_area` VALUES ('599', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '?????????????????????????????????', '211324', '3', 'kalaqinzuoyimengguzuzizhixian', 'K', '1', null, '2113');
INSERT INTO `system_area` VALUES ('600', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '?????????', '211381', '3', 'beipiaoshi', 'B', '1', null, '2113');
INSERT INTO `system_area` VALUES ('601', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '?????????', '211382', '3', 'lingyuanshi', 'L', '1', null, '2113');
INSERT INTO `system_area` VALUES ('602', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '????????????', '2114', '2', 'huludaoshi', 'H', '1', null, '21');
INSERT INTO `system_area` VALUES ('603', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '?????????', '211402', '3', 'lianshanqu', 'L', '1', null, '2114');
INSERT INTO `system_area` VALUES ('604', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '?????????', '211403', '3', 'longgangqu', 'L', '1', null, '2114');
INSERT INTO `system_area` VALUES ('605', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '?????????', '211404', '3', 'nanpiaoqu', 'N', '1', null, '2114');
INSERT INTO `system_area` VALUES ('606', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '?????????', '211421', '3', 'suizhongxian', 'S', '1', null, '2114');
INSERT INTO `system_area` VALUES ('607', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '?????????', '211422', '3', 'jianchangxian', 'J', '1', null, '2114');
INSERT INTO `system_area` VALUES ('608', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '?????????', '211481', '3', 'xingchengshi', 'X', '1', null, '2114');
INSERT INTO `system_area` VALUES ('609', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '?????????', '22', '1', 'jilinsheng', 'J', '1', null, null);
INSERT INTO `system_area` VALUES ('610', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '?????????', '2201', '2', 'changchunshi', 'C', '1', null, '22');
INSERT INTO `system_area` VALUES ('611', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '?????????', '220102', '3', 'nanguanqu', 'N', '1', null, '2201');
INSERT INTO `system_area` VALUES ('612', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '?????????', '220103', '3', 'kuanchengqu', 'K', '1', null, '2201');
INSERT INTO `system_area` VALUES ('613', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '?????????', '220104', '3', 'chaoyangqu', 'C', '1', null, '2201');
INSERT INTO `system_area` VALUES ('614', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '?????????', '220105', '3', 'erdaoqu', 'E', '1', null, '2201');
INSERT INTO `system_area` VALUES ('615', null, null, null, '2022-12-24 14:21:06.217879', '2022-12-24 14:21:06.217879', '1', '?????????', '220106', '3', 'lvyuanqu', 'L', '1', null, '2201');
INSERT INTO `system_area` VALUES ('616', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '?????????', '220112', '3', 'shuangyangqu', 'S', '1', null, '2201');
INSERT INTO `system_area` VALUES ('617', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '?????????', '220113', '3', 'jiutaiqu', 'J', '1', null, '2201');
INSERT INTO `system_area` VALUES ('618', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '?????????', '220122', '3', 'nonganxian', 'N', '1', null, '2201');
INSERT INTO `system_area` VALUES ('619', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '???????????????????????????', '220171', '3', 'changchunjingjijishukaifaqu', 'C', '1', null, '2201');
INSERT INTO `system_area` VALUES ('620', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '???????????????????????????????????????', '220172', '3', 'changchunjingyuegaoxinjishuchanyekaifaqu', 'C', '1', null, '2201');
INSERT INTO `system_area` VALUES ('621', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '?????????????????????????????????', '220173', '3', 'changchungaoxinjishuchanyekaifaqu', 'C', '1', null, '2201');
INSERT INTO `system_area` VALUES ('622', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '?????????????????????????????????', '220174', '3', 'changchunqichejingjijishukaifaqu', 'C', '1', null, '2201');
INSERT INTO `system_area` VALUES ('623', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '?????????', '220182', '3', 'yushushi', 'Y', '1', null, '2201');
INSERT INTO `system_area` VALUES ('624', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '?????????', '220183', '3', 'dehuishi', 'D', '1', null, '2201');
INSERT INTO `system_area` VALUES ('625', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '????????????', '220184', '3', 'gongzhulingshi', 'G', '1', null, '2201');
INSERT INTO `system_area` VALUES ('626', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '?????????', '2202', '2', 'jilinshi', 'J', '1', null, '22');
INSERT INTO `system_area` VALUES ('627', null, null, null, '2022-12-24 14:21:06.218880', '2022-12-24 14:21:06.218880', '1', '?????????', '220202', '3', 'changyiqu', 'C', '1', null, '2202');
INSERT INTO `system_area` VALUES ('628', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '?????????', '220203', '3', 'longtanqu', 'L', '1', null, '2202');
INSERT INTO `system_area` VALUES ('629', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '?????????', '220204', '3', 'chuanyingqu', 'C', '1', null, '2202');
INSERT INTO `system_area` VALUES ('630', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '?????????', '220211', '3', 'fengmanqu', 'F', '1', null, '2202');
INSERT INTO `system_area` VALUES ('631', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '?????????', '220221', '3', 'yongjixian', 'Y', '1', null, '2202');
INSERT INTO `system_area` VALUES ('632', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '?????????????????????', '220271', '3', 'jilinjingjikaifaqu', 'J', '1', null, '2202');
INSERT INTO `system_area` VALUES ('633', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '?????????????????????????????????', '220272', '3', 'jilingaoxinjishuchanyekaifaqu', 'J', '1', null, '2202');
INSERT INTO `system_area` VALUES ('634', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '??????????????????????????????', '220273', '3', 'jilinzhongguoxinjiaposhipinqu', 'J', '1', null, '2202');
INSERT INTO `system_area` VALUES ('635', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '?????????', '220281', '3', 'jiaoheshi', 'J', '1', null, '2202');
INSERT INTO `system_area` VALUES ('636', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '?????????', '220282', '3', 'huadianshi', 'H', '1', null, '2202');
INSERT INTO `system_area` VALUES ('637', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '?????????', '220283', '3', 'shulanshi', 'S', '1', null, '2202');
INSERT INTO `system_area` VALUES ('638', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '?????????', '220284', '3', 'panshishi', 'P', '1', null, '2202');
INSERT INTO `system_area` VALUES ('639', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '?????????', '2203', '2', 'sipingshi', 'S', '1', null, '22');
INSERT INTO `system_area` VALUES ('640', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '?????????', '220302', '3', 'tiexiqu', 'T', '1', null, '2203');
INSERT INTO `system_area` VALUES ('641', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '?????????', '220303', '3', 'tiedongqu', 'T', '1', null, '2203');
INSERT INTO `system_area` VALUES ('642', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '?????????', '220322', '3', 'lishuxian', 'L', '1', null, '2203');
INSERT INTO `system_area` VALUES ('643', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '?????????????????????', '220323', '3', 'yitongmanzuzizhixian', 'Y', '1', null, '2203');
INSERT INTO `system_area` VALUES ('644', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '?????????', '220382', '3', 'shuangliaoshi', 'S', '1', null, '2203');
INSERT INTO `system_area` VALUES ('645', null, null, null, '2022-12-24 14:21:06.219874', '2022-12-24 14:21:06.219874', '1', '?????????', '2204', '2', 'liaoyuanshi', 'L', '1', null, '22');
INSERT INTO `system_area` VALUES ('646', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '?????????', '220402', '3', 'longshanqu', 'L', '1', null, '2204');
INSERT INTO `system_area` VALUES ('647', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '?????????', '220403', '3', 'xianqu', 'X', '1', null, '2204');
INSERT INTO `system_area` VALUES ('648', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '?????????', '220421', '3', 'dongfengxian', 'D', '1', null, '2204');
INSERT INTO `system_area` VALUES ('649', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '?????????', '220422', '3', 'dongliaoxian', 'D', '1', null, '2204');
INSERT INTO `system_area` VALUES ('650', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '?????????', '2205', '2', 'tonghuashi', 'T', '1', null, '22');
INSERT INTO `system_area` VALUES ('651', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '?????????', '220502', '3', 'dongchangqu', 'D', '1', null, '2205');
INSERT INTO `system_area` VALUES ('652', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '????????????', '220503', '3', 'erdaojiangqu', 'E', '1', null, '2205');
INSERT INTO `system_area` VALUES ('653', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '?????????', '220521', '3', 'tonghuaxian', 'T', '1', null, '2205');
INSERT INTO `system_area` VALUES ('654', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '?????????', '220523', '3', 'huinanxian', 'H', '1', null, '2205');
INSERT INTO `system_area` VALUES ('655', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '?????????', '220524', '3', 'liuhexian', 'L', '1', null, '2205');
INSERT INTO `system_area` VALUES ('656', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '????????????', '220581', '3', 'meihekoushi', 'M', '1', null, '2205');
INSERT INTO `system_area` VALUES ('657', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '?????????', '220582', '3', 'jianshi', 'J', '1', null, '2205');
INSERT INTO `system_area` VALUES ('658', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '?????????', '2206', '2', 'baishanshi', 'B', '1', null, '22');
INSERT INTO `system_area` VALUES ('659', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '?????????', '220602', '3', 'hunjiangqu', 'H', '1', null, '2206');
INSERT INTO `system_area` VALUES ('660', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '?????????', '220605', '3', 'jiangyuanqu', 'J', '1', null, '2206');
INSERT INTO `system_area` VALUES ('661', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '?????????', '220621', '3', 'fusongxian', 'F', '1', null, '2206');
INSERT INTO `system_area` VALUES ('662', null, null, null, '2022-12-24 14:21:06.220880', '2022-12-24 14:21:06.220880', '1', '?????????', '220622', '3', 'jingyuxian', 'J', '1', null, '2206');
INSERT INTO `system_area` VALUES ('663', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '????????????????????????', '220623', '3', 'zhangbaichaoxianzuzizhixian', 'Z', '1', null, '2206');
INSERT INTO `system_area` VALUES ('664', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '?????????', '220681', '3', 'linjiangshi', 'L', '1', null, '2206');
INSERT INTO `system_area` VALUES ('665', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '?????????', '2207', '2', 'songyuanshi', 'S', '1', null, '22');
INSERT INTO `system_area` VALUES ('666', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '?????????', '220702', '3', 'ningjiangqu', 'N', '1', null, '2207');
INSERT INTO `system_area` VALUES ('667', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '?????????????????????????????????', '220721', '3', 'qianguoerluosimengguzuzizhixian', 'Q', '1', null, '2207');
INSERT INTO `system_area` VALUES ('668', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '?????????', '220722', '3', 'zhanglingxian', 'Z', '1', null, '2207');
INSERT INTO `system_area` VALUES ('669', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '?????????', '220723', '3', 'qiananxian', 'Q', '1', null, '2207');
INSERT INTO `system_area` VALUES ('670', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '???????????????????????????', '220771', '3', 'jilinsongyuanjingjikaifaqu', 'J', '1', null, '2207');
INSERT INTO `system_area` VALUES ('671', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '?????????', '220781', '3', 'fuyushi', 'F', '1', null, '2207');
INSERT INTO `system_area` VALUES ('672', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '?????????', '2208', '2', 'baichengshi', 'B', '1', null, '22');
INSERT INTO `system_area` VALUES ('673', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '?????????', '220802', '3', 'taobeiqu', 'T', '1', null, '2208');
INSERT INTO `system_area` VALUES ('674', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '?????????', '220821', '3', 'zhenlaixian', 'Z', '1', null, '2208');
INSERT INTO `system_area` VALUES ('675', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '?????????', '220822', '3', 'tongyuxian', 'T', '1', null, '2208');
INSERT INTO `system_area` VALUES ('676', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '???????????????????????????', '220871', '3', 'jilinbaichengjingjikaifaqu', 'J', '1', null, '2208');
INSERT INTO `system_area` VALUES ('677', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '?????????', '220881', '3', 'taonanshi', 'T', '1', null, '2208');
INSERT INTO `system_area` VALUES ('678', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '?????????', '220882', '3', 'daanshi', 'D', '1', null, '2208');
INSERT INTO `system_area` VALUES ('679', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.221875', '1', '????????????????????????', '2224', '2', 'yanbianchaoxianzuzizhizhou', 'Y', '1', null, '22');
INSERT INTO `system_area` VALUES ('680', null, null, null, '2022-12-24 14:21:06.221875', '2022-12-24 14:21:06.222877', '1', '?????????', '222401', '3', 'yanjishi', 'Y', '1', null, '2224');
INSERT INTO `system_area` VALUES ('681', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '?????????', '222402', '3', 'tumenshi', 'T', '1', null, '2224');
INSERT INTO `system_area` VALUES ('682', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '?????????', '222403', '3', 'dunhuashi', 'D', '1', null, '2224');
INSERT INTO `system_area` VALUES ('683', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '?????????', '222404', '3', 'huichunshi', 'H', '1', null, '2224');
INSERT INTO `system_area` VALUES ('684', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '?????????', '222405', '3', 'longjingshi', 'L', '1', null, '2224');
INSERT INTO `system_area` VALUES ('685', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '?????????', '222406', '3', 'helongshi', 'H', '1', null, '2224');
INSERT INTO `system_area` VALUES ('686', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '?????????', '222424', '3', 'wangqingxian', 'W', '1', null, '2224');
INSERT INTO `system_area` VALUES ('687', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '?????????', '222426', '3', 'antuxian', 'A', '1', null, '2224');
INSERT INTO `system_area` VALUES ('688', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '????????????', '23', '1', 'heilongjiangsheng', 'H', '1', null, null);
INSERT INTO `system_area` VALUES ('689', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '????????????', '2301', '2', 'haerbinshi', 'H', '1', null, '23');
INSERT INTO `system_area` VALUES ('690', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '?????????', '230102', '3', 'daoliqu', 'D', '1', null, '2301');
INSERT INTO `system_area` VALUES ('691', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '?????????', '230103', '3', 'nangangqu', 'N', '1', null, '2301');
INSERT INTO `system_area` VALUES ('692', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '?????????', '230104', '3', 'daowaiqu', 'D', '1', null, '2301');
INSERT INTO `system_area` VALUES ('693', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '?????????', '230108', '3', 'pingfangqu', 'P', '1', null, '2301');
INSERT INTO `system_area` VALUES ('694', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '?????????', '230109', '3', 'songbeiqu', 'S', '1', null, '2301');
INSERT INTO `system_area` VALUES ('695', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '?????????', '230110', '3', 'xiangfangqu', 'X', '1', null, '2301');
INSERT INTO `system_area` VALUES ('696', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '?????????', '230111', '3', 'hulanqu', 'H', '1', null, '2301');
INSERT INTO `system_area` VALUES ('697', null, null, null, '2022-12-24 14:21:06.222877', '2022-12-24 14:21:06.222877', '1', '?????????', '230112', '3', 'achengqu', 'A', '1', null, '2301');
INSERT INTO `system_area` VALUES ('698', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '?????????', '230113', '3', 'shuangchengqu', 'S', '1', null, '2301');
INSERT INTO `system_area` VALUES ('699', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '?????????', '230123', '3', 'yilanxian', 'Y', '1', null, '2301');
INSERT INTO `system_area` VALUES ('700', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '?????????', '230124', '3', 'fangzhengxian', 'F', '1', null, '2301');
INSERT INTO `system_area` VALUES ('701', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '??????', '230125', '3', 'binxian', 'B', '1', null, '2301');
INSERT INTO `system_area` VALUES ('702', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '?????????', '230126', '3', 'bayanxian', 'B', '1', null, '2301');
INSERT INTO `system_area` VALUES ('703', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '?????????', '230127', '3', 'mulanxian', 'M', '1', null, '2301');
INSERT INTO `system_area` VALUES ('704', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '?????????', '230128', '3', 'tonghexian', 'T', '1', null, '2301');
INSERT INTO `system_area` VALUES ('705', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '?????????', '230129', '3', 'yanshouxian', 'Y', '1', null, '2301');
INSERT INTO `system_area` VALUES ('706', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '?????????', '230183', '3', 'shangzhishi', 'S', '1', null, '2301');
INSERT INTO `system_area` VALUES ('707', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '?????????', '230184', '3', 'wuchangshi', 'W', '1', null, '2301');
INSERT INTO `system_area` VALUES ('708', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '???????????????', '2302', '2', 'qiqihaershi', 'Q', '1', null, '23');
INSERT INTO `system_area` VALUES ('709', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '?????????', '230202', '3', 'longshaqu', 'L', '1', null, '2302');
INSERT INTO `system_area` VALUES ('710', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '?????????', '230203', '3', 'jianhuaqu', 'J', '1', null, '2302');
INSERT INTO `system_area` VALUES ('711', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '?????????', '230204', '3', 'tiefengqu', 'T', '1', null, '2302');
INSERT INTO `system_area` VALUES ('712', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '????????????', '230205', '3', 'angangxiqu', 'A', '1', null, '2302');
INSERT INTO `system_area` VALUES ('713', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '???????????????', '230206', '3', 'fulaerjiqu', 'F', '1', null, '2302');
INSERT INTO `system_area` VALUES ('714', null, null, null, '2022-12-24 14:21:06.223879', '2022-12-24 14:21:06.223879', '1', '????????????', '230207', '3', 'nianzishanqu', 'N', '1', null, '2302');
INSERT INTO `system_area` VALUES ('715', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '????????????????????????', '230208', '3', 'meilisidawoerzuqu', 'M', '1', null, '2302');
INSERT INTO `system_area` VALUES ('716', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '?????????', '230221', '3', 'longjiangxian', 'L', '1', null, '2302');
INSERT INTO `system_area` VALUES ('717', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '?????????', '230223', '3', 'yianxian', 'Y', '1', null, '2302');
INSERT INTO `system_area` VALUES ('718', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '?????????', '230224', '3', 'tailaixian', 'T', '1', null, '2302');
INSERT INTO `system_area` VALUES ('719', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '?????????', '230225', '3', 'gannanxian', 'G', '1', null, '2302');
INSERT INTO `system_area` VALUES ('720', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '?????????', '230227', '3', 'fuyuxian', 'F', '1', null, '2302');
INSERT INTO `system_area` VALUES ('721', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '?????????', '230229', '3', 'keshanxian', 'K', '1', null, '2302');
INSERT INTO `system_area` VALUES ('722', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '?????????', '230230', '3', 'kedongxian', 'K', '1', null, '2302');
INSERT INTO `system_area` VALUES ('723', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '?????????', '230231', '3', 'baiquanxian', 'B', '1', null, '2302');
INSERT INTO `system_area` VALUES ('724', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '?????????', '230281', '3', 'neheshi', 'N', '1', null, '2302');
INSERT INTO `system_area` VALUES ('725', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '?????????', '2303', '2', 'jixishi', 'J', '1', null, '23');
INSERT INTO `system_area` VALUES ('726', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '?????????', '230302', '3', 'jiguanqu', 'J', '1', null, '2303');
INSERT INTO `system_area` VALUES ('727', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '?????????', '230303', '3', 'hengshanqu', 'H', '1', null, '2303');
INSERT INTO `system_area` VALUES ('728', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '?????????', '230304', '3', 'didaoqu', 'D', '1', null, '2303');
INSERT INTO `system_area` VALUES ('729', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '?????????', '230305', '3', 'lishuqu', 'L', '1', null, '2303');
INSERT INTO `system_area` VALUES ('730', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '????????????', '230306', '3', 'chengzihequ', 'C', '1', null, '2303');
INSERT INTO `system_area` VALUES ('731', null, null, null, '2022-12-24 14:21:06.224880', '2022-12-24 14:21:06.224880', '1', '?????????', '230307', '3', 'mashanqu', 'M', '1', null, '2303');
INSERT INTO `system_area` VALUES ('732', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '?????????', '230321', '3', 'jidongxian', 'J', '1', null, '2303');
INSERT INTO `system_area` VALUES ('733', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '?????????', '230381', '3', 'hulinshi', 'H', '1', null, '2303');
INSERT INTO `system_area` VALUES ('734', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '?????????', '230382', '3', 'mishanshi', 'M', '1', null, '2303');
INSERT INTO `system_area` VALUES ('735', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '?????????', '2304', '2', 'hegangshi', 'H', '1', null, '23');
INSERT INTO `system_area` VALUES ('736', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '?????????', '230402', '3', 'xiangyangqu', 'X', '1', null, '2304');
INSERT INTO `system_area` VALUES ('737', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '?????????', '230403', '3', 'gongnongqu', 'G', '1', null, '2304');
INSERT INTO `system_area` VALUES ('738', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '?????????', '230404', '3', 'nanshanqu', 'N', '1', null, '2304');
INSERT INTO `system_area` VALUES ('739', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '?????????', '230405', '3', 'xinganqu', 'X', '1', null, '2304');
INSERT INTO `system_area` VALUES ('740', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '?????????', '230406', '3', 'dongshanqu', 'D', '1', null, '2304');
INSERT INTO `system_area` VALUES ('741', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '?????????', '230407', '3', 'xingshanqu', 'X', '1', null, '2304');
INSERT INTO `system_area` VALUES ('742', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '?????????', '230421', '3', 'luobeixian', 'L', '1', null, '2304');
INSERT INTO `system_area` VALUES ('743', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '?????????', '230422', '3', 'suibinxian', 'S', '1', null, '2304');
INSERT INTO `system_area` VALUES ('744', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '????????????', '2305', '2', 'shuangyashanshi', 'S', '1', null, '23');
INSERT INTO `system_area` VALUES ('745', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '?????????', '230502', '3', 'jianshanqu', 'J', '1', null, '2305');
INSERT INTO `system_area` VALUES ('746', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '?????????', '230503', '3', 'lingdongqu', 'L', '1', null, '2305');
INSERT INTO `system_area` VALUES ('747', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '????????????', '230505', '3', 'sifangtaiqu', 'S', '1', null, '2305');
INSERT INTO `system_area` VALUES ('748', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.225879', '1', '?????????', '230506', '3', 'baoshanqu', 'B', '1', null, '2305');
INSERT INTO `system_area` VALUES ('749', null, null, null, '2022-12-24 14:21:06.225879', '2022-12-24 14:21:06.226874', '1', '?????????', '230521', '3', 'jixianxian', 'J', '1', null, '2305');
INSERT INTO `system_area` VALUES ('750', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '?????????', '230522', '3', 'youyixian', 'Y', '1', null, '2305');
INSERT INTO `system_area` VALUES ('751', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '?????????', '230523', '3', 'baoqingxian', 'B', '1', null, '2305');
INSERT INTO `system_area` VALUES ('752', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '?????????', '230524', '3', 'raohexian', 'R', '1', null, '2305');
INSERT INTO `system_area` VALUES ('753', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '?????????', '2306', '2', 'daqingshi', 'D', '1', null, '23');
INSERT INTO `system_area` VALUES ('754', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '????????????', '230602', '3', 'saertuqu', 'S', '1', null, '2306');
INSERT INTO `system_area` VALUES ('755', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '?????????', '230603', '3', 'longfengqu', 'L', '1', null, '2306');
INSERT INTO `system_area` VALUES ('756', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '????????????', '230604', '3', 'ranghuluqu', 'R', '1', null, '2306');
INSERT INTO `system_area` VALUES ('757', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '?????????', '230605', '3', 'honggangqu', 'H', '1', null, '2306');
INSERT INTO `system_area` VALUES ('758', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '?????????', '230606', '3', 'datongqu', 'D', '1', null, '2306');
INSERT INTO `system_area` VALUES ('759', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '?????????', '230621', '3', 'zhaozhouxian', 'Z', '1', null, '2306');
INSERT INTO `system_area` VALUES ('760', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '?????????', '230622', '3', 'zhaoyuanxian', 'Z', '1', null, '2306');
INSERT INTO `system_area` VALUES ('761', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '?????????', '230623', '3', 'lindianxian', 'L', '1', null, '2306');
INSERT INTO `system_area` VALUES ('762', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '??????????????????????????????', '230624', '3', 'duerbotemengguzuzizhixian', 'D', '1', null, '2306');
INSERT INTO `system_area` VALUES ('763', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '?????????????????????????????????', '230671', '3', 'daqinggaoxinjishuchanyekaifaqu', 'D', '1', null, '2306');
INSERT INTO `system_area` VALUES ('764', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '?????????', '2307', '2', 'yichunshi', 'Y', '1', null, '23');
INSERT INTO `system_area` VALUES ('765', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '?????????', '230717', '3', 'yimeiqu', 'Y', '1', null, '2307');
INSERT INTO `system_area` VALUES ('766', null, null, null, '2022-12-24 14:21:06.226874', '2022-12-24 14:21:06.226874', '1', '?????????', '230718', '3', 'wucuiqu', 'W', '1', null, '2307');
INSERT INTO `system_area` VALUES ('767', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '?????????', '230719', '3', 'youhaoqu', 'Y', '1', null, '2307');
INSERT INTO `system_area` VALUES ('768', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '?????????', '230722', '3', 'jiayinxian', 'J', '1', null, '2307');
INSERT INTO `system_area` VALUES ('769', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '?????????', '230723', '3', 'tangwangxian', 'T', '1', null, '2307');
INSERT INTO `system_area` VALUES ('770', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '?????????', '230724', '3', 'fenglinxian', 'F', '1', null, '2307');
INSERT INTO `system_area` VALUES ('771', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '????????????', '230725', '3', 'daqingshanxian', 'D', '1', null, '2307');
INSERT INTO `system_area` VALUES ('772', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '?????????', '230726', '3', 'nanchaxian', 'N', '1', null, '2307');
INSERT INTO `system_area` VALUES ('773', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '?????????', '230751', '3', 'jinlinqu', 'J', '1', null, '2307');
INSERT INTO `system_area` VALUES ('774', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '?????????', '230781', '3', 'tielishi', 'T', '1', null, '2307');
INSERT INTO `system_area` VALUES ('775', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '????????????', '2308', '2', 'jiamusishi', 'J', '1', null, '23');
INSERT INTO `system_area` VALUES ('776', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '?????????', '230803', '3', 'xiangyangqu', 'X', '1', null, '2308');
INSERT INTO `system_area` VALUES ('777', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '?????????', '230804', '3', 'qianjinqu', 'Q', '1', null, '2308');
INSERT INTO `system_area` VALUES ('778', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '?????????', '230805', '3', 'dongfengqu', 'D', '1', null, '2308');
INSERT INTO `system_area` VALUES ('779', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '??????', '230811', '3', 'jiaoqu', 'J', '1', null, '2308');
INSERT INTO `system_area` VALUES ('780', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '?????????', '230822', '3', 'huananxian', 'H', '1', null, '2308');
INSERT INTO `system_area` VALUES ('781', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '?????????', '230826', '3', 'huachuanxian', 'H', '1', null, '2308');
INSERT INTO `system_area` VALUES ('782', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '?????????', '230828', '3', 'tangyuanxian', 'T', '1', null, '2308');
INSERT INTO `system_area` VALUES ('783', null, null, null, '2022-12-24 14:21:06.227876', '2022-12-24 14:21:06.227876', '1', '?????????', '230881', '3', 'tongjiangshi', 'T', '1', null, '2308');
INSERT INTO `system_area` VALUES ('784', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '?????????', '230882', '3', 'fujinshi', 'F', '1', null, '2308');
INSERT INTO `system_area` VALUES ('785', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '?????????', '230883', '3', 'fuyuanshi', 'F', '1', null, '2308');
INSERT INTO `system_area` VALUES ('786', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '????????????', '2309', '2', 'qitaiheshi', 'Q', '1', null, '23');
INSERT INTO `system_area` VALUES ('787', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '?????????', '230902', '3', 'xinxingqu', 'X', '1', null, '2309');
INSERT INTO `system_area` VALUES ('788', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '?????????', '230903', '3', 'taoshanqu', 'T', '1', null, '2309');
INSERT INTO `system_area` VALUES ('789', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '????????????', '230904', '3', 'qiezihequ', 'Q', '1', null, '2309');
INSERT INTO `system_area` VALUES ('790', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '?????????', '230921', '3', 'bolixian', 'B', '1', null, '2309');
INSERT INTO `system_area` VALUES ('791', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '????????????', '2310', '2', 'mudanjiangshi', 'M', '1', null, '23');
INSERT INTO `system_area` VALUES ('792', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '?????????', '231002', '3', 'donganqu', 'D', '1', null, '2310');
INSERT INTO `system_area` VALUES ('793', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '?????????', '231003', '3', 'yangmingqu', 'Y', '1', null, '2310');
INSERT INTO `system_area` VALUES ('794', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '?????????', '231004', '3', 'aiminqu', 'A', '1', null, '2310');
INSERT INTO `system_area` VALUES ('795', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '?????????', '231005', '3', 'xianqu', 'X', '1', null, '2310');
INSERT INTO `system_area` VALUES ('796', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '?????????', '231025', '3', 'linkouxian', 'L', '1', null, '2310');
INSERT INTO `system_area` VALUES ('797', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '??????????????????????????????', '231071', '3', 'mudanjiangjingjijishukaifaqu', 'M', '1', null, '2310');
INSERT INTO `system_area` VALUES ('798', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '????????????', '231081', '3', 'suifenheshi', 'S', '1', null, '2310');
INSERT INTO `system_area` VALUES ('799', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '?????????', '231083', '3', 'hailinshi', 'H', '1', null, '2310');
INSERT INTO `system_area` VALUES ('800', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.228876', '1', '?????????', '231084', '3', 'ninganshi', 'N', '1', null, '2310');
INSERT INTO `system_area` VALUES ('801', null, null, null, '2022-12-24 14:21:06.228876', '2022-12-24 14:21:06.229881', '1', '?????????', '231085', '3', 'mulengshi', 'M', '1', null, '2310');
INSERT INTO `system_area` VALUES ('802', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '?????????', '231086', '3', 'dongningshi', 'D', '1', null, '2310');
INSERT INTO `system_area` VALUES ('803', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '?????????', '2311', '2', 'heiheshi', 'H', '1', null, '23');
INSERT INTO `system_area` VALUES ('804', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '?????????', '231102', '3', 'aihuiqu', 'A', '1', null, '2311');
INSERT INTO `system_area` VALUES ('805', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '?????????', '231123', '3', 'xunkexian', 'X', '1', null, '2311');
INSERT INTO `system_area` VALUES ('806', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '?????????', '231124', '3', 'sunwuxian', 'S', '1', null, '2311');
INSERT INTO `system_area` VALUES ('807', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '?????????', '231181', '3', 'beianshi', 'B', '1', null, '2311');
INSERT INTO `system_area` VALUES ('808', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '???????????????', '231182', '3', 'wudalianchishi', 'W', '1', null, '2311');
INSERT INTO `system_area` VALUES ('809', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '?????????', '231183', '3', 'nenjiangshi', 'N', '1', null, '2311');
INSERT INTO `system_area` VALUES ('810', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '?????????', '2312', '2', 'suihuashi', 'S', '1', null, '23');
INSERT INTO `system_area` VALUES ('811', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '?????????', '231202', '3', 'beilinqu', 'B', '1', null, '2312');
INSERT INTO `system_area` VALUES ('812', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '?????????', '231221', '3', 'wangkuixian', 'W', '1', null, '2312');
INSERT INTO `system_area` VALUES ('813', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '?????????', '231222', '3', 'lanxixian', 'L', '1', null, '2312');
INSERT INTO `system_area` VALUES ('814', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '?????????', '231223', '3', 'qinggangxian', 'Q', '1', null, '2312');
INSERT INTO `system_area` VALUES ('815', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '?????????', '231224', '3', 'qinganxian', 'Q', '1', null, '2312');
INSERT INTO `system_area` VALUES ('816', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '?????????', '231225', '3', 'mingshuixian', 'M', '1', null, '2312');
INSERT INTO `system_area` VALUES ('817', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '?????????', '231226', '3', 'suilengxian', 'S', '1', null, '2312');
INSERT INTO `system_area` VALUES ('818', null, null, null, '2022-12-24 14:21:06.229881', '2022-12-24 14:21:06.229881', '1', '?????????', '231281', '3', 'andashi', 'A', '1', null, '2312');
INSERT INTO `system_area` VALUES ('819', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '?????????', '231282', '3', 'zhaodongshi', 'Z', '1', null, '2312');
INSERT INTO `system_area` VALUES ('820', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '?????????', '231283', '3', 'hailunshi', 'H', '1', null, '2312');
INSERT INTO `system_area` VALUES ('821', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '??????????????????', '2327', '2', 'daxinganlingdiqu', 'D', '1', null, '23');
INSERT INTO `system_area` VALUES ('822', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '?????????', '232701', '3', 'moheshi', 'M', '1', null, '2327');
INSERT INTO `system_area` VALUES ('823', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '?????????', '232721', '3', 'humaxian', 'H', '1', null, '2327');
INSERT INTO `system_area` VALUES ('824', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '?????????', '232722', '3', 'tahexian', 'T', '1', null, '2327');
INSERT INTO `system_area` VALUES ('825', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '???????????????', '232761', '3', 'jiagedaqiqu', 'J', '1', null, '2327');
INSERT INTO `system_area` VALUES ('826', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '?????????', '232762', '3', 'songlingqu', 'S', '1', null, '2327');
INSERT INTO `system_area` VALUES ('827', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '?????????', '232763', '3', 'xinlinqu', 'X', '1', null, '2327');
INSERT INTO `system_area` VALUES ('828', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '?????????', '232764', '3', 'huzhongqu', 'H', '1', null, '2327');
INSERT INTO `system_area` VALUES ('829', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '?????????', '31', '1', 'shanghaishi', 'S', '1', null, null);
INSERT INTO `system_area` VALUES ('830', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '?????????', '3101', '2', 'shixiaqu', 'S', '1', null, '31');
INSERT INTO `system_area` VALUES ('831', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '?????????', '310101', '3', 'huangpuqu', 'H', '1', null, '3101');
INSERT INTO `system_area` VALUES ('832', null, null, null, '2022-12-24 14:21:06.230886', '2022-12-24 14:21:06.230886', '1', '?????????', '310104', '3', 'xuhuiqu', 'X', '1', null, '3101');
INSERT INTO `system_area` VALUES ('833', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '?????????', '310105', '3', 'zhangningqu', 'Z', '1', null, '3101');
INSERT INTO `system_area` VALUES ('834', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '?????????', '310106', '3', 'jinganqu', 'J', '1', null, '3101');
INSERT INTO `system_area` VALUES ('835', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '?????????', '310107', '3', 'putuoqu', 'P', '1', null, '3101');
INSERT INTO `system_area` VALUES ('836', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '?????????', '310109', '3', 'hongkouqu', 'H', '1', null, '3101');
INSERT INTO `system_area` VALUES ('837', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '?????????', '310110', '3', 'yangpuqu', 'Y', '1', null, '3101');
INSERT INTO `system_area` VALUES ('838', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '?????????', '310112', '3', 'minxingqu', 'M', '1', null, '3101');
INSERT INTO `system_area` VALUES ('839', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '?????????', '310113', '3', 'baoshanqu', 'B', '1', null, '3101');
INSERT INTO `system_area` VALUES ('840', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '?????????', '310114', '3', 'jiadingqu', 'J', '1', null, '3101');
INSERT INTO `system_area` VALUES ('841', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '????????????', '310115', '3', 'pudongxinqu', 'P', '1', null, '3101');
INSERT INTO `system_area` VALUES ('842', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '?????????', '310116', '3', 'jinshanqu', 'J', '1', null, '3101');
INSERT INTO `system_area` VALUES ('843', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '?????????', '310117', '3', 'songjiangqu', 'S', '1', null, '3101');
INSERT INTO `system_area` VALUES ('844', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '?????????', '310118', '3', 'qingpuqu', 'Q', '1', null, '3101');
INSERT INTO `system_area` VALUES ('845', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '?????????', '310120', '3', 'fengxianqu', 'F', '1', null, '3101');
INSERT INTO `system_area` VALUES ('846', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '?????????', '310151', '3', 'chongmingqu', 'C', '1', null, '3101');
INSERT INTO `system_area` VALUES ('847', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '?????????', '32', '1', 'jiangsusheng', 'J', '1', null, null);
INSERT INTO `system_area` VALUES ('848', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '?????????', '3201', '2', 'nanjingshi', 'N', '1', null, '32');
INSERT INTO `system_area` VALUES ('849', null, null, null, '2022-12-24 14:21:06.231877', '2022-12-24 14:21:06.231877', '1', '?????????', '320102', '3', 'xuanwuqu', 'X', '1', null, '3201');
INSERT INTO `system_area` VALUES ('850', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '?????????', '320104', '3', 'qinhuaiqu', 'Q', '1', null, '3201');
INSERT INTO `system_area` VALUES ('851', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '?????????', '320105', '3', 'jianyequ', 'J', '1', null, '3201');
INSERT INTO `system_area` VALUES ('852', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '?????????', '320106', '3', 'gulouqu', 'G', '1', null, '3201');
INSERT INTO `system_area` VALUES ('853', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '?????????', '320111', '3', 'pukouqu', 'P', '1', null, '3201');
INSERT INTO `system_area` VALUES ('854', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '?????????', '320113', '3', 'qixiaqu', 'Q', '1', null, '3201');
INSERT INTO `system_area` VALUES ('855', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '????????????', '320114', '3', 'yuhuataiqu', 'Y', '1', null, '3201');
INSERT INTO `system_area` VALUES ('856', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '?????????', '320115', '3', 'jiangningqu', 'J', '1', null, '3201');
INSERT INTO `system_area` VALUES ('857', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '?????????', '320116', '3', 'liuhequ', 'L', '1', null, '3201');
INSERT INTO `system_area` VALUES ('858', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '?????????', '320117', '3', 'lishuiqu', 'L', '1', null, '3201');
INSERT INTO `system_area` VALUES ('859', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '?????????', '320118', '3', 'gaochunqu', 'G', '1', null, '3201');
INSERT INTO `system_area` VALUES ('860', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '?????????', '3202', '2', 'wuxishi', 'W', '1', null, '32');
INSERT INTO `system_area` VALUES ('861', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '?????????', '320205', '3', 'xishanqu', 'X', '1', null, '3202');
INSERT INTO `system_area` VALUES ('862', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '?????????', '320206', '3', 'huishanqu', 'H', '1', null, '3202');
INSERT INTO `system_area` VALUES ('863', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '?????????', '320211', '3', 'binhuqu', 'B', '1', null, '3202');
INSERT INTO `system_area` VALUES ('864', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '?????????', '320213', '3', 'liangxiqu', 'L', '1', null, '3202');
INSERT INTO `system_area` VALUES ('865', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '?????????', '320214', '3', 'xinwuqu', 'X', '1', null, '3202');
INSERT INTO `system_area` VALUES ('866', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.232874', '1', '?????????', '320281', '3', 'jiangyinshi', 'J', '1', null, '3202');
INSERT INTO `system_area` VALUES ('867', null, null, null, '2022-12-24 14:21:06.232874', '2022-12-24 14:21:06.233878', '1', '?????????', '320282', '3', 'yixingshi', 'Y', '1', null, '3202');
INSERT INTO `system_area` VALUES ('868', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '?????????', '3203', '2', 'xuzhoushi', 'X', '1', null, '32');
INSERT INTO `system_area` VALUES ('869', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '?????????', '320302', '3', 'gulouqu', 'G', '1', null, '3203');
INSERT INTO `system_area` VALUES ('870', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '?????????', '320303', '3', 'yunlongqu', 'Y', '1', null, '3203');
INSERT INTO `system_area` VALUES ('871', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '?????????', '320305', '3', 'jiawangqu', 'J', '1', null, '3203');
INSERT INTO `system_area` VALUES ('872', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '?????????', '320311', '3', 'quanshanqu', 'Q', '1', null, '3203');
INSERT INTO `system_area` VALUES ('873', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '?????????', '320312', '3', 'tongshanqu', 'T', '1', null, '3203');
INSERT INTO `system_area` VALUES ('874', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '??????', '320321', '3', 'fengxian', 'F', '1', null, '3203');
INSERT INTO `system_area` VALUES ('875', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '??????', '320322', '3', 'peixian', 'P', '1', null, '3203');
INSERT INTO `system_area` VALUES ('876', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '?????????', '320324', '3', 'suiningxian', 'S', '1', null, '3203');
INSERT INTO `system_area` VALUES ('877', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '???????????????????????????', '320371', '3', 'xuzhoujingjijishukaifaqu', 'X', '1', null, '3203');
INSERT INTO `system_area` VALUES ('878', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '?????????', '320381', '3', 'xinyishi', 'X', '1', null, '3203');
INSERT INTO `system_area` VALUES ('879', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '?????????', '320382', '3', 'pizhoushi', 'P', '1', null, '3203');
INSERT INTO `system_area` VALUES ('880', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '?????????', '3204', '2', 'changzhoushi', 'C', '1', null, '32');
INSERT INTO `system_area` VALUES ('881', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '?????????', '320402', '3', 'tianningqu', 'T', '1', null, '3204');
INSERT INTO `system_area` VALUES ('882', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '?????????', '320404', '3', 'zhonglouqu', 'Z', '1', null, '3204');
INSERT INTO `system_area` VALUES ('883', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '?????????', '320411', '3', 'xinbeiqu', 'X', '1', null, '3204');
INSERT INTO `system_area` VALUES ('884', null, null, null, '2022-12-24 14:21:06.233878', '2022-12-24 14:21:06.233878', '1', '?????????', '320412', '3', 'wujinqu', 'W', '1', null, '3204');
INSERT INTO `system_area` VALUES ('885', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '?????????', '320413', '3', 'jintanqu', 'J', '1', null, '3204');
INSERT INTO `system_area` VALUES ('886', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '?????????', '320481', '3', 'liyangshi', 'L', '1', null, '3204');
INSERT INTO `system_area` VALUES ('887', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '?????????', '3205', '2', 'suzhoushi', 'S', '1', null, '32');
INSERT INTO `system_area` VALUES ('888', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '?????????', '320505', '3', 'huqiuqu', 'H', '1', null, '3205');
INSERT INTO `system_area` VALUES ('889', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '?????????', '320506', '3', 'wuzhongqu', 'W', '1', null, '3205');
INSERT INTO `system_area` VALUES ('890', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '?????????', '320507', '3', 'xiangchengqu', 'X', '1', null, '3205');
INSERT INTO `system_area` VALUES ('891', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '?????????', '320508', '3', 'gusuqu', 'G', '1', null, '3205');
INSERT INTO `system_area` VALUES ('892', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '?????????', '320509', '3', 'wujiangqu', 'W', '1', null, '3205');
INSERT INTO `system_area` VALUES ('893', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '??????????????????', '320571', '3', 'suzhougongyeyuanqu', 'S', '1', null, '3205');
INSERT INTO `system_area` VALUES ('894', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '?????????', '320581', '3', 'changshushi', 'C', '1', null, '3205');
INSERT INTO `system_area` VALUES ('895', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '????????????', '320582', '3', 'zhangjiagangshi', 'Z', '1', null, '3205');
INSERT INTO `system_area` VALUES ('896', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '?????????', '320583', '3', 'kunshanshi', 'K', '1', null, '3205');
INSERT INTO `system_area` VALUES ('897', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '?????????', '320585', '3', 'taicangshi', 'T', '1', null, '3205');
INSERT INTO `system_area` VALUES ('898', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '?????????', '3206', '2', 'nantongshi', 'N', '1', null, '32');
INSERT INTO `system_area` VALUES ('899', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '?????????', '320602', '3', 'chongchuanqu', 'C', '1', null, '3206');
INSERT INTO `system_area` VALUES ('900', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '?????????', '320611', '3', 'gangzhaqu', 'G', '1', null, '3206');
INSERT INTO `system_area` VALUES ('901', null, null, null, '2022-12-24 14:21:06.234879', '2022-12-24 14:21:06.234879', '1', '?????????', '320612', '3', 'tongzhouqu', 'T', '1', null, '3206');
INSERT INTO `system_area` VALUES ('902', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '?????????', '320623', '3', 'rudongxian', 'R', '1', null, '3206');
INSERT INTO `system_area` VALUES ('903', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '???????????????????????????', '320671', '3', 'nantongjingjijishukaifaqu', 'N', '1', null, '3206');
INSERT INTO `system_area` VALUES ('904', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '?????????', '320681', '3', 'qidongshi', 'Q', '1', null, '3206');
INSERT INTO `system_area` VALUES ('905', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '?????????', '320682', '3', 'rugaoshi', 'R', '1', null, '3206');
INSERT INTO `system_area` VALUES ('906', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '?????????', '320684', '3', 'haimenshi', 'H', '1', null, '3206');
INSERT INTO `system_area` VALUES ('907', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '?????????', '320685', '3', 'haianshi', 'H', '1', null, '3206');
INSERT INTO `system_area` VALUES ('908', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '????????????', '3207', '2', 'lianyungangshi', 'L', '1', null, '32');
INSERT INTO `system_area` VALUES ('909', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '?????????', '320703', '3', 'lianyunqu', 'L', '1', null, '3207');
INSERT INTO `system_area` VALUES ('910', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '?????????', '320706', '3', 'haizhouqu', 'H', '1', null, '3207');
INSERT INTO `system_area` VALUES ('911', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '?????????', '320707', '3', 'ganyuqu', 'G', '1', null, '3207');
INSERT INTO `system_area` VALUES ('912', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '?????????', '320722', '3', 'donghaixian', 'D', '1', null, '3207');
INSERT INTO `system_area` VALUES ('913', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '?????????', '320723', '3', 'guanyunxian', 'G', '1', null, '3207');
INSERT INTO `system_area` VALUES ('914', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '?????????', '320724', '3', 'guannanxian', 'G', '1', null, '3207');
INSERT INTO `system_area` VALUES ('915', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '??????????????????????????????', '320771', '3', 'lianyungangjingjijishukaifaqu', 'L', '1', null, '3207');
INSERT INTO `system_area` VALUES ('916', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '????????????????????????????????????', '320772', '3', 'lianyunganggaoxinjishuchanyekaifaqu', 'L', '1', null, '3207');
INSERT INTO `system_area` VALUES ('917', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '?????????', '3208', '2', 'huaianshi', 'H', '1', null, '32');
INSERT INTO `system_area` VALUES ('918', null, null, null, '2022-12-24 14:21:06.235880', '2022-12-24 14:21:06.235880', '1', '?????????', '320803', '3', 'huaianqu', 'H', '1', null, '3208');
INSERT INTO `system_area` VALUES ('919', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '?????????', '320804', '3', 'huaiyinqu', 'H', '1', null, '3208');
INSERT INTO `system_area` VALUES ('920', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '????????????', '320812', '3', 'qingjiangpuqu', 'Q', '1', null, '3208');
INSERT INTO `system_area` VALUES ('921', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '?????????', '320813', '3', 'hongzequ', 'H', '1', null, '3208');
INSERT INTO `system_area` VALUES ('922', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '?????????', '320826', '3', 'lianshuixian', 'L', '1', null, '3208');
INSERT INTO `system_area` VALUES ('923', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '?????????', '320830', '3', 'xuyixian', 'X', '1', null, '3208');
INSERT INTO `system_area` VALUES ('924', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '?????????', '320831', '3', 'jinhuxian', 'J', '1', null, '3208');
INSERT INTO `system_area` VALUES ('925', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '???????????????????????????', '320871', '3', 'huaianjingjijishukaifaqu', 'H', '1', null, '3208');
INSERT INTO `system_area` VALUES ('926', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '?????????', '3209', '2', 'yanchengshi', 'Y', '1', null, '32');
INSERT INTO `system_area` VALUES ('927', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '?????????', '320902', '3', 'tinghuqu', 'T', '1', null, '3209');
INSERT INTO `system_area` VALUES ('928', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '?????????', '320903', '3', 'yandouqu', 'Y', '1', null, '3209');
INSERT INTO `system_area` VALUES ('929', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '?????????', '320904', '3', 'dafengqu', 'D', '1', null, '3209');
INSERT INTO `system_area` VALUES ('930', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '?????????', '320921', '3', 'xiangshuixian', 'X', '1', null, '3209');
INSERT INTO `system_area` VALUES ('931', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '?????????', '320922', '3', 'binhaixian', 'B', '1', null, '3209');
INSERT INTO `system_area` VALUES ('932', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '?????????', '320923', '3', 'funingxian', 'F', '1', null, '3209');
INSERT INTO `system_area` VALUES ('933', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '?????????', '320924', '3', 'sheyangxian', 'S', '1', null, '3209');
INSERT INTO `system_area` VALUES ('934', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '?????????', '320925', '3', 'jianhuxian', 'J', '1', null, '3209');
INSERT INTO `system_area` VALUES ('935', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.236880', '1', '???????????????????????????', '320971', '3', 'yanchengjingjijishukaifaqu', 'Y', '1', null, '3209');
INSERT INTO `system_area` VALUES ('936', null, null, null, '2022-12-24 14:21:06.236880', '2022-12-24 14:21:06.237876', '1', '?????????', '320981', '3', 'dongtaishi', 'D', '1', null, '3209');
INSERT INTO `system_area` VALUES ('937', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '?????????', '3210', '2', 'yangzhoushi', 'Y', '1', null, '32');
INSERT INTO `system_area` VALUES ('938', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '?????????', '321002', '3', 'guanglingqu', 'G', '1', null, '3210');
INSERT INTO `system_area` VALUES ('939', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '?????????', '321003', '3', 'hanjiangqu', 'H', '1', null, '3210');
INSERT INTO `system_area` VALUES ('940', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '?????????', '321012', '3', 'jiangduqu', 'J', '1', null, '3210');
INSERT INTO `system_area` VALUES ('941', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '?????????', '321023', '3', 'baoyingxian', 'B', '1', null, '3210');
INSERT INTO `system_area` VALUES ('942', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '???????????????????????????', '321071', '3', 'yangzhoujingjijishukaifaqu', 'Y', '1', null, '3210');
INSERT INTO `system_area` VALUES ('943', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '?????????', '321081', '3', 'yizhengshi', 'Y', '1', null, '3210');
INSERT INTO `system_area` VALUES ('944', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '?????????', '321084', '3', 'gaoyoushi', 'G', '1', null, '3210');
INSERT INTO `system_area` VALUES ('945', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '?????????', '3211', '2', 'zhenjiangshi', 'Z', '1', null, '32');
INSERT INTO `system_area` VALUES ('946', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '?????????', '321102', '3', 'jingkouqu', 'J', '1', null, '3211');
INSERT INTO `system_area` VALUES ('947', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '?????????', '321111', '3', 'runzhouqu', 'R', '1', null, '3211');
INSERT INTO `system_area` VALUES ('948', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '?????????', '321112', '3', 'dantuqu', 'D', '1', null, '3211');
INSERT INTO `system_area` VALUES ('949', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '????????????', '321171', '3', 'zhenjiangxinqu', 'Z', '1', null, '3211');
INSERT INTO `system_area` VALUES ('950', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '?????????', '321181', '3', 'danyangshi', 'D', '1', null, '3211');
INSERT INTO `system_area` VALUES ('951', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '?????????', '321182', '3', 'yangzhongshi', 'Y', '1', null, '3211');
INSERT INTO `system_area` VALUES ('952', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '?????????', '321183', '3', 'jurongshi', 'J', '1', null, '3211');
INSERT INTO `system_area` VALUES ('953', null, null, null, '2022-12-24 14:21:06.237876', '2022-12-24 14:21:06.237876', '1', '?????????', '3212', '2', 'taizhoushi', 'T', '1', null, '32');
INSERT INTO `system_area` VALUES ('954', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '?????????', '321202', '3', 'hailingqu', 'H', '1', null, '3212');
INSERT INTO `system_area` VALUES ('955', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '?????????', '321203', '3', 'gaogangqu', 'G', '1', null, '3212');
INSERT INTO `system_area` VALUES ('956', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '?????????', '321204', '3', 'jiangyanqu', 'J', '1', null, '3212');
INSERT INTO `system_area` VALUES ('957', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '???????????????????????????????????????', '321271', '3', 'taizhouyiyaogaoxinjishuchanyekaifaqu', 'T', '1', null, '3212');
INSERT INTO `system_area` VALUES ('958', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '?????????', '321281', '3', 'xinghuashi', 'X', '1', null, '3212');
INSERT INTO `system_area` VALUES ('959', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '?????????', '321282', '3', 'jingjiangshi', 'J', '1', null, '3212');
INSERT INTO `system_area` VALUES ('960', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '?????????', '321283', '3', 'taixingshi', 'T', '1', null, '3212');
INSERT INTO `system_area` VALUES ('961', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '?????????', '3213', '2', 'suqianshi', 'S', '1', null, '32');
INSERT INTO `system_area` VALUES ('962', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '?????????', '321302', '3', 'suchengqu', 'S', '1', null, '3213');
INSERT INTO `system_area` VALUES ('963', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '?????????', '321311', '3', 'suyuqu', 'S', '1', null, '3213');
INSERT INTO `system_area` VALUES ('964', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '?????????', '321322', '3', 'shuyangxian', 'S', '1', null, '3213');
INSERT INTO `system_area` VALUES ('965', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '?????????', '321323', '3', 'siyangxian', 'S', '1', null, '3213');
INSERT INTO `system_area` VALUES ('966', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '?????????', '321324', '3', 'sihongxian', 'S', '1', null, '3213');
INSERT INTO `system_area` VALUES ('967', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '???????????????????????????', '321371', '3', 'suqianjingjijishukaifaqu', 'S', '1', null, '3213');
INSERT INTO `system_area` VALUES ('968', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '?????????', '33', '1', 'zhejiangsheng', 'Z', '1', null, null);
INSERT INTO `system_area` VALUES ('969', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '?????????', '3301', '2', 'hangzhoushi', 'H', '1', null, '33');
INSERT INTO `system_area` VALUES ('970', null, null, null, '2022-12-24 14:21:06.238879', '2022-12-24 14:21:06.238879', '1', '?????????', '330102', '3', 'shangchengqu', 'S', '1', null, '3301');
INSERT INTO `system_area` VALUES ('971', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '?????????', '330103', '3', 'xiachengqu', 'X', '1', null, '3301');
INSERT INTO `system_area` VALUES ('972', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '?????????', '330104', '3', 'jiangganqu', 'J', '1', null, '3301');
INSERT INTO `system_area` VALUES ('973', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '?????????', '330105', '3', 'gongshuqu', 'G', '1', null, '3301');
INSERT INTO `system_area` VALUES ('974', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '?????????', '330106', '3', 'xihuqu', 'X', '1', null, '3301');
INSERT INTO `system_area` VALUES ('975', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '?????????', '330108', '3', 'binjiangqu', 'B', '1', null, '3301');
INSERT INTO `system_area` VALUES ('976', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '?????????', '330109', '3', 'xiaoshanqu', 'X', '1', null, '3301');
INSERT INTO `system_area` VALUES ('977', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '?????????', '330110', '3', 'yuhangqu', 'Y', '1', null, '3301');
INSERT INTO `system_area` VALUES ('978', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '?????????', '330111', '3', 'fuyangqu', 'F', '1', null, '3301');
INSERT INTO `system_area` VALUES ('979', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '?????????', '330112', '3', 'linanqu', 'L', '1', null, '3301');
INSERT INTO `system_area` VALUES ('980', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '?????????', '330122', '3', 'tongluxian', 'T', '1', null, '3301');
INSERT INTO `system_area` VALUES ('981', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '?????????', '330127', '3', 'chunanxian', 'C', '1', null, '3301');
INSERT INTO `system_area` VALUES ('982', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '?????????', '330182', '3', 'jiandeshi', 'J', '1', null, '3301');
INSERT INTO `system_area` VALUES ('983', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '?????????', '3302', '2', 'ningboshi', 'N', '1', null, '33');
INSERT INTO `system_area` VALUES ('984', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '?????????', '330203', '3', 'haishuqu', 'H', '1', null, '3302');
INSERT INTO `system_area` VALUES ('985', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '?????????', '330205', '3', 'jiangbeiqu', 'J', '1', null, '3302');
INSERT INTO `system_area` VALUES ('986', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '?????????', '330206', '3', 'beilunqu', 'B', '1', null, '3302');
INSERT INTO `system_area` VALUES ('987', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.239882', '1', '?????????', '330211', '3', 'zhenhaiqu', 'Z', '1', null, '3302');
INSERT INTO `system_area` VALUES ('988', null, null, null, '2022-12-24 14:21:06.239882', '2022-12-24 14:21:06.240875', '1', '?????????', '330212', '3', 'yinzhouqu', 'Y', '1', null, '3302');
INSERT INTO `system_area` VALUES ('989', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '?????????', '330213', '3', 'fenghuaqu', 'F', '1', null, '3302');
INSERT INTO `system_area` VALUES ('990', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '?????????', '330225', '3', 'xiangshanxian', 'X', '1', null, '3302');
INSERT INTO `system_area` VALUES ('991', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '?????????', '330226', '3', 'ninghaixian', 'N', '1', null, '3302');
INSERT INTO `system_area` VALUES ('992', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '?????????', '330281', '3', 'yuyaoshi', 'Y', '1', null, '3302');
INSERT INTO `system_area` VALUES ('993', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '?????????', '330282', '3', 'cixishi', 'C', '1', null, '3302');
INSERT INTO `system_area` VALUES ('994', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '?????????', '3303', '2', 'wenzhoushi', 'W', '1', null, '33');
INSERT INTO `system_area` VALUES ('995', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '?????????', '330302', '3', 'luchengqu', 'L', '1', null, '3303');
INSERT INTO `system_area` VALUES ('996', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '?????????', '330303', '3', 'longwanqu', 'L', '1', null, '3303');
INSERT INTO `system_area` VALUES ('997', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '?????????', '330304', '3', 'ouhaiqu', 'O', '1', null, '3303');
INSERT INTO `system_area` VALUES ('998', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '?????????', '330305', '3', 'dongtouqu', 'D', '1', null, '3303');
INSERT INTO `system_area` VALUES ('999', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '?????????', '330324', '3', 'yongjiaxian', 'Y', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1000', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '?????????', '330326', '3', 'pingyangxian', 'P', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1001', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '?????????', '330327', '3', 'cangnanxian', 'C', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1002', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '?????????', '330328', '3', 'wenchengxian', 'W', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1003', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '?????????', '330329', '3', 'taishunxian', 'T', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1004', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '???????????????????????????', '330371', '3', 'wenzhoujingjijishukaifaqu', 'W', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1005', null, null, null, '2022-12-24 14:21:06.240875', '2022-12-24 14:21:06.240875', '1', '?????????', '330381', '3', 'ruianshi', 'R', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1006', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '?????????', '330382', '3', 'yueqingshi', 'Y', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1007', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '?????????', '330383', '3', 'longgangshi', 'L', '1', null, '3303');
INSERT INTO `system_area` VALUES ('1008', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '?????????', '3304', '2', 'jiaxingshi', 'J', '1', null, '33');
INSERT INTO `system_area` VALUES ('1009', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '?????????', '330402', '3', 'nanhuqu', 'N', '1', null, '3304');
INSERT INTO `system_area` VALUES ('1010', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '?????????', '330411', '3', 'xiuzhouqu', 'X', '1', null, '3304');
INSERT INTO `system_area` VALUES ('1011', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '?????????', '330421', '3', 'jiashanxian', 'J', '1', null, '3304');
INSERT INTO `system_area` VALUES ('1012', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '?????????', '330424', '3', 'haiyanxian', 'H', '1', null, '3304');
INSERT INTO `system_area` VALUES ('1013', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '?????????', '330481', '3', 'hainingshi', 'H', '1', null, '3304');
INSERT INTO `system_area` VALUES ('1014', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '?????????', '330482', '3', 'pinghushi', 'P', '1', null, '3304');
INSERT INTO `system_area` VALUES ('1015', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '?????????', '330483', '3', 'tongxiangshi', 'T', '1', null, '3304');
INSERT INTO `system_area` VALUES ('1016', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '?????????', '3305', '2', 'huzhoushi', 'H', '1', null, '33');
INSERT INTO `system_area` VALUES ('1017', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '?????????', '330502', '3', 'wuxingqu', 'W', '1', null, '3305');
INSERT INTO `system_area` VALUES ('1018', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '?????????', '330503', '3', 'nanxunqu', 'N', '1', null, '3305');
INSERT INTO `system_area` VALUES ('1019', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '?????????', '330521', '3', 'deqingxian', 'D', '1', null, '3305');
INSERT INTO `system_area` VALUES ('1020', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '?????????', '330522', '3', 'changxingxian', 'C', '1', null, '3305');
INSERT INTO `system_area` VALUES ('1021', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '?????????', '330523', '3', 'anjixian', 'A', '1', null, '3305');
INSERT INTO `system_area` VALUES ('1022', null, null, null, '2022-12-24 14:21:06.241882', '2022-12-24 14:21:06.241882', '1', '?????????', '3306', '2', 'shaoxingshi', 'S', '1', null, '33');
INSERT INTO `system_area` VALUES ('1023', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '?????????', '330602', '3', 'yuechengqu', 'Y', '1', null, '3306');
INSERT INTO `system_area` VALUES ('1024', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '?????????', '330603', '3', 'keqiaoqu', 'K', '1', null, '3306');
INSERT INTO `system_area` VALUES ('1025', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '?????????', '330604', '3', 'shangyuqu', 'S', '1', null, '3306');
INSERT INTO `system_area` VALUES ('1026', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '?????????', '330624', '3', 'xinchangxian', 'X', '1', null, '3306');
INSERT INTO `system_area` VALUES ('1027', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '?????????', '330681', '3', 'zhujishi', 'Z', '1', null, '3306');
INSERT INTO `system_area` VALUES ('1028', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '?????????', '330683', '3', 'shengzhoushi', 'S', '1', null, '3306');
INSERT INTO `system_area` VALUES ('1029', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '?????????', '3307', '2', 'jinhuashi', 'J', '1', null, '33');
INSERT INTO `system_area` VALUES ('1030', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '?????????', '330702', '3', 'wuchengqu', 'W', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1031', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '?????????', '330703', '3', 'jindongqu', 'J', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1032', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '?????????', '330723', '3', 'wuyixian', 'W', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1033', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '?????????', '330726', '3', 'pujiangxian', 'P', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1034', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '?????????', '330727', '3', 'pananxian', 'P', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1035', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '?????????', '330781', '3', 'lanxishi', 'L', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1036', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '?????????', '330782', '3', 'yiwushi', 'Y', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1037', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '?????????', '330783', '3', 'dongyangshi', 'D', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1038', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '?????????', '330784', '3', 'yongkangshi', 'Y', '1', null, '3307');
INSERT INTO `system_area` VALUES ('1039', null, null, null, '2022-12-24 14:21:06.242879', '2022-12-24 14:21:06.242879', '1', '?????????', '3308', '2', 'quzhoushi', 'Q', '1', null, '33');
INSERT INTO `system_area` VALUES ('1040', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '?????????', '330802', '3', 'kechengqu', 'K', '1', null, '3308');
INSERT INTO `system_area` VALUES ('1041', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '?????????', '330803', '3', 'qujiangqu', 'Q', '1', null, '3308');
INSERT INTO `system_area` VALUES ('1042', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '?????????', '330822', '3', 'changshanxian', 'C', '1', null, '3308');
INSERT INTO `system_area` VALUES ('1043', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '?????????', '330824', '3', 'kaihuaxian', 'K', '1', null, '3308');
INSERT INTO `system_area` VALUES ('1044', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '?????????', '330825', '3', 'longyouxian', 'L', '1', null, '3308');
INSERT INTO `system_area` VALUES ('1045', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '?????????', '330881', '3', 'jiangshanshi', 'J', '1', null, '3308');
INSERT INTO `system_area` VALUES ('1046', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '?????????', '3309', '2', 'zhoushanshi', 'Z', '1', null, '33');
INSERT INTO `system_area` VALUES ('1047', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '?????????', '330902', '3', 'dinghaiqu', 'D', '1', null, '3309');
INSERT INTO `system_area` VALUES ('1048', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '?????????', '330903', '3', 'putuoqu', 'P', '1', null, '3309');
INSERT INTO `system_area` VALUES ('1049', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '?????????', '330921', '3', 'daishanxian', 'D', '1', null, '3309');
INSERT INTO `system_area` VALUES ('1050', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '?????????', '330922', '3', 'shengsixian', 'S', '1', null, '3309');
INSERT INTO `system_area` VALUES ('1051', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '?????????', '3310', '2', 'taizhoushi', 'T', '1', null, '33');
INSERT INTO `system_area` VALUES ('1052', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '?????????', '331002', '3', 'jiaojiangqu', 'J', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1053', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '?????????', '331003', '3', 'huangyanqu', 'H', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1054', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '?????????', '331004', '3', 'luqiaoqu', 'L', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1055', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '?????????', '331022', '3', 'sanmenxian', 'S', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1056', null, null, null, '2022-12-24 14:21:06.243883', '2022-12-24 14:21:06.243883', '1', '?????????', '331023', '3', 'tiantaixian', 'T', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1057', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '?????????', '331024', '3', 'xianjuxian', 'X', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1058', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '?????????', '331081', '3', 'wenlingshi', 'W', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1059', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '?????????', '331082', '3', 'linhaishi', 'L', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1060', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '?????????', '331083', '3', 'yuhuanshi', 'Y', '1', null, '3310');
INSERT INTO `system_area` VALUES ('1061', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '?????????', '3311', '2', 'lishuishi', 'L', '1', null, '33');
INSERT INTO `system_area` VALUES ('1062', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '?????????', '331102', '3', 'liandouqu', 'L', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1063', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '?????????', '331121', '3', 'qingtianxian', 'Q', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1064', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '?????????', '331122', '3', 'jinyunxian', 'J', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1065', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '?????????', '331123', '3', 'suichangxian', 'S', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1066', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '?????????', '331124', '3', 'songyangxian', 'S', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1067', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '?????????', '331125', '3', 'yunhexian', 'Y', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1068', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '?????????', '331126', '3', 'qingyuanxian', 'Q', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1069', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '?????????????????????', '331127', '3', 'jingningshezuzizhixian', 'J', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1070', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '?????????', '331181', '3', 'longquanshi', 'L', '1', null, '3311');
INSERT INTO `system_area` VALUES ('1071', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '?????????', '34', '1', 'anhuisheng', 'A', '1', null, null);
INSERT INTO `system_area` VALUES ('1072', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '?????????', '3401', '2', 'hefeishi', 'H', '1', null, '34');
INSERT INTO `system_area` VALUES ('1073', null, null, null, '2022-12-24 14:21:06.244877', '2022-12-24 14:21:06.244877', '1', '?????????', '340102', '3', 'yaohaiqu', 'Y', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1074', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '?????????', '340103', '3', 'luyangqu', 'L', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1075', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '?????????', '340104', '3', 'shushanqu', 'S', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1076', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '?????????', '340111', '3', 'baohequ', 'B', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1077', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '?????????', '340121', '3', 'zhangfengxian', 'Z', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1078', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '?????????', '340122', '3', 'feidongxian', 'F', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1079', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '?????????', '340123', '3', 'feixixian', 'F', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1080', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '?????????', '340124', '3', 'lujiangxian', 'L', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1081', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '?????????????????????????????????', '340171', '3', 'hefeigaoxinjishuchanyekaifaqu', 'H', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1082', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '???????????????????????????', '340172', '3', 'hefeijingjijishukaifaqu', 'H', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1083', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '???????????????????????????????????????', '340173', '3', 'hefeixinzhangaoxinjishuchanyekaifaqu', 'H', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1084', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '?????????', '340181', '3', 'chaohushi', 'C', '1', null, '3401');
INSERT INTO `system_area` VALUES ('1085', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '?????????', '3402', '2', 'wuhushi', 'W', '1', null, '34');
INSERT INTO `system_area` VALUES ('1086', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '?????????', '340202', '3', 'jinghuqu', 'J', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1087', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '?????????', '340203', '3', 'yijiangqu', 'Y', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1088', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '?????????', '340207', '3', 'jiujiangqu', 'J', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1089', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '?????????', '340208', '3', 'sanshanqu', 'S', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1090', null, null, null, '2022-12-24 14:21:06.245876', '2022-12-24 14:21:06.245876', '1', '?????????', '340221', '3', 'wuhuxian', 'W', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1091', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '?????????', '340222', '3', 'fanchangxian', 'F', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1092', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '?????????', '340223', '3', 'nanlingxian', 'N', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1093', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '???????????????????????????', '340271', '3', 'wuhujingjijishukaifaqu', 'W', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1094', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '???????????????????????????????????????', '340272', '3', 'anhuiwuhuchangjiangdaqiaojingjikaifaqu', 'A', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1095', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '?????????', '340281', '3', 'wuweishi', 'W', '1', null, '3402');
INSERT INTO `system_area` VALUES ('1096', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '?????????', '3403', '2', 'bengbushi', 'B', '1', null, '34');
INSERT INTO `system_area` VALUES ('1097', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '????????????', '340302', '3', 'longzihuqu', 'L', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1098', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '?????????', '340303', '3', 'bangshanqu', 'B', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1099', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '?????????', '340304', '3', 'yuhuiqu', 'Y', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1100', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '?????????', '340311', '3', 'huaishangqu', 'H', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1101', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '?????????', '340321', '3', 'huaiyuanxian', 'H', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1102', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '?????????', '340322', '3', 'wuhexian', 'W', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1103', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '?????????', '340323', '3', 'guzhenxian', 'G', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1104', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '??????????????????????????????', '340371', '3', 'bengbushigaoxinjishukaifaqu', 'B', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1105', null, null, null, '2022-12-24 14:21:06.246874', '2022-12-24 14:21:06.246874', '1', '????????????????????????', '340372', '3', 'bengbushijingjikaifaqu', 'B', '1', null, '3403');
INSERT INTO `system_area` VALUES ('1106', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '?????????', '3404', '2', 'huainanshi', 'H', '1', null, '34');
INSERT INTO `system_area` VALUES ('1107', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '?????????', '340402', '3', 'datongqu', 'D', '1', null, '3404');
INSERT INTO `system_area` VALUES ('1108', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '????????????', '340403', '3', 'tianjiaanqu', 'T', '1', null, '3404');
INSERT INTO `system_area` VALUES ('1109', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '????????????', '340404', '3', 'xiejiajiqu', 'X', '1', null, '3404');
INSERT INTO `system_area` VALUES ('1110', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '????????????', '340405', '3', 'bagongshanqu', 'B', '1', null, '3404');
INSERT INTO `system_area` VALUES ('1111', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '?????????', '340406', '3', 'panjiqu', 'P', '1', null, '3404');
INSERT INTO `system_area` VALUES ('1112', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '?????????', '340421', '3', 'fengtaixian', 'F', '1', null, '3404');
INSERT INTO `system_area` VALUES ('1113', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '??????', '340422', '3', 'shouxian', 'S', '1', null, '3404');
INSERT INTO `system_area` VALUES ('1114', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '????????????', '3405', '2', 'maanshanshi', 'M', '1', null, '34');
INSERT INTO `system_area` VALUES ('1115', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '?????????', '340503', '3', 'huashanqu', 'H', '1', null, '3405');
INSERT INTO `system_area` VALUES ('1116', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '?????????', '340504', '3', 'yushanqu', 'Y', '1', null, '3405');
INSERT INTO `system_area` VALUES ('1117', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '?????????', '340506', '3', 'bowangqu', 'B', '1', null, '3405');
INSERT INTO `system_area` VALUES ('1118', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.247874', '1', '?????????', '340521', '3', 'dangtuxian', 'D', '1', null, '3405');
INSERT INTO `system_area` VALUES ('1119', null, null, null, '2022-12-24 14:21:06.247874', '2022-12-24 14:21:06.248878', '1', '?????????', '340522', '3', 'hanshanxian', 'H', '1', null, '3405');
INSERT INTO `system_area` VALUES ('1120', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '??????', '340523', '3', 'hexian', 'H', '1', null, '3405');
INSERT INTO `system_area` VALUES ('1121', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '?????????', '3406', '2', 'huaibeishi', 'H', '1', null, '34');
INSERT INTO `system_area` VALUES ('1122', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '?????????', '340602', '3', 'dujiqu', 'D', '1', null, '3406');
INSERT INTO `system_area` VALUES ('1123', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '?????????', '340603', '3', 'xiangshanqu', 'X', '1', null, '3406');
INSERT INTO `system_area` VALUES ('1124', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '?????????', '340604', '3', 'lieshanqu', 'L', '1', null, '3406');
INSERT INTO `system_area` VALUES ('1125', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '?????????', '340621', '3', 'suixixian', 'S', '1', null, '3406');
INSERT INTO `system_area` VALUES ('1126', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '?????????', '3407', '2', 'tonglingshi', 'T', '1', null, '34');
INSERT INTO `system_area` VALUES ('1127', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '?????????', '340705', '3', 'tongguanqu', 'T', '1', null, '3407');
INSERT INTO `system_area` VALUES ('1128', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '?????????', '340706', '3', 'yianqu', 'Y', '1', null, '3407');
INSERT INTO `system_area` VALUES ('1129', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '??????', '340711', '3', 'jiaoqu', 'J', '1', null, '3407');
INSERT INTO `system_area` VALUES ('1130', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '?????????', '340722', '3', 'zongyangxian', 'Z', '1', null, '3407');
INSERT INTO `system_area` VALUES ('1131', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '?????????', '3408', '2', 'anqingshi', 'A', '1', null, '34');
INSERT INTO `system_area` VALUES ('1132', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '?????????', '340802', '3', 'yingjiangqu', 'Y', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1133', null, null, null, '2022-12-24 14:21:06.248878', '2022-12-24 14:21:06.248878', '1', '?????????', '340803', '3', 'daguanqu', 'D', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1134', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '?????????', '340811', '3', 'yixiuqu', 'Y', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1135', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '?????????', '340822', '3', 'huainingxian', 'H', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1136', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '?????????', '340825', '3', 'taihuxian', 'T', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1137', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '?????????', '340826', '3', 'susongxian', 'S', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1138', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '?????????', '340827', '3', 'wangjiangxian', 'W', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1139', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '?????????', '340828', '3', 'yuexixian', 'Y', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1140', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '???????????????????????????', '340871', '3', 'anhuianqingjingjikaifaqu', 'A', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1141', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '?????????', '340881', '3', 'tongchengshi', 'T', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1142', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '?????????', '340882', '3', 'qianshanshi', 'Q', '1', null, '3408');
INSERT INTO `system_area` VALUES ('1143', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '?????????', '3410', '2', 'huangshanshi', 'H', '1', null, '34');
INSERT INTO `system_area` VALUES ('1144', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '?????????', '341002', '3', 'tunxiqu', 'T', '1', null, '3410');
INSERT INTO `system_area` VALUES ('1145', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '?????????', '341003', '3', 'huangshanqu', 'H', '1', null, '3410');
INSERT INTO `system_area` VALUES ('1146', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '?????????', '341004', '3', 'huizhouqu', 'H', '1', null, '3410');
INSERT INTO `system_area` VALUES ('1147', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '??????', '341021', '3', 'shexian', 'S', '1', null, '3410');
INSERT INTO `system_area` VALUES ('1148', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '?????????', '341022', '3', 'xiuningxian', 'X', '1', null, '3410');
INSERT INTO `system_area` VALUES ('1149', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '??????', '341023', '3', 'yixian', 'Y', '1', null, '3410');
INSERT INTO `system_area` VALUES ('1150', null, null, null, '2022-12-24 14:21:06.249879', '2022-12-24 14:21:06.249879', '1', '?????????', '341024', '3', 'qimenxian', 'Q', '1', null, '3410');
INSERT INTO `system_area` VALUES ('1151', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '?????????', '3411', '2', 'chuzhoushi', 'C', '1', null, '34');
INSERT INTO `system_area` VALUES ('1152', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '?????????', '341102', '3', 'langyaqu', 'L', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1153', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '?????????', '341103', '3', 'nanqiaoqu', 'N', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1154', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '?????????', '341122', '3', 'laianxian', 'L', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1155', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '?????????', '341124', '3', 'quanjiaoxian', 'Q', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1156', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '?????????', '341125', '3', 'dingyuanxian', 'D', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1157', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '?????????', '341126', '3', 'fengyangxian', 'F', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1158', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '?????????????????????', '341171', '3', 'suchuxiandaichanyeyuan', 'S', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1159', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '???????????????????????????', '341172', '3', 'chuzhoujingjijishukaifaqu', 'C', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1160', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '?????????', '341181', '3', 'tianzhangshi', 'T', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1161', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '?????????', '341182', '3', 'mingguangshi', 'M', '1', null, '3411');
INSERT INTO `system_area` VALUES ('1162', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '?????????', '3412', '2', 'fuyangshi', 'F', '1', null, '34');
INSERT INTO `system_area` VALUES ('1163', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '?????????', '341202', '3', 'yingzhouqu', 'Y', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1164', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '?????????', '341203', '3', 'yingdongqu', 'Y', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1165', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '?????????', '341204', '3', 'yingquanqu', 'Y', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1166', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '?????????', '341221', '3', 'linquanxian', 'L', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1167', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '?????????', '341222', '3', 'taihexian', 'T', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1168', null, null, null, '2022-12-24 14:21:06.250877', '2022-12-24 14:21:06.250877', '1', '?????????', '341225', '3', 'funanxian', 'F', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1169', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '?????????', '341226', '3', 'yingshangxian', 'Y', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1170', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '??????????????????????????????', '341271', '3', 'fuyanghefeixiandaichanyeyuanqu', 'F', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1171', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '???????????????????????????', '341272', '3', 'fuyangjingjijishukaifaqu', 'F', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1172', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '?????????', '341282', '3', 'jieshoushi', 'J', '1', null, '3412');
INSERT INTO `system_area` VALUES ('1173', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '?????????', '3413', '2', 'suzhoushi', 'S', '1', null, '34');
INSERT INTO `system_area` VALUES ('1174', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '?????????', '341302', '3', 'yongqiaoqu', 'Y', '1', null, '3413');
INSERT INTO `system_area` VALUES ('1175', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '?????????', '341321', '3', 'dangshanxian', 'D', '1', null, '3413');
INSERT INTO `system_area` VALUES ('1176', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '??????', '341322', '3', 'xiaoxian', 'X', '1', null, '3413');
INSERT INTO `system_area` VALUES ('1177', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '?????????', '341323', '3', 'lingbixian', 'L', '1', null, '3413');
INSERT INTO `system_area` VALUES ('1178', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '??????', '341324', '3', 'sixian', 'S', '1', null, '3413');
INSERT INTO `system_area` VALUES ('1179', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '?????????????????????????????????', '341371', '3', 'suzhoumaanshanxiandaichanyeyuanqu', 'S', '1', null, '3413');
INSERT INTO `system_area` VALUES ('1180', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '???????????????????????????', '341372', '3', 'suzhoujingjijishukaifaqu', 'S', '1', null, '3413');
INSERT INTO `system_area` VALUES ('1181', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '?????????', '3415', '2', 'luanshi', 'L', '1', null, '34');
INSERT INTO `system_area` VALUES ('1182', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '?????????', '341502', '3', 'jinanqu', 'J', '1', null, '3415');
INSERT INTO `system_area` VALUES ('1183', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '?????????', '341503', '3', 'yuanqu', 'Y', '1', null, '3415');
INSERT INTO `system_area` VALUES ('1184', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '?????????', '341504', '3', 'yejiqu', 'Y', '1', null, '3415');
INSERT INTO `system_area` VALUES ('1185', null, null, null, '2022-12-24 14:21:06.251880', '2022-12-24 14:21:06.251880', '1', '?????????', '341522', '3', 'huoqiuxian', 'H', '1', null, '3415');
INSERT INTO `system_area` VALUES ('1186', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '?????????', '341523', '3', 'shuchengxian', 'S', '1', null, '3415');
INSERT INTO `system_area` VALUES ('1187', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '?????????', '341524', '3', 'jinzhaixian', 'J', '1', null, '3415');
INSERT INTO `system_area` VALUES ('1188', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '?????????', '341525', '3', 'huoshanxian', 'H', '1', null, '3415');
INSERT INTO `system_area` VALUES ('1189', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '?????????', '3416', '2', 'bozhoushi', 'B', '1', null, '34');
INSERT INTO `system_area` VALUES ('1190', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '?????????', '341602', '3', 'qiaochengqu', 'Q', '1', null, '3416');
INSERT INTO `system_area` VALUES ('1191', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '?????????', '341621', '3', 'woyangxian', 'W', '1', null, '3416');
INSERT INTO `system_area` VALUES ('1192', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '?????????', '341622', '3', 'mengchengxian', 'M', '1', null, '3416');
INSERT INTO `system_area` VALUES ('1193', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '?????????', '341623', '3', 'lixinxian', 'L', '1', null, '3416');
INSERT INTO `system_area` VALUES ('1194', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '?????????', '3417', '2', 'chizhoushi', 'C', '1', null, '34');
INSERT INTO `system_area` VALUES ('1195', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '?????????', '341702', '3', 'guichiqu', 'G', '1', null, '3417');
INSERT INTO `system_area` VALUES ('1196', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '?????????', '341721', '3', 'dongzhixian', 'D', '1', null, '3417');
INSERT INTO `system_area` VALUES ('1197', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '?????????', '341722', '3', 'shitaixian', 'S', '1', null, '3417');
INSERT INTO `system_area` VALUES ('1198', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '?????????', '341723', '3', 'qingyangxian', 'Q', '1', null, '3417');
INSERT INTO `system_area` VALUES ('1199', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '?????????', '3418', '2', 'xuanchengshi', 'X', '1', null, '34');
INSERT INTO `system_area` VALUES ('1200', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '?????????', '341802', '3', 'xuanzhouqu', 'X', '1', null, '3418');
INSERT INTO `system_area` VALUES ('1201', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '?????????', '341821', '3', 'langxixian', 'L', '1', null, '3418');
INSERT INTO `system_area` VALUES ('1202', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.252877', '1', '??????', '341823', '3', 'jingxian', 'J', '1', null, '3418');
INSERT INTO `system_area` VALUES ('1203', null, null, null, '2022-12-24 14:21:06.252877', '2022-12-24 14:21:06.253877', '1', '?????????', '341824', '3', 'jixixian', 'J', '1', null, '3418');
INSERT INTO `system_area` VALUES ('1204', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '?????????', '341825', '3', 'jingdexian', 'J', '1', null, '3418');
INSERT INTO `system_area` VALUES ('1205', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '????????????????????????', '341871', '3', 'xuanchengshijingjikaifaqu', 'X', '1', null, '3418');
INSERT INTO `system_area` VALUES ('1206', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '?????????', '341881', '3', 'ningguoshi', 'N', '1', null, '3418');
INSERT INTO `system_area` VALUES ('1207', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '?????????', '341882', '3', 'guangdeshi', 'G', '1', null, '3418');
INSERT INTO `system_area` VALUES ('1208', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '?????????', '35', '1', 'fujiansheng', 'F', '1', null, null);
INSERT INTO `system_area` VALUES ('1209', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '?????????', '3501', '2', 'fuzhoushi', 'F', '1', null, '35');
INSERT INTO `system_area` VALUES ('1210', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '?????????', '350102', '3', 'gulouqu', 'G', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1211', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '?????????', '350103', '3', 'taijiangqu', 'T', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1212', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '?????????', '350104', '3', 'cangshanqu', 'C', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1213', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '?????????', '350105', '3', 'mayiqu', 'M', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1214', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '?????????', '350111', '3', 'jinanqu', 'J', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1215', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '?????????', '350112', '3', 'changlequ', 'C', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1216', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '?????????', '350121', '3', 'minhouxian', 'M', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1217', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '?????????', '350122', '3', 'lianjiangxian', 'L', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1218', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '?????????', '350123', '3', 'luoyuanxian', 'L', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1219', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '?????????', '350124', '3', 'minqingxian', 'M', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1220', null, null, null, '2022-12-24 14:21:06.253877', '2022-12-24 14:21:06.253877', '1', '?????????', '350125', '3', 'yongtaixian', 'Y', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1221', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '?????????', '350128', '3', 'pingtanxian', 'P', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1222', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '?????????', '350181', '3', 'fuqingshi', 'F', '1', null, '3501');
INSERT INTO `system_area` VALUES ('1223', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '?????????', '3502', '2', 'xiamenshi', 'X', '1', null, '35');
INSERT INTO `system_area` VALUES ('1224', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '?????????', '350203', '3', 'simingqu', 'S', '1', null, '3502');
INSERT INTO `system_area` VALUES ('1225', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '?????????', '350205', '3', 'haicangqu', 'H', '1', null, '3502');
INSERT INTO `system_area` VALUES ('1226', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '?????????', '350206', '3', 'huliqu', 'H', '1', null, '3502');
INSERT INTO `system_area` VALUES ('1227', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '?????????', '350211', '3', 'jimeiqu', 'J', '1', null, '3502');
INSERT INTO `system_area` VALUES ('1228', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '?????????', '350212', '3', 'tonganqu', 'T', '1', null, '3502');
INSERT INTO `system_area` VALUES ('1229', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '?????????', '350213', '3', 'xianganqu', 'X', '1', null, '3502');
INSERT INTO `system_area` VALUES ('1230', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '?????????', '3503', '2', 'putianshi', 'P', '1', null, '35');
INSERT INTO `system_area` VALUES ('1231', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '?????????', '350302', '3', 'chengxiangqu', 'C', '1', null, '3503');
INSERT INTO `system_area` VALUES ('1232', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '?????????', '350303', '3', 'hanjiangqu', 'H', '1', null, '3503');
INSERT INTO `system_area` VALUES ('1233', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '?????????', '350304', '3', 'lichengqu', 'L', '1', null, '3503');
INSERT INTO `system_area` VALUES ('1234', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '?????????', '350305', '3', 'xiuyuqu', 'X', '1', null, '3503');
INSERT INTO `system_area` VALUES ('1235', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '?????????', '350322', '3', 'xianyouxian', 'X', '1', null, '3503');
INSERT INTO `system_area` VALUES ('1236', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '?????????', '3504', '2', 'sanmingshi', 'S', '1', null, '35');
INSERT INTO `system_area` VALUES ('1237', null, null, null, '2022-12-24 14:21:06.254876', '2022-12-24 14:21:06.254876', '1', '?????????', '350402', '3', 'meiliequ', 'M', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1238', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '?????????', '350403', '3', 'sanyuanqu', 'S', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1239', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '?????????', '350421', '3', 'mingxixian', 'M', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1240', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '?????????', '350423', '3', 'qingliuxian', 'Q', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1241', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '?????????', '350424', '3', 'ninghuaxian', 'N', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1242', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '?????????', '350425', '3', 'datianxian', 'D', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1243', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '?????????', '350426', '3', 'youxixian', 'Y', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1244', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '??????', '350427', '3', 'shaxian', 'S', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1245', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '?????????', '350428', '3', 'jianglexian', 'J', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1246', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '?????????', '350429', '3', 'tainingxian', 'T', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1247', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '?????????', '350430', '3', 'jianningxian', 'J', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1248', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '?????????', '350481', '3', 'yonganshi', 'Y', '1', null, '3504');
INSERT INTO `system_area` VALUES ('1249', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '?????????', '3505', '2', 'quanzhoushi', 'Q', '1', null, '35');
INSERT INTO `system_area` VALUES ('1250', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '?????????', '350502', '3', 'lichengqu', 'L', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1251', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '?????????', '350503', '3', 'fengzequ', 'F', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1252', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '?????????', '350504', '3', 'luojiangqu', 'L', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1253', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '?????????', '350505', '3', 'quangangqu', 'Q', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1254', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '?????????', '350521', '3', 'huianxian', 'H', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1255', null, null, null, '2022-12-24 14:21:06.255877', '2022-12-24 14:21:06.255877', '1', '?????????', '350524', '3', 'anxixian', 'A', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1256', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '?????????', '350525', '3', 'yongchunxian', 'Y', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1257', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '?????????', '350526', '3', 'dehuaxian', 'D', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1258', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '?????????', '350527', '3', 'jinmenxian', 'J', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1259', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '?????????', '350581', '3', 'shishishi', 'S', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1260', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '?????????', '350582', '3', 'jinjiangshi', 'J', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1261', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '?????????', '350583', '3', 'nananshi', 'N', '1', null, '3505');
INSERT INTO `system_area` VALUES ('1262', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '?????????', '3506', '2', 'zhangzhoushi', 'Z', '1', null, '35');
INSERT INTO `system_area` VALUES ('1263', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '?????????', '350602', '3', 'xiangchengqu', 'X', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1264', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '?????????', '350603', '3', 'longwenqu', 'L', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1265', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '?????????', '350622', '3', 'yunxiaoxian', 'Y', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1266', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '?????????', '350623', '3', 'zhangpuxian', 'Z', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1267', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '?????????', '350624', '3', 'zhaoanxian', 'Z', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1268', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '?????????', '350625', '3', 'zhangtaixian', 'Z', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1269', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '?????????', '350626', '3', 'dongshanxian', 'D', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1270', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '?????????', '350627', '3', 'nanjingxian', 'N', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1271', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '?????????', '350628', '3', 'pinghexian', 'P', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1272', null, null, null, '2022-12-24 14:21:06.256877', '2022-12-24 14:21:06.256877', '1', '?????????', '350629', '3', 'huaanxian', 'H', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1273', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '?????????', '350681', '3', 'longhaishi', 'L', '1', null, '3506');
INSERT INTO `system_area` VALUES ('1274', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '?????????', '3507', '2', 'nanpingshi', 'N', '1', null, '35');
INSERT INTO `system_area` VALUES ('1275', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '?????????', '350702', '3', 'yanpingqu', 'Y', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1276', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '?????????', '350703', '3', 'jianyangqu', 'J', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1277', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '?????????', '350721', '3', 'shunchangxian', 'S', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1278', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '?????????', '350722', '3', 'puchengxian', 'P', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1279', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '?????????', '350723', '3', 'guangzexian', 'G', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1280', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '?????????', '350724', '3', 'songxixian', 'S', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1281', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '?????????', '350725', '3', 'zhenghexian', 'Z', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1282', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '?????????', '350781', '3', 'shaowushi', 'S', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1283', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '????????????', '350782', '3', 'wuyishanshi', 'W', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1284', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '?????????', '350783', '3', 'jianoushi', 'J', '1', null, '3507');
INSERT INTO `system_area` VALUES ('1285', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '?????????', '3508', '2', 'longyanshi', 'L', '1', null, '35');
INSERT INTO `system_area` VALUES ('1286', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '?????????', '350802', '3', 'xinluoqu', 'X', '1', null, '3508');
INSERT INTO `system_area` VALUES ('1287', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '?????????', '350803', '3', 'yongdingqu', 'Y', '1', null, '3508');
INSERT INTO `system_area` VALUES ('1288', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '?????????', '350821', '3', 'changtingxian', 'C', '1', null, '3508');
INSERT INTO `system_area` VALUES ('1289', null, null, null, '2022-12-24 14:21:06.257877', '2022-12-24 14:21:06.257877', '1', '?????????', '350823', '3', 'shanghangxian', 'S', '1', null, '3508');
INSERT INTO `system_area` VALUES ('1290', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '?????????', '350824', '3', 'wupingxian', 'W', '1', null, '3508');
INSERT INTO `system_area` VALUES ('1291', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '?????????', '350825', '3', 'lianchengxian', 'L', '1', null, '3508');
INSERT INTO `system_area` VALUES ('1292', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '?????????', '350881', '3', 'zhangpingshi', 'Z', '1', null, '3508');
INSERT INTO `system_area` VALUES ('1293', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '?????????', '3509', '2', 'ningdeshi', 'N', '1', null, '35');
INSERT INTO `system_area` VALUES ('1294', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '?????????', '350902', '3', 'jiaochengqu', 'J', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1295', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '?????????', '350921', '3', 'xiapuxian', 'X', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1296', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '?????????', '350922', '3', 'gutianxian', 'G', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1297', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '?????????', '350923', '3', 'pingnanxian', 'P', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1298', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '?????????', '350924', '3', 'shouningxian', 'S', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1299', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '?????????', '350925', '3', 'zhouningxian', 'Z', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1300', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '?????????', '350926', '3', 'zherongxian', 'Z', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1301', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '?????????', '350981', '3', 'fuanshi', 'F', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1302', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '?????????', '350982', '3', 'fudingshi', 'F', '1', null, '3509');
INSERT INTO `system_area` VALUES ('1303', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '?????????', '36', '1', 'jiangxisheng', 'J', '1', null, null);
INSERT INTO `system_area` VALUES ('1304', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '?????????', '3601', '2', 'nanchangshi', 'N', '1', null, '36');
INSERT INTO `system_area` VALUES ('1305', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '?????????', '360102', '3', 'donghuqu', 'D', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1306', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '?????????', '360103', '3', 'xihuqu', 'X', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1307', null, null, null, '2022-12-24 14:21:06.258877', '2022-12-24 14:21:06.258877', '1', '????????????', '360104', '3', 'qingyunpuqu', 'Q', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1308', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '????????????', '360111', '3', 'qingshanhuqu', 'Q', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1309', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '?????????', '360112', '3', 'xinjianqu', 'X', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1310', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '????????????', '360113', '3', 'honggutanqu', 'H', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1311', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '?????????', '360121', '3', 'nanchangxian', 'N', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1312', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '?????????', '360123', '3', 'anyixian', 'A', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1313', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '?????????', '360124', '3', 'jinxianxian', 'J', '1', null, '3601');
INSERT INTO `system_area` VALUES ('1314', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '????????????', '3602', '2', 'jingdezhenshi', 'J', '1', null, '36');
INSERT INTO `system_area` VALUES ('1315', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '?????????', '360202', '3', 'changjiangqu', 'C', '1', null, '3602');
INSERT INTO `system_area` VALUES ('1316', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '?????????', '360203', '3', 'zhushanqu', 'Z', '1', null, '3602');
INSERT INTO `system_area` VALUES ('1317', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '?????????', '360222', '3', 'fuliangxian', 'F', '1', null, '3602');
INSERT INTO `system_area` VALUES ('1318', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '?????????', '360281', '3', 'lepingshi', 'L', '1', null, '3602');
INSERT INTO `system_area` VALUES ('1319', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '?????????', '3603', '2', 'pingxiangshi', 'P', '1', null, '36');
INSERT INTO `system_area` VALUES ('1320', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '?????????', '360302', '3', 'anyuanqu', 'A', '1', null, '3603');
INSERT INTO `system_area` VALUES ('1321', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '?????????', '360313', '3', 'xiangdongqu', 'X', '1', null, '3603');
INSERT INTO `system_area` VALUES ('1322', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '?????????', '360321', '3', 'lianhuaxian', 'L', '1', null, '3603');
INSERT INTO `system_area` VALUES ('1323', null, null, null, '2022-12-24 14:21:06.259877', '2022-12-24 14:21:06.259877', '1', '?????????', '360322', '3', 'shanglixian', 'S', '1', null, '3603');
INSERT INTO `system_area` VALUES ('1324', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '?????????', '360323', '3', 'luxixian', 'L', '1', null, '3603');
INSERT INTO `system_area` VALUES ('1325', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '?????????', '3604', '2', 'jiujiangshi', 'J', '1', null, '36');
INSERT INTO `system_area` VALUES ('1326', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '?????????', '360402', '3', 'lianxiqu', 'L', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1327', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '?????????', '360403', '3', 'xunyangqu', 'X', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1328', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '?????????', '360404', '3', 'chaisangqu', 'C', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1329', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '?????????', '360423', '3', 'wuningxian', 'W', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1330', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '?????????', '360424', '3', 'xiushuixian', 'X', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1331', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '?????????', '360425', '3', 'yongxiuxian', 'Y', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1332', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '?????????', '360426', '3', 'deanxian', 'D', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1333', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '?????????', '360428', '3', 'douchangxian', 'D', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1334', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '?????????', '360429', '3', 'hukouxian', 'H', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1335', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '?????????', '360430', '3', 'pengzexian', 'P', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1336', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '?????????', '360481', '3', 'ruichangshi', 'R', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1337', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '????????????', '360482', '3', 'gongqingchengshi', 'G', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1338', null, null, null, '2022-12-24 14:21:06.260877', '2022-12-24 14:21:06.260877', '1', '?????????', '360483', '3', 'lushanshi', 'L', '1', null, '3604');
INSERT INTO `system_area` VALUES ('1339', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '?????????', '3605', '2', 'xinyushi', 'X', '1', null, '36');
INSERT INTO `system_area` VALUES ('1340', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '?????????', '360502', '3', 'yushuiqu', 'Y', '1', null, '3605');
INSERT INTO `system_area` VALUES ('1341', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '?????????', '360521', '3', 'fenyixian', 'F', '1', null, '3605');
INSERT INTO `system_area` VALUES ('1342', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '?????????', '3606', '2', 'yingtanshi', 'Y', '1', null, '36');
INSERT INTO `system_area` VALUES ('1343', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '?????????', '360602', '3', 'yuehuqu', 'Y', '1', null, '3606');
INSERT INTO `system_area` VALUES ('1344', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '?????????', '360603', '3', 'yujiangqu', 'Y', '1', null, '3606');
INSERT INTO `system_area` VALUES ('1345', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '?????????', '360681', '3', 'guixishi', 'G', '1', null, '3606');
INSERT INTO `system_area` VALUES ('1346', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '?????????', '3607', '2', 'ganzhoushi', 'G', '1', null, '36');
INSERT INTO `system_area` VALUES ('1347', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '?????????', '360702', '3', 'zhanggongqu', 'Z', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1348', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '?????????', '360703', '3', 'nankangqu', 'N', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1349', null, null, null, '2022-12-24 14:21:06.261876', '2022-12-24 14:21:06.261876', '1', '?????????', '360704', '3', 'ganxianqu', 'G', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1350', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '?????????', '360722', '3', 'xinfengxian', 'X', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1351', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '?????????', '360723', '3', 'dayuxian', 'D', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1352', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '?????????', '360724', '3', 'shangyouxian', 'S', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1353', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '?????????', '360725', '3', 'chongyixian', 'C', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1354', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '?????????', '360726', '3', 'anyuanxian', 'A', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1355', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '?????????', '360728', '3', 'dingnanxian', 'D', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1356', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '?????????', '360729', '3', 'quannanxian', 'Q', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1357', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '?????????', '360730', '3', 'ningdouxian', 'N', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1358', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '?????????', '360731', '3', 'yudouxian', 'Y', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1359', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '?????????', '360732', '3', 'xingguoxian', 'X', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1360', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '?????????', '360733', '3', 'huichangxian', 'H', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1361', null, null, null, '2022-12-24 14:21:06.262882', '2022-12-24 14:21:06.262882', '1', '?????????', '360734', '3', 'xunwuxian', 'X', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1362', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '?????????', '360735', '3', 'shichengxian', 'S', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1363', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '?????????', '360781', '3', 'ruijinshi', 'R', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1364', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '?????????', '360783', '3', 'longnanshi', 'L', '1', null, '3607');
INSERT INTO `system_area` VALUES ('1365', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '?????????', '3608', '2', 'jianshi', 'J', '1', null, '36');
INSERT INTO `system_area` VALUES ('1366', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '?????????', '360802', '3', 'jizhouqu', 'J', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1367', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '?????????', '360803', '3', 'qingyuanqu', 'Q', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1368', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '?????????', '360821', '3', 'jianxian', 'J', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1369', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '?????????', '360822', '3', 'jishuixian', 'J', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1370', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '?????????', '360823', '3', 'xiajiangxian', 'X', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1371', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '?????????', '360824', '3', 'xinganxian', 'X', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1372', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '?????????', '360825', '3', 'yongfengxian', 'Y', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1373', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '?????????', '360826', '3', 'taihexian', 'T', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1374', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '?????????', '360827', '3', 'suichuanxian', 'S', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1375', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '?????????', '360828', '3', 'wananxian', 'W', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1376', null, null, null, '2022-12-24 14:21:06.263882', '2022-12-24 14:21:06.263882', '1', '?????????', '360829', '3', 'anfuxian', 'A', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1377', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '?????????', '360830', '3', 'yongxinxian', 'Y', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1378', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '????????????', '360881', '3', 'jinggangshanshi', 'J', '1', null, '3608');
INSERT INTO `system_area` VALUES ('1379', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '?????????', '3609', '2', 'yichunshi', 'Y', '1', null, '36');
INSERT INTO `system_area` VALUES ('1380', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '?????????', '360902', '3', 'yuanzhouqu', 'Y', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1381', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '?????????', '360921', '3', 'fengxinxian', 'F', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1382', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '?????????', '360922', '3', 'wanzaixian', 'W', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1383', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '?????????', '360923', '3', 'shanggaoxian', 'S', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1384', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '?????????', '360924', '3', 'yifengxian', 'Y', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1385', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '?????????', '360925', '3', 'jinganxian', 'J', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1386', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '?????????', '360926', '3', 'tongguxian', 'T', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1387', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '?????????', '360981', '3', 'fengchengshi', 'F', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1388', null, null, null, '2022-12-24 14:21:06.264882', '2022-12-24 14:21:06.264882', '1', '?????????', '360982', '3', 'zhangshushi', 'Z', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1389', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '?????????', '360983', '3', 'gaoanshi', 'G', '1', null, '3609');
INSERT INTO `system_area` VALUES ('1390', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '?????????', '3610', '2', 'fuzhoushi', 'F', '1', null, '36');
INSERT INTO `system_area` VALUES ('1391', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '?????????', '361002', '3', 'linchuanqu', 'L', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1392', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '?????????', '361003', '3', 'dongxiangqu', 'D', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1393', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '?????????', '361021', '3', 'nanchengxian', 'N', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1394', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '?????????', '361022', '3', 'lichuanxian', 'L', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1395', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '?????????', '361023', '3', 'nanfengxian', 'N', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1396', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '?????????', '361024', '3', 'chongrenxian', 'C', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1397', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '?????????', '361025', '3', 'leanxian', 'L', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1398', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '?????????', '361026', '3', 'yihuangxian', 'Y', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1399', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '?????????', '361027', '3', 'jinxixian', 'J', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1400', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '?????????', '361028', '3', 'zixixian', 'Z', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1401', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '?????????', '361030', '3', 'guangchangxian', 'G', '1', null, '3610');
INSERT INTO `system_area` VALUES ('1402', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '?????????', '3611', '2', 'shangraoshi', 'S', '1', null, '36');
INSERT INTO `system_area` VALUES ('1403', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '?????????', '361102', '3', 'xinzhouqu', 'X', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1404', null, null, null, '2022-12-24 14:21:06.265883', '2022-12-24 14:21:06.265883', '1', '?????????', '361103', '3', 'guangfengqu', 'G', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1405', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '?????????', '361104', '3', 'guangxinqu', 'G', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1406', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '?????????', '361123', '3', 'yushanxian', 'Y', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1407', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '?????????', '361124', '3', 'yanshanxian', 'Y', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1408', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '?????????', '361125', '3', 'hengfengxian', 'H', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1409', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '?????????', '361126', '3', 'yiyangxian', 'Y', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1410', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '?????????', '361127', '3', 'yuganxian', 'Y', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1411', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '?????????', '361128', '3', 'poyangxian', 'P', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1412', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '?????????', '361129', '3', 'wannianxian', 'W', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1413', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '?????????', '361130', '3', 'wuyuanxian', 'W', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1414', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '?????????', '361181', '3', 'dexingshi', 'D', '1', null, '3611');
INSERT INTO `system_area` VALUES ('1415', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '?????????', '37', '1', 'shandongsheng', 'S', '1', null, null);
INSERT INTO `system_area` VALUES ('1416', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '?????????', '3701', '2', 'jinanshi', 'J', '1', null, '37');
INSERT INTO `system_area` VALUES ('1417', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '?????????', '370102', '3', 'lixiaqu', 'L', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1418', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '?????????', '370103', '3', 'shizhongqu', 'S', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1419', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '?????????', '370104', '3', 'huaiyinqu', 'H', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1420', null, null, null, '2022-12-24 14:21:06.266885', '2022-12-24 14:21:06.266885', '1', '?????????', '370105', '3', 'tianqiaoqu', 'T', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1421', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '?????????', '370112', '3', 'lichengqu', 'L', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1422', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '?????????', '370113', '3', 'zhangqingqu', 'Z', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1423', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '?????????', '370114', '3', 'zhangqiuqu', 'Z', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1424', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '?????????', '370115', '3', 'jiyangqu', 'J', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1425', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '?????????', '370116', '3', 'laiwuqu', 'L', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1426', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '?????????', '370117', '3', 'gangchengqu', 'G', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1427', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '?????????', '370124', '3', 'pingyinxian', 'P', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1428', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '?????????', '370126', '3', 'shanghexian', 'S', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1429', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '?????????????????????????????????', '370171', '3', 'jinangaoxinjishuchanyekaifaqu', 'J', '1', null, '3701');
INSERT INTO `system_area` VALUES ('1430', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '?????????', '3702', '2', 'qingdaoshi', 'Q', '1', null, '37');
INSERT INTO `system_area` VALUES ('1431', null, null, null, '2022-12-24 14:21:06.267886', '2022-12-24 14:21:06.267886', '1', '?????????', '370202', '3', 'shinanqu', 'S', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1432', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '?????????', '370203', '3', 'shibeiqu', 'S', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1433', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '?????????', '370211', '3', 'huangdaoqu', 'H', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1434', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '?????????', '370212', '3', 'laoshanqu', 'L', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1435', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '?????????', '370213', '3', 'licangqu', 'L', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1436', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '?????????', '370214', '3', 'chengyangqu', 'C', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1437', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '?????????', '370215', '3', 'jimoqu', 'J', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1438', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '?????????????????????????????????', '370271', '3', 'qingdaogaoxinjishuchanyekaifaqu', 'Q', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1439', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '?????????', '370281', '3', 'jiaozhoushi', 'J', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1440', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '?????????', '370283', '3', 'pingdushi', 'P', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1441', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '?????????', '370285', '3', 'laixishi', 'L', '1', null, '3702');
INSERT INTO `system_area` VALUES ('1442', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '?????????', '3703', '2', 'ziboshi', 'Z', '1', null, '37');
INSERT INTO `system_area` VALUES ('1443', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '?????????', '370302', '3', 'zichuanqu', 'Z', '1', null, '3703');
INSERT INTO `system_area` VALUES ('1444', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '?????????', '370303', '3', 'zhangdianqu', 'Z', '1', null, '3703');
INSERT INTO `system_area` VALUES ('1445', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '?????????', '370304', '3', 'boshanqu', 'B', '1', null, '3703');
INSERT INTO `system_area` VALUES ('1446', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '?????????', '370305', '3', 'linziqu', 'L', '1', null, '3703');
INSERT INTO `system_area` VALUES ('1447', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.268883', '1', '?????????', '370306', '3', 'zhoucunqu', 'Z', '1', null, '3703');
INSERT INTO `system_area` VALUES ('1448', null, null, null, '2022-12-24 14:21:06.268883', '2022-12-24 14:21:06.269879', '1', '?????????', '370321', '3', 'huantaixian', 'H', '1', null, '3703');
INSERT INTO `system_area` VALUES ('1449', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '?????????', '370322', '3', 'gaoqingxian', 'G', '1', null, '3703');
INSERT INTO `system_area` VALUES ('1450', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '?????????', '370323', '3', 'yiyuanxian', 'Y', '1', null, '3703');
INSERT INTO `system_area` VALUES ('1451', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '?????????', '3704', '2', 'zaozhuangshi', 'Z', '1', null, '37');
INSERT INTO `system_area` VALUES ('1452', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '?????????', '370402', '3', 'shizhongqu', 'S', '1', null, '3704');
INSERT INTO `system_area` VALUES ('1453', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '?????????', '370403', '3', 'xuechengqu', 'X', '1', null, '3704');
INSERT INTO `system_area` VALUES ('1454', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '?????????', '370404', '3', 'yichengqu', 'Y', '1', null, '3704');
INSERT INTO `system_area` VALUES ('1455', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '????????????', '370405', '3', 'taierzhuangqu', 'T', '1', null, '3704');
INSERT INTO `system_area` VALUES ('1456', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '?????????', '370406', '3', 'shantingqu', 'S', '1', null, '3704');
INSERT INTO `system_area` VALUES ('1457', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '?????????', '370481', '3', 'tengzhoushi', 'T', '1', null, '3704');
INSERT INTO `system_area` VALUES ('1458', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '?????????', '3705', '2', 'dongyingshi', 'D', '1', null, '37');
INSERT INTO `system_area` VALUES ('1459', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '?????????', '370502', '3', 'dongyingqu', 'D', '1', null, '3705');
INSERT INTO `system_area` VALUES ('1460', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '?????????', '370503', '3', 'hekouqu', 'H', '1', null, '3705');
INSERT INTO `system_area` VALUES ('1461', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '?????????', '370505', '3', 'kenliqu', 'K', '1', null, '3705');
INSERT INTO `system_area` VALUES ('1462', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '?????????', '370522', '3', 'lijinxian', 'L', '1', null, '3705');
INSERT INTO `system_area` VALUES ('1463', null, null, null, '2022-12-24 14:21:06.269879', '2022-12-24 14:21:06.269879', '1', '?????????', '370523', '3', 'guangraoxian', 'G', '1', null, '3705');
INSERT INTO `system_area` VALUES ('1464', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '???????????????????????????', '370571', '3', 'dongyingjingjijishukaifaqu', 'D', '1', null, '3705');
INSERT INTO `system_area` VALUES ('1465', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '????????????????????????', '370572', '3', 'dongyinggangjingjikaifaqu', 'D', '1', null, '3705');
INSERT INTO `system_area` VALUES ('1466', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '?????????', '3706', '2', 'yantaishi', 'Y', '1', null, '37');
INSERT INTO `system_area` VALUES ('1467', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '?????????', '370602', '3', 'zhifuqu', 'Z', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1468', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '?????????', '370611', '3', 'fushanqu', 'F', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1469', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '?????????', '370612', '3', 'mupingqu', 'M', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1470', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '?????????', '370613', '3', 'laishanqu', 'L', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1471', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '?????????', '370614', '3', 'penglaiqu', 'P', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1472', null, null, null, '2022-12-24 14:21:06.270888', '2022-12-24 14:21:06.270888', '1', '?????????????????????????????????', '370671', '3', 'yantaigaoxinjishuchanyekaifaqu', 'Y', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1473', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '???????????????????????????', '370672', '3', 'yantaijingjijishukaifaqu', 'Y', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1474', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '?????????', '370681', '3', 'longkoushi', 'L', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1475', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '?????????', '370682', '3', 'laiyangshi', 'L', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1476', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '?????????', '370683', '3', 'laizhoushi', 'L', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1477', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '?????????', '370685', '3', 'zhaoyuanshi', 'Z', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1478', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '?????????', '370686', '3', 'qixiashi', 'Q', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1479', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '?????????', '370687', '3', 'haiyangshi', 'H', '1', null, '3706');
INSERT INTO `system_area` VALUES ('1480', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '?????????', '3707', '2', 'weifangshi', 'W', '1', null, '37');
INSERT INTO `system_area` VALUES ('1481', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '?????????', '370702', '3', 'weichengqu', 'W', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1482', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '?????????', '370703', '3', 'hantingqu', 'H', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1483', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '?????????', '370704', '3', 'fangziqu', 'F', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1484', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '?????????', '370705', '3', 'kuiwenqu', 'K', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1485', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '?????????', '370724', '3', 'linquxian', 'L', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1486', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '?????????', '370725', '3', 'changlexian', 'C', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1487', null, null, null, '2022-12-24 14:21:06.271884', '2022-12-24 14:21:06.271884', '1', '?????????????????????????????????', '370772', '3', 'weifangbinhaijingjijishukaifaqu', 'W', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1488', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '?????????', '370781', '3', 'qingzhoushi', 'Q', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1489', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '?????????', '370782', '3', 'zhuchengshi', 'Z', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1490', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '?????????', '370783', '3', 'shouguangshi', 'S', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1491', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '?????????', '370784', '3', 'anqiushi', 'A', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1492', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '?????????', '370785', '3', 'gaomishi', 'G', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1493', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '?????????', '370786', '3', 'changyishi', 'C', '1', null, '3707');
INSERT INTO `system_area` VALUES ('1494', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '?????????', '3708', '2', 'jiningshi', 'J', '1', null, '37');
INSERT INTO `system_area` VALUES ('1495', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '?????????', '370811', '3', 'renchengqu', 'R', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1496', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '?????????', '370812', '3', 'yanzhouqu', 'Y', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1497', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '?????????', '370826', '3', 'weishanxian', 'W', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1498', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '?????????', '370827', '3', 'yutaixian', 'Y', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1499', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '?????????', '370828', '3', 'jinxiangxian', 'J', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1500', null, null, null, '2022-12-24 14:21:06.272884', '2022-12-24 14:21:06.272884', '1', '?????????', '370829', '3', 'jiaxiangxian', 'J', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1501', null, null, null, '2022-12-24 14:21:06.273889', '2022-12-24 14:21:06.273889', '1', '?????????', '370830', '3', 'wenshangxian', 'W', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1502', null, null, null, '2022-12-24 14:21:06.273889', '2022-12-24 14:21:06.273889', '1', '?????????', '370831', '3', 'sishuixian', 'S', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1503', null, null, null, '2022-12-24 14:21:06.273889', '2022-12-24 14:21:06.273889', '1', '?????????', '370832', '3', 'liangshanxian', 'L', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1504', null, null, null, '2022-12-24 14:21:06.273889', '2022-12-24 14:21:06.273889', '1', '?????????????????????????????????', '370871', '3', 'jininggaoxinjishuchanyekaifaqu', 'J', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1505', null, null, null, '2022-12-24 14:21:06.273889', '2022-12-24 14:21:06.273889', '1', '?????????', '370881', '3', 'qufushi', 'Q', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1506', null, null, null, '2022-12-24 14:21:06.273889', '2022-12-24 14:21:06.273889', '1', '?????????', '370883', '3', 'zouchengshi', 'Z', '1', null, '3708');
INSERT INTO `system_area` VALUES ('1507', null, null, null, '2022-12-24 14:21:06.273889', '2022-12-24 14:21:06.273889', '1', '?????????', '3709', '2', 'taianshi', 'T', '1', null, '37');
INSERT INTO `system_area` VALUES ('1508', null, null, null, '2022-12-24 14:21:06.273889', '2022-12-24 14:21:06.274887', '1', '?????????', '370902', '3', 'taishanqu', 'T', '1', null, '3709');
INSERT INTO `system_area` VALUES ('1509', null, null, null, '2022-12-24 14:21:06.274887', '2022-12-24 14:21:06.274887', '1', '?????????', '370911', '3', 'daiyuequ', 'D', '1', null, '3709');
INSERT INTO `system_area` VALUES ('1510', null, null, null, '2022-12-24 14:21:06.274887', '2022-12-24 14:21:06.274887', '1', '?????????', '370921', '3', 'ningyangxian', 'N', '1', null, '3709');
INSERT INTO `system_area` VALUES ('1511', null, null, null, '2022-12-24 14:21:06.274887', '2022-12-24 14:21:06.274887', '1', '?????????', '370923', '3', 'dongpingxian', 'D', '1', null, '3709');
INSERT INTO `system_area` VALUES ('1512', null, null, null, '2022-12-24 14:21:06.274887', '2022-12-24 14:21:06.274887', '1', '?????????', '370982', '3', 'xintaishi', 'X', '1', null, '3709');
INSERT INTO `system_area` VALUES ('1513', null, null, null, '2022-12-24 14:21:06.274887', '2022-12-24 14:21:06.274887', '1', '?????????', '370983', '3', 'feichengshi', 'F', '1', null, '3709');
INSERT INTO `system_area` VALUES ('1514', null, null, null, '2022-12-24 14:21:06.274887', '2022-12-24 14:21:06.274887', '1', '?????????', '3710', '2', 'weihaishi', 'W', '1', null, '37');
INSERT INTO `system_area` VALUES ('1515', null, null, null, '2022-12-24 14:21:06.274887', '2022-12-24 14:21:06.274887', '1', '?????????', '371002', '3', 'huancuiqu', 'H', '1', null, '3710');
INSERT INTO `system_area` VALUES ('1516', null, null, null, '2022-12-24 14:21:06.274887', '2022-12-24 14:21:06.274887', '1', '?????????', '371003', '3', 'wendengqu', 'W', '1', null, '3710');
INSERT INTO `system_area` VALUES ('1517', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '????????????????????????????????????', '371071', '3', 'weihaihuojugaojishuchanyekaifaqu', 'W', '1', null, '3710');
INSERT INTO `system_area` VALUES ('1518', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '???????????????????????????', '371072', '3', 'weihaijingjijishukaifaqu', 'W', '1', null, '3710');
INSERT INTO `system_area` VALUES ('1519', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '?????????????????????????????????', '371073', '3', 'weihailingangjingjijishukaifaqu', 'W', '1', null, '3710');
INSERT INTO `system_area` VALUES ('1520', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '?????????', '371082', '3', 'rongchengshi', 'R', '1', null, '3710');
INSERT INTO `system_area` VALUES ('1521', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '?????????', '371083', '3', 'rushanshi', 'R', '1', null, '3710');
INSERT INTO `system_area` VALUES ('1522', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '?????????', '3711', '2', 'rizhaoshi', 'R', '1', null, '37');
INSERT INTO `system_area` VALUES ('1523', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '?????????', '371102', '3', 'donggangqu', 'D', '1', null, '3711');
INSERT INTO `system_area` VALUES ('1524', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '?????????', '371103', '3', 'lanshanqu', 'L', '1', null, '3711');
INSERT INTO `system_area` VALUES ('1525', null, null, null, '2022-12-24 14:21:06.275886', '2022-12-24 14:21:06.275886', '1', '?????????', '371121', '3', 'wulianxian', 'W', '1', null, '3711');
INSERT INTO `system_area` VALUES ('1526', null, null, null, '2022-12-24 14:21:06.276885', '2022-12-24 14:21:06.276885', '1', '??????', '371122', '3', 'juxian', 'J', '1', null, '3711');
INSERT INTO `system_area` VALUES ('1527', null, null, null, '2022-12-24 14:21:06.276885', '2022-12-24 14:21:06.276885', '1', '???????????????????????????', '371171', '3', 'rizhaojingjijishukaifaqu', 'R', '1', null, '3711');
INSERT INTO `system_area` VALUES ('1528', null, null, null, '2022-12-24 14:21:06.276885', '2022-12-24 14:21:06.276885', '1', '?????????', '3713', '2', 'linyishi', 'L', '1', null, '37');
INSERT INTO `system_area` VALUES ('1529', null, null, null, '2022-12-24 14:21:06.276885', '2022-12-24 14:21:06.276885', '1', '?????????', '371302', '3', 'lanshanqu', 'L', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1530', null, null, null, '2022-12-24 14:21:06.276885', '2022-12-24 14:21:06.276885', '1', '?????????', '371311', '3', 'luozhuangqu', 'L', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1531', null, null, null, '2022-12-24 14:21:06.276885', '2022-12-24 14:21:06.276885', '1', '?????????', '371312', '3', 'hedongqu', 'H', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1532', null, null, null, '2022-12-24 14:21:06.276885', '2022-12-24 14:21:06.276885', '1', '?????????', '371321', '3', 'yinanxian', 'Y', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1533', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '?????????', '371322', '3', 'tanchengxian', 'T', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1534', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '?????????', '371323', '3', 'yishuixian', 'Y', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1535', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '?????????', '371324', '3', 'lanlingxian', 'L', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1536', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '??????', '371325', '3', 'feixian', 'F', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1537', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '?????????', '371326', '3', 'pingyixian', 'P', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1538', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '?????????', '371327', '3', 'junanxian', 'J', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1539', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '?????????', '371328', '3', 'mengyinxian', 'M', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1540', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '?????????', '371329', '3', 'linshuxian', 'L', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1541', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '?????????????????????????????????', '371371', '3', 'linyigaoxinjishuchanyekaifaqu', 'L', '1', null, '3713');
INSERT INTO `system_area` VALUES ('1542', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '?????????', '3714', '2', 'dezhoushi', 'D', '1', null, '37');
INSERT INTO `system_area` VALUES ('1543', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '?????????', '371402', '3', 'dechengqu', 'D', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1544', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '?????????', '371403', '3', 'lingchengqu', 'L', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1545', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '?????????', '371422', '3', 'ningjinxian', 'N', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1546', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '?????????', '371423', '3', 'qingyunxian', 'Q', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1547', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '?????????', '371424', '3', 'linyixian', 'L', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1548', null, null, null, '2022-12-24 14:21:06.277880', '2022-12-24 14:21:06.277880', '1', '?????????', '371425', '3', 'qihexian', 'Q', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1549', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '?????????', '371426', '3', 'pingyuanxian', 'P', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1550', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '?????????', '371427', '3', 'xiajinxian', 'X', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1551', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '?????????', '371428', '3', 'wuchengxian', 'W', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1552', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '???????????????????????????', '371471', '3', 'dezhoujingjijishukaifaqu', 'D', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1553', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '???????????????????????????', '371472', '3', 'dezhouyunhejingjikaifaqu', 'D', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1554', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '?????????', '371481', '3', 'lelingshi', 'L', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1555', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '?????????', '371482', '3', 'yuchengshi', 'Y', '1', null, '3714');
INSERT INTO `system_area` VALUES ('1556', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '?????????', '3715', '2', 'liaochengshi', 'L', '1', null, '37');
INSERT INTO `system_area` VALUES ('1557', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '????????????', '371502', '3', 'dongchangfuqu', 'D', '1', null, '3715');
INSERT INTO `system_area` VALUES ('1558', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '?????????', '371503', '3', 'chipingqu', 'C', '1', null, '3715');
INSERT INTO `system_area` VALUES ('1559', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '?????????', '371521', '3', 'yangguxian', 'Y', '1', null, '3715');
INSERT INTO `system_area` VALUES ('1560', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '??????', '371522', '3', 'shenxian', 'S', '1', null, '3715');
INSERT INTO `system_area` VALUES ('1561', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '?????????', '371524', '3', 'dongexian', 'D', '1', null, '3715');
INSERT INTO `system_area` VALUES ('1562', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '??????', '371525', '3', 'guanxian', 'G', '1', null, '3715');
INSERT INTO `system_area` VALUES ('1563', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '?????????', '371526', '3', 'gaotangxian', 'G', '1', null, '3715');
INSERT INTO `system_area` VALUES ('1564', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '?????????', '371581', '3', 'linqingshi', 'L', '1', null, '3715');
INSERT INTO `system_area` VALUES ('1565', null, null, null, '2022-12-24 14:21:06.278881', '2022-12-24 14:21:06.278881', '1', '?????????', '3716', '2', 'binzhoushi', 'B', '1', null, '37');
INSERT INTO `system_area` VALUES ('1566', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '?????????', '371602', '3', 'binchengqu', 'B', '1', null, '3716');
INSERT INTO `system_area` VALUES ('1567', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '?????????', '371603', '3', 'zhanhuaqu', 'Z', '1', null, '3716');
INSERT INTO `system_area` VALUES ('1568', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '?????????', '371621', '3', 'huiminxian', 'H', '1', null, '3716');
INSERT INTO `system_area` VALUES ('1569', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '?????????', '371622', '3', 'yangxinxian', 'Y', '1', null, '3716');
INSERT INTO `system_area` VALUES ('1570', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '?????????', '371623', '3', 'wudixian', 'W', '1', null, '3716');
INSERT INTO `system_area` VALUES ('1571', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '?????????', '371625', '3', 'boxingxian', 'B', '1', null, '3716');
INSERT INTO `system_area` VALUES ('1572', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '?????????', '371681', '3', 'zoupingshi', 'Z', '1', null, '3716');
INSERT INTO `system_area` VALUES ('1573', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '?????????', '3717', '2', 'hezeshi', 'H', '1', null, '37');
INSERT INTO `system_area` VALUES ('1574', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '?????????', '371702', '3', 'mudanqu', 'M', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1575', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '?????????', '371703', '3', 'dingtaoqu', 'D', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1576', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '??????', '371721', '3', 'caoxian', 'C', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1577', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '??????', '371722', '3', 'danxian', 'D', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1578', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '?????????', '371723', '3', 'chengwuxian', 'C', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1579', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '?????????', '371724', '3', 'juyexian', 'J', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1580', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '?????????', '371725', '3', 'yunchengxian', 'Y', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1581', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '?????????', '371726', '3', 'juanchengxian', 'J', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1582', null, null, null, '2022-12-24 14:21:06.279876', '2022-12-24 14:21:06.279876', '1', '?????????', '371728', '3', 'dongmingxian', 'D', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1583', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '???????????????????????????', '371771', '3', 'hezejingjijishukaifaqu', 'H', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1584', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '???????????????????????????', '371772', '3', 'hezegaoxinjishukaifaqu', 'H', '1', null, '3717');
INSERT INTO `system_area` VALUES ('1585', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '?????????', '41', '1', 'henansheng', 'H', '1', null, null);
INSERT INTO `system_area` VALUES ('1586', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '?????????', '4101', '2', 'zhengzhoushi', 'Z', '1', null, '41');
INSERT INTO `system_area` VALUES ('1587', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '?????????', '410102', '3', 'zhongyuanqu', 'Z', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1588', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '?????????', '410103', '3', 'erqiqu', 'E', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1589', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '???????????????', '410104', '3', 'guanchenghuizuqu', 'G', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1590', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '?????????', '410105', '3', 'jinshuiqu', 'J', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1591', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '?????????', '410106', '3', 'shangjiequ', 'S', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1592', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '?????????', '410108', '3', 'huijiqu', 'H', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1593', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '?????????', '410122', '3', 'zhongmuxian', 'Z', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1594', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '???????????????????????????', '410171', '3', 'zhengzhoujingjijishukaifaqu', 'Z', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1595', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '?????????????????????????????????', '410172', '3', 'zhengzhougaoxinjishuchanyekaifaqu', 'Z', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1596', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '????????????????????????????????????', '410173', '3', 'zhengzhouhangkonggangjingjizongheshiyanqu', 'Z', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1597', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '?????????', '410181', '3', 'gongyishi', 'G', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1598', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '?????????', '410182', '3', 'xingyangshi', 'X', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1599', null, null, null, '2022-12-24 14:21:06.280880', '2022-12-24 14:21:06.280880', '1', '?????????', '410183', '3', 'xinmishi', 'X', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1600', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '?????????', '410184', '3', 'xinzhengshi', 'X', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1601', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '?????????', '410185', '3', 'dengfengshi', 'D', '1', null, '4101');
INSERT INTO `system_area` VALUES ('1602', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '?????????', '4102', '2', 'kaifengshi', 'K', '1', null, '41');
INSERT INTO `system_area` VALUES ('1603', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '?????????', '410202', '3', 'longtingqu', 'L', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1604', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '???????????????', '410203', '3', 'shunhehuizuqu', 'S', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1605', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '?????????', '410204', '3', 'gulouqu', 'G', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1606', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '????????????', '410205', '3', 'yuwangtaiqu', 'Y', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1607', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '?????????', '410212', '3', 'xiangfuqu', 'X', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1608', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '??????', '410221', '3', 'qixian', 'Q', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1609', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '?????????', '410222', '3', 'tongxuxian', 'T', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1610', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '?????????', '410223', '3', 'weishixian', 'W', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1611', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '?????????', '410225', '3', 'lankaoxian', 'L', '1', null, '4102');
INSERT INTO `system_area` VALUES ('1612', null, null, null, '2022-12-24 14:21:06.281877', '2022-12-24 14:21:06.281877', '1', '?????????', '4103', '2', 'luoyangshi', 'L', '1', null, '41');
INSERT INTO `system_area` VALUES ('1613', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '?????????', '410302', '3', 'laochengqu', 'L', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1614', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '?????????', '410303', '3', 'xigongqu', 'X', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1615', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '???????????????', '410304', '3', 'chanhehuizuqu', 'C', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1616', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '?????????', '410305', '3', 'jianxiqu', 'J', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1617', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '?????????', '410306', '3', 'jiliqu', 'J', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1618', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '?????????', '410311', '3', 'luolongqu', 'L', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1619', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '?????????', '410322', '3', 'mengjinxian', 'M', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1620', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '?????????', '410323', '3', 'xinanxian', 'X', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1621', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '?????????', '410324', '3', 'luanchuanxian', 'L', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1622', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '??????', '410325', '3', 'songxian', 'S', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1623', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '?????????', '410326', '3', 'ruyangxian', 'R', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1624', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '?????????', '410327', '3', 'yiyangxian', 'Y', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1625', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '?????????', '410328', '3', 'luoningxian', 'L', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1626', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '?????????', '410329', '3', 'yichuanxian', 'Y', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1627', null, null, null, '2022-12-24 14:21:06.282884', '2022-12-24 14:21:06.282884', '1', '?????????????????????????????????', '410371', '3', 'luoyanggaoxinjishuchanyekaifaqu', 'L', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1628', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '?????????', '410381', '3', 'yanshishi', 'Y', '1', null, '4103');
INSERT INTO `system_area` VALUES ('1629', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '????????????', '4104', '2', 'pingdingshanshi', 'P', '1', null, '41');
INSERT INTO `system_area` VALUES ('1630', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '?????????', '410402', '3', 'xinhuaqu', 'X', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1631', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '?????????', '410403', '3', 'weidongqu', 'W', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1632', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '?????????', '410404', '3', 'shilongqu', 'S', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1633', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '?????????', '410411', '3', 'zhanhequ', 'Z', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1634', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '?????????', '410421', '3', 'baofengxian', 'B', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1635', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '??????', '410422', '3', 'yexian', 'Y', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1636', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '?????????', '410423', '3', 'lushanxian', 'L', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1637', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '??????', '410425', '3', 'jiaxian', 'J', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1638', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '????????????????????????????????????', '410471', '3', 'pingdingshangaoxinjishuchanyekaifaqu', 'P', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1639', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '????????????????????????????????????', '410472', '3', 'pingdingshanshichengxiangyitihuashifanqu', 'P', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1640', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '?????????', '410481', '3', 'wugangshi', 'W', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1641', null, null, null, '2022-12-24 14:21:06.283887', '2022-12-24 14:21:06.283887', '1', '?????????', '410482', '3', 'ruzhoushi', 'R', '1', null, '4104');
INSERT INTO `system_area` VALUES ('1642', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '?????????', '4105', '2', 'anyangshi', 'A', '1', null, '41');
INSERT INTO `system_area` VALUES ('1643', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '?????????', '410502', '3', 'wenfengqu', 'W', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1644', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '?????????', '410503', '3', 'beiguanqu', 'B', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1645', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '?????????', '410505', '3', 'yindouqu', 'Y', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1646', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '?????????', '410506', '3', 'longanqu', 'L', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1647', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '?????????', '410522', '3', 'anyangxian', 'A', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1648', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '?????????', '410523', '3', 'tangyinxian', 'T', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1649', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '??????', '410526', '3', 'huaxian', 'H', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1650', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '?????????', '410527', '3', 'neihuangxian', 'N', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1651', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '?????????????????????????????????', '410571', '3', 'anyanggaoxinjishuchanyekaifaqu', 'A', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1652', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '?????????', '410581', '3', 'linzhoushi', 'L', '1', null, '4105');
INSERT INTO `system_area` VALUES ('1653', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '?????????', '4106', '2', 'hebishi', 'H', '1', null, '41');
INSERT INTO `system_area` VALUES ('1654', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '?????????', '410602', '3', 'heshanqu', 'H', '1', null, '4106');
INSERT INTO `system_area` VALUES ('1655', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '?????????', '410603', '3', 'shanchengqu', 'S', '1', null, '4106');
INSERT INTO `system_area` VALUES ('1656', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '?????????', '410611', '3', 'qibinqu', 'Q', '1', null, '4106');
INSERT INTO `system_area` VALUES ('1657', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.284877', '1', '??????', '410621', '3', 'junxian', 'J', '1', null, '4106');
INSERT INTO `system_area` VALUES ('1658', null, null, null, '2022-12-24 14:21:06.284877', '2022-12-24 14:21:06.285879', '1', '??????', '410622', '3', 'qixian', 'Q', '1', null, '4106');
INSERT INTO `system_area` VALUES ('1659', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '???????????????????????????', '410671', '3', 'hebijingjijishukaifaqu', 'H', '1', null, '4106');
INSERT INTO `system_area` VALUES ('1660', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '?????????', '4107', '2', 'xinxiangshi', 'X', '1', null, '41');
INSERT INTO `system_area` VALUES ('1661', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '?????????', '410702', '3', 'hongqiqu', 'H', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1662', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '?????????', '410703', '3', 'weibinqu', 'W', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1663', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '?????????', '410704', '3', 'fengquanqu', 'F', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1664', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '?????????', '410711', '3', 'muyequ', 'M', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1665', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '?????????', '410721', '3', 'xinxiangxian', 'X', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1666', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '?????????', '410724', '3', 'huojiaxian', 'H', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1667', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '?????????', '410725', '3', 'yuanyangxian', 'Y', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1668', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '?????????', '410726', '3', 'yanjinxian', 'Y', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1669', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '?????????', '410727', '3', 'fengqiuxian', 'F', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1670', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '?????????????????????????????????', '410771', '3', 'xinxianggaoxinjishuchanyekaifaqu', 'X', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1671', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '???????????????????????????', '410772', '3', 'xinxiangjingjijishukaifaqu', 'X', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1672', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '???????????????????????????????????????', '410773', '3', 'xinxiangshipingyuanchengxiangyitihuashifanqu', 'X', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1673', null, null, null, '2022-12-24 14:21:06.285879', '2022-12-24 14:21:06.285879', '1', '?????????', '410781', '3', 'weihuishi', 'W', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1674', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '?????????', '410782', '3', 'huixianshi', 'H', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1675', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '?????????', '410783', '3', 'zhangyuanshi', 'Z', '1', null, '4107');
INSERT INTO `system_area` VALUES ('1676', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '?????????', '4108', '2', 'jiaozuoshi', 'J', '1', null, '41');
INSERT INTO `system_area` VALUES ('1677', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '?????????', '410802', '3', 'jiefangqu', 'J', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1678', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '?????????', '410803', '3', 'zhongzhanqu', 'Z', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1679', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '?????????', '410804', '3', 'macunqu', 'M', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1680', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '?????????', '410811', '3', 'shanyangqu', 'S', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1681', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '?????????', '410821', '3', 'xiuwuxian', 'X', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1682', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '?????????', '410822', '3', 'boaixian', 'B', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1683', null, null, null, '2022-12-24 14:21:06.286882', '2022-12-24 14:21:06.286882', '1', '?????????', '410823', '3', 'wuzhixian', 'W', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1684', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '??????', '410825', '3', 'wenxian', 'W', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1685', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '??????????????????????????????', '410871', '3', 'jiaozuochengxiangyitihuashifanqu', 'J', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1686', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '?????????', '410882', '3', 'qinyangshi', 'Q', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1687', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '?????????', '410883', '3', 'mengzhoushi', 'M', '1', null, '4108');
INSERT INTO `system_area` VALUES ('1688', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '?????????', '4109', '2', 'puyangshi', 'P', '1', null, '41');
INSERT INTO `system_area` VALUES ('1689', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '?????????', '410902', '3', 'hualongqu', 'H', '1', null, '4109');
INSERT INTO `system_area` VALUES ('1690', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '?????????', '410922', '3', 'qingfengxian', 'Q', '1', null, '4109');
INSERT INTO `system_area` VALUES ('1691', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '?????????', '410923', '3', 'nanlexian', 'N', '1', null, '4109');
INSERT INTO `system_area` VALUES ('1692', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '??????', '410926', '3', 'fanxian', 'F', '1', null, '4109');
INSERT INTO `system_area` VALUES ('1693', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '?????????', '410927', '3', 'taiqianxian', 'T', '1', null, '4109');
INSERT INTO `system_area` VALUES ('1694', null, null, null, '2022-12-24 14:21:06.287880', '2022-12-24 14:21:06.287880', '1', '?????????', '410928', '3', 'puyangxian', 'P', '1', null, '4109');
INSERT INTO `system_area` VALUES ('1695', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '????????????????????????', '410971', '3', 'henanpuyanggongyeyuanqu', 'H', '1', null, '4109');
INSERT INTO `system_area` VALUES ('1696', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '???????????????????????????', '410972', '3', 'puyangjingjijishukaifaqu', 'P', '1', null, '4109');
INSERT INTO `system_area` VALUES ('1697', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '?????????', '4110', '2', 'xuchangshi', 'X', '1', null, '41');
INSERT INTO `system_area` VALUES ('1698', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '?????????', '411002', '3', 'weidouqu', 'W', '1', null, '4110');
INSERT INTO `system_area` VALUES ('1699', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '?????????', '411003', '3', 'jiananqu', 'J', '1', null, '4110');
INSERT INTO `system_area` VALUES ('1700', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '?????????', '411024', '3', 'yanlingxian', 'Y', '1', null, '4110');
INSERT INTO `system_area` VALUES ('1701', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '?????????', '411025', '3', 'xiangchengxian', 'X', '1', null, '4110');
INSERT INTO `system_area` VALUES ('1702', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '???????????????????????????', '411071', '3', 'xuchangjingjijishukaifaqu', 'X', '1', null, '4110');
INSERT INTO `system_area` VALUES ('1703', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '?????????', '411081', '3', 'yuzhoushi', 'Y', '1', null, '4110');
INSERT INTO `system_area` VALUES ('1704', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '?????????', '411082', '3', 'zhanggeshi', 'Z', '1', null, '4110');
INSERT INTO `system_area` VALUES ('1705', null, null, null, '2022-12-24 14:21:06.288879', '2022-12-24 14:21:06.288879', '1', '?????????', '4111', '2', 'taheshi', 'T', '1', null, '41');
INSERT INTO `system_area` VALUES ('1706', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '?????????', '411102', '3', 'yuanhuiqu', 'Y', '1', null, '4111');
INSERT INTO `system_area` VALUES ('1707', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '?????????', '411103', '3', 'yanchengqu', 'Y', '1', null, '4111');
INSERT INTO `system_area` VALUES ('1708', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '?????????', '411104', '3', 'zhaolingqu', 'Z', '1', null, '4111');
INSERT INTO `system_area` VALUES ('1709', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '?????????', '411121', '3', 'wuyangxian', 'W', '1', null, '4111');
INSERT INTO `system_area` VALUES ('1710', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '?????????', '411122', '3', 'linyingxian', 'L', '1', null, '4111');
INSERT INTO `system_area` VALUES ('1711', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '???????????????????????????', '411171', '3', 'tahejingjijishukaifaqu', 'T', '1', null, '4111');
INSERT INTO `system_area` VALUES ('1712', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '????????????', '4112', '2', 'sanmenxiashi', 'S', '1', null, '41');
INSERT INTO `system_area` VALUES ('1713', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '?????????', '411202', '3', 'hubinqu', 'H', '1', null, '4112');
INSERT INTO `system_area` VALUES ('1714', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '?????????', '411203', '3', 'shanzhouqu', 'S', '1', null, '4112');
INSERT INTO `system_area` VALUES ('1715', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '?????????', '411221', '3', 'mianchixian', 'M', '1', null, '4112');
INSERT INTO `system_area` VALUES ('1716', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '?????????', '411224', '3', 'lushixian', 'L', '1', null, '4112');
INSERT INTO `system_area` VALUES ('1717', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '??????????????????????????????', '411271', '3', 'henansanmenxiajingjikaifaqu', 'H', '1', null, '4112');
INSERT INTO `system_area` VALUES ('1718', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '?????????', '411281', '3', 'yimashi', 'Y', '1', null, '4112');
INSERT INTO `system_area` VALUES ('1719', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '?????????', '411282', '3', 'lingbaoshi', 'L', '1', null, '4112');
INSERT INTO `system_area` VALUES ('1720', null, null, null, '2022-12-24 14:21:06.289880', '2022-12-24 14:21:06.289880', '1', '?????????', '4113', '2', 'nanyangshi', 'N', '1', null, '41');
INSERT INTO `system_area` VALUES ('1721', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '?????????', '411302', '3', 'wanchengqu', 'W', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1722', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '?????????', '411303', '3', 'wolongqu', 'W', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1723', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '?????????', '411321', '3', 'nanzhaoxian', 'N', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1724', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '?????????', '411322', '3', 'fangchengxian', 'F', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1725', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '?????????', '411323', '3', 'xixiaxian', 'X', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1726', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '?????????', '411324', '3', 'zhenpingxian', 'Z', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1727', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '?????????', '411325', '3', 'neixiangxian', 'N', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1728', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '?????????', '411326', '3', 'xichuanxian', 'X', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1729', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '?????????', '411327', '3', 'sheqixian', 'S', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1730', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '?????????', '411328', '3', 'tanghexian', 'T', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1731', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '?????????', '411329', '3', 'xinyexian', 'X', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1732', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '?????????', '411330', '3', 'tongbaixian', 'T', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1733', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '?????????????????????????????????', '411371', '3', 'nanyanggaoxinjishuchanyekaifaqu', 'N', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1734', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '?????????????????????????????????', '411372', '3', 'nanyangshichengxiangyitihuashifanqu', 'N', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1735', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '?????????', '411381', '3', 'dengzhoushi', 'D', '1', null, '4113');
INSERT INTO `system_area` VALUES ('1736', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '?????????', '4114', '2', 'shangqiushi', 'S', '1', null, '41');
INSERT INTO `system_area` VALUES ('1737', null, null, null, '2022-12-24 14:21:06.290876', '2022-12-24 14:21:06.290876', '1', '?????????', '411402', '3', 'liangyuanqu', 'L', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1738', null, null, null, '2022-12-24 14:21:06.291876', '2022-12-24 14:21:06.291876', '1', '?????????', '411403', '3', 'suiyangqu', 'S', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1739', null, null, null, '2022-12-24 14:21:06.291876', '2022-12-24 14:21:06.291876', '1', '?????????', '411421', '3', 'minquanxian', 'M', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1740', null, null, null, '2022-12-24 14:21:06.292101', '2022-12-24 14:21:06.292101', '1', '??????', '411422', '3', 'suixian', 'S', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1741', null, null, null, '2022-12-24 14:21:06.292101', '2022-12-24 14:21:06.292101', '1', '?????????', '411423', '3', 'ninglingxian', 'N', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1742', null, null, null, '2022-12-24 14:21:06.292101', '2022-12-24 14:21:06.292101', '1', '?????????', '411424', '3', 'zhechengxian', 'Z', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1743', null, null, null, '2022-12-24 14:21:06.292101', '2022-12-24 14:21:06.292101', '1', '?????????', '411425', '3', 'yuchengxian', 'Y', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1744', null, null, null, '2022-12-24 14:21:06.292101', '2022-12-24 14:21:06.292101', '1', '?????????', '411426', '3', 'xiayixian', 'X', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1745', null, null, null, '2022-12-24 14:21:06.292622', '2022-12-24 14:21:06.292700', '1', '?????????????????????????????????', '411471', '3', 'yudongzonghewuliuchanyejujiqu', 'Y', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1746', null, null, null, '2022-12-24 14:21:06.292700', '2022-12-24 14:21:06.292700', '1', '???????????????????????????', '411472', '3', 'henanshangqiujingjikaifaqu', 'H', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1747', null, null, null, '2022-12-24 14:21:06.292700', '2022-12-24 14:21:06.292700', '1', '?????????', '411481', '3', 'yongchengshi', 'Y', '1', null, '4114');
INSERT INTO `system_area` VALUES ('1748', null, null, null, '2022-12-24 14:21:06.292700', '2022-12-24 14:21:06.292700', '1', '?????????', '4115', '2', 'xinyangshi', 'X', '1', null, '41');
INSERT INTO `system_area` VALUES ('1749', null, null, null, '2022-12-24 14:21:06.292700', '2022-12-24 14:21:06.292700', '1', '?????????', '411502', '3', 'shihequ', 'S', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1750', null, null, null, '2022-12-24 14:21:06.292700', '2022-12-24 14:21:06.292700', '1', '?????????', '411503', '3', 'pingqiaoqu', 'P', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1751', null, null, null, '2022-12-24 14:21:06.293284', '2022-12-24 14:21:06.293284', '1', '?????????', '411521', '3', 'luoshanxian', 'L', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1752', null, null, null, '2022-12-24 14:21:06.293284', '2022-12-24 14:21:06.293284', '1', '?????????', '411522', '3', 'guangshanxian', 'G', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1753', null, null, null, '2022-12-24 14:21:06.293284', '2022-12-24 14:21:06.293284', '1', '??????', '411523', '3', 'xinxian', 'X', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1754', null, null, null, '2022-12-24 14:21:06.293284', '2022-12-24 14:21:06.293284', '1', '?????????', '411524', '3', 'shangchengxian', 'S', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1755', null, null, null, '2022-12-24 14:21:06.293284', '2022-12-24 14:21:06.293284', '1', '?????????', '411525', '3', 'gushixian', 'G', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1756', null, null, null, '2022-12-24 14:21:06.293284', '2022-12-24 14:21:06.293804', '1', '?????????', '411526', '3', 'huangchuanxian', 'H', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1757', null, null, null, '2022-12-24 14:21:06.293850', '2022-12-24 14:21:06.293850', '1', '?????????', '411527', '3', 'huaibinxian', 'H', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1758', null, null, null, '2022-12-24 14:21:06.293850', '2022-12-24 14:21:06.293850', '1', '??????', '411528', '3', 'xixian', 'X', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1759', null, null, null, '2022-12-24 14:21:06.293850', '2022-12-24 14:21:06.293850', '1', '?????????????????????????????????', '411571', '3', 'xinyanggaoxinjishuchanyekaifaqu', 'X', '1', null, '4115');
INSERT INTO `system_area` VALUES ('1760', null, null, null, '2022-12-24 14:21:06.293850', '2022-12-24 14:21:06.293850', '1', '?????????', '4116', '2', 'zhoukoushi', 'Z', '1', null, '41');
INSERT INTO `system_area` VALUES ('1761', null, null, null, '2022-12-24 14:21:06.293850', '2022-12-24 14:21:06.293850', '1', '?????????', '411602', '3', 'chuanhuiqu', 'C', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1762', null, null, null, '2022-12-24 14:21:06.294409', '2022-12-24 14:21:06.294409', '1', '?????????', '411603', '3', 'huaiyangqu', 'H', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1763', null, null, null, '2022-12-24 14:21:06.294409', '2022-12-24 14:21:06.294409', '1', '?????????', '411621', '3', 'fugouxian', 'F', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1764', null, null, null, '2022-12-24 14:21:06.294409', '2022-12-24 14:21:06.294409', '1', '?????????', '411622', '3', 'xihuaxian', 'X', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1765', null, null, null, '2022-12-24 14:21:06.294409', '2022-12-24 14:21:06.294409', '1', '?????????', '411623', '3', 'shangshuixian', 'S', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1766', null, null, null, '2022-12-24 14:21:06.294409', '2022-12-24 14:21:06.294409', '1', '?????????', '411624', '3', 'shenqiuxian', 'S', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1767', null, null, null, '2022-12-24 14:21:06.294928', '2022-12-24 14:21:06.294928', '1', '?????????', '411625', '3', 'danchengxian', 'D', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1768', null, null, null, '2022-12-24 14:21:06.294966', '2022-12-24 14:21:06.294966', '1', '?????????', '411627', '3', 'taikangxian', 'T', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1769', null, null, null, '2022-12-24 14:21:06.294966', '2022-12-24 14:21:06.294966', '1', '?????????', '411628', '3', 'luyixian', 'L', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1770', null, null, null, '2022-12-24 14:21:06.294966', '2022-12-24 14:21:06.294966', '1', '???????????????????????????', '411671', '3', 'henanzhoukoujingjikaifaqu', 'H', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1771', null, null, null, '2022-12-24 14:21:06.294966', '2022-12-24 14:21:06.294966', '1', '?????????', '411681', '3', 'xiangchengshi', 'X', '1', null, '4116');
INSERT INTO `system_area` VALUES ('1772', null, null, null, '2022-12-24 14:21:06.294966', '2022-12-24 14:21:06.294966', '1', '????????????', '4117', '2', 'zhumadianshi', 'Z', '1', null, '41');
INSERT INTO `system_area` VALUES ('1773', null, null, null, '2022-12-24 14:21:06.295523', '2022-12-24 14:21:06.295523', '1', '?????????', '411702', '3', 'yichengqu', 'Y', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1774', null, null, null, '2022-12-24 14:21:06.295523', '2022-12-24 14:21:06.295523', '1', '?????????', '411721', '3', 'xipingxian', 'X', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1775', null, null, null, '2022-12-24 14:21:06.295523', '2022-12-24 14:21:06.295523', '1', '?????????', '411722', '3', 'shangcaixian', 'S', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1776', null, null, null, '2022-12-24 14:21:06.295523', '2022-12-24 14:21:06.295523', '1', '?????????', '411723', '3', 'pingyuxian', 'P', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1777', null, null, null, '2022-12-24 14:21:06.295523', '2022-12-24 14:21:06.295523', '1', '?????????', '411724', '3', 'zhengyangxian', 'Z', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1778', null, null, null, '2022-12-24 14:21:06.296039', '2022-12-24 14:21:06.296039', '1', '?????????', '411725', '3', 'queshanxian', 'Q', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1779', null, null, null, '2022-12-24 14:21:06.296134', '2022-12-24 14:21:06.296134', '1', '?????????', '411726', '3', 'biyangxian', 'B', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1780', null, null, null, '2022-12-24 14:21:06.296134', '2022-12-24 14:21:06.296134', '1', '?????????', '411727', '3', 'runanxian', 'R', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1781', null, null, null, '2022-12-24 14:21:06.296134', '2022-12-24 14:21:06.296134', '1', '?????????', '411728', '3', 'suipingxian', 'S', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1782', null, null, null, '2022-12-24 14:21:06.296134', '2022-12-24 14:21:06.296134', '1', '?????????', '411729', '3', 'xincaixian', 'X', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1783', null, null, null, '2022-12-24 14:21:06.296134', '2022-12-24 14:21:06.296134', '1', '??????????????????????????????', '411771', '3', 'henanzhumadianjingjikaifaqu', 'H', '1', null, '4117');
INSERT INTO `system_area` VALUES ('1784', null, null, null, '2022-12-24 14:21:06.296654', '2022-12-24 14:21:06.296691', '1', '???????????????????????????', '4190', '2', 'shengzhixiaxianjixingzhengquhua', 'S', '1', null, '41');
INSERT INTO `system_area` VALUES ('1785', null, null, null, '2022-12-24 14:21:06.296691', '2022-12-24 14:21:06.296691', '1', '?????????', '419001', '3', 'jiyuanshi', 'J', '1', null, '4190');
INSERT INTO `system_area` VALUES ('1786', null, null, null, '2022-12-24 14:21:06.296691', '2022-12-24 14:21:06.296691', '1', '?????????', '42', '1', 'hubeisheng', 'H', '1', null, null);
INSERT INTO `system_area` VALUES ('1787', null, null, null, '2022-12-24 14:21:06.296691', '2022-12-24 14:21:06.296691', '1', '?????????', '4201', '2', 'wuhanshi', 'W', '1', null, '42');
INSERT INTO `system_area` VALUES ('1788', null, null, null, '2022-12-24 14:21:06.296691', '2022-12-24 14:21:06.296691', '1', '?????????', '420102', '3', 'jianganqu', 'J', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1789', null, null, null, '2022-12-24 14:21:06.296691', '2022-12-24 14:21:06.296691', '1', '?????????', '420103', '3', 'jianghanqu', 'J', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1790', null, null, null, '2022-12-24 14:21:06.297249', '2022-12-24 14:21:06.297249', '1', '?????????', '420104', '3', 'qiaokouqu', 'Q', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1791', null, null, null, '2022-12-24 14:21:06.297249', '2022-12-24 14:21:06.297249', '1', '?????????', '420105', '3', 'hanyangqu', 'H', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1792', null, null, null, '2022-12-24 14:21:06.297249', '2022-12-24 14:21:06.297249', '1', '?????????', '420106', '3', 'wuchangqu', 'W', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1793', null, null, null, '2022-12-24 14:21:06.297249', '2022-12-24 14:21:06.297249', '1', '?????????', '420107', '3', 'qingshanqu', 'Q', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1794', null, null, null, '2022-12-24 14:21:06.297249', '2022-12-24 14:21:06.297249', '1', '?????????', '420111', '3', 'hongshanqu', 'H', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1795', null, null, null, '2022-12-24 14:21:06.297807', '2022-12-24 14:21:06.297807', '1', '????????????', '420112', '3', 'dongxihuqu', 'D', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1796', null, null, null, '2022-12-24 14:21:06.297807', '2022-12-24 14:21:06.297807', '1', '?????????', '420113', '3', 'hannanqu', 'H', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1797', null, null, null, '2022-12-24 14:21:06.297807', '2022-12-24 14:21:06.297807', '1', '?????????', '420114', '3', 'caidianqu', 'C', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1798', null, null, null, '2022-12-24 14:21:06.297807', '2022-12-24 14:21:06.297807', '1', '?????????', '420115', '3', 'jiangxiaqu', 'J', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1799', null, null, null, '2022-12-24 14:21:06.297807', '2022-12-24 14:21:06.297807', '1', '?????????', '420116', '3', 'huangpiqu', 'H', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1800', null, null, null, '2022-12-24 14:21:06.297807', '2022-12-24 14:21:06.298327', '1', '?????????', '420117', '3', 'xinzhouqu', 'X', '1', null, '4201');
INSERT INTO `system_area` VALUES ('1801', null, null, null, '2022-12-24 14:21:06.298366', '2022-12-24 14:21:06.298366', '1', '?????????', '4202', '2', 'huangshishi', 'H', '1', null, '42');
INSERT INTO `system_area` VALUES ('1802', null, null, null, '2022-12-24 14:21:06.298366', '2022-12-24 14:21:06.298366', '1', '????????????', '420202', '3', 'huangshigangqu', 'H', '1', null, '4202');
INSERT INTO `system_area` VALUES ('1803', null, null, null, '2022-12-24 14:21:06.298366', '2022-12-24 14:21:06.298366', '1', '????????????', '420203', '3', 'xisaishanqu', 'X', '1', null, '4202');
INSERT INTO `system_area` VALUES ('1804', null, null, null, '2022-12-24 14:21:06.298366', '2022-12-24 14:21:06.298366', '1', '?????????', '420204', '3', 'xialuqu', 'X', '1', null, '4202');
INSERT INTO `system_area` VALUES ('1805', null, null, null, '2022-12-24 14:21:06.298366', '2022-12-24 14:21:06.298366', '1', '?????????', '420205', '3', 'tieshanqu', 'T', '1', null, '4202');
INSERT INTO `system_area` VALUES ('1806', null, null, null, '2022-12-24 14:21:06.298890', '2022-12-24 14:21:06.298890', '1', '?????????', '420222', '3', 'yangxinxian', 'Y', '1', null, '4202');
INSERT INTO `system_area` VALUES ('1807', null, null, null, '2022-12-24 14:21:06.299010', '2022-12-24 14:21:06.299010', '1', '?????????', '420281', '3', 'dayeshi', 'D', '1', null, '4202');
INSERT INTO `system_area` VALUES ('1808', null, null, null, '2022-12-24 14:21:06.299010', '2022-12-24 14:21:06.299010', '1', '?????????', '4203', '2', 'shiyanshi', 'S', '1', null, '42');
INSERT INTO `system_area` VALUES ('1809', null, null, null, '2022-12-24 14:21:06.299010', '2022-12-24 14:21:06.299010', '1', '?????????', '420302', '3', 'maojianqu', 'M', '1', null, '4203');
INSERT INTO `system_area` VALUES ('1810', null, null, null, '2022-12-24 14:21:06.299010', '2022-12-24 14:21:06.299010', '1', '?????????', '420303', '3', 'zhangwanqu', 'Z', '1', null, '4203');
INSERT INTO `system_area` VALUES ('1811', null, null, null, '2022-12-24 14:21:06.299010', '2022-12-24 14:21:06.299010', '1', '?????????', '420304', '3', 'yunyangqu', 'Y', '1', null, '4203');
INSERT INTO `system_area` VALUES ('1812', null, null, null, '2022-12-24 14:21:06.299010', '2022-12-24 14:21:06.299010', '1', '?????????', '420322', '3', 'yunxixian', 'Y', '1', null, '4203');
INSERT INTO `system_area` VALUES ('1813', null, null, null, '2022-12-24 14:21:06.299613', '2022-12-24 14:21:06.299613', '1', '?????????', '420323', '3', 'zhushanxian', 'Z', '1', null, '4203');
INSERT INTO `system_area` VALUES ('1814', null, null, null, '2022-12-24 14:21:06.299613', '2022-12-24 14:21:06.299613', '1', '?????????', '420324', '3', 'zhuxixian', 'Z', '1', null, '4203');
INSERT INTO `system_area` VALUES ('1815', null, null, null, '2022-12-24 14:21:06.299613', '2022-12-24 14:21:06.299613', '1', '??????', '420325', '3', 'fangxian', 'F', '1', null, '4203');
INSERT INTO `system_area` VALUES ('1816', null, null, null, '2022-12-24 14:21:06.299613', '2022-12-24 14:21:06.299613', '1', '????????????', '420381', '3', 'danjiangkoushi', 'D', '1', null, '4203');
INSERT INTO `system_area` VALUES ('1817', null, null, null, '2022-12-24 14:21:06.299613', '2022-12-24 14:21:06.299613', '1', '?????????', '4205', '2', 'yichangshi', 'Y', '1', null, '42');
INSERT INTO `system_area` VALUES ('1818', null, null, null, '2022-12-24 14:21:06.299613', '2022-12-24 14:21:06.300134', '1', '?????????', '420502', '3', 'xilingqu', 'X', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1819', null, null, null, '2022-12-24 14:21:06.300209', '2022-12-24 14:21:06.300209', '1', '????????????', '420503', '3', 'wujiagangqu', 'W', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1820', null, null, null, '2022-12-24 14:21:06.300209', '2022-12-24 14:21:06.300209', '1', '?????????', '420504', '3', 'dianjunqu', 'D', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1821', null, null, null, '2022-12-24 14:21:06.300209', '2022-12-24 14:21:06.300209', '1', '?????????', '420505', '3', 'xiaotingqu', 'X', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1822', null, null, null, '2022-12-24 14:21:06.300209', '2022-12-24 14:21:06.300209', '1', '?????????', '420506', '3', 'yilingqu', 'Y', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1823', null, null, null, '2022-12-24 14:21:06.300209', '2022-12-24 14:21:06.300209', '1', '?????????', '420525', '3', 'yuananxian', 'Y', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1824', null, null, null, '2022-12-24 14:21:06.300733', '2022-12-24 14:21:06.300733', '1', '?????????', '420526', '3', 'xingshanxian', 'X', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1825', null, null, null, '2022-12-24 14:21:06.300775', '2022-12-24 14:21:06.300775', '1', '?????????', '420527', '3', 'ziguixian', 'Z', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1826', null, null, null, '2022-12-24 14:21:06.300775', '2022-12-24 14:21:06.300775', '1', '????????????????????????', '420528', '3', 'zhangyangtujiazuzizhixian', 'Z', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1827', null, null, null, '2022-12-24 14:21:06.300775', '2022-12-24 14:21:06.300775', '1', '????????????????????????', '420529', '3', 'wufengtujiazuzizhixian', 'W', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1828', null, null, null, '2022-12-24 14:21:06.300775', '2022-12-24 14:21:06.300775', '1', '?????????', '420581', '3', 'yidushi', 'Y', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1829', null, null, null, '2022-12-24 14:21:06.300775', '2022-12-24 14:21:06.300775', '1', '?????????', '420582', '3', 'dangyangshi', 'D', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1830', null, null, null, '2022-12-24 14:21:06.301362', '2022-12-24 14:21:06.301362', '1', '?????????', '420583', '3', 'zhijiangshi', 'Z', '1', null, '4205');
INSERT INTO `system_area` VALUES ('1831', null, null, null, '2022-12-24 14:21:06.301362', '2022-12-24 14:21:06.301362', '1', '?????????', '4206', '2', 'xiangyangshi', 'X', '1', null, '42');
INSERT INTO `system_area` VALUES ('1832', null, null, null, '2022-12-24 14:21:06.301362', '2022-12-24 14:21:06.301362', '1', '?????????', '420602', '3', 'xiangchengqu', 'X', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1833', null, null, null, '2022-12-24 14:21:06.301362', '2022-12-24 14:21:06.301362', '1', '?????????', '420606', '3', 'fanchengqu', 'F', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1834', null, null, null, '2022-12-24 14:21:06.301362', '2022-12-24 14:21:06.301362', '1', '?????????', '420607', '3', 'xiangzhouqu', 'X', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1835', null, null, null, '2022-12-24 14:21:06.301362', '2022-12-24 14:21:06.301888', '1', '?????????', '420624', '3', 'nanzhangxian', 'N', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1836', null, null, null, '2022-12-24 14:21:06.301943', '2022-12-24 14:21:06.301943', '1', '?????????', '420625', '3', 'guchengxian', 'G', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1837', null, null, null, '2022-12-24 14:21:06.301943', '2022-12-24 14:21:06.301943', '1', '?????????', '420626', '3', 'baokangxian', 'B', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1838', null, null, null, '2022-12-24 14:21:06.301943', '2022-12-24 14:21:06.301943', '1', '????????????', '420682', '3', 'laohekoushi', 'L', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1839', null, null, null, '2022-12-24 14:21:06.301943', '2022-12-24 14:21:06.301943', '1', '?????????', '420683', '3', 'zaoyangshi', 'Z', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1840', null, null, null, '2022-12-24 14:21:06.301943', '2022-12-24 14:21:06.301943', '1', '?????????', '420684', '3', 'yichengshi', 'Y', '1', null, '4206');
INSERT INTO `system_area` VALUES ('1841', null, null, null, '2022-12-24 14:21:06.302461', '2022-12-24 14:21:06.302461', '1', '?????????', '4207', '2', 'ezhoushi', 'E', '1', null, '42');
INSERT INTO `system_area` VALUES ('1842', null, null, null, '2022-12-24 14:21:06.302510', '2022-12-24 14:21:06.302510', '1', '????????????', '420702', '3', 'liangzihuqu', 'L', '1', null, '4207');
INSERT INTO `system_area` VALUES ('1843', null, null, null, '2022-12-24 14:21:06.302510', '2022-12-24 14:21:06.302510', '1', '?????????', '420703', '3', 'huarongqu', 'H', '1', null, '4207');
INSERT INTO `system_area` VALUES ('1844', null, null, null, '2022-12-24 14:21:06.302510', '2022-12-24 14:21:06.302510', '1', '?????????', '420704', '3', 'echengqu', 'E', '1', null, '4207');
INSERT INTO `system_area` VALUES ('1845', null, null, null, '2022-12-24 14:21:06.302510', '2022-12-24 14:21:06.302510', '1', '?????????', '4208', '2', 'jingmenshi', 'J', '1', null, '42');
INSERT INTO `system_area` VALUES ('1846', null, null, null, '2022-12-24 14:21:06.302510', '2022-12-24 14:21:06.302510', '1', '?????????', '420802', '3', 'dongbaoqu', 'D', '1', null, '4208');
INSERT INTO `system_area` VALUES ('1847', null, null, null, '2022-12-24 14:21:06.303038', '2022-12-24 14:21:06.303038', '1', '?????????', '420804', '3', 'duodaoqu', 'D', '1', null, '4208');
INSERT INTO `system_area` VALUES ('1848', null, null, null, '2022-12-24 14:21:06.303124', '2022-12-24 14:21:06.303124', '1', '?????????', '420822', '3', 'shayangxian', 'S', '1', null, '4208');
INSERT INTO `system_area` VALUES ('1849', null, null, null, '2022-12-24 14:21:06.303124', '2022-12-24 14:21:06.303124', '1', '?????????', '420881', '3', 'zhongxiangshi', 'Z', '1', null, '4208');
INSERT INTO `system_area` VALUES ('1850', null, null, null, '2022-12-24 14:21:06.303124', '2022-12-24 14:21:06.303124', '1', '?????????', '420882', '3', 'jingshanshi', 'J', '1', null, '4208');
INSERT INTO `system_area` VALUES ('1851', null, null, null, '2022-12-24 14:21:06.303124', '2022-12-24 14:21:06.303124', '1', '?????????', '4209', '2', 'xiaoganshi', 'X', '1', null, '42');
INSERT INTO `system_area` VALUES ('1852', null, null, null, '2022-12-24 14:21:06.303124', '2022-12-24 14:21:06.303124', '1', '?????????', '420902', '3', 'xiaonanqu', 'X', '1', null, '4209');
INSERT INTO `system_area` VALUES ('1853', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '?????????', '420921', '3', 'xiaochangxian', 'X', '1', null, '4209');
INSERT INTO `system_area` VALUES ('1854', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '?????????', '420922', '3', 'dawuxian', 'D', '1', null, '4209');
INSERT INTO `system_area` VALUES ('1855', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '?????????', '420923', '3', 'yunmengxian', 'Y', '1', null, '4209');
INSERT INTO `system_area` VALUES ('1856', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '?????????', '420981', '3', 'yingchengshi', 'Y', '1', null, '4209');
INSERT INTO `system_area` VALUES ('1857', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '?????????', '420982', '3', 'anlushi', 'A', '1', null, '4209');
INSERT INTO `system_area` VALUES ('1858', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '?????????', '420984', '3', 'hanchuanshi', 'H', '1', null, '4209');
INSERT INTO `system_area` VALUES ('1859', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '?????????', '4210', '2', 'jingzhoushi', 'J', '1', null, '42');
INSERT INTO `system_area` VALUES ('1860', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '?????????', '421002', '3', 'shashiqu', 'S', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1861', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '?????????', '421003', '3', 'jingzhouqu', 'J', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1862', null, null, null, '2022-12-24 14:21:06.303650', '2022-12-24 14:21:06.303650', '1', '?????????', '421022', '3', 'gonganxian', 'G', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1863', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '?????????', '421023', '3', 'jianlixian', 'J', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1864', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '?????????', '421024', '3', 'jianglingxian', 'J', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1865', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '???????????????????????????', '421071', '3', 'jingzhoujingjijishukaifaqu', 'J', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1866', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '?????????', '421081', '3', 'shishoushi', 'S', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1867', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '?????????', '421083', '3', 'honghushi', 'H', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1868', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '?????????', '421087', '3', 'songzishi', 'S', '1', null, '4210');
INSERT INTO `system_area` VALUES ('1869', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '?????????', '4211', '2', 'huanggangshi', 'H', '1', null, '42');
INSERT INTO `system_area` VALUES ('1870', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '?????????', '421102', '3', 'huangzhouqu', 'H', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1871', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '?????????', '421121', '3', 'tuanfengxian', 'T', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1872', null, null, null, '2022-12-24 14:21:06.304670', '2022-12-24 14:21:06.304670', '1', '?????????', '421122', '3', 'honganxian', 'H', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1873', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '?????????', '421123', '3', 'luotianxian', 'L', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1874', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '?????????', '421124', '3', 'yingshanxian', 'Y', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1875', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '?????????', '421125', '3', 'xishuixian', 'X', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1876', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '?????????', '421126', '3', 'qichunxian', 'Q', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1877', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '?????????', '421127', '3', 'huangmeixian', 'H', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1878', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '??????????????????', '421171', '3', 'longganhuguanliqu', 'L', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1879', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '?????????', '421181', '3', 'machengshi', 'M', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1880', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '?????????', '421182', '3', 'wuxueshi', 'W', '1', null, '4211');
INSERT INTO `system_area` VALUES ('1881', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '?????????', '4212', '2', 'xianningshi', 'X', '1', null, '42');
INSERT INTO `system_area` VALUES ('1882', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '?????????', '421202', '3', 'xiananqu', 'X', '1', null, '4212');
INSERT INTO `system_area` VALUES ('1883', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '?????????', '421221', '3', 'jiayuxian', 'J', '1', null, '4212');
INSERT INTO `system_area` VALUES ('1884', null, null, null, '2022-12-24 14:21:06.305672', '2022-12-24 14:21:06.305672', '1', '?????????', '421222', '3', 'tongchengxian', 'T', '1', null, '4212');
INSERT INTO `system_area` VALUES ('1885', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '?????????', '421223', '3', 'chongyangxian', 'C', '1', null, '4212');
INSERT INTO `system_area` VALUES ('1886', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '?????????', '421224', '3', 'tongshanxian', 'T', '1', null, '4212');
INSERT INTO `system_area` VALUES ('1887', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '?????????', '421281', '3', 'chibishi', 'C', '1', null, '4212');
INSERT INTO `system_area` VALUES ('1888', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '?????????', '4213', '2', 'suizhoushi', 'S', '1', null, '42');
INSERT INTO `system_area` VALUES ('1889', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '?????????', '421303', '3', 'cengdouqu', 'C', '1', null, '4213');
INSERT INTO `system_area` VALUES ('1890', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '??????', '421321', '3', 'suixian', 'S', '1', null, '4213');
INSERT INTO `system_area` VALUES ('1891', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '?????????', '421381', '3', 'guangshuishi', 'G', '1', null, '4213');
INSERT INTO `system_area` VALUES ('1892', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '??????????????????????????????', '4228', '2', 'enshitujiazumiaozuzizhizhou', 'E', '1', null, '42');
INSERT INTO `system_area` VALUES ('1893', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '?????????', '422801', '3', 'enshishi', 'E', '1', null, '4228');
INSERT INTO `system_area` VALUES ('1894', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '?????????', '422802', '3', 'lichuanshi', 'L', '1', null, '4228');
INSERT INTO `system_area` VALUES ('1895', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '?????????', '422822', '3', 'jianshixian', 'J', '1', null, '4228');
INSERT INTO `system_area` VALUES ('1896', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.306676', '1', '?????????', '422823', '3', 'badongxian', 'B', '1', null, '4228');
INSERT INTO `system_area` VALUES ('1897', null, null, null, '2022-12-24 14:21:06.306676', '2022-12-24 14:21:06.307676', '1', '?????????', '422825', '3', 'xuanenxian', 'X', '1', null, '4228');
INSERT INTO `system_area` VALUES ('1898', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '?????????', '422826', '3', 'xianfengxian', 'X', '1', null, '4228');
INSERT INTO `system_area` VALUES ('1899', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '?????????', '422827', '3', 'laifengxian', 'L', '1', null, '4228');
INSERT INTO `system_area` VALUES ('1900', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '?????????', '422828', '3', 'hefengxian', 'H', '1', null, '4228');
INSERT INTO `system_area` VALUES ('1901', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '???????????????????????????', '4290', '2', 'shengzhixiaxianjixingzhengquhua', 'S', '1', null, '42');
INSERT INTO `system_area` VALUES ('1902', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '?????????', '429004', '3', 'xiantaoshi', 'X', '1', null, '4290');
INSERT INTO `system_area` VALUES ('1903', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '?????????', '429005', '3', 'qianjiangshi', 'Q', '1', null, '4290');
INSERT INTO `system_area` VALUES ('1904', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '?????????', '429006', '3', 'tianmenshi', 'T', '1', null, '4290');
INSERT INTO `system_area` VALUES ('1905', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '???????????????', '429021', '3', 'shennongjialinqu', 'S', '1', null, '4290');
INSERT INTO `system_area` VALUES ('1906', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '?????????', '43', '1', 'hunansheng', 'H', '1', null, null);
INSERT INTO `system_area` VALUES ('1907', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '?????????', '4301', '2', 'changshashi', 'C', '1', null, '43');
INSERT INTO `system_area` VALUES ('1908', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '?????????', '430102', '3', 'furongqu', 'F', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1909', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '?????????', '430103', '3', 'tianxinqu', 'T', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1910', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '?????????', '430104', '3', 'yueluqu', 'Y', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1911', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '?????????', '430105', '3', 'kaifuqu', 'K', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1912', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '?????????', '430111', '3', 'yuhuaqu', 'Y', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1913', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.307676', '1', '?????????', '430112', '3', 'wangchengqu', 'W', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1914', null, null, null, '2022-12-24 14:21:06.307676', '2022-12-24 14:21:06.308671', '1', '?????????', '430121', '3', 'changshaxian', 'C', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1915', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '?????????', '430181', '3', 'liuyangshi', 'L', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1916', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '?????????', '430182', '3', 'ningxiangshi', 'N', '1', null, '4301');
INSERT INTO `system_area` VALUES ('1917', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '?????????', '4302', '2', 'zhuzhoushi', 'Z', '1', null, '43');
INSERT INTO `system_area` VALUES ('1918', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '?????????', '430202', '3', 'hetangqu', 'H', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1919', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '?????????', '430203', '3', 'lusongqu', 'L', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1920', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '?????????', '430204', '3', 'shifengqu', 'S', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1921', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '?????????', '430211', '3', 'tianyuanqu', 'T', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1922', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '?????????', '430212', '3', 'lukouqu', 'L', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1923', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '??????', '430223', '3', 'youxian', 'Y', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1924', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '?????????', '430224', '3', 'chalingxian', 'C', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1925', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '?????????', '430225', '3', 'yanlingxian', 'Y', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1926', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '???????????????', '430271', '3', 'yunlongshifanqu', 'Y', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1927', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '?????????', '430281', '3', 'lilingshi', 'L', '1', null, '4302');
INSERT INTO `system_area` VALUES ('1928', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '?????????', '4303', '2', 'xiangtanshi', 'X', '1', null, '43');
INSERT INTO `system_area` VALUES ('1929', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '?????????', '430302', '3', 'yuhuqu', 'Y', '1', null, '4303');
INSERT INTO `system_area` VALUES ('1930', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '?????????', '430304', '3', 'yuetangqu', 'Y', '1', null, '4303');
INSERT INTO `system_area` VALUES ('1931', null, null, null, '2022-12-24 14:21:06.308671', '2022-12-24 14:21:06.308671', '1', '?????????', '430321', '3', 'xiangtanxian', 'X', '1', null, '4303');
INSERT INTO `system_area` VALUES ('1932', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '????????????????????????????????????', '430371', '3', 'hunanxiangtangaoxinjishuchanyeyuanqu', 'H', '1', null, '4303');
INSERT INTO `system_area` VALUES ('1933', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '?????????????????????', '430372', '3', 'xiangtanzhaoshanshifanqu', 'X', '1', null, '4303');
INSERT INTO `system_area` VALUES ('1934', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '?????????????????????', '430373', '3', 'xiangtanjiuhuashifanqu', 'X', '1', null, '4303');
INSERT INTO `system_area` VALUES ('1935', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '?????????', '430381', '3', 'xiangxiangshi', 'X', '1', null, '4303');
INSERT INTO `system_area` VALUES ('1936', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '?????????', '430382', '3', 'shaoshanshi', 'S', '1', null, '4303');
INSERT INTO `system_area` VALUES ('1937', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '?????????', '4304', '2', 'hengyangshi', 'H', '1', null, '43');
INSERT INTO `system_area` VALUES ('1938', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '?????????', '430405', '3', 'zhuhuiqu', 'Z', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1939', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '?????????', '430406', '3', 'yanfengqu', 'Y', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1940', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '?????????', '430407', '3', 'shiguqu', 'S', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1941', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '?????????', '430408', '3', 'zhengxiangqu', 'Z', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1942', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '?????????', '430412', '3', 'nanyuequ', 'N', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1943', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '?????????', '430421', '3', 'hengyangxian', 'H', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1944', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '?????????', '430422', '3', 'hengnanxian', 'H', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1945', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '?????????', '430423', '3', 'hengshanxian', 'H', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1946', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '?????????', '430424', '3', 'hengdongxian', 'H', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1947', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '?????????', '430426', '3', 'qidongxian', 'Q', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1948', null, null, null, '2022-12-24 14:21:06.309670', '2022-12-24 14:21:06.309670', '1', '?????????????????????', '430471', '3', 'hengyangzonghebaoshuiqu', 'H', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1949', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '????????????????????????????????????', '430472', '3', 'hunanhengyanggaoxinjishuchanyeyuanqu', 'H', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1950', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '?????????????????????????????????', '430473', '3', 'hunanhengyangsongmujingjikaifaqu', 'H', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1951', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '?????????', '430481', '3', 'leiyangshi', 'L', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1952', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '?????????', '430482', '3', 'changningshi', 'C', '1', null, '4304');
INSERT INTO `system_area` VALUES ('1953', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '?????????', '4305', '2', 'shaoyangshi', 'S', '1', null, '43');
INSERT INTO `system_area` VALUES ('1954', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '?????????', '430502', '3', 'shuangqingqu', 'S', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1955', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '?????????', '430503', '3', 'daxiangqu', 'D', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1956', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '?????????', '430511', '3', 'beitaqu', 'B', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1957', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '?????????', '430522', '3', 'xinshaoxian', 'X', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1958', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '?????????', '430523', '3', 'shaoyangxian', 'S', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1959', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '?????????', '430524', '3', 'longhuixian', 'L', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1960', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '?????????', '430525', '3', 'dongkouxian', 'D', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1961', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '?????????', '430527', '3', 'suiningxian', 'S', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1962', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '?????????', '430528', '3', 'xinningxian', 'X', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1963', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '?????????????????????', '430529', '3', 'chengbumiaozuzizhixian', 'C', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1964', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '?????????', '430581', '3', 'wugangshi', 'W', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1965', null, null, null, '2022-12-24 14:21:06.310670', '2022-12-24 14:21:06.310670', '1', '?????????', '430582', '3', 'shaodongshi', 'S', '1', null, '4305');
INSERT INTO `system_area` VALUES ('1966', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '?????????', '4306', '2', 'yueyangshi', 'Y', '1', null, '43');
INSERT INTO `system_area` VALUES ('1967', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '????????????', '430602', '3', 'yueyanglouqu', 'Y', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1968', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '?????????', '430603', '3', 'yunxiqu', 'Y', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1969', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '?????????', '430611', '3', 'junshanqu', 'J', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1970', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '?????????', '430621', '3', 'yueyangxian', 'Y', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1971', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '?????????', '430623', '3', 'huarongxian', 'H', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1972', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '?????????', '430624', '3', 'xiangyinxian', 'X', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1973', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '?????????', '430626', '3', 'pingjiangxian', 'P', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1974', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '????????????????????????', '430671', '3', 'yueyangshiquyuanguanliqu', 'Y', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1975', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '?????????', '430681', '3', 'miluoshi', 'M', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1976', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '?????????', '430682', '3', 'linxiangshi', 'L', '1', null, '4306');
INSERT INTO `system_area` VALUES ('1977', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '?????????', '4307', '2', 'changdeshi', 'C', '1', null, '43');
INSERT INTO `system_area` VALUES ('1978', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '?????????', '430702', '3', 'wulingqu', 'W', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1979', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '?????????', '430703', '3', 'dingchengqu', 'D', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1980', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '?????????', '430721', '3', 'anxiangxian', 'A', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1981', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '?????????', '430722', '3', 'hanshouxian', 'H', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1982', null, null, null, '2022-12-24 14:21:06.311670', '2022-12-24 14:21:06.311670', '1', '??????', '430723', '3', 'lixian', 'L', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1983', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '?????????', '430724', '3', 'linlixian', 'L', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1984', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '?????????', '430725', '3', 'taoyuanxian', 'T', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1985', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '?????????', '430726', '3', 'shimenxian', 'S', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1986', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '???????????????????????????', '430771', '3', 'changdeshixidongtingguanliqu', 'C', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1987', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '?????????', '430781', '3', 'jinshishi', 'J', '1', null, '4307');
INSERT INTO `system_area` VALUES ('1988', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '????????????', '4308', '2', 'zhangjiajieshi', 'Z', '1', null, '43');
INSERT INTO `system_area` VALUES ('1989', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '?????????', '430802', '3', 'yongdingqu', 'Y', '1', null, '4308');
INSERT INTO `system_area` VALUES ('1990', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '????????????', '430811', '3', 'wulingyuanqu', 'W', '1', null, '4308');
INSERT INTO `system_area` VALUES ('1991', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '?????????', '430821', '3', 'cilixian', 'C', '1', null, '4308');
INSERT INTO `system_area` VALUES ('1992', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '?????????', '430822', '3', 'sangzhixian', 'S', '1', null, '4308');
INSERT INTO `system_area` VALUES ('1993', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '?????????', '4309', '2', 'yiyangshi', 'Y', '1', null, '43');
INSERT INTO `system_area` VALUES ('1994', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '?????????', '430902', '3', 'ziyangqu', 'Z', '1', null, '4309');
INSERT INTO `system_area` VALUES ('1995', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '?????????', '430903', '3', 'heshanqu', 'H', '1', null, '4309');
INSERT INTO `system_area` VALUES ('1996', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '??????', '430921', '3', 'nanxian', 'N', '1', null, '4309');
INSERT INTO `system_area` VALUES ('1997', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '?????????', '430922', '3', 'taojiangxian', 'T', '1', null, '4309');
INSERT INTO `system_area` VALUES ('1998', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '?????????', '430923', '3', 'anhuaxian', 'A', '1', null, '4309');
INSERT INTO `system_area` VALUES ('1999', null, null, null, '2022-12-24 14:21:06.312670', '2022-12-24 14:21:06.312670', '1', '???????????????????????????', '430971', '3', 'yiyangshidatonghuguanliqu', 'Y', '1', null, '4309');
INSERT INTO `system_area` VALUES ('2000', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '????????????????????????????????????', '430972', '3', 'hunanyiyanggaoxinjishuchanyeyuanqu', 'H', '1', null, '4309');
INSERT INTO `system_area` VALUES ('2001', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '?????????', '430981', '3', 'yuanjiangshi', 'Y', '1', null, '4309');
INSERT INTO `system_area` VALUES ('2002', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '?????????', '4310', '2', 'chenzhoushi', 'C', '1', null, '43');
INSERT INTO `system_area` VALUES ('2003', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '?????????', '431002', '3', 'beihuqu', 'B', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2004', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '?????????', '431003', '3', 'suxianqu', 'S', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2005', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '?????????', '431021', '3', 'guiyangxian', 'G', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2006', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '?????????', '431022', '3', 'yizhangxian', 'Y', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2007', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '?????????', '431023', '3', 'yongxingxian', 'Y', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2008', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '?????????', '431024', '3', 'jiahexian', 'J', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2009', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '?????????', '431025', '3', 'linwuxian', 'L', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2010', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '?????????', '431026', '3', 'ruchengxian', 'R', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2011', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '?????????', '431027', '3', 'guidongxian', 'G', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2012', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '?????????', '431028', '3', 'anrenxian', 'A', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2013', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '?????????', '431081', '3', 'zixingshi', 'Z', '1', null, '4310');
INSERT INTO `system_area` VALUES ('2014', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '?????????', '4311', '2', 'yongzhoushi', 'Y', '1', null, '43');
INSERT INTO `system_area` VALUES ('2015', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '?????????', '431102', '3', 'linglingqu', 'L', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2016', null, null, null, '2022-12-24 14:21:06.313670', '2022-12-24 14:21:06.313670', '1', '????????????', '431103', '3', 'lengshuitanqu', 'L', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2017', null, null, null, '2022-12-24 14:21:06.314670', '2022-12-24 14:21:06.314670', '1', '?????????', '431121', '3', 'qiyangxian', 'Q', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2018', null, null, null, '2022-12-24 14:21:06.314670', '2022-12-24 14:21:06.314670', '1', '?????????', '431122', '3', 'donganxian', 'D', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2019', null, null, null, '2022-12-24 14:21:06.314670', '2022-12-24 14:21:06.314670', '1', '?????????', '431123', '3', 'shuangpaixian', 'S', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2020', null, null, null, '2022-12-24 14:21:06.314670', '2022-12-24 14:21:06.314670', '1', '??????', '431124', '3', 'daoxian', 'D', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2021', null, null, null, '2022-12-24 14:21:06.314670', '2022-12-24 14:21:06.314670', '1', '?????????', '431125', '3', 'jiangyongxian', 'J', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2022', null, null, null, '2022-12-24 14:21:06.315676', '2022-12-24 14:21:06.315676', '1', '?????????', '431126', '3', 'ningyuanxian', 'N', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2023', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '?????????', '431127', '3', 'lanshanxian', 'L', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2024', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '?????????', '431128', '3', 'xintianxian', 'X', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2025', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '?????????????????????', '431129', '3', 'jianghuayaozuzizhixian', 'J', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2026', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '???????????????????????????', '431171', '3', 'yongzhoujingjijishukaifaqu', 'Y', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2027', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '????????????????????????', '431172', '3', 'yongzhoushijindongguanliqu', 'Y', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2028', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '???????????????????????????', '431173', '3', 'yongzhoushihuilongweiguanliqu', 'Y', '1', null, '4311');
INSERT INTO `system_area` VALUES ('2029', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '?????????', '4312', '2', 'huaihuashi', 'H', '1', null, '43');
INSERT INTO `system_area` VALUES ('2030', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '?????????', '431202', '3', 'hechengqu', 'H', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2031', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '?????????', '431221', '3', 'zhongfangxian', 'Z', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2032', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '?????????', '431222', '3', 'yuanlingxian', 'Y', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2033', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '?????????', '431223', '3', 'chenxixian', 'C', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2034', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '?????????', '431224', '3', 'xupuxian', 'X', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2035', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '?????????', '431225', '3', 'huitongxian', 'H', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2036', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '?????????????????????', '431226', '3', 'mayangmiaozuzizhixian', 'M', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2037', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '?????????????????????', '431227', '3', 'xinhuangdongzuzizhixian', 'X', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2038', null, null, null, '2022-12-24 14:21:06.316682', '2022-12-24 14:21:06.316682', '1', '?????????????????????', '431228', '3', 'zhijiangdongzuzizhixian', 'Z', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2039', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '???????????????????????????', '431229', '3', 'jingzhoumiaozudongzuzizhixian', 'J', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2040', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '?????????????????????', '431230', '3', 'tongdaodongzuzizhixian', 'T', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2041', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '????????????????????????', '431271', '3', 'huaihuashihongjiangguanliqu', 'H', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2042', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '?????????', '431281', '3', 'hongjiangshi', 'H', '1', null, '4312');
INSERT INTO `system_area` VALUES ('2043', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '?????????', '4313', '2', 'loudishi', 'L', '1', null, '43');
INSERT INTO `system_area` VALUES ('2044', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '?????????', '431302', '3', 'louxingqu', 'L', '1', null, '4313');
INSERT INTO `system_area` VALUES ('2045', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '?????????', '431321', '3', 'shuangfengxian', 'S', '1', null, '4313');
INSERT INTO `system_area` VALUES ('2046', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '?????????', '431322', '3', 'xinhuaxian', 'X', '1', null, '4313');
INSERT INTO `system_area` VALUES ('2047', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '????????????', '431381', '3', 'lengshuijiangshi', 'L', '1', null, '4313');
INSERT INTO `system_area` VALUES ('2048', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '?????????', '431382', '3', 'lianyuanshi', 'L', '1', null, '4313');
INSERT INTO `system_area` VALUES ('2049', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '??????????????????????????????', '4331', '2', 'xiangxitujiazumiaozuzizhizhou', 'X', '1', null, '43');
INSERT INTO `system_area` VALUES ('2050', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '?????????', '433101', '3', 'jishoushi', 'J', '1', null, '4331');
INSERT INTO `system_area` VALUES ('2051', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '?????????', '433122', '3', 'luxixian', 'L', '1', null, '4331');
INSERT INTO `system_area` VALUES ('2052', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '?????????', '433123', '3', 'fenghuangxian', 'F', '1', null, '4331');
INSERT INTO `system_area` VALUES ('2053', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '?????????', '433124', '3', 'huayuanxian', 'H', '1', null, '4331');
INSERT INTO `system_area` VALUES ('2054', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '?????????', '433125', '3', 'baojingxian', 'B', '1', null, '4331');
INSERT INTO `system_area` VALUES ('2055', null, null, null, '2022-12-24 14:21:06.317671', '2022-12-24 14:21:06.317671', '1', '?????????', '433126', '3', 'guzhangxian', 'G', '1', null, '4331');
INSERT INTO `system_area` VALUES ('2056', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '?????????', '433127', '3', 'yongshunxian', 'Y', '1', null, '4331');
INSERT INTO `system_area` VALUES ('2057', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '?????????', '433130', '3', 'longshanxian', 'L', '1', null, '4331');
INSERT INTO `system_area` VALUES ('2058', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '?????????', '44', '1', 'guangdongsheng', 'G', '1', null, null);
INSERT INTO `system_area` VALUES ('2059', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '?????????', '4401', '2', 'guangzhoushi', 'G', '1', null, '44');
INSERT INTO `system_area` VALUES ('2060', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '?????????', '440103', '3', 'liwanqu', 'L', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2061', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '?????????', '440104', '3', 'yuexiuqu', 'Y', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2062', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '?????????', '440105', '3', 'haizhuqu', 'H', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2063', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '?????????', '440106', '3', 'tianhequ', 'T', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2064', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '?????????', '440111', '3', 'baiyunqu', 'B', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2065', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '?????????', '440112', '3', 'huangpuqu', 'H', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2066', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '?????????', '440113', '3', 'panyuqu', 'P', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2067', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '?????????', '440114', '3', 'huadouqu', 'H', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2068', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '?????????', '440115', '3', 'nanshaqu', 'N', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2069', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '?????????', '440117', '3', 'conghuaqu', 'C', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2070', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '?????????', '440118', '3', 'zengchengqu', 'Z', '1', null, '4401');
INSERT INTO `system_area` VALUES ('2071', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '?????????', '4402', '2', 'shaoguanshi', 'S', '1', null, '44');
INSERT INTO `system_area` VALUES ('2072', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.318670', '1', '?????????', '440203', '3', 'wujiangqu', 'W', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2073', null, null, null, '2022-12-24 14:21:06.318670', '2022-12-24 14:21:06.319670', '1', '?????????', '440204', '3', 'zhenjiangqu', 'Z', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2074', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '?????????', '440205', '3', 'qujiangqu', 'Q', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2075', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '?????????', '440222', '3', 'shixingxian', 'S', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2076', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '?????????', '440224', '3', 'renhuaxian', 'R', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2077', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '?????????', '440229', '3', 'wengyuanxian', 'W', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2078', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '?????????????????????', '440232', '3', 'ruyuanyaozuzizhixian', 'R', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2079', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '?????????', '440233', '3', 'xinfengxian', 'X', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2080', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '?????????', '440281', '3', 'lechangshi', 'L', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2081', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '?????????', '440282', '3', 'nanxiongshi', 'N', '1', null, '4402');
INSERT INTO `system_area` VALUES ('2082', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '?????????', '4403', '2', 'shenzhenshi', 'S', '1', null, '44');
INSERT INTO `system_area` VALUES ('2083', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '?????????', '440303', '3', 'luohuqu', 'L', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2084', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '?????????', '440304', '3', 'futianqu', 'F', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2085', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '?????????', '440305', '3', 'nanshanqu', 'N', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2086', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '?????????', '440306', '3', 'baoanqu', 'B', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2087', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '?????????', '440307', '3', 'longgangqu', 'L', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2088', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '?????????', '440308', '3', 'yantianqu', 'Y', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2089', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '?????????', '440309', '3', 'longhuaqu', 'L', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2090', null, null, null, '2022-12-24 14:21:06.319670', '2022-12-24 14:21:06.319670', '1', '?????????', '440310', '3', 'pingshanqu', 'P', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2091', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '?????????', '440311', '3', 'guangmingqu', 'G', '1', null, '4403');
INSERT INTO `system_area` VALUES ('2092', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '?????????', '4404', '2', 'zhuhaishi', 'Z', '1', null, '44');
INSERT INTO `system_area` VALUES ('2093', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '?????????', '440402', '3', 'xiangzhouqu', 'X', '1', null, '4404');
INSERT INTO `system_area` VALUES ('2094', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '?????????', '440403', '3', 'doumenqu', 'D', '1', null, '4404');
INSERT INTO `system_area` VALUES ('2095', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '?????????', '440404', '3', 'jinwanqu', 'J', '1', null, '4404');
INSERT INTO `system_area` VALUES ('2096', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '?????????', '4405', '2', 'shantoushi', 'S', '1', null, '44');
INSERT INTO `system_area` VALUES ('2097', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '?????????', '440507', '3', 'longhuqu', 'L', '1', null, '4405');
INSERT INTO `system_area` VALUES ('2098', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '?????????', '440511', '3', 'jinpingqu', 'J', '1', null, '4405');
INSERT INTO `system_area` VALUES ('2099', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '?????????', '440512', '3', 'haojiangqu', 'H', '1', null, '4405');
INSERT INTO `system_area` VALUES ('2100', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '?????????', '440513', '3', 'chaoyangqu', 'C', '1', null, '4405');
INSERT INTO `system_area` VALUES ('2101', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '?????????', '440514', '3', 'chaonanqu', 'C', '1', null, '4405');
INSERT INTO `system_area` VALUES ('2102', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '?????????', '440515', '3', 'chenghaiqu', 'C', '1', null, '4405');
INSERT INTO `system_area` VALUES ('2103', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '?????????', '440523', '3', 'nanaoxian', 'N', '1', null, '4405');
INSERT INTO `system_area` VALUES ('2104', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '?????????', '4406', '2', 'foshanshi', 'F', '1', null, '44');
INSERT INTO `system_area` VALUES ('2105', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '?????????', '440604', '3', 'chanchengqu', 'C', '1', null, '4406');
INSERT INTO `system_area` VALUES ('2106', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '?????????', '440605', '3', 'nanhaiqu', 'N', '1', null, '4406');
INSERT INTO `system_area` VALUES ('2107', null, null, null, '2022-12-24 14:21:06.320670', '2022-12-24 14:21:06.320670', '1', '?????????', '440606', '3', 'shundequ', 'S', '1', null, '4406');
INSERT INTO `system_area` VALUES ('2108', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '?????????', '440607', '3', 'sanshuiqu', 'S', '1', null, '4406');
INSERT INTO `system_area` VALUES ('2109', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '?????????', '440608', '3', 'gaomingqu', 'G', '1', null, '4406');
INSERT INTO `system_area` VALUES ('2110', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '?????????', '4407', '2', 'jiangmenshi', 'J', '1', null, '44');
INSERT INTO `system_area` VALUES ('2111', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '?????????', '440703', '3', 'pengjiangqu', 'P', '1', null, '4407');
INSERT INTO `system_area` VALUES ('2112', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '?????????', '440704', '3', 'jianghaiqu', 'J', '1', null, '4407');
INSERT INTO `system_area` VALUES ('2113', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '?????????', '440705', '3', 'xinhuiqu', 'X', '1', null, '4407');
INSERT INTO `system_area` VALUES ('2114', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '?????????', '440781', '3', 'taishanshi', 'T', '1', null, '4407');
INSERT INTO `system_area` VALUES ('2115', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '?????????', '440783', '3', 'kaipingshi', 'K', '1', null, '4407');
INSERT INTO `system_area` VALUES ('2116', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '?????????', '440784', '3', 'heshanshi', 'H', '1', null, '4407');
INSERT INTO `system_area` VALUES ('2117', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '?????????', '440785', '3', 'enpingshi', 'E', '1', null, '4407');
INSERT INTO `system_area` VALUES ('2118', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '?????????', '4408', '2', 'zhanjiangshi', 'Z', '1', null, '44');
INSERT INTO `system_area` VALUES ('2119', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '?????????', '440802', '3', 'chikanqu', 'C', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2120', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '?????????', '440803', '3', 'xiashanqu', 'X', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2121', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '?????????', '440804', '3', 'potouqu', 'P', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2122', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '?????????', '440811', '3', 'mazhangqu', 'M', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2123', null, null, null, '2022-12-24 14:21:06.321669', '2022-12-24 14:21:06.321669', '1', '?????????', '440823', '3', 'suixixian', 'S', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2124', null, null, null, '2022-12-24 14:21:06.322670', '2022-12-24 14:21:06.322670', '1', '?????????', '440825', '3', 'xuwenxian', 'X', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2125', null, null, null, '2022-12-24 14:21:06.322670', '2022-12-24 14:21:06.322670', '1', '?????????', '440881', '3', 'lianjiangshi', 'L', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2126', null, null, null, '2022-12-24 14:21:06.322670', '2022-12-24 14:21:06.322670', '1', '?????????', '440882', '3', 'leizhoushi', 'L', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2127', null, null, null, '2022-12-24 14:21:06.322670', '2022-12-24 14:21:06.322670', '1', '?????????', '440883', '3', 'wuchuanshi', 'W', '1', null, '4408');
INSERT INTO `system_area` VALUES ('2128', null, null, null, '2022-12-24 14:21:06.322670', '2022-12-24 14:21:06.322670', '1', '?????????', '4409', '2', 'maomingshi', 'M', '1', null, '44');
INSERT INTO `system_area` VALUES ('2129', null, null, null, '2022-12-24 14:21:06.322670', '2022-12-24 14:21:06.322670', '1', '?????????', '440902', '3', 'maonanqu', 'M', '1', null, '4409');
INSERT INTO `system_area` VALUES ('2130', null, null, null, '2022-12-24 14:21:06.322670', '2022-12-24 14:21:06.322670', '1', '?????????', '440904', '3', 'dianbaiqu', 'D', '1', null, '4409');
INSERT INTO `system_area` VALUES ('2131', null, null, null, '2022-12-24 14:21:06.322670', '2022-12-24 14:21:06.322670', '1', '?????????', '440981', '3', 'gaozhoushi', 'G', '1', null, '4409');
INSERT INTO `system_area` VALUES ('2132', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '?????????', '440982', '3', 'huazhoushi', 'H', '1', null, '4409');
INSERT INTO `system_area` VALUES ('2133', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '?????????', '440983', '3', 'xinyishi', 'X', '1', null, '4409');
INSERT INTO `system_area` VALUES ('2134', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '?????????', '4412', '2', 'zhaoqingshi', 'Z', '1', null, '44');
INSERT INTO `system_area` VALUES ('2135', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '?????????', '441202', '3', 'duanzhouqu', 'D', '1', null, '4412');
INSERT INTO `system_area` VALUES ('2136', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '?????????', '441203', '3', 'dinghuqu', 'D', '1', null, '4412');
INSERT INTO `system_area` VALUES ('2137', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '?????????', '441204', '3', 'gaoyaoqu', 'G', '1', null, '4412');
INSERT INTO `system_area` VALUES ('2138', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '?????????', '441223', '3', 'guangningxian', 'G', '1', null, '4412');
INSERT INTO `system_area` VALUES ('2139', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '?????????', '441224', '3', 'huaijixian', 'H', '1', null, '4412');
INSERT INTO `system_area` VALUES ('2140', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '?????????', '441225', '3', 'fengkaixian', 'F', '1', null, '4412');
INSERT INTO `system_area` VALUES ('2141', null, null, null, '2022-12-24 14:21:06.323686', '2022-12-24 14:21:06.323686', '1', '?????????', '441226', '3', 'deqingxian', 'D', '1', null, '4412');
INSERT INTO `system_area` VALUES ('2142', null, null, null, '2022-12-24 14:21:06.324682', '2022-12-24 14:21:06.324682', '1', '?????????', '441284', '3', 'sihuishi', 'S', '1', null, '4412');
INSERT INTO `system_area` VALUES ('2143', null, null, null, '2022-12-24 14:21:06.324682', '2022-12-24 14:21:06.324682', '1', '?????????', '4413', '2', 'huizhoushi', 'H', '1', null, '44');
INSERT INTO `system_area` VALUES ('2144', null, null, null, '2022-12-24 14:21:06.324682', '2022-12-24 14:21:06.324682', '1', '?????????', '441302', '3', 'huichengqu', 'H', '1', null, '4413');
INSERT INTO `system_area` VALUES ('2145', null, null, null, '2022-12-24 14:21:06.324682', '2022-12-24 14:21:06.324682', '1', '?????????', '441303', '3', 'huiyangqu', 'H', '1', null, '4413');
INSERT INTO `system_area` VALUES ('2146', null, null, null, '2022-12-24 14:21:06.324682', '2022-12-24 14:21:06.324682', '1', '?????????', '441322', '3', 'boluoxian', 'B', '1', null, '4413');
INSERT INTO `system_area` VALUES ('2147', null, null, null, '2022-12-24 14:21:06.324682', '2022-12-24 14:21:06.324682', '1', '?????????', '441323', '3', 'huidongxian', 'H', '1', null, '4413');
INSERT INTO `system_area` VALUES ('2148', null, null, null, '2022-12-24 14:21:06.324682', '2022-12-24 14:21:06.324682', '1', '?????????', '441324', '3', 'longmenxian', 'L', '1', null, '4413');
INSERT INTO `system_area` VALUES ('2149', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '?????????', '4414', '2', 'meizhoushi', 'M', '1', null, '44');
INSERT INTO `system_area` VALUES ('2150', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '?????????', '441402', '3', 'meijiangqu', 'M', '1', null, '4414');
INSERT INTO `system_area` VALUES ('2151', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '?????????', '441403', '3', 'meixianqu', 'M', '1', null, '4414');
INSERT INTO `system_area` VALUES ('2152', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '?????????', '441422', '3', 'dabuxian', 'D', '1', null, '4414');
INSERT INTO `system_area` VALUES ('2153', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '?????????', '441423', '3', 'fengshunxian', 'F', '1', null, '4414');
INSERT INTO `system_area` VALUES ('2154', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '?????????', '441424', '3', 'wuhuaxian', 'W', '1', null, '4414');
INSERT INTO `system_area` VALUES ('2155', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '?????????', '441426', '3', 'pingyuanxian', 'P', '1', null, '4414');
INSERT INTO `system_area` VALUES ('2156', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '?????????', '441427', '3', 'jiaolingxian', 'J', '1', null, '4414');
INSERT INTO `system_area` VALUES ('2157', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '?????????', '441481', '3', 'xingningshi', 'X', '1', null, '4414');
INSERT INTO `system_area` VALUES ('2158', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '?????????', '4415', '2', 'shanweishi', 'S', '1', null, '44');
INSERT INTO `system_area` VALUES ('2159', null, null, null, '2022-12-24 14:21:06.325697', '2022-12-24 14:21:06.325697', '1', '??????', '441502', '3', 'chengqu', 'C', '1', null, '4415');
INSERT INTO `system_area` VALUES ('2160', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '?????????', '441521', '3', 'haifengxian', 'H', '1', null, '4415');
INSERT INTO `system_area` VALUES ('2161', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '?????????', '441523', '3', 'luhexian', 'L', '1', null, '4415');
INSERT INTO `system_area` VALUES ('2162', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '?????????', '441581', '3', 'lufengshi', 'L', '1', null, '4415');
INSERT INTO `system_area` VALUES ('2163', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '?????????', '4416', '2', 'heyuanshi', 'H', '1', null, '44');
INSERT INTO `system_area` VALUES ('2164', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '?????????', '441602', '3', 'yuanchengqu', 'Y', '1', null, '4416');
INSERT INTO `system_area` VALUES ('2165', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '?????????', '441621', '3', 'zijinxian', 'Z', '1', null, '4416');
INSERT INTO `system_area` VALUES ('2166', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '?????????', '441622', '3', 'longchuanxian', 'L', '1', null, '4416');
INSERT INTO `system_area` VALUES ('2167', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '?????????', '441623', '3', 'lianpingxian', 'L', '1', null, '4416');
INSERT INTO `system_area` VALUES ('2168', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '?????????', '441624', '3', 'hepingxian', 'H', '1', null, '4416');
INSERT INTO `system_area` VALUES ('2169', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '?????????', '441625', '3', 'dongyuanxian', 'D', '1', null, '4416');
INSERT INTO `system_area` VALUES ('2170', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '?????????', '4417', '2', 'yangjiangshi', 'Y', '1', null, '44');
INSERT INTO `system_area` VALUES ('2171', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '?????????', '441702', '3', 'jiangchengqu', 'J', '1', null, '4417');
INSERT INTO `system_area` VALUES ('2172', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '?????????', '441704', '3', 'yangdongqu', 'Y', '1', null, '4417');
INSERT INTO `system_area` VALUES ('2173', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '?????????', '441721', '3', 'yangxixian', 'Y', '1', null, '4417');
INSERT INTO `system_area` VALUES ('2174', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '?????????', '441781', '3', 'yangchunshi', 'Y', '1', null, '4417');
INSERT INTO `system_area` VALUES ('2175', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '?????????', '4418', '2', 'qingyuanshi', 'Q', '1', null, '44');
INSERT INTO `system_area` VALUES ('2176', null, null, null, '2022-12-24 14:21:06.326683', '2022-12-24 14:21:06.326683', '1', '?????????', '441802', '3', 'qingchengqu', 'Q', '1', null, '4418');
INSERT INTO `system_area` VALUES ('2177', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '?????????', '441803', '3', 'qingxinqu', 'Q', '1', null, '4418');
INSERT INTO `system_area` VALUES ('2178', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '?????????', '441821', '3', 'fugangxian', 'F', '1', null, '4418');
INSERT INTO `system_area` VALUES ('2179', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '?????????', '441823', '3', 'yangshanxian', 'Y', '1', null, '4418');
INSERT INTO `system_area` VALUES ('2180', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '???????????????????????????', '441825', '3', 'lianshanzhuangzuyaozuzizhixian', 'L', '1', null, '4418');
INSERT INTO `system_area` VALUES ('2181', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '?????????????????????', '441826', '3', 'liannanyaozuzizhixian', 'L', '1', null, '4418');
INSERT INTO `system_area` VALUES ('2182', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '?????????', '441881', '3', 'yingdeshi', 'Y', '1', null, '4418');
INSERT INTO `system_area` VALUES ('2183', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '?????????', '441882', '3', 'lianzhoushi', 'L', '1', null, '4418');
INSERT INTO `system_area` VALUES ('2184', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '?????????', '4419', '2', 'dongguanshi', 'D', '1', null, '44');
INSERT INTO `system_area` VALUES ('2185', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '????????????', '441900003', '3', 'dongchengjiedao', 'D', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2186', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '????????????', '441900004', '3', 'nanchengjiedao', 'N', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2187', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '????????????', '441900005', '3', 'wanjiangjiedao', 'W', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2188', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '????????????', '441900006', '3', 'guanchengjiedao', 'G', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2189', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '?????????', '441900101', '3', 'shijiezhen', 'S', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2190', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '?????????', '441900102', '3', 'shilongzhen', 'S', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2191', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '?????????', '441900103', '3', 'chashanzhen', 'C', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2192', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '?????????', '441900104', '3', 'shipaizhen', 'S', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2193', null, null, null, '2022-12-24 14:21:06.327682', '2022-12-24 14:21:06.327682', '1', '?????????', '441900105', '3', 'qishizhen', 'Q', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2194', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '?????????', '441900106', '3', 'henglizhen', 'H', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2195', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '?????????', '441900107', '3', 'qiaotouzhen', 'Q', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2196', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '?????????', '441900108', '3', 'xiegangzhen', 'X', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2197', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '?????????', '441900109', '3', 'dongkengzhen', 'D', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2198', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '?????????', '441900110', '3', 'changpingzhen', 'C', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2199', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '?????????', '441900111', '3', 'liaobuzhen', 'L', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2200', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '????????????', '441900112', '3', 'zhangmutouzhen', 'Z', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2201', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '?????????', '441900113', '3', 'dalangzhen', 'D', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2202', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '?????????', '441900114', '3', 'huangjiangzhen', 'H', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2203', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '?????????', '441900115', '3', 'qingxizhen', 'Q', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2204', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '?????????', '441900116', '3', 'tangshazhen', 'T', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2205', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '?????????', '441900117', '3', 'fenggangzhen', 'F', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2206', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '????????????', '441900118', '3', 'dalingshanzhen', 'D', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2207', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '?????????', '441900119', '3', 'changanzhen', 'C', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2208', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '?????????', '441900121', '3', 'humenzhen', 'H', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2209', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '?????????', '441900122', '3', 'houjiezhen', 'H', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2210', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.328681', '1', '?????????', '441900123', '3', 'shatianzhen', 'S', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2211', null, null, null, '2022-12-24 14:21:06.328681', '2022-12-24 14:21:06.329680', '1', '?????????', '441900124', '3', 'daojiaozhen', 'D', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2212', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '?????????', '441900125', '3', 'hongmeizhen', 'H', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2213', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '?????????', '441900126', '3', 'mayongzhen', 'M', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2214', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '????????????', '441900127', '3', 'wangniudunzhen', 'W', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2215', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '?????????', '441900128', '3', 'zhongtangzhen', 'Z', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2216', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '?????????', '441900129', '3', 'gaobuzhen', 'G', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2217', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '?????????', '441900401', '3', 'songshanhu', 'S', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2218', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '?????????', '441900402', '3', 'dongguangang', 'D', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2219', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '???????????????', '441900403', '3', 'dongguanshengtaiyuan', 'D', '1', null, '4419');
INSERT INTO `system_area` VALUES ('2220', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '?????????', '4420', '2', 'zhongshanshi', 'Z', '1', null, '44');
INSERT INTO `system_area` VALUES ('2221', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '????????????', '442000001', '3', 'shiqijiedao', 'S', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2222', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '????????????', '442000002', '3', 'dongqujiedao', 'D', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2223', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '???????????????', '442000003', '3', 'zhongshangangjiedao', 'Z', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2224', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '????????????', '442000004', '3', 'xiqujiedao', 'X', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2225', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '????????????', '442000005', '3', 'nanqujiedao', 'N', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2226', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '???????????????', '442000006', '3', 'wuguishanjiedao', 'W', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2227', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '?????????', '442000100', '3', 'xiaolanzhen', 'X', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2228', null, null, null, '2022-12-24 14:21:06.329680', '2022-12-24 14:21:06.329680', '1', '?????????', '442000101', '3', 'huangpuzhen', 'H', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2229', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '?????????', '442000102', '3', 'minzhongzhen', 'M', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2230', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '?????????', '442000103', '3', 'dongfengzhen', 'D', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2231', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '?????????', '442000104', '3', 'dongshengzhen', 'D', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2232', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '?????????', '442000105', '3', 'guzhenzhen', 'G', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2233', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '?????????', '442000106', '3', 'shaxizhen', 'S', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2234', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '?????????', '442000107', '3', 'tanzhouzhen', 'T', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2235', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '?????????', '442000108', '3', 'gangkouzhen', 'G', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2236', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '?????????', '442000109', '3', 'sanjiaozhen', 'S', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2237', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '?????????', '442000110', '3', 'henglanzhen', 'H', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2238', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '?????????', '442000111', '3', 'nantouzhen', 'N', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2239', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '?????????', '442000112', '3', 'fushazhen', 'F', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2240', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '?????????', '442000113', '3', 'nanlangzhen', 'N', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2241', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '?????????', '442000114', '3', 'sanxiangzhen', 'S', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2242', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '?????????', '442000115', '3', 'banfuzhen', 'B', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2243', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '?????????', '442000116', '3', 'dayongzhen', 'D', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2244', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '?????????', '442000117', '3', 'shenwanzhen', 'S', '1', null, '4420');
INSERT INTO `system_area` VALUES ('2245', null, null, null, '2022-12-24 14:21:06.330684', '2022-12-24 14:21:06.330684', '1', '?????????', '4451', '2', 'chaozhoushi', 'C', '1', null, '44');
INSERT INTO `system_area` VALUES ('2246', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '?????????', '445102', '3', 'xiangqiaoqu', 'X', '1', null, '4451');
INSERT INTO `system_area` VALUES ('2247', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '?????????', '445103', '3', 'chaoanqu', 'C', '1', null, '4451');
INSERT INTO `system_area` VALUES ('2248', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '?????????', '445122', '3', 'raopingxian', 'R', '1', null, '4451');
INSERT INTO `system_area` VALUES ('2249', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '?????????', '4452', '2', 'jieyangshi', 'J', '1', null, '44');
INSERT INTO `system_area` VALUES ('2250', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '?????????', '445202', '3', 'rongchengqu', 'R', '1', null, '4452');
INSERT INTO `system_area` VALUES ('2251', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '?????????', '445203', '3', 'jiedongqu', 'J', '1', null, '4452');
INSERT INTO `system_area` VALUES ('2252', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '?????????', '445222', '3', 'jiexixian', 'J', '1', null, '4452');
INSERT INTO `system_area` VALUES ('2253', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '?????????', '445224', '3', 'huilaixian', 'H', '1', null, '4452');
INSERT INTO `system_area` VALUES ('2254', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '?????????', '445281', '3', 'puningshi', 'P', '1', null, '4452');
INSERT INTO `system_area` VALUES ('2255', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '?????????', '4453', '2', 'yunfushi', 'Y', '1', null, '44');
INSERT INTO `system_area` VALUES ('2256', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '?????????', '445302', '3', 'yunchengqu', 'Y', '1', null, '4453');
INSERT INTO `system_area` VALUES ('2257', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '?????????', '445303', '3', 'yunanqu', 'Y', '1', null, '4453');
INSERT INTO `system_area` VALUES ('2258', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '?????????', '445321', '3', 'xinxingxian', 'X', '1', null, '4453');
INSERT INTO `system_area` VALUES ('2259', null, null, null, '2022-12-24 14:21:06.331683', '2022-12-24 14:21:06.331683', '1', '?????????', '445322', '3', 'yunanxian', 'Y', '1', null, '4453');
INSERT INTO `system_area` VALUES ('2260', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '?????????', '445381', '3', 'luodingshi', 'L', '1', null, '4453');
INSERT INTO `system_area` VALUES ('2261', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '?????????????????????', '45', '1', 'guangxizhuangzuzizhiqu', 'G', '1', null, null);
INSERT INTO `system_area` VALUES ('2262', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '?????????', '4501', '2', 'nanningshi', 'N', '1', null, '45');
INSERT INTO `system_area` VALUES ('2263', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '?????????', '450102', '3', 'xingningqu', 'X', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2264', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '?????????', '450103', '3', 'qingxiuqu', 'Q', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2265', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '?????????', '450105', '3', 'jiangnanqu', 'J', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2266', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '????????????', '450107', '3', 'xixiangtangqu', 'X', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2267', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '?????????', '450108', '3', 'liangqingqu', 'L', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2268', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '?????????', '450109', '3', 'yongningqu', 'Y', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2269', null, null, null, '2022-12-24 14:21:06.332680', '2022-12-24 14:21:06.332680', '1', '?????????', '450110', '3', 'wumingqu', 'W', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2270', null, null, null, '2022-12-24 14:21:06.333691', '2022-12-24 14:21:06.333691', '1', '?????????', '450123', '3', 'longanxian', 'L', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2271', null, null, null, '2022-12-24 14:21:06.333691', '2022-12-24 14:21:06.333691', '1', '?????????', '450124', '3', 'mashanxian', 'M', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2272', null, null, null, '2022-12-24 14:21:06.333691', '2022-12-24 14:21:06.333691', '1', '?????????', '450125', '3', 'shanglinxian', 'S', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2273', null, null, null, '2022-12-24 14:21:06.333691', '2022-12-24 14:21:06.333691', '1', '?????????', '450126', '3', 'binyangxian', 'B', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2274', null, null, null, '2022-12-24 14:21:06.333691', '2022-12-24 14:21:06.333691', '1', '??????', '450127', '3', 'hengxian', 'H', '1', null, '4501');
INSERT INTO `system_area` VALUES ('2275', null, null, null, '2022-12-24 14:21:06.333691', '2022-12-24 14:21:06.333691', '1', '?????????', '4502', '2', 'liuzhoushi', 'L', '1', null, '45');
INSERT INTO `system_area` VALUES ('2276', null, null, null, '2022-12-24 14:21:06.333691', '2022-12-24 14:21:06.333691', '1', '?????????', '450202', '3', 'chengzhongqu', 'C', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2277', null, null, null, '2022-12-24 14:21:06.333691', '2022-12-24 14:21:06.333691', '1', '?????????', '450203', '3', 'yufengqu', 'Y', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2278', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '?????????', '450204', '3', 'liunanqu', 'L', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2279', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '?????????', '450205', '3', 'liubeiqu', 'L', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2280', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '?????????', '450206', '3', 'liujiangqu', 'L', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2281', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '?????????', '450222', '3', 'liuchengxian', 'L', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2282', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '?????????', '450223', '3', 'luzhaixian', 'L', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2283', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '?????????', '450224', '3', 'ronganxian', 'R', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2284', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '?????????????????????', '450225', '3', 'rongshuimiaozuzizhixian', 'R', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2285', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '?????????????????????', '450226', '3', 'sanjiangdongzuzizhixian', 'S', '1', null, '4502');
INSERT INTO `system_area` VALUES ('2286', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '?????????', '4503', '2', 'guilinshi', 'G', '1', null, '45');
INSERT INTO `system_area` VALUES ('2287', null, null, null, '2022-12-24 14:21:06.334680', '2022-12-24 14:21:06.334680', '1', '?????????', '450302', '3', 'xiufengqu', 'X', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2288', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '?????????', '450303', '3', 'diecaiqu', 'D', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2289', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '?????????', '450304', '3', 'xiangshanqu', 'X', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2290', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '?????????', '450305', '3', 'qixingqu', 'Q', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2291', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '?????????', '450311', '3', 'yanshanqu', 'Y', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2292', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '?????????', '450312', '3', 'linguiqu', 'L', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2293', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '?????????', '450321', '3', 'yangshuoxian', 'Y', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2294', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '?????????', '450323', '3', 'lingchuanxian', 'L', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2295', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '?????????', '450324', '3', 'quanzhouxian', 'Q', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2296', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '?????????', '450325', '3', 'xinganxian', 'X', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2297', null, null, null, '2022-12-24 14:21:06.335683', '2022-12-24 14:21:06.335683', '1', '?????????', '450326', '3', 'yongfuxian', 'Y', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2298', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '?????????', '450327', '3', 'guanyangxian', 'G', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2299', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '?????????????????????', '450328', '3', 'longshenggezuzizhixian', 'L', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2300', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '?????????', '450329', '3', 'ziyuanxian', 'Z', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2301', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '?????????', '450330', '3', 'pinglexian', 'P', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2302', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '?????????????????????', '450332', '3', 'gongchengyaozuzizhixian', 'G', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2303', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '?????????', '450381', '3', 'lipushi', 'L', '1', null, '4503');
INSERT INTO `system_area` VALUES ('2304', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '?????????', '4504', '2', 'wuzhoushi', 'W', '1', null, '45');
INSERT INTO `system_area` VALUES ('2305', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '?????????', '450403', '3', 'wanxiuqu', 'W', '1', null, '4504');
INSERT INTO `system_area` VALUES ('2306', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.336679', '1', '?????????', '450405', '3', 'zhangzhouqu', 'Z', '1', null, '4504');
INSERT INTO `system_area` VALUES ('2307', null, null, null, '2022-12-24 14:21:06.336679', '2022-12-24 14:21:06.337679', '1', '?????????', '450406', '3', 'longweiqu', 'L', '1', null, '4504');
INSERT INTO `system_area` VALUES ('2308', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '?????????', '450421', '3', 'cangwuxian', 'C', '1', null, '4504');
INSERT INTO `system_area` VALUES ('2309', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '??????', '450422', '3', 'tengxian', 'T', '1', null, '4504');
INSERT INTO `system_area` VALUES ('2310', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '?????????', '450423', '3', 'mengshanxian', 'M', '1', null, '4504');
INSERT INTO `system_area` VALUES ('2311', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '?????????', '450481', '3', 'cenxishi', 'C', '1', null, '4504');
INSERT INTO `system_area` VALUES ('2312', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '?????????', '4505', '2', 'beihaishi', 'B', '1', null, '45');
INSERT INTO `system_area` VALUES ('2313', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '?????????', '450502', '3', 'haichengqu', 'H', '1', null, '4505');
INSERT INTO `system_area` VALUES ('2314', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '?????????', '450503', '3', 'yinhaiqu', 'Y', '1', null, '4505');
INSERT INTO `system_area` VALUES ('2315', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '????????????', '450512', '3', 'tieshangangqu', 'T', '1', null, '4505');
INSERT INTO `system_area` VALUES ('2316', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.337679', '1', '?????????', '450521', '3', 'hepuxian', 'H', '1', null, '4505');
INSERT INTO `system_area` VALUES ('2317', null, null, null, '2022-12-24 14:21:06.337679', '2022-12-24 14:21:06.338684', '1', '????????????', '4506', '2', 'fangchenggangshi', 'F', '1', null, '45');
INSERT INTO `system_area` VALUES ('2318', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.338684', '1', '?????????', '450602', '3', 'gangkouqu', 'G', '1', null, '4506');
INSERT INTO `system_area` VALUES ('2319', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.338684', '1', '?????????', '450603', '3', 'fangchengqu', 'F', '1', null, '4506');
INSERT INTO `system_area` VALUES ('2320', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.338684', '1', '?????????', '450621', '3', 'shangsixian', 'S', '1', null, '4506');
INSERT INTO `system_area` VALUES ('2321', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.338684', '1', '?????????', '450681', '3', 'dongxingshi', 'D', '1', null, '4506');
INSERT INTO `system_area` VALUES ('2322', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.338684', '1', '?????????', '4507', '2', 'qinzhoushi', 'Q', '1', null, '45');
INSERT INTO `system_area` VALUES ('2323', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.338684', '1', '?????????', '450702', '3', 'qinnanqu', 'Q', '1', null, '4507');
INSERT INTO `system_area` VALUES ('2324', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.338684', '1', '?????????', '450703', '3', 'qinbeiqu', 'Q', '1', null, '4507');
INSERT INTO `system_area` VALUES ('2325', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.338684', '1', '?????????', '450721', '3', 'lingshanxian', 'L', '1', null, '4507');
INSERT INTO `system_area` VALUES ('2326', null, null, null, '2022-12-24 14:21:06.338684', '2022-12-24 14:21:06.339675', '1', '?????????', '450722', '3', 'pubeixian', 'P', '1', null, '4507');
INSERT INTO `system_area` VALUES ('2327', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '?????????', '4508', '2', 'guigangshi', 'G', '1', null, '45');
INSERT INTO `system_area` VALUES ('2328', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '?????????', '450802', '3', 'gangbeiqu', 'G', '1', null, '4508');
INSERT INTO `system_area` VALUES ('2329', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '?????????', '450803', '3', 'gangnanqu', 'G', '1', null, '4508');
INSERT INTO `system_area` VALUES ('2330', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '?????????', '450804', '3', 'tantangqu', 'T', '1', null, '4508');
INSERT INTO `system_area` VALUES ('2331', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '?????????', '450821', '3', 'pingnanxian', 'P', '1', null, '4508');
INSERT INTO `system_area` VALUES ('2332', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '?????????', '450881', '3', 'guipingshi', 'G', '1', null, '4508');
INSERT INTO `system_area` VALUES ('2333', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '?????????', '4509', '2', 'yulinshi', 'Y', '1', null, '45');
INSERT INTO `system_area` VALUES ('2334', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '?????????', '450902', '3', 'yuzhouqu', 'Y', '1', null, '4509');
INSERT INTO `system_area` VALUES ('2335', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '?????????', '450903', '3', 'fumianqu', 'F', '1', null, '4509');
INSERT INTO `system_area` VALUES ('2336', null, null, null, '2022-12-24 14:21:06.339675', '2022-12-24 14:21:06.339675', '1', '??????', '450921', '3', 'rongxian', 'R', '1', null, '4509');
INSERT INTO `system_area` VALUES ('2337', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '?????????', '450922', '3', 'luchuanxian', 'L', '1', null, '4509');
INSERT INTO `system_area` VALUES ('2338', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '?????????', '450923', '3', 'bobaixian', 'B', '1', null, '4509');
INSERT INTO `system_area` VALUES ('2339', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '?????????', '450924', '3', 'xingyexian', 'X', '1', null, '4509');
INSERT INTO `system_area` VALUES ('2340', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '?????????', '450981', '3', 'beiliushi', 'B', '1', null, '4509');
INSERT INTO `system_area` VALUES ('2341', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '?????????', '4510', '2', 'baiseshi', 'B', '1', null, '45');
INSERT INTO `system_area` VALUES ('2342', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '?????????', '451002', '3', 'youjiangqu', 'Y', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2343', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '?????????', '451003', '3', 'tianyangqu', 'T', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2344', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '?????????', '451022', '3', 'tiandongxian', 'T', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2345', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '?????????', '451024', '3', 'debaoxian', 'D', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2346', null, null, null, '2022-12-24 14:21:06.340684', '2022-12-24 14:21:06.340684', '1', '?????????', '451026', '3', 'napoxian', 'N', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2347', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '?????????', '451027', '3', 'lingyunxian', 'L', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2348', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '?????????', '451028', '3', 'leyexian', 'L', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2349', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '?????????', '451029', '3', 'tianlinxian', 'T', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2350', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '?????????', '451030', '3', 'xilinxian', 'X', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2351', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '?????????????????????', '451031', '3', 'longlingezuzizhixian', 'L', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2352', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '?????????', '451081', '3', 'jingxishi', 'J', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2353', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '?????????', '451082', '3', 'pingguoshi', 'P', '1', null, '4510');
INSERT INTO `system_area` VALUES ('2354', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '?????????', '4511', '2', 'hezhoushi', 'H', '1', null, '45');
INSERT INTO `system_area` VALUES ('2355', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '?????????', '451102', '3', 'babuqu', 'B', '1', null, '4511');
INSERT INTO `system_area` VALUES ('2356', null, null, null, '2022-12-24 14:21:06.341684', '2022-12-24 14:21:06.341684', '1', '?????????', '451103', '3', 'pingguiqu', 'P', '1', null, '4511');
INSERT INTO `system_area` VALUES ('2357', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '?????????', '451121', '3', 'zhaopingxian', 'Z', '1', null, '4511');
INSERT INTO `system_area` VALUES ('2358', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '?????????', '451122', '3', 'zhongshanxian', 'Z', '1', null, '4511');
INSERT INTO `system_area` VALUES ('2359', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '?????????????????????', '451123', '3', 'fuchuanyaozuzizhixian', 'F', '1', null, '4511');
INSERT INTO `system_area` VALUES ('2360', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '?????????', '4512', '2', 'hechishi', 'H', '1', null, '45');
INSERT INTO `system_area` VALUES ('2361', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '????????????', '451202', '3', 'jinchengjiangqu', 'J', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2362', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '?????????', '451203', '3', 'yizhouqu', 'Y', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2363', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '?????????', '451221', '3', 'nandanxian', 'N', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2364', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '?????????', '451222', '3', 'tianexian', 'T', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2365', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '?????????', '451223', '3', 'fengshanxian', 'F', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2366', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '?????????', '451224', '3', 'donglanxian', 'D', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2367', null, null, null, '2022-12-24 14:21:06.342683', '2022-12-24 14:21:06.342683', '1', '????????????????????????', '451225', '3', 'luochengmulaozuzizhixian', 'L', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2368', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '????????????????????????', '451226', '3', 'huanjiangmaonanzuzizhixian', 'H', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2369', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '?????????????????????', '451227', '3', 'bamayaozuzizhixian', 'B', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2370', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '?????????????????????', '451228', '3', 'douanyaozuzizhixian', 'D', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2371', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '?????????????????????', '451229', '3', 'dahuayaozuzizhixian', 'D', '1', null, '4512');
INSERT INTO `system_area` VALUES ('2372', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '?????????', '4513', '2', 'laibinshi', 'L', '1', null, '45');
INSERT INTO `system_area` VALUES ('2373', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '?????????', '451302', '3', 'xingbinqu', 'X', '1', null, '4513');
INSERT INTO `system_area` VALUES ('2374', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '?????????', '451321', '3', 'xinchengxian', 'X', '1', null, '4513');
INSERT INTO `system_area` VALUES ('2375', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '?????????', '451322', '3', 'xiangzhouxian', 'X', '1', null, '4513');
INSERT INTO `system_area` VALUES ('2376', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '?????????', '451323', '3', 'wuxuanxian', 'W', '1', null, '4513');
INSERT INTO `system_area` VALUES ('2377', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '?????????????????????', '451324', '3', 'jinxiuyaozuzizhixian', 'J', '1', null, '4513');
INSERT INTO `system_area` VALUES ('2378', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '?????????', '451381', '3', 'heshanshi', 'H', '1', null, '4513');
INSERT INTO `system_area` VALUES ('2379', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '?????????', '4514', '2', 'chongzuoshi', 'C', '1', null, '45');
INSERT INTO `system_area` VALUES ('2380', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '?????????', '451402', '3', 'jiangzhouqu', 'J', '1', null, '4514');
INSERT INTO `system_area` VALUES ('2381', null, null, null, '2022-12-24 14:21:06.343675', '2022-12-24 14:21:06.343675', '1', '?????????', '451421', '3', 'fusuixian', 'F', '1', null, '4514');
INSERT INTO `system_area` VALUES ('2382', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '?????????', '451422', '3', 'ningmingxian', 'N', '1', null, '4514');
INSERT INTO `system_area` VALUES ('2383', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '?????????', '451423', '3', 'longzhouxian', 'L', '1', null, '4514');
INSERT INTO `system_area` VALUES ('2384', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '?????????', '451424', '3', 'daxinxian', 'D', '1', null, '4514');
INSERT INTO `system_area` VALUES ('2385', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '?????????', '451425', '3', 'tiandengxian', 'T', '1', null, '4514');
INSERT INTO `system_area` VALUES ('2386', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '?????????', '451481', '3', 'pingxiangshi', 'P', '1', null, '4514');
INSERT INTO `system_area` VALUES ('2387', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '?????????', '46', '1', 'hainansheng', 'H', '1', null, null);
INSERT INTO `system_area` VALUES ('2388', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '?????????', '4601', '2', 'haikoushi', 'H', '1', null, '46');
INSERT INTO `system_area` VALUES ('2389', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '?????????', '460105', '3', 'xiuyingqu', 'X', '1', null, '4601');
INSERT INTO `system_area` VALUES ('2390', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '?????????', '460106', '3', 'longhuaqu', 'L', '1', null, '4601');
INSERT INTO `system_area` VALUES ('2391', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '?????????', '460107', '3', 'qiongshanqu', 'Q', '1', null, '4601');
INSERT INTO `system_area` VALUES ('2392', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '?????????', '460108', '3', 'meilanqu', 'M', '1', null, '4601');
INSERT INTO `system_area` VALUES ('2393', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '?????????', '4602', '2', 'sanyashi', 'S', '1', null, '46');
INSERT INTO `system_area` VALUES ('2394', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '?????????', '460202', '3', 'haitangqu', 'H', '1', null, '4602');
INSERT INTO `system_area` VALUES ('2395', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '?????????', '460203', '3', 'jiyangqu', 'J', '1', null, '4602');
INSERT INTO `system_area` VALUES ('2396', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '?????????', '460204', '3', 'tianyaqu', 'T', '1', null, '4602');
INSERT INTO `system_area` VALUES ('2397', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.344672', '1', '?????????', '460205', '3', 'yazhouqu', 'Y', '1', null, '4602');
INSERT INTO `system_area` VALUES ('2398', null, null, null, '2022-12-24 14:21:06.344672', '2022-12-24 14:21:06.345680', '1', '?????????', '4603', '2', 'sanshashi', 'S', '1', null, '46');
INSERT INTO `system_area` VALUES ('2399', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '????????????', '460321', '3', 'xishaqundao', 'X', '1', null, '4603');
INSERT INTO `system_area` VALUES ('2400', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '????????????', '460322', '3', 'nanshaqundao', 'N', '1', null, '4603');
INSERT INTO `system_area` VALUES ('2401', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '?????????????????????????????????', '460323', '3', 'zhongshaqundaodedaojiaojiqihaiyu', 'Z', '1', null, '4603');
INSERT INTO `system_area` VALUES ('2402', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '?????????', '4604', '2', 'danzhoushi', 'D', '1', null, '46');
INSERT INTO `system_area` VALUES ('2403', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '?????????', '460400100', '3', 'nadazhen', 'N', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2404', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '?????????', '460400101', '3', 'heqingzhen', 'H', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2405', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '?????????', '460400102', '3', 'nanfengzhen', 'N', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2406', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '?????????', '460400103', '3', 'dachengzhen', 'D', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2407', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '?????????', '460400104', '3', 'yaxingzhen', 'Y', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2408', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '?????????', '460400105', '3', 'lanyangzhen', 'L', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2409', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '?????????', '460400106', '3', 'guangcunzhen', 'G', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2410', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '?????????', '460400107', '3', 'mutangzhen', 'M', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2411', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '?????????', '460400108', '3', 'haitouzhen', 'H', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2412', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '?????????', '460400109', '3', 'emanzhen', 'E', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2413', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '?????????', '460400111', '3', 'wangwuzhen', 'W', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2414', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.345680', '1', '????????????', '460400112', '3', 'baimajingzhen', 'B', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2415', null, null, null, '2022-12-24 14:21:06.345680', '2022-12-24 14:21:06.346679', '1', '?????????', '460400113', '3', 'zhonghezhen', 'Z', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2416', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '?????????', '460400114', '3', 'paipuzhen', 'P', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2417', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '?????????', '460400115', '3', 'dongchengzhen', 'D', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2418', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '?????????', '460400116', '3', 'xinzhouzhen', 'X', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2419', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '?????????????????????', '460400499', '3', 'yangpujingjikaifaqu', 'Y', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2420', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '??????????????????', '460400500', '3', 'huananrezuoxueyuan', 'H', '1', null, '4604');
INSERT INTO `system_area` VALUES ('2421', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '???????????????????????????', '4690', '2', 'shengzhixiaxianjixingzhengquhua', 'S', '1', null, '46');
INSERT INTO `system_area` VALUES ('2422', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '????????????', '469001', '3', 'wuzhishanshi', 'W', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2423', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '?????????', '469002', '3', 'qionghaishi', 'Q', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2424', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '?????????', '469005', '3', 'wenchangshi', 'W', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2425', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '?????????', '469006', '3', 'wanningshi', 'W', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2426', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '?????????', '469007', '3', 'dongfangshi', 'D', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2427', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '?????????', '469021', '3', 'dinganxian', 'D', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2428', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '?????????', '469022', '3', 'tunchangxian', 'T', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2429', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '?????????', '469023', '3', 'chengmaixian', 'C', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2430', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '?????????', '469024', '3', 'lingaoxian', 'L', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2431', null, null, null, '2022-12-24 14:21:06.346679', '2022-12-24 14:21:06.346679', '1', '?????????????????????', '469025', '3', 'baishalizuzizhixian', 'B', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2432', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '?????????????????????', '469026', '3', 'changjianglizuzizhixian', 'C', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2433', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '?????????????????????', '469027', '3', 'ledonglizuzizhixian', 'L', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2434', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '?????????????????????', '469028', '3', 'lingshuilizuzizhixian', 'L', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2435', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '???????????????????????????', '469029', '3', 'baotinglizumiaozuzizhixian', 'B', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2436', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '???????????????????????????', '469030', '3', 'qiongzhonglizumiaozuzizhixian', 'Q', '1', null, '4690');
INSERT INTO `system_area` VALUES ('2437', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '?????????', '50', '1', 'chongqingshi', 'C', '1', null, null);
INSERT INTO `system_area` VALUES ('2438', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '?????????', '5001', '2', 'shixiaqu', 'S', '1', null, '50');
INSERT INTO `system_area` VALUES ('2439', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '?????????', '500101', '3', 'wanzhouqu', 'W', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2440', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '?????????', '500102', '3', 'fulingqu', 'F', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2441', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '?????????', '500103', '3', 'yuzhongqu', 'Y', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2442', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '????????????', '500104', '3', 'dadukouqu', 'D', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2443', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '?????????', '500105', '3', 'jiangbeiqu', 'J', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2444', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '????????????', '500106', '3', 'shapingbaqu', 'S', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2445', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '????????????', '500107', '3', 'jiulongpoqu', 'J', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2446', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '?????????', '500108', '3', 'nananqu', 'N', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2447', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '?????????', '500109', '3', 'beibeiqu', 'B', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2448', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.347680', '1', '?????????', '500110', '3', 'qijiangqu', 'Q', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2449', null, null, null, '2022-12-24 14:21:06.347680', '2022-12-24 14:21:06.348681', '1', '?????????', '500111', '3', 'dazuqu', 'D', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2450', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '?????????', '500112', '3', 'yubeiqu', 'Y', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2451', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '?????????', '500113', '3', 'bananqu', 'B', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2452', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '?????????', '500114', '3', 'qianjiangqu', 'Q', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2453', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '?????????', '500115', '3', 'changshouqu', 'C', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2454', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '?????????', '500116', '3', 'jiangjinqu', 'J', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2455', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '?????????', '500117', '3', 'hechuanqu', 'H', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2456', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '?????????', '500118', '3', 'yongchuanqu', 'Y', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2457', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '?????????', '500119', '3', 'nanchuanqu', 'N', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2458', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '?????????', '500120', '3', 'bishanqu', 'B', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2459', null, null, null, '2022-12-24 14:21:06.348681', '2022-12-24 14:21:06.348681', '1', '?????????', '500151', '3', 'tongliangqu', 'T', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2460', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '?????????', '500152', '3', 'tongnanqu', 'T', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2461', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '?????????', '500153', '3', 'rongchangqu', 'R', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2462', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '?????????', '500154', '3', 'kaizhouqu', 'K', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2463', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '?????????', '500155', '3', 'liangpingqu', 'L', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2464', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '?????????', '500156', '3', 'wulongqu', 'W', '1', null, '5001');
INSERT INTO `system_area` VALUES ('2465', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '???', '5002', '2', 'xian', 'X', '1', null, '50');
INSERT INTO `system_area` VALUES ('2466', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '?????????', '500229', '3', 'chengkouxian', 'C', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2467', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '?????????', '500230', '3', 'fengdouxian', 'F', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2468', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '?????????', '500231', '3', 'dianjiangxian', 'D', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2469', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '??????', '500233', '3', 'zhongxian', 'Z', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2470', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '?????????', '500235', '3', 'yunyangxian', 'Y', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2471', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '?????????', '500236', '3', 'fengjiexian', 'F', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2472', null, null, null, '2022-12-24 14:21:06.349692', '2022-12-24 14:21:06.349692', '1', '?????????', '500237', '3', 'wushanxian', 'W', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2473', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '?????????', '500238', '3', 'wuxixian', 'W', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2474', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '????????????????????????', '500240', '3', 'shizhutujiazuzizhixian', 'S', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2475', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '??????????????????????????????', '500241', '3', 'xiushantujiazumiaozuzizhixian', 'X', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2476', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '??????????????????????????????', '500242', '3', 'youyangtujiazumiaozuzizhixian', 'Y', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2477', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '??????????????????????????????', '500243', '3', 'pengshuimiaozutujiazuzizhixian', 'P', '1', null, '5002');
INSERT INTO `system_area` VALUES ('2478', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '?????????', '51', '1', 'sichuansheng', 'S', '1', null, null);
INSERT INTO `system_area` VALUES ('2479', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '?????????', '5101', '2', 'chengdushi', 'C', '1', null, '51');
INSERT INTO `system_area` VALUES ('2480', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '?????????', '510104', '3', 'jinjiangqu', 'J', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2481', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '?????????', '510105', '3', 'qingyangqu', 'Q', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2482', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '?????????', '510106', '3', 'jinniuqu', 'J', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2483', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '?????????', '510107', '3', 'wuhouqu', 'W', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2484', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '?????????', '510108', '3', 'chenghuaqu', 'C', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2485', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '????????????', '510112', '3', 'longquanyiqu', 'L', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2486', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '????????????', '510113', '3', 'qingbaijiangqu', 'Q', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2487', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '?????????', '510114', '3', 'xindouqu', 'X', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2488', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '?????????', '510115', '3', 'wenjiangqu', 'W', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2489', null, null, null, '2022-12-24 14:21:06.350678', '2022-12-24 14:21:06.350678', '1', '?????????', '510116', '3', 'shuangliuqu', 'S', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2490', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '?????????', '510117', '3', 'pidouqu', 'P', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2491', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '?????????', '510118', '3', 'xinjinqu', 'X', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2492', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '?????????', '510121', '3', 'jintangxian', 'J', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2493', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '?????????', '510129', '3', 'dayixian', 'D', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2494', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '?????????', '510131', '3', 'pujiangxian', 'P', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2495', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '????????????', '510181', '3', 'dujiangyanshi', 'D', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2496', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '?????????', '510182', '3', 'pengzhoushi', 'P', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2497', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '?????????', '510183', '3', 'qionglaishi', 'Q', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2498', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '?????????', '510184', '3', 'chongzhoushi', 'C', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2499', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '?????????', '510185', '3', 'jianyangshi', 'J', '1', null, '5101');
INSERT INTO `system_area` VALUES ('2500', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '?????????', '5103', '2', 'zigongshi', 'Z', '1', null, '51');
INSERT INTO `system_area` VALUES ('2501', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '????????????', '510302', '3', 'ziliujingqu', 'Z', '1', null, '5103');
INSERT INTO `system_area` VALUES ('2502', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '?????????', '510303', '3', 'gongjingqu', 'G', '1', null, '5103');
INSERT INTO `system_area` VALUES ('2503', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '?????????', '510304', '3', 'daanqu', 'D', '1', null, '5103');
INSERT INTO `system_area` VALUES ('2504', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '?????????', '510311', '3', 'yantanqu', 'Y', '1', null, '5103');
INSERT INTO `system_area` VALUES ('2505', null, null, null, '2022-12-24 14:21:06.351676', '2022-12-24 14:21:06.351676', '1', '??????', '510321', '3', 'rongxian', 'R', '1', null, '5103');
INSERT INTO `system_area` VALUES ('2506', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '?????????', '510322', '3', 'fushunxian', 'F', '1', null, '5103');
INSERT INTO `system_area` VALUES ('2507', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '????????????', '5104', '2', 'panzhihuashi', 'P', '1', null, '51');
INSERT INTO `system_area` VALUES ('2508', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '??????', '510402', '3', 'dongqu', 'D', '1', null, '5104');
INSERT INTO `system_area` VALUES ('2509', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '??????', '510403', '3', 'xiqu', 'X', '1', null, '5104');
INSERT INTO `system_area` VALUES ('2510', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '?????????', '510411', '3', 'renhequ', 'R', '1', null, '5104');
INSERT INTO `system_area` VALUES ('2511', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '?????????', '510421', '3', 'miyixian', 'M', '1', null, '5104');
INSERT INTO `system_area` VALUES ('2512', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '?????????', '510422', '3', 'yanbianxian', 'Y', '1', null, '5104');
INSERT INTO `system_area` VALUES ('2513', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '?????????', '5105', '2', 'luzhoushi', 'L', '1', null, '51');
INSERT INTO `system_area` VALUES ('2514', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '?????????', '510502', '3', 'jiangyangqu', 'J', '1', null, '5105');
INSERT INTO `system_area` VALUES ('2515', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '?????????', '510503', '3', 'naxiqu', 'N', '1', null, '5105');
INSERT INTO `system_area` VALUES ('2516', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '????????????', '510504', '3', 'longmatanqu', 'L', '1', null, '5105');
INSERT INTO `system_area` VALUES ('2517', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '??????', '510521', '3', 'luxian', 'L', '1', null, '5105');
INSERT INTO `system_area` VALUES ('2518', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '?????????', '510522', '3', 'hejiangxian', 'H', '1', null, '5105');
INSERT INTO `system_area` VALUES ('2519', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '?????????', '510524', '3', 'xuyongxian', 'X', '1', null, '5105');
INSERT INTO `system_area` VALUES ('2520', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '?????????', '510525', '3', 'gulinxian', 'G', '1', null, '5105');
INSERT INTO `system_area` VALUES ('2521', null, null, null, '2022-12-24 14:21:06.352676', '2022-12-24 14:21:06.352676', '1', '?????????', '5106', '2', 'deyangshi', 'D', '1', null, '51');
INSERT INTO `system_area` VALUES ('2522', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '?????????', '510603', '3', 'jingyangqu', 'J', '1', null, '5106');
INSERT INTO `system_area` VALUES ('2523', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '?????????', '510604', '3', 'luojiangqu', 'L', '1', null, '5106');
INSERT INTO `system_area` VALUES ('2524', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '?????????', '510623', '3', 'zhongjiangxian', 'Z', '1', null, '5106');
INSERT INTO `system_area` VALUES ('2525', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '?????????', '510681', '3', 'guanghanshi', 'G', '1', null, '5106');
INSERT INTO `system_area` VALUES ('2526', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '?????????', '510682', '3', 'shenfangshi', 'S', '1', null, '5106');
INSERT INTO `system_area` VALUES ('2527', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '?????????', '510683', '3', 'mianzhushi', 'M', '1', null, '5106');
INSERT INTO `system_area` VALUES ('2528', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '?????????', '5107', '2', 'mianyangshi', 'M', '1', null, '51');
INSERT INTO `system_area` VALUES ('2529', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '?????????', '510703', '3', 'fuchengqu', 'F', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2530', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '?????????', '510704', '3', 'youxianqu', 'Y', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2531', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '?????????', '510705', '3', 'anzhouqu', 'A', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2532', null, null, null, '2022-12-24 14:21:06.353675', '2022-12-24 14:21:06.353675', '1', '?????????', '510722', '3', 'santaixian', 'S', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2533', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '?????????', '510723', '3', 'yantingxian', 'Y', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2534', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '?????????', '510725', '3', 'zitongxian', 'Z', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2535', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '?????????????????????', '510726', '3', 'beichuanqiangzuzizhixian', 'B', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2536', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '?????????', '510727', '3', 'pingwuxian', 'P', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2537', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '?????????', '510781', '3', 'jiangyoushi', 'J', '1', null, '5107');
INSERT INTO `system_area` VALUES ('2538', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '?????????', '5108', '2', 'guangyuanshi', 'G', '1', null, '51');
INSERT INTO `system_area` VALUES ('2539', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '?????????', '510802', '3', 'lizhouqu', 'L', '1', null, '5108');
INSERT INTO `system_area` VALUES ('2540', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '?????????', '510811', '3', 'zhaohuaqu', 'Z', '1', null, '5108');
INSERT INTO `system_area` VALUES ('2541', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '?????????', '510812', '3', 'chaotianqu', 'C', '1', null, '5108');
INSERT INTO `system_area` VALUES ('2542', null, null, null, '2022-12-24 14:21:06.354678', '2022-12-24 14:21:06.354678', '1', '?????????', '510821', '3', 'wangcangxian', 'W', '1', null, '5108');
INSERT INTO `system_area` VALUES ('2543', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '?????????', '510822', '3', 'qingchuanxian', 'Q', '1', null, '5108');
INSERT INTO `system_area` VALUES ('2544', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '?????????', '510823', '3', 'jiangexian', 'J', '1', null, '5108');
INSERT INTO `system_area` VALUES ('2545', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '?????????', '510824', '3', 'cangxixian', 'C', '1', null, '5108');
INSERT INTO `system_area` VALUES ('2546', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '?????????', '5109', '2', 'suiningshi', 'S', '1', null, '51');
INSERT INTO `system_area` VALUES ('2547', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '?????????', '510903', '3', 'chuanshanqu', 'C', '1', null, '5109');
INSERT INTO `system_area` VALUES ('2548', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '?????????', '510904', '3', 'anjuqu', 'A', '1', null, '5109');
INSERT INTO `system_area` VALUES ('2549', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '?????????', '510921', '3', 'pengxixian', 'P', '1', null, '5109');
INSERT INTO `system_area` VALUES ('2550', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '?????????', '510923', '3', 'dayingxian', 'D', '1', null, '5109');
INSERT INTO `system_area` VALUES ('2551', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '?????????', '510981', '3', 'shehongshi', 'S', '1', null, '5109');
INSERT INTO `system_area` VALUES ('2552', null, null, null, '2022-12-24 14:21:06.355681', '2022-12-24 14:21:06.355681', '1', '?????????', '5110', '2', 'neijiangshi', 'N', '1', null, '51');
INSERT INTO `system_area` VALUES ('2553', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '?????????', '511002', '3', 'shizhongqu', 'S', '1', null, '5110');
INSERT INTO `system_area` VALUES ('2554', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '?????????', '511011', '3', 'dongxingqu', 'D', '1', null, '5110');
INSERT INTO `system_area` VALUES ('2555', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '?????????', '511024', '3', 'weiyuanxian', 'W', '1', null, '5110');
INSERT INTO `system_area` VALUES ('2556', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '?????????', '511025', '3', 'zizhongxian', 'Z', '1', null, '5110');
INSERT INTO `system_area` VALUES ('2557', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '?????????????????????', '511071', '3', 'neijiangjingjikaifaqu', 'N', '1', null, '5110');
INSERT INTO `system_area` VALUES ('2558', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '?????????', '511083', '3', 'longchangshi', 'L', '1', null, '5110');
INSERT INTO `system_area` VALUES ('2559', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '?????????', '5111', '2', 'leshanshi', 'L', '1', null, '51');
INSERT INTO `system_area` VALUES ('2560', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '?????????', '511102', '3', 'shizhongqu', 'S', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2561', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '?????????', '511111', '3', 'shawanqu', 'S', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2562', null, null, null, '2022-12-24 14:21:06.356685', '2022-12-24 14:21:06.356685', '1', '????????????', '511112', '3', 'wutongqiaoqu', 'W', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2563', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '????????????', '511113', '3', 'jinkouhequ', 'J', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2564', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '?????????', '511123', '3', 'qianweixian', 'Q', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2565', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '?????????', '511124', '3', 'jingyanxian', 'J', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2566', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '?????????', '511126', '3', 'jiajiangxian', 'J', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2567', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '?????????', '511129', '3', 'muchuanxian', 'M', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2568', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '?????????????????????', '511132', '3', 'ebianyizuzizhixian', 'E', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2569', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '?????????????????????', '511133', '3', 'mabianyizuzizhixian', 'M', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2570', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '????????????', '511181', '3', 'emeishanshi', 'E', '1', null, '5111');
INSERT INTO `system_area` VALUES ('2571', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '?????????', '5113', '2', 'nanchongshi', 'N', '1', null, '51');
INSERT INTO `system_area` VALUES ('2572', null, null, null, '2022-12-24 14:21:06.357677', '2022-12-24 14:21:06.357677', '1', '?????????', '511302', '3', 'shunqingqu', 'S', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2573', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '?????????', '511303', '3', 'gaopingqu', 'G', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2574', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '?????????', '511304', '3', 'jialingqu', 'J', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2575', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '?????????', '511321', '3', 'nanbuxian', 'N', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2576', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '?????????', '511322', '3', 'yingshanxian', 'Y', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2577', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '?????????', '511323', '3', 'penganxian', 'P', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2578', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '?????????', '511324', '3', 'yilongxian', 'Y', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2579', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '?????????', '511325', '3', 'xichongxian', 'X', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2580', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '?????????', '511381', '3', 'langzhongshi', 'L', '1', null, '5113');
INSERT INTO `system_area` VALUES ('2581', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '?????????', '5114', '2', 'meishanshi', 'M', '1', null, '51');
INSERT INTO `system_area` VALUES ('2582', null, null, null, '2022-12-24 14:21:06.358672', '2022-12-24 14:21:06.358672', '1', '?????????', '511402', '3', 'dongpoqu', 'D', '1', null, '5114');
INSERT INTO `system_area` VALUES ('2583', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '?????????', '511403', '3', 'pengshanqu', 'P', '1', null, '5114');
INSERT INTO `system_area` VALUES ('2584', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '?????????', '511421', '3', 'renshouxian', 'R', '1', null, '5114');
INSERT INTO `system_area` VALUES ('2585', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '?????????', '511423', '3', 'hongyaxian', 'H', '1', null, '5114');
INSERT INTO `system_area` VALUES ('2586', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '?????????', '511424', '3', 'danlengxian', 'D', '1', null, '5114');
INSERT INTO `system_area` VALUES ('2587', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '?????????', '511425', '3', 'qingshenxian', 'Q', '1', null, '5114');
INSERT INTO `system_area` VALUES ('2588', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '?????????', '5115', '2', 'yibinshi', 'Y', '1', null, '51');
INSERT INTO `system_area` VALUES ('2589', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '?????????', '511502', '3', 'cuipingqu', 'C', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2590', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '?????????', '511503', '3', 'nanxiqu', 'N', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2591', null, null, null, '2022-12-24 14:21:06.359671', '2022-12-24 14:21:06.359671', '1', '?????????', '511504', '3', 'xuzhouqu', 'X', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2592', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '?????????', '511523', '3', 'jianganxian', 'J', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2593', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '?????????', '511524', '3', 'zhangningxian', 'Z', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2594', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '??????', '511525', '3', 'gaoxian', 'G', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2595', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '??????', '511526', '3', 'gongxian', 'G', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2596', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '?????????', '511527', '3', 'yunlianxian', 'Y', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2597', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '?????????', '511528', '3', 'xingwenxian', 'X', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2598', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '?????????', '511529', '3', 'pingshanxian', 'P', '1', null, '5115');
INSERT INTO `system_area` VALUES ('2599', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '?????????', '5116', '2', 'guanganshi', 'G', '1', null, '51');
INSERT INTO `system_area` VALUES ('2600', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '?????????', '511602', '3', 'guanganqu', 'G', '1', null, '5116');
INSERT INTO `system_area` VALUES ('2601', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.360673', '1', '?????????', '511603', '3', 'qianfengqu', 'Q', '1', null, '5116');
INSERT INTO `system_area` VALUES ('2602', null, null, null, '2022-12-24 14:21:06.360673', '2022-12-24 14:21:06.361672', '1', '?????????', '511621', '3', 'yuechixian', 'Y', '1', null, '5116');
INSERT INTO `system_area` VALUES ('2603', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '?????????', '511622', '3', 'wushengxian', 'W', '1', null, '5116');
INSERT INTO `system_area` VALUES ('2604', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '?????????', '511623', '3', 'linshuixian', 'L', '1', null, '5116');
INSERT INTO `system_area` VALUES ('2605', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '?????????', '511681', '3', 'huayingshi', 'H', '1', null, '5116');
INSERT INTO `system_area` VALUES ('2606', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '?????????', '5117', '2', 'dazhoushi', 'D', '1', null, '51');
INSERT INTO `system_area` VALUES ('2607', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '?????????', '511702', '3', 'tongchuanqu', 'T', '1', null, '5117');
INSERT INTO `system_area` VALUES ('2608', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '?????????', '511703', '3', 'dachuanqu', 'D', '1', null, '5117');
INSERT INTO `system_area` VALUES ('2609', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '?????????', '511722', '3', 'xuanhanxian', 'X', '1', null, '5117');
INSERT INTO `system_area` VALUES ('2610', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '?????????', '511723', '3', 'kaijiangxian', 'K', '1', null, '5117');
INSERT INTO `system_area` VALUES ('2611', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '?????????', '511724', '3', 'dazhuxian', 'D', '1', null, '5117');
INSERT INTO `system_area` VALUES ('2612', null, null, null, '2022-12-24 14:21:06.361672', '2022-12-24 14:21:06.361672', '1', '??????', '511725', '3', 'quxian', 'Q', '1', null, '5117');
INSERT INTO `system_area` VALUES ('2613', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '?????????????????????', '511771', '3', 'dazhoujingjikaifaqu', 'D', '1', null, '5117');
INSERT INTO `system_area` VALUES ('2614', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '?????????', '511781', '3', 'wanyuanshi', 'W', '1', null, '5117');
INSERT INTO `system_area` VALUES ('2615', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '?????????', '5118', '2', 'yaanshi', 'Y', '1', null, '51');
INSERT INTO `system_area` VALUES ('2616', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '?????????', '511802', '3', 'yuchengqu', 'Y', '1', null, '5118');
INSERT INTO `system_area` VALUES ('2617', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '?????????', '511803', '3', 'mingshanqu', 'M', '1', null, '5118');
INSERT INTO `system_area` VALUES ('2618', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '?????????', '511822', '3', 'xingjingxian', 'X', '1', null, '5118');
INSERT INTO `system_area` VALUES ('2619', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '?????????', '511823', '3', 'hanyuanxian', 'H', '1', null, '5118');
INSERT INTO `system_area` VALUES ('2620', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '?????????', '511824', '3', 'shimianxian', 'S', '1', null, '5118');
INSERT INTO `system_area` VALUES ('2621', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '?????????', '511825', '3', 'tianquanxian', 'T', '1', null, '5118');
INSERT INTO `system_area` VALUES ('2622', null, null, null, '2022-12-24 14:21:06.362674', '2022-12-24 14:21:06.362674', '1', '?????????', '511826', '3', 'lushanxian', 'L', '1', null, '5118');
INSERT INTO `system_area` VALUES ('2623', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '?????????', '511827', '3', 'baoxingxian', 'B', '1', null, '5118');
INSERT INTO `system_area` VALUES ('2624', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '?????????', '5119', '2', 'bazhongshi', 'B', '1', null, '51');
INSERT INTO `system_area` VALUES ('2625', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '?????????', '511902', '3', 'bazhouqu', 'B', '1', null, '5119');
INSERT INTO `system_area` VALUES ('2626', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '?????????', '511903', '3', 'enyangqu', 'E', '1', null, '5119');
INSERT INTO `system_area` VALUES ('2627', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '?????????', '511921', '3', 'tongjiangxian', 'T', '1', null, '5119');
INSERT INTO `system_area` VALUES ('2628', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '?????????', '511922', '3', 'nanjiangxian', 'N', '1', null, '5119');
INSERT INTO `system_area` VALUES ('2629', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '?????????', '511923', '3', 'pingchangxian', 'P', '1', null, '5119');
INSERT INTO `system_area` VALUES ('2630', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '?????????????????????', '511971', '3', 'bazhongjingjikaifaqu', 'B', '1', null, '5119');
INSERT INTO `system_area` VALUES ('2631', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.363673', '1', '?????????', '5120', '2', 'ziyangshi', 'Z', '1', null, '51');
INSERT INTO `system_area` VALUES ('2632', null, null, null, '2022-12-24 14:21:06.363673', '2022-12-24 14:21:06.364678', '1', '?????????', '512002', '3', 'yanjiangqu', 'Y', '1', null, '5120');
INSERT INTO `system_area` VALUES ('2633', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '?????????', '512021', '3', 'anyuexian', 'A', '1', null, '5120');
INSERT INTO `system_area` VALUES ('2634', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '?????????', '512022', '3', 'lezhixian', 'L', '1', null, '5120');
INSERT INTO `system_area` VALUES ('2635', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '???????????????????????????', '5132', '2', 'abazangzuqiangzuzizhizhou', 'A', '1', null, '51');
INSERT INTO `system_area` VALUES ('2636', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '????????????', '513201', '3', 'maerkangshi', 'M', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2637', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '?????????', '513221', '3', 'wenchuanxian', 'W', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2638', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '??????', '513222', '3', 'lixian', 'L', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2639', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '??????', '513223', '3', 'maoxian', 'M', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2640', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '?????????', '513224', '3', 'songpanxian', 'S', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2641', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.364678', '1', '????????????', '513225', '3', 'jiuzhaigouxian', 'J', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2642', null, null, null, '2022-12-24 14:21:06.364678', '2022-12-24 14:21:06.365682', '1', '?????????', '513226', '3', 'jinchuanxian', 'J', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2643', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '?????????', '513227', '3', 'xiaojinxian', 'X', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2644', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '?????????', '513228', '3', 'heishuixian', 'H', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2645', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '?????????', '513230', '3', 'rangtangxian', 'R', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2646', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '?????????', '513231', '3', 'abaxian', 'A', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2647', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '????????????', '513232', '3', 'ruoergaixian', 'R', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2648', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '?????????', '513233', '3', 'hongyuanxian', 'H', '1', null, '5132');
INSERT INTO `system_area` VALUES ('2649', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '?????????????????????', '5133', '2', 'ganzizangzuzizhizhou', 'G', '1', null, '51');
INSERT INTO `system_area` VALUES ('2650', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '?????????', '513301', '3', 'kangdingshi', 'K', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2651', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.365682', '1', '?????????', '513322', '3', 'ludingxian', 'L', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2652', null, null, null, '2022-12-24 14:21:06.365682', '2022-12-24 14:21:06.366685', '1', '?????????', '513323', '3', 'danbaxian', 'D', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2653', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '?????????', '513324', '3', 'jiulongxian', 'J', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2654', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '?????????', '513325', '3', 'yajiangxian', 'Y', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2655', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '?????????', '513326', '3', 'daofuxian', 'D', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2656', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '?????????', '513327', '3', 'luhuoxian', 'L', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2657', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '?????????', '513328', '3', 'ganzixian', 'G', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2658', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '?????????', '513329', '3', 'xinlongxian', 'X', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2659', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '?????????', '513330', '3', 'degexian', 'D', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2660', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '?????????', '513331', '3', 'baiyuxian', 'B', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2661', null, null, null, '2022-12-24 14:21:06.366685', '2022-12-24 14:21:06.366685', '1', '?????????', '513332', '3', 'shiquxian', 'S', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2662', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '?????????', '513333', '3', 'sedaxian', 'S', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2663', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '?????????', '513334', '3', 'litangxian', 'L', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2664', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '?????????', '513335', '3', 'batangxian', 'B', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2665', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '?????????', '513336', '3', 'xiangchengxian', 'X', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2666', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '?????????', '513337', '3', 'daochengxian', 'D', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2667', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '?????????', '513338', '3', 'derongxian', 'D', '1', null, '5133');
INSERT INTO `system_area` VALUES ('2668', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '?????????????????????', '5134', '2', 'liangshanyizuzizhizhou', 'L', '1', null, '51');
INSERT INTO `system_area` VALUES ('2669', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '?????????', '513401', '3', 'xichangshi', 'X', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2670', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '?????????????????????', '513422', '3', 'mulizangzuzizhixian', 'M', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2671', null, null, null, '2022-12-24 14:21:06.367677', '2022-12-24 14:21:06.367677', '1', '?????????', '513423', '3', 'yanyuanxian', 'Y', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2672', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '?????????', '513424', '3', 'dechangxian', 'D', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2673', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '?????????', '513425', '3', 'huilixian', 'H', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2674', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '?????????', '513426', '3', 'huidongxian', 'H', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2675', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '?????????', '513427', '3', 'ningnanxian', 'N', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2676', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '?????????', '513428', '3', 'pugexian', 'P', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2677', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '?????????', '513429', '3', 'butuoxian', 'B', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2678', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '?????????', '513430', '3', 'jinyangxian', 'J', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2679', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '?????????', '513431', '3', 'zhaojuexian', 'Z', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2680', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '?????????', '513432', '3', 'xidexian', 'X', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2681', null, null, null, '2022-12-24 14:21:06.368677', '2022-12-24 14:21:06.368677', '1', '?????????', '513433', '3', 'mianningxian', 'M', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2682', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '?????????', '513434', '3', 'yuexixian', 'Y', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2683', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '?????????', '513435', '3', 'ganluoxian', 'G', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2684', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '?????????', '513436', '3', 'meiguxian', 'M', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2685', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '?????????', '513437', '3', 'leiboxian', 'L', '1', null, '5134');
INSERT INTO `system_area` VALUES ('2686', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '?????????', '52', '1', 'guizhousheng', 'G', '1', null, null);
INSERT INTO `system_area` VALUES ('2687', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '?????????', '5201', '2', 'guiyangshi', 'G', '1', null, '52');
INSERT INTO `system_area` VALUES ('2688', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '?????????', '520102', '3', 'nanmingqu', 'N', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2689', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '?????????', '520103', '3', 'yunyanqu', 'Y', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2690', null, null, null, '2022-12-24 14:21:06.369680', '2022-12-24 14:21:06.369680', '1', '?????????', '520111', '3', 'huaxiqu', 'H', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2691', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '?????????', '520112', '3', 'wudangqu', 'W', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2692', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '?????????', '520113', '3', 'baiyunqu', 'B', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2693', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '????????????', '520115', '3', 'guanshanhuqu', 'G', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2694', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '?????????', '520121', '3', 'kaiyangxian', 'K', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2695', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '?????????', '520122', '3', 'xifengxian', 'X', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2696', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '?????????', '520123', '3', 'xiuwenxian', 'X', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2697', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '?????????', '520181', '3', 'qingzhenshi', 'Q', '1', null, '5201');
INSERT INTO `system_area` VALUES ('2698', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '????????????', '5202', '2', 'liupanshuishi', 'L', '1', null, '52');
INSERT INTO `system_area` VALUES ('2699', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '?????????', '520201', '3', 'zhongshanqu', 'Z', '1', null, '5202');
INSERT INTO `system_area` VALUES ('2700', null, null, null, '2022-12-24 14:21:06.370681', '2022-12-24 14:21:06.370681', '1', '????????????', '520203', '3', 'liuzhitequ', 'L', '1', null, '5202');
INSERT INTO `system_area` VALUES ('2701', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '?????????', '520221', '3', 'shuichengxian', 'S', '1', null, '5202');
INSERT INTO `system_area` VALUES ('2702', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '?????????', '520281', '3', 'panzhoushi', 'P', '1', null, '5202');
INSERT INTO `system_area` VALUES ('2703', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '?????????', '5203', '2', 'zunyishi', 'Z', '1', null, '52');
INSERT INTO `system_area` VALUES ('2704', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '????????????', '520302', '3', 'honghuagangqu', 'H', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2705', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '?????????', '520303', '3', 'huichuanqu', 'H', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2706', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '?????????', '520304', '3', 'bozhouqu', 'B', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2707', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '?????????', '520322', '3', 'tongzixian', 'T', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2708', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '?????????', '520323', '3', 'suiyangxian', 'S', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2709', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.371680', '1', '?????????', '520324', '3', 'zhenganxian', 'Z', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2710', null, null, null, '2022-12-24 14:21:06.371680', '2022-12-24 14:21:06.372679', '1', '??????????????????????????????', '520325', '3', 'daozhengelaozumiaozuzizhixian', 'D', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2711', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '??????????????????????????????', '520326', '3', 'wuchuangelaozumiaozuzizhixian', 'W', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2712', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '?????????', '520327', '3', 'fenggangxian', 'F', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2713', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '?????????', '520328', '3', 'meitanxian', 'M', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2714', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '?????????', '520329', '3', 'yuqingxian', 'Y', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2715', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '?????????', '520330', '3', 'xishuixian', 'X', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2716', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '?????????', '520381', '3', 'chishuishi', 'C', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2717', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '?????????', '520382', '3', 'renhuaishi', 'R', '1', null, '5203');
INSERT INTO `system_area` VALUES ('2718', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '?????????', '5204', '2', 'anshunshi', 'A', '1', null, '52');
INSERT INTO `system_area` VALUES ('2719', null, null, null, '2022-12-24 14:21:06.372679', '2022-12-24 14:21:06.372679', '1', '?????????', '520402', '3', 'xixiuqu', 'X', '1', null, '5204');
INSERT INTO `system_area` VALUES ('2720', null, null, null, '2022-12-24 14:21:06.373677', '2022-12-24 14:21:06.373677', '1', '?????????', '520403', '3', 'pingbaqu', 'P', '1', null, '5204');
INSERT INTO `system_area` VALUES ('2721', null, null, null, '2022-12-24 14:21:06.373677', '2022-12-24 14:21:06.373677', '1', '?????????', '520422', '3', 'pudingxian', 'P', '1', null, '5204');
INSERT INTO `system_area` VALUES ('2722', null, null, null, '2022-12-24 14:21:06.373677', '2022-12-24 14:21:06.373677', '1', '??????????????????????????????', '520423', '3', 'zhenningbuyizumiaozuzizhixian', 'Z', '1', null, '5204');
INSERT INTO `system_area` VALUES ('2723', null, null, null, '2022-12-24 14:21:06.373677', '2022-12-24 14:21:06.373677', '1', '??????????????????????????????', '520424', '3', 'guanlingbuyizumiaozuzizhixian', 'G', '1', null, '5204');
INSERT INTO `system_area` VALUES ('2724', null, null, null, '2022-12-24 14:21:06.373677', '2022-12-24 14:21:06.373677', '1', '??????????????????????????????', '520425', '3', 'ziyunmiaozubuyizuzizhixian', 'Z', '1', null, '5204');
INSERT INTO `system_area` VALUES ('2725', null, null, null, '2022-12-24 14:21:06.373677', '2022-12-24 14:21:06.373677', '1', '?????????', '5205', '2', 'bijieshi', 'B', '1', null, '52');
INSERT INTO `system_area` VALUES ('2726', null, null, null, '2022-12-24 14:21:06.373677', '2022-12-24 14:21:06.374681', '1', '????????????', '520502', '3', 'qixingguanqu', 'Q', '1', null, '5205');
INSERT INTO `system_area` VALUES ('2727', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '?????????', '520521', '3', 'dafangxian', 'D', '1', null, '5205');
INSERT INTO `system_area` VALUES ('2728', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '?????????', '520522', '3', 'qianxixian', 'Q', '1', null, '5205');
INSERT INTO `system_area` VALUES ('2729', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '?????????', '520523', '3', 'jinshaxian', 'J', '1', null, '5205');
INSERT INTO `system_area` VALUES ('2730', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '?????????', '520524', '3', 'zhijinxian', 'Z', '1', null, '5205');
INSERT INTO `system_area` VALUES ('2731', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '?????????', '520525', '3', 'nayongxian', 'N', '1', null, '5205');
INSERT INTO `system_area` VALUES ('2732', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '?????????????????????????????????', '520526', '3', 'weiningyizuhuizumiaozuzizhixian', 'W', '1', null, '5205');
INSERT INTO `system_area` VALUES ('2733', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '?????????', '520527', '3', 'hezhangxian', 'H', '1', null, '5205');
INSERT INTO `system_area` VALUES ('2734', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '?????????', '5206', '2', 'tongrenshi', 'T', '1', null, '52');
INSERT INTO `system_area` VALUES ('2735', null, null, null, '2022-12-24 14:21:06.374681', '2022-12-24 14:21:06.374681', '1', '?????????', '520602', '3', 'bijiangqu', 'B', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2736', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '?????????', '520603', '3', 'wanshanqu', 'W', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2737', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '?????????', '520621', '3', 'jiangkouxian', 'J', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2738', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '?????????????????????', '520622', '3', 'yupingdongzuzizhixian', 'Y', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2739', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '?????????', '520623', '3', 'shiqianxian', 'S', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2740', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '?????????', '520624', '3', 'sinanxian', 'S', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2741', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '??????????????????????????????', '520625', '3', 'yinjiangtujiazumiaozuzizhixian', 'Y', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2742', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '?????????', '520626', '3', 'dejiangxian', 'D', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2743', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '????????????????????????', '520627', '3', 'yanhetujiazuzizhixian', 'Y', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2744', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '?????????????????????', '520628', '3', 'songtaomiaozuzizhixian', 'S', '1', null, '5206');
INSERT INTO `system_area` VALUES ('2745', null, null, null, '2022-12-24 14:21:06.375679', '2022-12-24 14:21:06.375679', '1', '?????????????????????????????????', '5223', '2', 'qianxinanbuyizumiaozuzizhizhou', 'Q', '1', null, '52');
INSERT INTO `system_area` VALUES ('2746', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '?????????', '522301', '3', 'xingyishi', 'X', '1', null, '5223');
INSERT INTO `system_area` VALUES ('2747', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '?????????', '522302', '3', 'xingrenshi', 'X', '1', null, '5223');
INSERT INTO `system_area` VALUES ('2748', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '?????????', '522323', '3', 'puanxian', 'P', '1', null, '5223');
INSERT INTO `system_area` VALUES ('2749', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '?????????', '522324', '3', 'qinglongxian', 'Q', '1', null, '5223');
INSERT INTO `system_area` VALUES ('2750', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '?????????', '522325', '3', 'zhenfengxian', 'Z', '1', null, '5223');
INSERT INTO `system_area` VALUES ('2751', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '?????????', '522326', '3', 'wangmoxian', 'W', '1', null, '5223');
INSERT INTO `system_area` VALUES ('2752', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '?????????', '522327', '3', 'cehengxian', 'C', '1', null, '5223');
INSERT INTO `system_area` VALUES ('2753', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '?????????', '522328', '3', 'anlongxian', 'A', '1', null, '5223');
INSERT INTO `system_area` VALUES ('2754', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '??????????????????????????????', '5226', '2', 'qiandongnanmiaozudongzuzizhizhou', 'Q', '1', null, '52');
INSERT INTO `system_area` VALUES ('2755', null, null, null, '2022-12-24 14:21:06.376679', '2022-12-24 14:21:06.376679', '1', '?????????', '522601', '3', 'kailishi', 'K', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2756', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '?????????', '522622', '3', 'huangpingxian', 'H', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2757', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '?????????', '522623', '3', 'shibingxian', 'S', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2758', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '?????????', '522624', '3', 'sansuixian', 'S', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2759', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '?????????', '522625', '3', 'zhenyuanxian', 'Z', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2760', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '?????????', '522626', '3', 'cengongxian', 'C', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2761', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '?????????', '522627', '3', 'tianzhuxian', 'T', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2762', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '?????????', '522628', '3', 'jinpingxian', 'J', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2763', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '?????????', '522629', '3', 'jianhexian', 'J', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2764', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.377677', '1', '?????????', '522630', '3', 'taijiangxian', 'T', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2765', null, null, null, '2022-12-24 14:21:06.377677', '2022-12-24 14:21:06.378674', '1', '?????????', '522631', '3', 'lipingxian', 'L', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2766', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '?????????', '522632', '3', 'rongjiangxian', 'R', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2767', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '?????????', '522633', '3', 'congjiangxian', 'C', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2768', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '?????????', '522634', '3', 'leishanxian', 'L', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2769', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '?????????', '522635', '3', 'majiangxian', 'M', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2770', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '?????????', '522636', '3', 'danzhaixian', 'D', '1', null, '5226');
INSERT INTO `system_area` VALUES ('2771', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '??????????????????????????????', '5227', '2', 'qiannanbuyizumiaozuzizhizhou', 'Q', '1', null, '52');
INSERT INTO `system_area` VALUES ('2772', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '?????????', '522701', '3', 'douyunshi', 'D', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2773', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '?????????', '522702', '3', 'fuquanshi', 'F', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2774', null, null, null, '2022-12-24 14:21:06.378674', '2022-12-24 14:21:06.378674', '1', '?????????', '522722', '3', 'liboxian', 'L', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2775', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '?????????', '522723', '3', 'guidingxian', 'G', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2776', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '?????????', '522725', '3', 'wenganxian', 'W', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2777', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '?????????', '522726', '3', 'dushanxian', 'D', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2778', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '?????????', '522727', '3', 'pingtangxian', 'P', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2779', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '?????????', '522728', '3', 'luodianxian', 'L', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2780', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '?????????', '522729', '3', 'zhangshunxian', 'Z', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2781', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '?????????', '522730', '3', 'longlixian', 'L', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2782', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '?????????', '522731', '3', 'huishuixian', 'H', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2783', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '?????????????????????', '522732', '3', 'sandoushuizuzizhixian', 'S', '1', null, '5227');
INSERT INTO `system_area` VALUES ('2784', null, null, null, '2022-12-24 14:21:06.379677', '2022-12-24 14:21:06.379677', '1', '?????????', '53', '1', 'yunnansheng', 'Y', '1', null, null);
INSERT INTO `system_area` VALUES ('2785', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '?????????', '5301', '2', 'kunmingshi', 'K', '1', null, '53');
INSERT INTO `system_area` VALUES ('2786', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '?????????', '530102', '3', 'wuhuaqu', 'W', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2787', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '?????????', '530103', '3', 'panlongqu', 'P', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2788', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '?????????', '530111', '3', 'guanduqu', 'G', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2789', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '?????????', '530112', '3', 'xishanqu', 'X', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2790', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '?????????', '530113', '3', 'dongchuanqu', 'D', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2791', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '?????????', '530114', '3', 'chenggongqu', 'C', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2792', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '?????????', '530115', '3', 'jinningqu', 'J', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2793', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.380678', '1', '?????????', '530124', '3', 'fuminxian', 'F', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2794', null, null, null, '2022-12-24 14:21:06.380678', '2022-12-24 14:21:06.381677', '1', '?????????', '530125', '3', 'yiliangxian', 'Y', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2795', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '?????????????????????', '530126', '3', 'shilinyizuzizhixian', 'S', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2796', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '?????????', '530127', '3', 'songmingxian', 'S', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2797', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '???????????????????????????', '530128', '3', 'luquanyizumiaozuzizhixian', 'L', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2798', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '???????????????????????????', '530129', '3', 'xundianhuizuyizuzizhixian', 'X', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2799', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '?????????', '530181', '3', 'anningshi', 'A', '1', null, '5301');
INSERT INTO `system_area` VALUES ('2800', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '?????????', '5303', '2', 'qujingshi', 'Q', '1', null, '53');
INSERT INTO `system_area` VALUES ('2801', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '?????????', '530302', '3', 'qilinqu', 'Q', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2802', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '?????????', '530303', '3', 'zhanyiqu', 'Z', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2803', null, null, null, '2022-12-24 14:21:06.381677', '2022-12-24 14:21:06.381677', '1', '?????????', '530304', '3', 'malongqu', 'M', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2804', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '?????????', '530322', '3', 'luliangxian', 'L', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2805', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '?????????', '530323', '3', 'shizongxian', 'S', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2806', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '?????????', '530324', '3', 'luopingxian', 'L', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2807', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '?????????', '530325', '3', 'fuyuanxian', 'F', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2808', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '?????????', '530326', '3', 'huizexian', 'H', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2809', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '?????????', '530381', '3', 'xuanweishi', 'X', '1', null, '5303');
INSERT INTO `system_area` VALUES ('2810', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '?????????', '5304', '2', 'yuxishi', 'Y', '1', null, '53');
INSERT INTO `system_area` VALUES ('2811', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '?????????', '530402', '3', 'hongtaqu', 'H', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2812', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '?????????', '530403', '3', 'jiangchuanqu', 'J', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2813', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '?????????', '530423', '3', 'tonghaixian', 'T', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2814', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '?????????', '530424', '3', 'huaningxian', 'H', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2815', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '?????????', '530425', '3', 'yimenxian', 'Y', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2816', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '?????????????????????', '530426', '3', 'eshanyizuzizhixian', 'E', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2817', null, null, null, '2022-12-24 14:21:06.382680', '2022-12-24 14:21:06.382680', '1', '???????????????????????????', '530427', '3', 'xinpingyizudaizuzizhixian', 'X', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2818', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '????????????????????????????????????', '530428', '3', 'yuanjianghanizuyizudaizuzizhixian', 'Y', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2819', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '?????????', '530481', '3', 'chengjiangshi', 'C', '1', null, '5304');
INSERT INTO `system_area` VALUES ('2820', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '?????????', '5305', '2', 'baoshanshi', 'B', '1', null, '53');
INSERT INTO `system_area` VALUES ('2821', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '?????????', '530502', '3', 'longyangqu', 'L', '1', null, '5305');
INSERT INTO `system_area` VALUES ('2822', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '?????????', '530521', '3', 'shidianxian', 'S', '1', null, '5305');
INSERT INTO `system_area` VALUES ('2823', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '?????????', '530523', '3', 'longlingxian', 'L', '1', null, '5305');
INSERT INTO `system_area` VALUES ('2824', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '?????????', '530524', '3', 'changningxian', 'C', '1', null, '5305');
INSERT INTO `system_area` VALUES ('2825', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '?????????', '530581', '3', 'tengchongshi', 'T', '1', null, '5305');
INSERT INTO `system_area` VALUES ('2826', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '?????????', '5306', '2', 'zhaotongshi', 'Z', '1', null, '53');
INSERT INTO `system_area` VALUES ('2827', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '?????????', '530602', '3', 'zhaoyangqu', 'Z', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2828', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '?????????', '530621', '3', 'ludianxian', 'L', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2829', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '?????????', '530622', '3', 'qiaojiaxian', 'Q', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2830', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '?????????', '530623', '3', 'yanjinxian', 'Y', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2831', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '?????????', '530624', '3', 'daguanxian', 'D', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2832', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '?????????', '530625', '3', 'yongshanxian', 'Y', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2833', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.383678', '1', '?????????', '530626', '3', 'suijiangxian', 'S', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2834', null, null, null, '2022-12-24 14:21:06.383678', '2022-12-24 14:21:06.384676', '1', '?????????', '530627', '3', 'zhenxiongxian', 'Z', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2835', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '?????????', '530628', '3', 'yiliangxian', 'Y', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2836', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '?????????', '530629', '3', 'weixinxian', 'W', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2837', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '?????????', '530681', '3', 'shuifushi', 'S', '1', null, '5306');
INSERT INTO `system_area` VALUES ('2838', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '?????????', '5307', '2', 'lijiangshi', 'L', '1', null, '53');
INSERT INTO `system_area` VALUES ('2839', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '?????????', '530702', '3', 'guchengqu', 'G', '1', null, '5307');
INSERT INTO `system_area` VALUES ('2840', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '????????????????????????', '530721', '3', 'yulongnaxizuzizhixian', 'Y', '1', null, '5307');
INSERT INTO `system_area` VALUES ('2841', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '?????????', '530722', '3', 'yongshengxian', 'Y', '1', null, '5307');
INSERT INTO `system_area` VALUES ('2842', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '?????????', '530723', '3', 'huapingxian', 'H', '1', null, '5307');
INSERT INTO `system_area` VALUES ('2843', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '?????????????????????', '530724', '3', 'ninglangyizuzizhixian', 'N', '1', null, '5307');
INSERT INTO `system_area` VALUES ('2844', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '?????????', '5308', '2', 'puershi', 'P', '1', null, '53');
INSERT INTO `system_area` VALUES ('2845', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '?????????', '530802', '3', 'simaoqu', 'S', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2846', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '??????????????????????????????', '530821', '3', 'ningerhanizuyizuzizhixian', 'N', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2847', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '????????????????????????', '530822', '3', 'mojianghanizuzizhixian', 'M', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2848', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '?????????????????????', '530823', '3', 'jingdongyizuzizhixian', 'J', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2849', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '???????????????????????????', '530824', '3', 'jinggudaizuyizuzizhixian', 'J', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2850', null, null, null, '2022-12-24 14:21:06.384676', '2022-12-24 14:21:06.384676', '1', '???????????????????????????????????????', '530825', '3', 'zhenyuanyizuhanizulahuzuzizhixian', 'Z', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2851', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '??????????????????????????????', '530826', '3', 'jiangchenghanizuyizuzizhixian', 'J', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2852', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '????????????????????????????????????', '530827', '3', 'mengliandaizulahuzuwazuzizhixian', 'M', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2853', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '????????????????????????', '530828', '3', 'lancanglahuzuzizhixian', 'L', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2854', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '?????????????????????', '530829', '3', 'ximengwazuzizhixian', 'X', '1', null, '5308');
INSERT INTO `system_area` VALUES ('2855', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '?????????', '5309', '2', 'lincangshi', 'L', '1', null, '53');
INSERT INTO `system_area` VALUES ('2856', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '?????????', '530902', '3', 'linxiangqu', 'L', '1', null, '5309');
INSERT INTO `system_area` VALUES ('2857', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '?????????', '530921', '3', 'fengqingxian', 'F', '1', null, '5309');
INSERT INTO `system_area` VALUES ('2858', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '??????', '530922', '3', 'yunxian', 'Y', '1', null, '5309');
INSERT INTO `system_area` VALUES ('2859', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '?????????', '530923', '3', 'yongdexian', 'Y', '1', null, '5309');
INSERT INTO `system_area` VALUES ('2860', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '?????????', '530924', '3', 'zhenkangxian', 'Z', '1', null, '5309');
INSERT INTO `system_area` VALUES ('2861', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.385675', '1', '?????????????????????????????????????????????', '530925', '3', 'shuangjianglahuzuwazubulangzudaizuzizhixian', 'S', '1', null, '5309');
INSERT INTO `system_area` VALUES ('2862', null, null, null, '2022-12-24 14:21:06.385675', '2022-12-24 14:21:06.386679', '1', '???????????????????????????', '530926', '3', 'gengmadaizuwazuzizhixian', 'G', '1', null, '5309');
INSERT INTO `system_area` VALUES ('2863', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '?????????????????????', '530927', '3', 'cangyuanwazuzizhixian', 'C', '1', null, '5309');
INSERT INTO `system_area` VALUES ('2864', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '?????????????????????', '5323', '2', 'chuxiongyizuzizhizhou', 'C', '1', null, '53');
INSERT INTO `system_area` VALUES ('2865', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '?????????', '532301', '3', 'chuxiongshi', 'C', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2866', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '?????????', '532322', '3', 'shuangbaixian', 'S', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2867', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '?????????', '532323', '3', 'moudingxian', 'M', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2868', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '?????????', '532324', '3', 'nanhuaxian', 'N', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2869', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '?????????', '532325', '3', 'yaoanxian', 'Y', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2870', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '?????????', '532326', '3', 'dayaoxian', 'D', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2871', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '?????????', '532327', '3', 'yongrenxian', 'Y', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2872', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '?????????', '532328', '3', 'yuanmouxian', 'Y', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2873', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '?????????', '532329', '3', 'wudingxian', 'W', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2874', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '?????????', '532331', '3', 'lufengxian', 'L', '1', null, '5323');
INSERT INTO `system_area` VALUES ('2875', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '??????????????????????????????', '5325', '2', 'honghehanizuyizuzizhizhou', 'H', '1', null, '53');
INSERT INTO `system_area` VALUES ('2876', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '?????????', '532501', '3', 'gejiushi', 'G', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2877', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '?????????', '532502', '3', 'kaiyuanshi', 'K', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2878', null, null, null, '2022-12-24 14:21:06.386679', '2022-12-24 14:21:06.386679', '1', '?????????', '532503', '3', 'mengzishi', 'M', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2879', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '?????????', '532504', '3', 'mileshi', 'M', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2880', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '?????????????????????', '532523', '3', 'pingbianmiaozuzizhixian', 'P', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2881', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '?????????', '532524', '3', 'jianshuixian', 'J', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2882', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '?????????', '532525', '3', 'shipingxian', 'S', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2883', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '?????????', '532527', '3', 'luxixian', 'L', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2884', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '?????????', '532528', '3', 'yuanyangxian', 'Y', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2885', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '?????????', '532529', '3', 'honghexian', 'H', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2886', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '?????????????????????????????????', '532530', '3', 'jinpingmiaozuyaozudaizuzizhixian', 'J', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2887', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '?????????', '532531', '3', 'lvchunxian', 'L', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2888', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '?????????????????????', '532532', '3', 'hekouyaozuzizhixian', 'H', '1', null, '5325');
INSERT INTO `system_area` VALUES ('2889', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '???????????????????????????', '5326', '2', 'wenshanzhuangzumiaozuzizhizhou', 'W', '1', null, '53');
INSERT INTO `system_area` VALUES ('2890', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '?????????', '532601', '3', 'wenshanshi', 'W', '1', null, '5326');
INSERT INTO `system_area` VALUES ('2891', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '?????????', '532622', '3', 'yanshanxian', 'Y', '1', null, '5326');
INSERT INTO `system_area` VALUES ('2892', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '?????????', '532623', '3', 'xichouxian', 'X', '1', null, '5326');
INSERT INTO `system_area` VALUES ('2893', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '????????????', '532624', '3', 'malipoxian', 'M', '1', null, '5326');
INSERT INTO `system_area` VALUES ('2894', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '?????????', '532625', '3', 'maguanxian', 'M', '1', null, '5326');
INSERT INTO `system_area` VALUES ('2895', null, null, null, '2022-12-24 14:21:06.387685', '2022-12-24 14:21:06.387685', '1', '?????????', '532626', '3', 'qiubeixian', 'Q', '1', null, '5326');
INSERT INTO `system_area` VALUES ('2896', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '?????????', '532627', '3', 'guangnanxian', 'G', '1', null, '5326');
INSERT INTO `system_area` VALUES ('2897', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '?????????', '532628', '3', 'funingxian', 'F', '1', null, '5326');
INSERT INTO `system_area` VALUES ('2898', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '???????????????????????????', '5328', '2', 'xishuangbannadaizuzizhizhou', 'X', '1', null, '53');
INSERT INTO `system_area` VALUES ('2899', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '?????????', '532801', '3', 'jinghongshi', 'J', '1', null, '5328');
INSERT INTO `system_area` VALUES ('2900', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '?????????', '532822', '3', 'menghaixian', 'M', '1', null, '5328');
INSERT INTO `system_area` VALUES ('2901', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '?????????', '532823', '3', 'menglaxian', 'M', '1', null, '5328');
INSERT INTO `system_area` VALUES ('2902', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '?????????????????????', '5329', '2', 'dalibaizuzizhizhou', 'D', '1', null, '53');
INSERT INTO `system_area` VALUES ('2903', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '?????????', '532901', '3', 'dalishi', 'D', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2904', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '?????????????????????', '532922', '3', 'yangbiyizuzizhixian', 'Y', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2905', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '?????????', '532923', '3', 'xiangyunxian', 'X', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2906', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '?????????', '532924', '3', 'binchuanxian', 'B', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2907', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '?????????', '532925', '3', 'miduxian', 'M', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2908', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '?????????????????????', '532926', '3', 'nanjianyizuzizhixian', 'N', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2909', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '???????????????????????????', '532927', '3', 'weishanyizuhuizuzizhixian', 'W', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2910', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '?????????', '532928', '3', 'yongpingxian', 'Y', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2911', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '?????????', '532929', '3', 'yunlongxian', 'Y', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2912', null, null, null, '2022-12-24 14:21:06.388683', '2022-12-24 14:21:06.388683', '1', '?????????', '532930', '3', 'eryuanxian', 'E', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2913', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '?????????', '532931', '3', 'jianchuanxian', 'J', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2914', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '?????????', '532932', '3', 'heqingxian', 'H', '1', null, '5329');
INSERT INTO `system_area` VALUES ('2915', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '??????????????????????????????', '5331', '2', 'dehongdaizujingpozuzizhizhou', 'D', '1', null, '53');
INSERT INTO `system_area` VALUES ('2916', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '?????????', '533102', '3', 'ruilishi', 'R', '1', null, '5331');
INSERT INTO `system_area` VALUES ('2917', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '??????', '533103', '3', 'mangshi', 'M', '1', null, '5331');
INSERT INTO `system_area` VALUES ('2918', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '?????????', '533122', '3', 'lianghexian', 'L', '1', null, '5331');
INSERT INTO `system_area` VALUES ('2919', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '?????????', '533123', '3', 'yingjiangxian', 'Y', '1', null, '5331');
INSERT INTO `system_area` VALUES ('2920', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '?????????', '533124', '3', 'longchuanxian', 'L', '1', null, '5331');
INSERT INTO `system_area` VALUES ('2921', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '????????????????????????', '5333', '2', 'nujianglisuzuzizhizhou', 'N', '1', null, '53');
INSERT INTO `system_area` VALUES ('2922', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '?????????', '533301', '3', 'lushuishi', 'L', '1', null, '5333');
INSERT INTO `system_area` VALUES ('2923', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '?????????', '533323', '3', 'fugongxian', 'F', '1', null, '5333');
INSERT INTO `system_area` VALUES ('2924', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '??????????????????????????????', '533324', '3', 'gongshandulongzunuzuzizhixian', 'G', '1', null, '5333');
INSERT INTO `system_area` VALUES ('2925', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '??????????????????????????????', '533325', '3', 'lanpingbaizupumizuzizhixian', 'L', '1', null, '5333');
INSERT INTO `system_area` VALUES ('2926', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '?????????????????????', '5334', '2', 'diqingzangzuzizhizhou', 'D', '1', null, '53');
INSERT INTO `system_area` VALUES ('2927', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '???????????????', '533401', '3', 'xianggelilashi', 'X', '1', null, '5334');
INSERT INTO `system_area` VALUES ('2928', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '?????????', '533422', '3', 'deqinxian', 'D', '1', null, '5334');
INSERT INTO `system_area` VALUES ('2929', null, null, null, '2022-12-24 14:21:06.389669', '2022-12-24 14:21:06.389669', '1', '????????????????????????', '533423', '3', 'weixilisuzuzizhixian', 'W', '1', null, '5334');
INSERT INTO `system_area` VALUES ('2930', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '???????????????', '54', '1', 'xizangzizhiqu', 'X', '1', null, null);
INSERT INTO `system_area` VALUES ('2931', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '?????????', '5401', '2', 'lasashi', 'L', '1', null, '54');
INSERT INTO `system_area` VALUES ('2932', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '?????????', '540102', '3', 'chengguanqu', 'C', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2933', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '???????????????', '540103', '3', 'duilongdeqingqu', 'D', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2934', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '?????????', '540104', '3', 'daziqu', 'D', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2935', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '?????????', '540121', '3', 'linzhouxian', 'L', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2936', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '?????????', '540122', '3', 'dangxiongxian', 'D', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2937', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '?????????', '540123', '3', 'nimuxian', 'N', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2938', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '?????????', '540124', '3', 'qushuixian', 'Q', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2939', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '???????????????', '540127', '3', 'mozhugongkaxian', 'M', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2940', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '???????????????????????????', '540171', '3', 'geermuzangqinggongyeyuanqu', 'G', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2941', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '???????????????????????????', '540172', '3', 'lasajingjijishukaifaqu', 'L', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2942', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '??????????????????????????????', '540173', '3', 'xizangwenhualvyouchuangyiyuanqu', 'X', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2943', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '??????????????????', '540174', '3', 'dazigongyeyuanqu', 'D', '1', null, '5401');
INSERT INTO `system_area` VALUES ('2944', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '????????????', '5402', '2', 'rikazeshi', 'R', '1', null, '54');
INSERT INTO `system_area` VALUES ('2945', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '????????????', '540202', '3', 'sangzhuziqu', 'S', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2946', null, null, null, '2022-12-24 14:21:06.390669', '2022-12-24 14:21:06.390669', '1', '????????????', '540221', '3', 'nanmulinxian', 'N', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2947', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '?????????', '540222', '3', 'jiangzixian', 'J', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2948', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '?????????', '540223', '3', 'dingrixian', 'D', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2949', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '?????????', '540224', '3', 'sajiaxian', 'S', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2950', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '?????????', '540225', '3', 'lazixian', 'L', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2951', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '?????????', '540226', '3', 'angrenxian', 'A', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2952', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '????????????', '540227', '3', 'xietongmenxian', 'X', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2953', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '?????????', '540228', '3', 'bailangxian', 'B', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2954', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '?????????', '540229', '3', 'renbuxian', 'R', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2955', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '?????????', '540230', '3', 'kangmaxian', 'K', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2956', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '?????????', '540231', '3', 'dingjiexian', 'D', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2957', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '?????????', '540232', '3', 'zhongbaxian', 'Z', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2958', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '?????????', '540233', '3', 'yadongxian', 'Y', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2959', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '?????????', '540234', '3', 'jilongxian', 'J', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2960', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '????????????', '540235', '3', 'nielamuxian', 'N', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2961', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '?????????', '540236', '3', 'sagaxian', 'S', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2962', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '?????????', '540237', '3', 'gangbaxian', 'G', '1', null, '5402');
INSERT INTO `system_area` VALUES ('2963', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.391669', '1', '?????????', '5403', '2', 'changdushi', 'C', '1', null, '54');
INSERT INTO `system_area` VALUES ('2964', null, null, null, '2022-12-24 14:21:06.391669', '2022-12-24 14:21:06.392669', '1', '?????????', '540302', '3', 'karuoqu', 'K', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2965', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '?????????', '540321', '3', 'jiangdaxian', 'J', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2966', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '?????????', '540322', '3', 'gongjuexian', 'G', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2967', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '????????????', '540323', '3', 'leiwuqixian', 'L', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2968', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '?????????', '540324', '3', 'dingqingxian', 'D', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2969', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '?????????', '540325', '3', 'chayaxian', 'C', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2970', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '?????????', '540326', '3', 'basuxian', 'B', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2971', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '?????????', '540327', '3', 'zuogongxian', 'Z', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2972', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '?????????', '540328', '3', 'mangkangxian', 'M', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2973', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '?????????', '540329', '3', 'luolongxian', 'L', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2974', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '?????????', '540330', '3', 'bianbaxian', 'B', '1', null, '5403');
INSERT INTO `system_area` VALUES ('2975', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '?????????', '5404', '2', 'linzhishi', 'L', '1', null, '54');
INSERT INTO `system_area` VALUES ('2976', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '?????????', '540402', '3', 'bayiqu', 'B', '1', null, '5404');
INSERT INTO `system_area` VALUES ('2977', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '???????????????', '540421', '3', 'gongbujiangdaxian', 'G', '1', null, '5404');
INSERT INTO `system_area` VALUES ('2978', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '?????????', '540422', '3', 'milinxian', 'M', '1', null, '5404');
INSERT INTO `system_area` VALUES ('2979', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '?????????', '540423', '3', 'motuoxian', 'M', '1', null, '5404');
INSERT INTO `system_area` VALUES ('2980', null, null, null, '2022-12-24 14:21:06.392669', '2022-12-24 14:21:06.392669', '1', '?????????', '540424', '3', 'bomixian', 'B', '1', null, '5404');
INSERT INTO `system_area` VALUES ('2981', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '?????????', '540425', '3', 'chayuxian', 'C', '1', null, '5404');
INSERT INTO `system_area` VALUES ('2982', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '??????', '540426', '3', 'langxian', 'L', '1', null, '5404');
INSERT INTO `system_area` VALUES ('2983', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '?????????', '5405', '2', 'shannanshi', 'S', '1', null, '54');
INSERT INTO `system_area` VALUES ('2984', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '?????????', '540502', '3', 'naidongqu', 'N', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2985', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '?????????', '540521', '3', 'zhanangxian', 'Z', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2986', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '?????????', '540522', '3', 'gonggaxian', 'G', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2987', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '?????????', '540523', '3', 'sangrixian', 'S', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2988', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '?????????', '540524', '3', 'qiongjiexian', 'Q', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2989', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '?????????', '540525', '3', 'qusongxian', 'Q', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2990', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '?????????', '540526', '3', 'cuomeixian', 'C', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2991', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '?????????', '540527', '3', 'luozhaxian', 'L', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2992', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '?????????', '540528', '3', 'jiachaxian', 'J', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2993', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '?????????', '540529', '3', 'longzixian', 'L', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2994', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '?????????', '540530', '3', 'cuonaxian', 'C', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2995', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '????????????', '540531', '3', 'langqiazixian', 'L', '1', null, '5405');
INSERT INTO `system_area` VALUES ('2996', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '?????????', '5406', '2', 'naqushi', 'N', '1', null, '54');
INSERT INTO `system_area` VALUES ('2997', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.393669', '1', '?????????', '540602', '3', 'seniqu', 'S', '1', null, '5406');
INSERT INTO `system_area` VALUES ('2998', null, null, null, '2022-12-24 14:21:06.393669', '2022-12-24 14:21:06.394669', '1', '?????????', '540621', '3', 'jialixian', 'J', '1', null, '5406');
INSERT INTO `system_area` VALUES ('2999', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '?????????', '540622', '3', 'biruxian', 'B', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3000', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '?????????', '540623', '3', 'nierongxian', 'N', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3001', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '?????????', '540624', '3', 'anduoxian', 'A', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3002', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '?????????', '540625', '3', 'shenzhaxian', 'S', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3003', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '??????', '540626', '3', 'suoxian', 'S', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3004', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '?????????', '540627', '3', 'bangexian', 'B', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3005', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '?????????', '540628', '3', 'baqingxian', 'B', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3006', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '?????????', '540629', '3', 'nimaxian', 'N', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3007', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '?????????', '540630', '3', 'shuanghuxian', 'S', '1', null, '5406');
INSERT INTO `system_area` VALUES ('3008', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '????????????', '5425', '2', 'alidiqu', 'A', '1', null, '54');
INSERT INTO `system_area` VALUES ('3009', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '?????????', '542521', '3', 'pulanxian', 'P', '1', null, '5425');
INSERT INTO `system_area` VALUES ('3010', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '?????????', '542522', '3', 'zhadaxian', 'Z', '1', null, '5425');
INSERT INTO `system_area` VALUES ('3011', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '?????????', '542523', '3', 'gaerxian', 'G', '1', null, '5425');
INSERT INTO `system_area` VALUES ('3012', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '?????????', '542524', '3', 'rituxian', 'R', '1', null, '5425');
INSERT INTO `system_area` VALUES ('3013', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '?????????', '542525', '3', 'gejixian', 'G', '1', null, '5425');
INSERT INTO `system_area` VALUES ('3014', null, null, null, '2022-12-24 14:21:06.394669', '2022-12-24 14:21:06.394669', '1', '?????????', '542526', '3', 'gaizexian', 'G', '1', null, '5425');
INSERT INTO `system_area` VALUES ('3015', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '?????????', '542527', '3', 'cuoqinxian', 'C', '1', null, '5425');
INSERT INTO `system_area` VALUES ('3016', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '?????????', '61', '1', 'shanxisheng', 'S', '1', null, null);
INSERT INTO `system_area` VALUES ('3017', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '?????????', '6101', '2', 'xianshi', 'X', '1', null, '61');
INSERT INTO `system_area` VALUES ('3018', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '?????????', '610102', '3', 'xinchengqu', 'X', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3019', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '?????????', '610103', '3', 'beilinqu', 'B', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3020', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '?????????', '610104', '3', 'lianhuqu', 'L', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3021', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '?????????', '610111', '3', 'baqiaoqu', 'B', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3022', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '?????????', '610112', '3', 'weiyangqu', 'W', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3023', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '?????????', '610113', '3', 'yantaqu', 'Y', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3024', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '?????????', '610114', '3', 'yanliangqu', 'Y', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3025', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '?????????', '610115', '3', 'lintongqu', 'L', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3026', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '?????????', '610116', '3', 'changanqu', 'C', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3027', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '?????????', '610117', '3', 'gaolingqu', 'G', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3028', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '?????????', '610118', '3', 'huyiqu', 'H', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3029', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '?????????', '610122', '3', 'lantianxian', 'L', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3030', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '?????????', '610124', '3', 'zhouzhixian', 'Z', '1', null, '6101');
INSERT INTO `system_area` VALUES ('3031', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.395669', '1', '?????????', '6102', '2', 'tongchuanshi', 'T', '1', null, '61');
INSERT INTO `system_area` VALUES ('3032', null, null, null, '2022-12-24 14:21:06.395669', '2022-12-24 14:21:06.396669', '1', '?????????', '610202', '3', 'wangyiqu', 'W', '1', null, '6102');
INSERT INTO `system_area` VALUES ('3033', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '?????????', '610203', '3', 'yintaiqu', 'Y', '1', null, '6102');
INSERT INTO `system_area` VALUES ('3034', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '?????????', '610204', '3', 'yaozhouqu', 'Y', '1', null, '6102');
INSERT INTO `system_area` VALUES ('3035', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '?????????', '610222', '3', 'yijunxian', 'Y', '1', null, '6102');
INSERT INTO `system_area` VALUES ('3036', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '?????????', '6103', '2', 'baojishi', 'B', '1', null, '61');
INSERT INTO `system_area` VALUES ('3037', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '?????????', '610302', '3', 'weibinqu', 'W', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3038', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '?????????', '610303', '3', 'jintaiqu', 'J', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3039', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '?????????', '610304', '3', 'chencangqu', 'C', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3040', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '?????????', '610322', '3', 'fengxiangxian', 'F', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3041', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '?????????', '610323', '3', 'qishanxian', 'Q', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3042', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '?????????', '610324', '3', 'fufengxian', 'F', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3043', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '??????', '610326', '3', 'meixian', 'M', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3044', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '??????', '610327', '3', 'longxian', 'L', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3045', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '?????????', '610328', '3', 'qianyangxian', 'Q', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3046', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '?????????', '610329', '3', 'linyouxian', 'L', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3047', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '??????', '610330', '3', 'fengxian', 'F', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3048', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '?????????', '610331', '3', 'taibaixian', 'T', '1', null, '6103');
INSERT INTO `system_area` VALUES ('3049', null, null, null, '2022-12-24 14:21:06.396669', '2022-12-24 14:21:06.396669', '1', '?????????', '6104', '2', 'xianyangshi', 'X', '1', null, '61');
INSERT INTO `system_area` VALUES ('3050', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '?????????', '610402', '3', 'qindouqu', 'Q', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3051', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '?????????', '610403', '3', 'yanglingqu', 'Y', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3052', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '?????????', '610404', '3', 'weichengqu', 'W', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3053', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '?????????', '610422', '3', 'sanyuanxian', 'S', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3054', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '?????????', '610423', '3', 'jingyangxian', 'J', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3055', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '??????', '610424', '3', 'qianxian', 'Q', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3056', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '?????????', '610425', '3', 'liquanxian', 'L', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3057', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '?????????', '610426', '3', 'yongshouxian', 'Y', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3058', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '?????????', '610428', '3', 'zhangwuxian', 'Z', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3059', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '?????????', '610429', '3', 'xunyixian', 'X', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3060', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '?????????', '610430', '3', 'chunhuaxian', 'C', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3061', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '?????????', '610431', '3', 'wugongxian', 'W', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3062', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '?????????', '610481', '3', 'xingpingshi', 'X', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3063', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '?????????', '610482', '3', 'binzhoushi', 'B', '1', null, '6104');
INSERT INTO `system_area` VALUES ('3064', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '?????????', '6105', '2', 'weinanshi', 'W', '1', null, '61');
INSERT INTO `system_area` VALUES ('3065', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '?????????', '610502', '3', 'linweiqu', 'L', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3066', null, null, null, '2022-12-24 14:21:06.397669', '2022-12-24 14:21:06.397669', '1', '?????????', '610503', '3', 'huazhouqu', 'H', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3067', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '?????????', '610522', '3', 'tongguanxian', 'T', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3068', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '?????????', '610523', '3', 'dalixian', 'D', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3069', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '?????????', '610524', '3', 'heyangxian', 'H', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3070', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '?????????', '610525', '3', 'chengchengxian', 'C', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3071', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '?????????', '610526', '3', 'puchengxian', 'P', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3072', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '?????????', '610527', '3', 'baishuixian', 'B', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3073', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '?????????', '610528', '3', 'fupingxian', 'F', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3074', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '?????????', '610581', '3', 'hanchengshi', 'H', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3075', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '?????????', '610582', '3', 'huayinshi', 'H', '1', null, '6105');
INSERT INTO `system_area` VALUES ('3076', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '?????????', '6106', '2', 'yananshi', 'Y', '1', null, '61');
INSERT INTO `system_area` VALUES ('3077', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '?????????', '610602', '3', 'baotaqu', 'B', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3078', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '?????????', '610603', '3', 'ansaiqu', 'A', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3079', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '?????????', '610621', '3', 'yanchangxian', 'Y', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3080', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '?????????', '610622', '3', 'yanchuanxian', 'Y', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3081', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '?????????', '610625', '3', 'zhidanxian', 'Z', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3082', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '?????????', '610626', '3', 'wuqixian', 'W', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3083', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.398669', '1', '?????????', '610627', '3', 'ganquanxian', 'G', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3084', null, null, null, '2022-12-24 14:21:06.398669', '2022-12-24 14:21:06.399669', '1', '??????', '610628', '3', 'fuxian', 'F', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3085', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '?????????', '610629', '3', 'luochuanxian', 'L', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3086', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '?????????', '610630', '3', 'yichuanxian', 'Y', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3087', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '?????????', '610631', '3', 'huanglongxian', 'H', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3088', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '?????????', '610632', '3', 'huanglingxian', 'H', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3089', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '?????????', '610681', '3', 'zizhangshi', 'Z', '1', null, '6106');
INSERT INTO `system_area` VALUES ('3090', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '?????????', '6107', '2', 'hanzhongshi', 'H', '1', null, '61');
INSERT INTO `system_area` VALUES ('3091', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '?????????', '610702', '3', 'hantaiqu', 'H', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3092', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '?????????', '610703', '3', 'nanzhengqu', 'N', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3093', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '?????????', '610722', '3', 'chengguxian', 'C', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3094', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '??????', '610723', '3', 'yangxian', 'Y', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3095', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '?????????', '610724', '3', 'xixiangxian', 'X', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3096', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '??????', '610725', '3', 'mianxian', 'M', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3097', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '?????????', '610726', '3', 'ningqiangxian', 'N', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3098', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '?????????', '610727', '3', 'lveyangxian', 'L', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3099', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '?????????', '610728', '3', 'zhenbaxian', 'Z', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3100', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.399669', '1', '?????????', '610729', '3', 'liubaxian', 'L', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3101', null, null, null, '2022-12-24 14:21:06.399669', '2022-12-24 14:21:06.400670', '1', '?????????', '610730', '3', 'fupingxian', 'F', '1', null, '6107');
INSERT INTO `system_area` VALUES ('3102', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '?????????', '6108', '2', 'yulinshi', 'Y', '1', null, '61');
INSERT INTO `system_area` VALUES ('3103', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '?????????', '610802', '3', 'yuyangqu', 'Y', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3104', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '?????????', '610803', '3', 'hengshanqu', 'H', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3105', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '?????????', '610822', '3', 'fuguxian', 'F', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3106', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '?????????', '610824', '3', 'jingbianxian', 'J', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3107', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '?????????', '610825', '3', 'dingbianxian', 'D', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3108', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '?????????', '610826', '3', 'suidexian', 'S', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3109', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '?????????', '610827', '3', 'mizhixian', 'M', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3110', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '??????', '610828', '3', 'jiaxian', 'J', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3111', null, null, null, '2022-12-24 14:21:06.400670', '2022-12-24 14:21:06.400670', '1', '?????????', '610829', '3', 'wubuxian', 'W', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3112', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '?????????', '610830', '3', 'qingjianxian', 'Q', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3113', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '?????????', '610831', '3', 'zizhouxian', 'Z', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3114', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '?????????', '610881', '3', 'shenmushi', 'S', '1', null, '6108');
INSERT INTO `system_area` VALUES ('3115', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '?????????', '6109', '2', 'ankangshi', 'A', '1', null, '61');
INSERT INTO `system_area` VALUES ('3116', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '?????????', '610902', '3', 'hanbinqu', 'H', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3117', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '?????????', '610921', '3', 'hanyinxian', 'H', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3118', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '?????????', '610922', '3', 'shiquanxian', 'S', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3119', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '?????????', '610923', '3', 'ningshanxian', 'N', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3120', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '?????????', '610924', '3', 'ziyangxian', 'Z', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3121', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '?????????', '610925', '3', 'langaoxian', 'L', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3122', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '?????????', '610926', '3', 'pinglixian', 'P', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3123', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '?????????', '610927', '3', 'zhenpingxian', 'Z', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3124', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '?????????', '610928', '3', 'xunyangxian', 'X', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3125', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '?????????', '610929', '3', 'baihexian', 'B', '1', null, '6109');
INSERT INTO `system_area` VALUES ('3126', null, null, null, '2022-12-24 14:21:06.401683', '2022-12-24 14:21:06.401683', '1', '?????????', '6110', '2', 'shangluoshi', 'S', '1', null, '61');
INSERT INTO `system_area` VALUES ('3127', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '?????????', '611002', '3', 'shangzhouqu', 'S', '1', null, '6110');
INSERT INTO `system_area` VALUES ('3128', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '?????????', '611021', '3', 'luonanxian', 'L', '1', null, '6110');
INSERT INTO `system_area` VALUES ('3129', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '?????????', '611022', '3', 'danfengxian', 'D', '1', null, '6110');
INSERT INTO `system_area` VALUES ('3130', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '?????????', '611023', '3', 'shangnanxian', 'S', '1', null, '6110');
INSERT INTO `system_area` VALUES ('3131', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '?????????', '611024', '3', 'shanyangxian', 'S', '1', null, '6110');
INSERT INTO `system_area` VALUES ('3132', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '?????????', '611025', '3', 'zhenanxian', 'Z', '1', null, '6110');
INSERT INTO `system_area` VALUES ('3133', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '?????????', '611026', '3', 'zhashuixian', 'Z', '1', null, '6110');
INSERT INTO `system_area` VALUES ('3134', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '?????????', '62', '1', 'gansusheng', 'G', '1', null, null);
INSERT INTO `system_area` VALUES ('3135', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '?????????', '6201', '2', 'lanzhoushi', 'L', '1', null, '62');
INSERT INTO `system_area` VALUES ('3136', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '?????????', '620102', '3', 'chengguanqu', 'C', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3137', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '????????????', '620103', '3', 'qilihequ', 'Q', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3138', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '?????????', '620104', '3', 'xiguqu', 'X', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3139', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '?????????', '620105', '3', 'anningqu', 'A', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3140', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '?????????', '620111', '3', 'hongguqu', 'H', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3141', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '?????????', '620121', '3', 'yongdengxian', 'Y', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3142', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '?????????', '620122', '3', 'gaolanxian', 'G', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3143', null, null, null, '2022-12-24 14:21:06.402678', '2022-12-24 14:21:06.402678', '1', '?????????', '620123', '3', 'yuzhongxian', 'Y', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3144', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '????????????', '620171', '3', 'lanzhouxinqu', 'L', '1', null, '6201');
INSERT INTO `system_area` VALUES ('3145', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '????????????', '6202', '2', 'jiayuguanshi', 'J', '1', null, '62');
INSERT INTO `system_area` VALUES ('3146', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '????????????', '620201001', '3', 'xiongguanjiedao', 'X', '1', null, '6202');
INSERT INTO `system_area` VALUES ('3147', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '????????????', '620201002', '3', 'gangchengjiedao', 'G', '1', null, '6202');
INSERT INTO `system_area` VALUES ('3148', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '?????????', '620201100', '3', 'xinchengzhen', 'X', '1', null, '6202');
INSERT INTO `system_area` VALUES ('3149', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '?????????', '620201101', '3', 'yuquanzhen', 'Y', '1', null, '6202');
INSERT INTO `system_area` VALUES ('3150', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '?????????', '620201102', '3', 'wenshuzhen', 'W', '1', null, '6202');
INSERT INTO `system_area` VALUES ('3151', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '?????????', '6203', '2', 'jinchangshi', 'J', '1', null, '62');
INSERT INTO `system_area` VALUES ('3152', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '?????????', '620302', '3', 'jinchuanqu', 'J', '1', null, '6203');
INSERT INTO `system_area` VALUES ('3153', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '?????????', '620321', '3', 'yongchangxian', 'Y', '1', null, '6203');
INSERT INTO `system_area` VALUES ('3154', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '?????????', '6204', '2', 'baiyinshi', 'B', '1', null, '62');
INSERT INTO `system_area` VALUES ('3155', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '?????????', '620402', '3', 'baiyinqu', 'B', '1', null, '6204');
INSERT INTO `system_area` VALUES ('3156', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '?????????', '620403', '3', 'pingchuanqu', 'P', '1', null, '6204');
INSERT INTO `system_area` VALUES ('3157', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '?????????', '620421', '3', 'jingyuanxian', 'J', '1', null, '6204');
INSERT INTO `system_area` VALUES ('3158', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '?????????', '620422', '3', 'huiningxian', 'H', '1', null, '6204');
INSERT INTO `system_area` VALUES ('3159', null, null, null, '2022-12-24 14:21:06.403695', '2022-12-24 14:21:06.403695', '1', '?????????', '620423', '3', 'jingtaixian', 'J', '1', null, '6204');
INSERT INTO `system_area` VALUES ('3160', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '?????????', '6205', '2', 'tianshuishi', 'T', '1', null, '62');
INSERT INTO `system_area` VALUES ('3161', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '?????????', '620502', '3', 'qinzhouqu', 'Q', '1', null, '6205');
INSERT INTO `system_area` VALUES ('3162', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '?????????', '620503', '3', 'maijiqu', 'M', '1', null, '6205');
INSERT INTO `system_area` VALUES ('3163', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '?????????', '620521', '3', 'qingshuixian', 'Q', '1', null, '6205');
INSERT INTO `system_area` VALUES ('3164', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '?????????', '620522', '3', 'qinanxian', 'Q', '1', null, '6205');
INSERT INTO `system_area` VALUES ('3165', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '?????????', '620523', '3', 'ganguxian', 'G', '1', null, '6205');
INSERT INTO `system_area` VALUES ('3166', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '?????????', '620524', '3', 'wushanxian', 'W', '1', null, '6205');
INSERT INTO `system_area` VALUES ('3167', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '????????????????????????', '620525', '3', 'zhangjiachuanhuizuzizhixian', 'Z', '1', null, '6205');
INSERT INTO `system_area` VALUES ('3168', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '?????????', '6206', '2', 'wuweishi', 'W', '1', null, '62');
INSERT INTO `system_area` VALUES ('3169', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '?????????', '620602', '3', 'liangzhouqu', 'L', '1', null, '6206');
INSERT INTO `system_area` VALUES ('3170', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '?????????', '620621', '3', 'minqinxian', 'M', '1', null, '6206');
INSERT INTO `system_area` VALUES ('3171', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '?????????', '620622', '3', 'gulangxian', 'G', '1', null, '6206');
INSERT INTO `system_area` VALUES ('3172', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '?????????????????????', '620623', '3', 'tianzhuzangzuzizhixian', 'T', '1', null, '6206');
INSERT INTO `system_area` VALUES ('3173', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '?????????', '6207', '2', 'zhangyeshi', 'Z', '1', null, '62');
INSERT INTO `system_area` VALUES ('3174', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '?????????', '620702', '3', 'ganzhouqu', 'G', '1', null, '6207');
INSERT INTO `system_area` VALUES ('3175', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '????????????????????????', '620721', '3', 'sunanyuguzuzizhixian', 'S', '1', null, '6207');
INSERT INTO `system_area` VALUES ('3176', null, null, null, '2022-12-24 14:21:06.404682', '2022-12-24 14:21:06.404682', '1', '?????????', '620722', '3', 'minyuexian', 'M', '1', null, '6207');
INSERT INTO `system_area` VALUES ('3177', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '?????????', '620723', '3', 'linzexian', 'L', '1', null, '6207');
INSERT INTO `system_area` VALUES ('3178', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '?????????', '620724', '3', 'gaotaixian', 'G', '1', null, '6207');
INSERT INTO `system_area` VALUES ('3179', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '?????????', '620725', '3', 'shandanxian', 'S', '1', null, '6207');
INSERT INTO `system_area` VALUES ('3180', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '?????????', '6208', '2', 'pingliangshi', 'P', '1', null, '62');
INSERT INTO `system_area` VALUES ('3181', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '?????????', '620802', '3', 'kongdongqu', 'K', '1', null, '6208');
INSERT INTO `system_area` VALUES ('3182', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '?????????', '620821', '3', 'jingchuanxian', 'J', '1', null, '6208');
INSERT INTO `system_area` VALUES ('3183', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '?????????', '620822', '3', 'lingtaixian', 'L', '1', null, '6208');
INSERT INTO `system_area` VALUES ('3184', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '?????????', '620823', '3', 'chongxinxian', 'C', '1', null, '6208');
INSERT INTO `system_area` VALUES ('3185', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '?????????', '620825', '3', 'zhuanglangxian', 'Z', '1', null, '6208');
INSERT INTO `system_area` VALUES ('3186', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '?????????', '620826', '3', 'jingningxian', 'J', '1', null, '6208');
INSERT INTO `system_area` VALUES ('3187', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '?????????', '620881', '3', 'huatingshi', 'H', '1', null, '6208');
INSERT INTO `system_area` VALUES ('3188', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '?????????', '6209', '2', 'jiuquanshi', 'J', '1', null, '62');
INSERT INTO `system_area` VALUES ('3189', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '?????????', '620902', '3', 'suzhouqu', 'S', '1', null, '6209');
INSERT INTO `system_area` VALUES ('3190', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '?????????', '620921', '3', 'jintaxian', 'J', '1', null, '6209');
INSERT INTO `system_area` VALUES ('3191', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '?????????', '620922', '3', 'guazhouxian', 'G', '1', null, '6209');
INSERT INTO `system_area` VALUES ('3192', null, null, null, '2022-12-24 14:21:06.405669', '2022-12-24 14:21:06.405669', '1', '????????????????????????', '620923', '3', 'subeimengguzuzizhixian', 'S', '1', null, '6209');
INSERT INTO `system_area` VALUES ('3193', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '??????????????????????????????', '620924', '3', 'akesaihasakezuzizhixian', 'A', '1', null, '6209');
INSERT INTO `system_area` VALUES ('3194', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '?????????', '620981', '3', 'yumenshi', 'Y', '1', null, '6209');
INSERT INTO `system_area` VALUES ('3195', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '?????????', '620982', '3', 'dunhuangshi', 'D', '1', null, '6209');
INSERT INTO `system_area` VALUES ('3196', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '?????????', '6210', '2', 'qingyangshi', 'Q', '1', null, '62');
INSERT INTO `system_area` VALUES ('3197', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '?????????', '621002', '3', 'xifengqu', 'X', '1', null, '6210');
INSERT INTO `system_area` VALUES ('3198', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '?????????', '621021', '3', 'qingchengxian', 'Q', '1', null, '6210');
INSERT INTO `system_area` VALUES ('3199', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '??????', '621022', '3', 'huanxian', 'H', '1', null, '6210');
INSERT INTO `system_area` VALUES ('3200', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '?????????', '621023', '3', 'huachixian', 'H', '1', null, '6210');
INSERT INTO `system_area` VALUES ('3201', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '?????????', '621024', '3', 'heshuixian', 'H', '1', null, '6210');
INSERT INTO `system_area` VALUES ('3202', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '?????????', '621025', '3', 'zhengningxian', 'Z', '1', null, '6210');
INSERT INTO `system_area` VALUES ('3203', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '??????', '621026', '3', 'ningxian', 'N', '1', null, '6210');
INSERT INTO `system_area` VALUES ('3204', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '?????????', '621027', '3', 'zhenyuanxian', 'Z', '1', null, '6210');
INSERT INTO `system_area` VALUES ('3205', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '?????????', '6211', '2', 'dingxishi', 'D', '1', null, '62');
INSERT INTO `system_area` VALUES ('3206', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '?????????', '621102', '3', 'andingqu', 'A', '1', null, '6211');
INSERT INTO `system_area` VALUES ('3207', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '?????????', '621121', '3', 'tongweixian', 'T', '1', null, '6211');
INSERT INTO `system_area` VALUES ('3208', null, null, null, '2022-12-24 14:21:06.406674', '2022-12-24 14:21:06.406674', '1', '?????????', '621122', '3', 'longxixian', 'L', '1', null, '6211');
INSERT INTO `system_area` VALUES ('3209', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '?????????', '621123', '3', 'weiyuanxian', 'W', '1', null, '6211');
INSERT INTO `system_area` VALUES ('3210', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '?????????', '621124', '3', 'lintaoxian', 'L', '1', null, '6211');
INSERT INTO `system_area` VALUES ('3211', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '??????', '621125', '3', 'zhangxian', 'Z', '1', null, '6211');
INSERT INTO `system_area` VALUES ('3212', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '??????', '621126', '3', 'minxian', 'M', '1', null, '6211');
INSERT INTO `system_area` VALUES ('3213', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '?????????', '6212', '2', 'longnanshi', 'L', '1', null, '62');
INSERT INTO `system_area` VALUES ('3214', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '?????????', '621202', '3', 'wudouqu', 'W', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3215', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '??????', '621221', '3', 'chengxian', 'C', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3216', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '??????', '621222', '3', 'wenxian', 'W', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3217', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '?????????', '621223', '3', 'dangchangxian', 'D', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3218', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '??????', '621224', '3', 'kangxian', 'K', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3219', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '?????????', '621225', '3', 'xihexian', 'X', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3220', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '??????', '621226', '3', 'lixian', 'L', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3221', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '??????', '621227', '3', 'huixian', 'H', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3222', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '?????????', '621228', '3', 'liangdangxian', 'L', '1', null, '6212');
INSERT INTO `system_area` VALUES ('3223', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '?????????????????????', '6229', '2', 'linxiahuizuzizhizhou', 'L', '1', null, '62');
INSERT INTO `system_area` VALUES ('3224', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '?????????', '622901', '3', 'linxiashi', 'L', '1', null, '6229');
INSERT INTO `system_area` VALUES ('3225', null, null, null, '2022-12-24 14:21:06.407674', '2022-12-24 14:21:06.407674', '1', '?????????', '622921', '3', 'linxiaxian', 'L', '1', null, '6229');
INSERT INTO `system_area` VALUES ('3226', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '?????????', '622922', '3', 'kanglexian', 'K', '1', null, '6229');
INSERT INTO `system_area` VALUES ('3227', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '?????????', '622923', '3', 'yongjingxian', 'Y', '1', null, '6229');
INSERT INTO `system_area` VALUES ('3228', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '?????????', '622924', '3', 'guanghexian', 'G', '1', null, '6229');
INSERT INTO `system_area` VALUES ('3229', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '?????????', '622925', '3', 'hezhengxian', 'H', '1', null, '6229');
INSERT INTO `system_area` VALUES ('3230', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '??????????????????', '622926', '3', 'dongxiangzuzizhixian', 'D', '1', null, '6229');
INSERT INTO `system_area` VALUES ('3231', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '?????????????????????????????????????????????', '622927', '3', 'jishishanbaoanzudongxiangzusalazuzizhixian', 'J', '1', null, '6229');
INSERT INTO `system_area` VALUES ('3232', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '?????????????????????', '6230', '2', 'gannanzangzuzizhizhou', 'G', '1', null, '62');
INSERT INTO `system_area` VALUES ('3233', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '?????????', '623001', '3', 'hezuoshi', 'H', '1', null, '6230');
INSERT INTO `system_area` VALUES ('3234', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '?????????', '623021', '3', 'lintanxian', 'L', '1', null, '6230');
INSERT INTO `system_area` VALUES ('3235', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '?????????', '623022', '3', 'zhuonixian', 'Z', '1', null, '6230');
INSERT INTO `system_area` VALUES ('3236', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '?????????', '623023', '3', 'zhouquxian', 'Z', '1', null, '6230');
INSERT INTO `system_area` VALUES ('3237', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '?????????', '623024', '3', 'diebuxian', 'D', '1', null, '6230');
INSERT INTO `system_area` VALUES ('3238', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '?????????', '623025', '3', 'maquxian', 'M', '1', null, '6230');
INSERT INTO `system_area` VALUES ('3239', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '?????????', '623026', '3', 'luquxian', 'L', '1', null, '6230');
INSERT INTO `system_area` VALUES ('3240', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '?????????', '623027', '3', 'xiahexian', 'X', '1', null, '6230');
INSERT INTO `system_area` VALUES ('3241', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '?????????', '63', '1', 'qinghaisheng', 'Q', '1', null, null);
INSERT INTO `system_area` VALUES ('3242', null, null, null, '2022-12-24 14:21:06.408675', '2022-12-24 14:21:06.408675', '1', '?????????', '6301', '2', 'xiningshi', 'X', '1', null, '63');
INSERT INTO `system_area` VALUES ('3243', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '?????????', '630102', '3', 'chengdongqu', 'C', '1', null, '6301');
INSERT INTO `system_area` VALUES ('3244', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '?????????', '630103', '3', 'chengzhongqu', 'C', '1', null, '6301');
INSERT INTO `system_area` VALUES ('3245', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '?????????', '630104', '3', 'chengxiqu', 'C', '1', null, '6301');
INSERT INTO `system_area` VALUES ('3246', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '?????????', '630105', '3', 'chengbeiqu', 'C', '1', null, '6301');
INSERT INTO `system_area` VALUES ('3247', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '?????????', '630106', '3', 'huangzhongqu', 'H', '1', null, '6301');
INSERT INTO `system_area` VALUES ('3248', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '???????????????????????????', '630121', '3', 'datonghuizutuzuzizhixian', 'D', '1', null, '6301');
INSERT INTO `system_area` VALUES ('3249', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '?????????', '630123', '3', 'huangyuanxian', 'H', '1', null, '6301');
INSERT INTO `system_area` VALUES ('3250', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '?????????', '6302', '2', 'haidongshi', 'H', '1', null, '63');
INSERT INTO `system_area` VALUES ('3251', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '?????????', '630202', '3', 'ledouqu', 'L', '1', null, '6302');
INSERT INTO `system_area` VALUES ('3252', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '?????????', '630203', '3', 'pinganqu', 'P', '1', null, '6302');
INSERT INTO `system_area` VALUES ('3253', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '???????????????????????????', '630222', '3', 'minhehuizutuzuzizhixian', 'M', '1', null, '6302');
INSERT INTO `system_area` VALUES ('3254', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '?????????????????????', '630223', '3', 'huzhutuzuzizhixian', 'H', '1', null, '6302');
INSERT INTO `system_area` VALUES ('3255', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '?????????????????????', '630224', '3', 'hualonghuizuzizhixian', 'H', '1', null, '6302');
INSERT INTO `system_area` VALUES ('3256', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '????????????????????????', '630225', '3', 'xunhuasalazuzizhixian', 'X', '1', null, '6302');
INSERT INTO `system_area` VALUES ('3257', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '?????????????????????', '6322', '2', 'haibeizangzuzizhizhou', 'H', '1', null, '63');
INSERT INTO `system_area` VALUES ('3258', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '?????????????????????', '632221', '3', 'menyuanhuizuzizhixian', 'M', '1', null, '6322');
INSERT INTO `system_area` VALUES ('3259', null, null, null, '2022-12-24 14:21:06.409669', '2022-12-24 14:21:06.409669', '1', '?????????', '632222', '3', 'qilianxian', 'Q', '1', null, '6322');
INSERT INTO `system_area` VALUES ('3260', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '?????????', '632223', '3', 'haiyanxian', 'H', '1', null, '6322');
INSERT INTO `system_area` VALUES ('3261', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '?????????', '632224', '3', 'gangchaxian', 'G', '1', null, '6322');
INSERT INTO `system_area` VALUES ('3262', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '?????????????????????', '6323', '2', 'huangnanzangzuzizhizhou', 'H', '1', null, '63');
INSERT INTO `system_area` VALUES ('3263', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '?????????', '632321', '3', 'tongrenxian', 'T', '1', null, '6323');
INSERT INTO `system_area` VALUES ('3264', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '?????????', '632322', '3', 'jianzhaxian', 'J', '1', null, '6323');
INSERT INTO `system_area` VALUES ('3265', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '?????????', '632323', '3', 'zekuxian', 'Z', '1', null, '6323');
INSERT INTO `system_area` VALUES ('3266', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '????????????????????????', '632324', '3', 'henanmengguzuzizhixian', 'H', '1', null, '6323');
INSERT INTO `system_area` VALUES ('3267', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '?????????????????????', '6325', '2', 'hainanzangzuzizhizhou', 'H', '1', null, '63');
INSERT INTO `system_area` VALUES ('3268', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '?????????', '632521', '3', 'gonghexian', 'G', '1', null, '6325');
INSERT INTO `system_area` VALUES ('3269', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '?????????', '632522', '3', 'tongdexian', 'T', '1', null, '6325');
INSERT INTO `system_area` VALUES ('3270', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '?????????', '632523', '3', 'guidexian', 'G', '1', null, '6325');
INSERT INTO `system_area` VALUES ('3271', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '?????????', '632524', '3', 'xinghaixian', 'X', '1', null, '6325');
INSERT INTO `system_area` VALUES ('3272', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '?????????', '632525', '3', 'guinanxian', 'G', '1', null, '6325');
INSERT INTO `system_area` VALUES ('3273', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '?????????????????????', '6326', '2', 'guoluozangzuzizhizhou', 'G', '1', null, '63');
INSERT INTO `system_area` VALUES ('3274', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '?????????', '632621', '3', 'maqinxian', 'M', '1', null, '6326');
INSERT INTO `system_area` VALUES ('3275', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '?????????', '632622', '3', 'banmaxian', 'B', '1', null, '6326');
INSERT INTO `system_area` VALUES ('3276', null, null, null, '2022-12-24 14:21:06.410669', '2022-12-24 14:21:06.410669', '1', '?????????', '632623', '3', 'gandexian', 'G', '1', null, '6326');
INSERT INTO `system_area` VALUES ('3277', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '?????????', '632624', '3', 'darixian', 'D', '1', null, '6326');
INSERT INTO `system_area` VALUES ('3278', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '?????????', '632625', '3', 'jiuzhixian', 'J', '1', null, '6326');
INSERT INTO `system_area` VALUES ('3279', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '?????????', '632626', '3', 'maduoxian', 'M', '1', null, '6326');
INSERT INTO `system_area` VALUES ('3280', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '?????????????????????', '6327', '2', 'yushuzangzuzizhizhou', 'Y', '1', null, '63');
INSERT INTO `system_area` VALUES ('3281', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '?????????', '632701', '3', 'yushushi', 'Y', '1', null, '6327');
INSERT INTO `system_area` VALUES ('3282', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '?????????', '632722', '3', 'zaduoxian', 'Z', '1', null, '6327');
INSERT INTO `system_area` VALUES ('3283', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '?????????', '632723', '3', 'chengduoxian', 'C', '1', null, '6327');
INSERT INTO `system_area` VALUES ('3284', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '?????????', '632724', '3', 'zhiduoxian', 'Z', '1', null, '6327');
INSERT INTO `system_area` VALUES ('3285', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '?????????', '632725', '3', 'nangqianxian', 'N', '1', null, '6327');
INSERT INTO `system_area` VALUES ('3286', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '????????????', '632726', '3', 'qumalaixian', 'Q', '1', null, '6327');
INSERT INTO `system_area` VALUES ('3287', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '??????????????????????????????', '6328', '2', 'haiximengguzuzangzuzizhizhou', 'H', '1', null, '63');
INSERT INTO `system_area` VALUES ('3288', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '????????????', '632801', '3', 'geermushi', 'G', '1', null, '6328');
INSERT INTO `system_area` VALUES ('3289', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '????????????', '632802', '3', 'delinghashi', 'D', '1', null, '6328');
INSERT INTO `system_area` VALUES ('3290', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '?????????', '632803', '3', 'mangyashi', 'M', '1', null, '6328');
INSERT INTO `system_area` VALUES ('3291', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '?????????', '632821', '3', 'wulanxian', 'W', '1', null, '6328');
INSERT INTO `system_area` VALUES ('3292', null, null, null, '2022-12-24 14:21:06.411669', '2022-12-24 14:21:06.411669', '1', '?????????', '632822', '3', 'doulanxian', 'D', '1', null, '6328');
INSERT INTO `system_area` VALUES ('3293', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '?????????', '632823', '3', 'tianjunxian', 'T', '1', null, '6328');
INSERT INTO `system_area` VALUES ('3294', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '????????????????????????', '632857', '3', 'dachaidanxingzhengweiyuanhui', 'D', '1', null, '6328');
INSERT INTO `system_area` VALUES ('3295', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '?????????????????????', '64', '1', 'ningxiahuizuzizhiqu', 'N', '1', null, null);
INSERT INTO `system_area` VALUES ('3296', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '?????????', '6401', '2', 'yinchuanshi', 'Y', '1', null, '64');
INSERT INTO `system_area` VALUES ('3297', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '?????????', '640104', '3', 'xingqingqu', 'X', '1', null, '6401');
INSERT INTO `system_area` VALUES ('3298', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '?????????', '640105', '3', 'xixiaqu', 'X', '1', null, '6401');
INSERT INTO `system_area` VALUES ('3299', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '?????????', '640106', '3', 'jinfengqu', 'J', '1', null, '6401');
INSERT INTO `system_area` VALUES ('3300', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '?????????', '640121', '3', 'yongningxian', 'Y', '1', null, '6401');
INSERT INTO `system_area` VALUES ('3301', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '?????????', '640122', '3', 'helanxian', 'H', '1', null, '6401');
INSERT INTO `system_area` VALUES ('3302', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '?????????', '640181', '3', 'lingwushi', 'L', '1', null, '6401');
INSERT INTO `system_area` VALUES ('3303', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '????????????', '6402', '2', 'shizuishanshi', 'S', '1', null, '64');
INSERT INTO `system_area` VALUES ('3304', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '????????????', '640202', '3', 'dawukouqu', 'D', '1', null, '6402');
INSERT INTO `system_area` VALUES ('3305', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '?????????', '640205', '3', 'huinongqu', 'H', '1', null, '6402');
INSERT INTO `system_area` VALUES ('3306', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '?????????', '640221', '3', 'pingluoxian', 'P', '1', null, '6402');
INSERT INTO `system_area` VALUES ('3307', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '?????????', '6403', '2', 'wuzhongshi', 'W', '1', null, '64');
INSERT INTO `system_area` VALUES ('3308', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '?????????', '640302', '3', 'litongqu', 'L', '1', null, '6403');
INSERT INTO `system_area` VALUES ('3309', null, null, null, '2022-12-24 14:21:06.412669', '2022-12-24 14:21:06.412669', '1', '????????????', '640303', '3', 'hongsibaoqu', 'H', '1', null, '6403');
INSERT INTO `system_area` VALUES ('3310', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '?????????', '640323', '3', 'yanchixian', 'Y', '1', null, '6403');
INSERT INTO `system_area` VALUES ('3311', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '?????????', '640324', '3', 'tongxinxian', 'T', '1', null, '6403');
INSERT INTO `system_area` VALUES ('3312', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '????????????', '640381', '3', 'qingtongxiashi', 'Q', '1', null, '6403');
INSERT INTO `system_area` VALUES ('3313', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '?????????', '6404', '2', 'guyuanshi', 'G', '1', null, '64');
INSERT INTO `system_area` VALUES ('3314', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '?????????', '640402', '3', 'yuanzhouqu', 'Y', '1', null, '6404');
INSERT INTO `system_area` VALUES ('3315', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '?????????', '640422', '3', 'xijixian', 'X', '1', null, '6404');
INSERT INTO `system_area` VALUES ('3316', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '?????????', '640423', '3', 'longdexian', 'L', '1', null, '6404');
INSERT INTO `system_area` VALUES ('3317', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '?????????', '640424', '3', 'jingyuanxian', 'J', '1', null, '6404');
INSERT INTO `system_area` VALUES ('3318', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '?????????', '640425', '3', 'pengyangxian', 'P', '1', null, '6404');
INSERT INTO `system_area` VALUES ('3319', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '?????????', '6405', '2', 'zhongweishi', 'Z', '1', null, '64');
INSERT INTO `system_area` VALUES ('3320', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '????????????', '640502', '3', 'shapotouqu', 'S', '1', null, '6405');
INSERT INTO `system_area` VALUES ('3321', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '?????????', '640521', '3', 'zhongningxian', 'Z', '1', null, '6405');
INSERT INTO `system_area` VALUES ('3322', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '?????????', '640522', '3', 'haiyuanxian', 'H', '1', null, '6405');
INSERT INTO `system_area` VALUES ('3323', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '????????????????????????', '65', '1', 'xinjiangweiwuerzizhiqu', 'X', '1', null, null);
INSERT INTO `system_area` VALUES ('3324', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '???????????????', '6501', '2', 'wulumuqishi', 'W', '1', null, '65');
INSERT INTO `system_area` VALUES ('3325', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '?????????', '650102', '3', 'tianshanqu', 'T', '1', null, '6501');
INSERT INTO `system_area` VALUES ('3326', null, null, null, '2022-12-24 14:21:06.413669', '2022-12-24 14:21:06.413669', '1', '???????????????', '650103', '3', 'shayibakequ', 'S', '1', null, '6501');
INSERT INTO `system_area` VALUES ('3327', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '?????????', '650104', '3', 'xinshiqu', 'X', '1', null, '6501');
INSERT INTO `system_area` VALUES ('3328', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '????????????', '650105', '3', 'shuimogouqu', 'S', '1', null, '6501');
INSERT INTO `system_area` VALUES ('3329', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '????????????', '650106', '3', 'toutunhequ', 'T', '1', null, '6501');
INSERT INTO `system_area` VALUES ('3330', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '????????????', '650107', '3', 'dabanchengqu', 'D', '1', null, '6501');
INSERT INTO `system_area` VALUES ('3331', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '?????????', '650109', '3', 'midongqu', 'M', '1', null, '6501');
INSERT INTO `system_area` VALUES ('3332', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '???????????????', '650121', '3', 'wulumuqixian', 'W', '1', null, '6501');
INSERT INTO `system_area` VALUES ('3333', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '???????????????', '6502', '2', 'kelamayishi', 'K', '1', null, '65');
INSERT INTO `system_area` VALUES ('3334', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '????????????', '650202', '3', 'dushanziqu', 'D', '1', null, '6502');
INSERT INTO `system_area` VALUES ('3335', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '???????????????', '650203', '3', 'kelamayiqu', 'K', '1', null, '6502');
INSERT INTO `system_area` VALUES ('3336', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '????????????', '650204', '3', 'baijiantanqu', 'B', '1', null, '6502');
INSERT INTO `system_area` VALUES ('3337', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '????????????', '650205', '3', 'wuerhequ', 'W', '1', null, '6502');
INSERT INTO `system_area` VALUES ('3338', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '????????????', '6504', '2', 'tulufanshi', 'T', '1', null, '65');
INSERT INTO `system_area` VALUES ('3339', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '?????????', '650402', '3', 'gaochangqu', 'G', '1', null, '6504');
INSERT INTO `system_area` VALUES ('3340', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '?????????', '650421', '3', 'shanshanxian', 'S', '1', null, '6504');
INSERT INTO `system_area` VALUES ('3341', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '????????????', '650422', '3', 'tuokexunxian', 'T', '1', null, '6504');
INSERT INTO `system_area` VALUES ('3342', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.414669', '1', '?????????', '6505', '2', 'hamishi', 'H', '1', null, '65');
INSERT INTO `system_area` VALUES ('3343', null, null, null, '2022-12-24 14:21:06.414669', '2022-12-24 14:21:06.415669', '1', '?????????', '650502', '3', 'yizhouqu', 'Y', '1', null, '6505');
INSERT INTO `system_area` VALUES ('3344', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '???????????????????????????', '650521', '3', 'balikunhasakezizhixian', 'B', '1', null, '6505');
INSERT INTO `system_area` VALUES ('3345', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '?????????', '650522', '3', 'yiwuxian', 'Y', '1', null, '6505');
INSERT INTO `system_area` VALUES ('3346', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '?????????????????????', '6523', '2', 'changjihuizuzizhizhou', 'C', '1', null, '65');
INSERT INTO `system_area` VALUES ('3347', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '?????????', '652301', '3', 'changjishi', 'C', '1', null, '6523');
INSERT INTO `system_area` VALUES ('3348', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '?????????', '652302', '3', 'fukangshi', 'F', '1', null, '6523');
INSERT INTO `system_area` VALUES ('3349', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '????????????', '652323', '3', 'hutubixian', 'H', '1', null, '6523');
INSERT INTO `system_area` VALUES ('3350', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '????????????', '652324', '3', 'manasixian', 'M', '1', null, '6523');
INSERT INTO `system_area` VALUES ('3351', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '?????????', '652325', '3', 'qitaixian', 'Q', '1', null, '6523');
INSERT INTO `system_area` VALUES ('3352', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '???????????????', '652327', '3', 'jimusaerxian', 'J', '1', null, '6523');
INSERT INTO `system_area` VALUES ('3353', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '????????????????????????', '652328', '3', 'muleihasakezizhixian', 'M', '1', null, '6523');
INSERT INTO `system_area` VALUES ('3354', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '???????????????????????????', '6527', '2', 'boertalamengguzizhizhou', 'B', '1', null, '65');
INSERT INTO `system_area` VALUES ('3355', null, null, null, '2022-12-24 14:21:06.415669', '2022-12-24 14:21:06.415669', '1', '?????????', '652701', '3', 'boleshi', 'B', '1', null, '6527');
INSERT INTO `system_area` VALUES ('3356', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '???????????????', '652702', '3', 'alashankoushi', 'A', '1', null, '6527');
INSERT INTO `system_area` VALUES ('3357', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '?????????', '652722', '3', 'jinghexian', 'J', '1', null, '6527');
INSERT INTO `system_area` VALUES ('3358', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '?????????', '652723', '3', 'wenquanxian', 'W', '1', null, '6527');
INSERT INTO `system_area` VALUES ('3359', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '???????????????????????????', '6528', '2', 'bayinguolengmengguzizhizhou', 'B', '1', null, '65');
INSERT INTO `system_area` VALUES ('3360', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '????????????', '652801', '3', 'kuerleishi', 'K', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3361', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '?????????', '652822', '3', 'luntaixian', 'L', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3362', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '?????????', '652823', '3', 'yulixian', 'Y', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3363', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '?????????', '652824', '3', 'ruoqiangxian', 'R', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3364', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '?????????', '652825', '3', 'qiemoxian', 'Q', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3365', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '?????????????????????', '652826', '3', 'yanqihuizuzizhixian', 'Y', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3366', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '?????????', '652827', '3', 'hejingxian', 'H', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3367', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '?????????', '652828', '3', 'heshuoxian', 'H', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3368', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '?????????', '652829', '3', 'bohuxian', 'B', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3369', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '??????????????????????????????', '652871', '3', 'kuerleijingjijishukaifaqu', 'K', '1', null, '6528');
INSERT INTO `system_area` VALUES ('3370', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '???????????????', '6529', '2', 'akesudiqu', 'A', '1', null, '65');
INSERT INTO `system_area` VALUES ('3371', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '????????????', '652901', '3', 'akesushi', 'A', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3372', null, null, null, '2022-12-24 14:21:06.416676', '2022-12-24 14:21:06.416676', '1', '?????????', '652902', '3', 'kucheshi', 'K', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3373', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '?????????', '652922', '3', 'wensuxian', 'W', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3374', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '?????????', '652924', '3', 'shayaxian', 'S', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3375', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '?????????', '652925', '3', 'xinhexian', 'X', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3376', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '?????????', '652926', '3', 'baichengxian', 'B', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3377', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '?????????', '652927', '3', 'wushenxian', 'W', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3378', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '????????????', '652928', '3', 'awatixian', 'A', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3379', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '?????????', '652929', '3', 'kepingxian', 'K', '1', null, '6529');
INSERT INTO `system_area` VALUES ('3380', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '?????????????????????????????????', '6530', '2', 'kezileisukeerkezizizhizhou', 'K', '1', null, '65');
INSERT INTO `system_area` VALUES ('3381', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '????????????', '653001', '3', 'atushenshi', 'A', '1', null, '6530');
INSERT INTO `system_area` VALUES ('3382', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '????????????', '653022', '3', 'aketaoxian', 'A', '1', null, '6530');
INSERT INTO `system_area` VALUES ('3383', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '????????????', '653023', '3', 'aheqixian', 'A', '1', null, '6530');
INSERT INTO `system_area` VALUES ('3384', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '?????????', '653024', '3', 'wuqiaxian', 'W', '1', null, '6530');
INSERT INTO `system_area` VALUES ('3385', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '????????????', '6531', '2', 'kashidiqu', 'K', '1', null, '65');
INSERT INTO `system_area` VALUES ('3386', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '?????????', '653101', '3', 'kashishi', 'K', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3387', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '?????????', '653121', '3', 'shufuxian', 'S', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3388', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '?????????', '653122', '3', 'shulexian', 'S', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3389', null, null, null, '2022-12-24 14:21:06.417671', '2022-12-24 14:21:06.417671', '1', '????????????', '653123', '3', 'yingjishaxian', 'Y', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3390', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '?????????', '653124', '3', 'zepuxian', 'Z', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3391', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '?????????', '653125', '3', 'shachexian', 'S', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3392', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '?????????', '653126', '3', 'yechengxian', 'Y', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3393', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '????????????', '653127', '3', 'maigaitixian', 'M', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3394', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '????????????', '653128', '3', 'yuepuhuxian', 'Y', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3395', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '?????????', '653129', '3', 'gashixian', 'G', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3396', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '?????????', '653130', '3', 'bachuxian', 'B', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3397', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '?????????????????????????????????', '653131', '3', 'tashenkuergantajikezizhixian', 'T', '1', null, '6531');
INSERT INTO `system_area` VALUES ('3398', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '????????????', '6532', '2', 'hetiandiqu', 'H', '1', null, '65');
INSERT INTO `system_area` VALUES ('3399', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '?????????', '653201', '3', 'hetianshi', 'H', '1', null, '6532');
INSERT INTO `system_area` VALUES ('3400', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '?????????', '653221', '3', 'hetianxian', 'H', '1', null, '6532');
INSERT INTO `system_area` VALUES ('3401', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '?????????', '653222', '3', 'moyuxian', 'M', '1', null, '6532');
INSERT INTO `system_area` VALUES ('3402', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '?????????', '653223', '3', 'pishanxian', 'P', '1', null, '6532');
INSERT INTO `system_area` VALUES ('3403', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '?????????', '653224', '3', 'luopuxian', 'L', '1', null, '6532');
INSERT INTO `system_area` VALUES ('3404', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '?????????', '653225', '3', 'celeixian', 'C', '1', null, '6532');
INSERT INTO `system_area` VALUES ('3405', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '?????????', '653226', '3', 'yutianxian', 'Y', '1', null, '6532');
INSERT INTO `system_area` VALUES ('3406', null, null, null, '2022-12-24 14:21:06.418670', '2022-12-24 14:21:06.418670', '1', '?????????', '653227', '3', 'minfengxian', 'M', '1', null, '6532');
INSERT INTO `system_area` VALUES ('3407', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '????????????????????????', '6540', '2', 'yilihasakezizhizhou', 'Y', '1', null, '65');
INSERT INTO `system_area` VALUES ('3408', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '?????????', '654002', '3', 'yiningshi', 'Y', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3409', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '?????????', '654003', '3', 'kuitunshi', 'K', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3410', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '???????????????', '654004', '3', 'huoerguosishi', 'H', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3411', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '?????????', '654021', '3', 'yiningxian', 'Y', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3412', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '???????????????????????????', '654022', '3', 'chabuchaerxibozizhixian', 'C', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3413', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '?????????', '654023', '3', 'huochengxian', 'H', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3414', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '?????????', '654024', '3', 'gongliuxian', 'G', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3415', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '?????????', '654025', '3', 'xinyuanxian', 'X', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3416', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '?????????', '654026', '3', 'zhaosuxian', 'Z', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3417', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '????????????', '654027', '3', 'tekesixian', 'T', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3418', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '????????????', '654028', '3', 'nileikexian', 'N', '1', null, '6540');
INSERT INTO `system_area` VALUES ('3419', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '????????????', '6542', '2', 'tachengdiqu', 'T', '1', null, '65');
INSERT INTO `system_area` VALUES ('3420', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '?????????', '654201', '3', 'tachengshi', 'T', '1', null, '6542');
INSERT INTO `system_area` VALUES ('3421', null, null, null, '2022-12-24 14:21:06.419670', '2022-12-24 14:21:06.419670', '1', '?????????', '654202', '3', 'wusushi', 'W', '1', null, '6542');
INSERT INTO `system_area` VALUES ('3422', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '?????????', '654221', '3', 'eminxian', 'E', '1', null, '6542');
INSERT INTO `system_area` VALUES ('3423', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '?????????', '654223', '3', 'shawanxian', 'S', '1', null, '6542');
INSERT INTO `system_area` VALUES ('3424', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '?????????', '654224', '3', 'tuolixian', 'T', '1', null, '6542');
INSERT INTO `system_area` VALUES ('3425', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '?????????', '654225', '3', 'yuminxian', 'Y', '1', null, '6542');
INSERT INTO `system_area` VALUES ('3426', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '??????????????????????????????', '654226', '3', 'hebukesaiermengguzizhixian', 'H', '1', null, '6542');
INSERT INTO `system_area` VALUES ('3427', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '???????????????', '6543', '2', 'aleitaidiqu', 'A', '1', null, '65');
INSERT INTO `system_area` VALUES ('3428', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '????????????', '654301', '3', 'aleitaishi', 'A', '1', null, '6543');
INSERT INTO `system_area` VALUES ('3429', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '????????????', '654321', '3', 'buerjinxian', 'B', '1', null, '6543');
INSERT INTO `system_area` VALUES ('3430', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '?????????', '654322', '3', 'fuyunxian', 'F', '1', null, '6543');
INSERT INTO `system_area` VALUES ('3431', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '?????????', '654323', '3', 'fuhaixian', 'F', '1', null, '6543');
INSERT INTO `system_area` VALUES ('3432', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '????????????', '654324', '3', 'habahexian', 'H', '1', null, '6543');
INSERT INTO `system_area` VALUES ('3433', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '?????????', '654325', '3', 'qinghexian', 'Q', '1', null, '6543');
INSERT INTO `system_area` VALUES ('3434', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '????????????', '654326', '3', 'jimunaixian', 'J', '1', null, '6543');
INSERT INTO `system_area` VALUES ('3435', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '?????????????????????????????????', '6590', '2', 'zizhiquzhixiaxianjixingzhengquhua', 'Z', '1', null, '65');
INSERT INTO `system_area` VALUES ('3436', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '????????????', '659001', '3', 'shihezishi', 'S', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3437', null, null, null, '2022-12-24 14:21:06.420671', '2022-12-24 14:21:06.420671', '1', '????????????', '659002', '3', 'alaershi', 'A', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3438', null, null, null, '2022-12-24 14:21:06.421670', '2022-12-24 14:21:06.421670', '1', '???????????????', '659003', '3', 'tumushukeshi', 'T', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3439', null, null, null, '2022-12-24 14:21:06.421670', '2022-12-24 14:21:06.421670', '1', '????????????', '659004', '3', 'wujiaqushi', 'W', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3440', null, null, null, '2022-12-24 14:21:06.421670', '2022-12-24 14:21:06.421670', '1', '?????????', '659005', '3', 'beitunshi', 'B', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3441', null, null, null, '2022-12-24 14:21:06.421670', '2022-12-24 14:21:06.421670', '1', '????????????', '659006', '3', 'tiemenguanshi', 'T', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3442', null, null, null, '2022-12-24 14:21:06.421670', '2022-12-24 14:21:06.421670', '1', '?????????', '659007', '3', 'shuangheshi', 'S', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3443', null, null, null, '2022-12-24 14:21:06.421670', '2022-12-24 14:21:06.421670', '1', '???????????????', '659008', '3', 'kekedalashi', 'K', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3444', null, null, null, '2022-12-24 14:21:06.421670', '2022-12-24 14:21:06.421670', '1', '?????????', '659009', '3', 'kunyushi', 'K', '1', null, '6590');
INSERT INTO `system_area` VALUES ('3445', null, null, null, '2022-12-24 14:21:06.421670', '2022-12-24 14:21:06.421670', '1', '????????????', '659010', '3', 'huyangheshi', 'H', '1', null, '6590');

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
INSERT INTO `system_dept` VALUES ('1', null, '???????????????', null, '2022-12-24 14:20:32.862219', '2022-12-24 14:20:32.862219', '1', '????????????', null, '13244724433', '939589097@qq.com', '1', '1', null);
INSERT INTO `system_dept` VALUES ('2', null, '???????????????', null, '2022-12-24 14:20:32.869211', '2022-12-24 14:20:32.869211', '2', '????????????', null, '13244724433', '939589097@qq.com', '1', '1', null);
INSERT INTO `system_dept` VALUES ('3', null, '???????????????', null, '2022-12-24 14:20:32.879212', '2022-12-24 14:20:32.879212', '1', 'IT??????', null, '13244724433', '939589097@qq.com', '1', '1', '1');
INSERT INTO `system_dept` VALUES ('4', null, '???????????????', null, '2022-12-24 14:20:32.887216', '2022-12-24 14:20:32.887216', '2', '????????????', null, '13244724433', '939589097@qq.com', '1', '1', '1');
INSERT INTO `system_dept` VALUES ('5', null, '???????????????', null, '2022-12-24 14:20:32.894216', '2022-12-24 14:20:32.894216', '1', 'IT??????', null, '13244724433', '939589097@qq.com', '1', '1', '2');
INSERT INTO `system_dept` VALUES ('6', null, '???????????????', null, '2022-12-24 14:20:32.901220', '2022-12-24 14:20:32.901220', '2', '????????????', null, '13244724433', '939589097@qq.com', '1', '1', '2');

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
INSERT INTO `system_dict` VALUES ('1', '???????????????', null, '2022-12-24 14:20:33.408695', '2022-12-24 14:20:33.408695', '1', '????????????', 'project_status', '1', null, '1');

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
INSERT INTO `system_dict_item` VALUES ('1', '???????????????', null, '2022-12-24 14:20:33.423732', '2022-12-24 14:20:33.423732', '2', '??????', '??????', '1', null, '1', '1');
INSERT INTO `system_dict_item` VALUES ('2', '???????????????', null, '2022-12-24 14:20:33.430729', '2022-12-24 14:20:33.430729', '1', '??????', '??????', '1', null, '1', '1');
INSERT INTO `system_dict_item` VALUES ('3', '???????????????', null, '2022-12-24 14:20:33.438721', '2022-12-24 14:20:33.438721', '3', '??????', '??????', '1', null, '1', '1');

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
INSERT INTO `system_login_log` VALUES ('1', null, null, null, '2022-12-24 14:57:12.978713', '2022-12-24 14:57:12.978713', '1', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 87.0.4280', 'Chrome 87.0.4280', 'Windows 10', '', '??????', '', '', '', '', '', '', '', '', '', '1', '1');

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
INSERT INTO `system_menu` VALUES ('1', null, '???????????????', null, '2022-12-24 14:20:32.923168', '2022-12-24 14:20:32.923168', '2', 'ion:settings-outline', '????????????', null, '0', '0', '/system', '/system/account', 'LAYOUT', null, '1', '0', '0', '1', null);
INSERT INTO `system_menu` VALUES ('2', null, '???????????????', null, '2022-12-24 14:20:32.932169', '2022-12-24 14:20:32.932169', '3', 'ant-design:appstore-outlined', '????????????', null, '0', '0', '/tool', null, 'LAYOUT', null, '1', '0', '0', '1', null);
INSERT INTO `system_menu` VALUES ('3', null, '???????????????', null, '2022-12-24 14:20:32.941182', '2022-12-24 14:20:32.941182', '4', 'ant-design:code-filled', '????????????', null, '0', '0', '/log', null, 'LAYOUT', null, '1', '0', '0', '1', null);
INSERT INTO `system_menu` VALUES ('4', null, '???????????????', null, '2022-12-24 14:20:32.950169', '2022-12-24 14:20:32.950169', '1', 'ant-design:bars-outlined', '????????????', null, '0', '1', 'menu', null, '/fuadmin/system/menu/index', 'MenuManagement', '1', '0', '0', '1', '1');
INSERT INTO `system_menu` VALUES ('5', null, '???????????????', null, '2022-12-24 14:20:32.957353', '2022-12-24 14:20:32.957353', '2', 'ant-design:contacts-outlined', '????????????', null, '0', '1', 'post', null, '/fuadmin/system/post/index', 'PostManagement', '1', '0', '0', '1', '1');
INSERT INTO `system_menu` VALUES ('6', null, '???????????????', null, '2022-12-24 14:20:32.965357', '2022-12-24 14:20:32.965357', '3', 'ant-design:user-outlined', '????????????', null, '0', '1', 'account', null, '/fuadmin/system/account/index', 'AccountManagement', '1', '0', '0', '1', '1');
INSERT INTO `system_menu` VALUES ('7', null, '???????????????', null, '2022-12-24 14:20:32.974359', '2022-12-24 14:20:32.974359', '4', 'ant-design:project-outlined', '????????????', null, '0', '1', 'dept', null, '/fuadmin/system/dept/index', 'DeptManagement', '1', '0', '0', '1', '1');
INSERT INTO `system_menu` VALUES ('8', null, '???????????????', null, '2022-12-24 14:20:32.981354', '2022-12-24 14:20:32.981354', '5', 'ant-design:team-outlined', '????????????', null, '0', '1', 'role', null, '/fuadmin/system/role/index', 'RoleManagement', '1', '0', '0', '1', '1');
INSERT INTO `system_menu` VALUES ('9', null, '???????????????', null, '2022-12-24 14:20:32.988349', '2022-12-24 14:20:32.988349', '1', 'ant-design:database-outlined', '????????????', null, '0', '1', 'dict', null, '/fuadmin/system/data-dict/index', 'DataDict', '1', '0', '0', '1', '2');
INSERT INTO `system_menu` VALUES ('10', null, '???????????????', null, '2022-12-24 14:20:32.995353', '2022-12-24 14:20:32.995353', '2', 'ant-design:database-filled', '????????????', null, '0', '1', 'category', null, '/fuadmin/system/category_dict/index', 'CategoryDict', '1', '0', '0', '1', '2');
INSERT INTO `system_menu` VALUES ('11', null, '???????????????', null, '2022-12-24 14:20:33.002357', '2022-12-24 14:20:33.002357', '3', 'ant-design:clock-circle-outlined', '????????????', null, '0', '1', 'celery', null, '/fuadmin/system/celery/index', 'Celery', '1', '0', '0', '1', '2');
INSERT INTO `system_menu` VALUES ('12', null, '???????????????', null, '2022-12-24 14:20:33.009372', '2022-12-24 14:20:33.009372', '4', 'ant-design:folder-open-outlined', '????????????', null, '0', '1', 'file', null, '/fuadmin/system/file/index', 'FileManagement', '1', '0', '0', '1', '2');
INSERT INTO `system_menu` VALUES ('13', null, '???????????????', null, '2022-12-24 14:20:33.017355', '2022-12-24 14:20:33.017355', '1', 'ant-design:book-outlined', '????????????', null, '0', '1', 'login_log', null, '/fuadmin/system/log/login_log/index', 'LoginLogManagement', '1', '0', '0', '1', '3');
INSERT INTO `system_menu` VALUES ('14', null, '???????????????', null, '2022-12-24 14:20:33.024359', '2022-12-24 14:20:33.024359', '2', 'ant-design:book-outlined', '????????????', null, '0', '1', 'operation_log', null, '/fuadmin/system/log/operation_log/index', 'OperationLogManagement', '1', '0', '0', '1', '3');
INSERT INTO `system_menu` VALUES ('15', null, '???????????????', null, '2022-12-24 14:20:33.031353', '2022-12-24 14:20:33.031353', '3', 'ant-design:book-outlined', '????????????', null, '0', '1', 'celery_log', null, '/fuadmin/system/log/celery_log/index', 'CeleryLog', '1', '0', '0', '1', '3');
INSERT INTO `system_menu` VALUES ('16', null, '???????????????', null, '2022-12-24 14:20:33.039564', '2022-12-24 14:20:33.039564', '1', 'bx:bx-home', 'Dashboard', null, '0', '0', '/dashboard', '/dashboard/analysis', 'LAYOUT', null, '1', '0', '0', '1', null);
INSERT INTO `system_menu` VALUES ('17', null, '???????????????', null, '2022-12-24 14:20:33.047571', '2022-12-24 14:20:33.047571', '1', 'bx:bx-home', '?????????', null, '0', '1', 'analysis', null, '/dashboard/analysis/index', 'Analysis', '1', '0', '0', '1', '16');
INSERT INTO `system_menu` VALUES ('18', null, '???????????????', null, '2022-12-24 14:20:33.056565', '2022-12-24 14:20:33.056565', '2', 'bx:bx-home', '?????????', null, '0', '1', 'workbench', null, '/dashboard/workbench/index', 'Workbench', '1', '0', '0', '1', '16');
INSERT INTO `system_menu` VALUES ('19', null, '???????????????', null, '2022-12-24 14:20:33.063563', '2022-12-24 14:20:33.063563', '6', 'ant-design:setting-outlined', '????????????', null, '0', '1', 'account/setting/:id', null, '/fuadmin/system/account/setting/index', 'AccountSetting', '1', '0', '0', '1', '1');
INSERT INTO `system_menu` VALUES ('20', null, '???????????????', null, '2022-12-24 14:20:33.071559', '2022-12-24 14:20:33.071559', '5', 'ant-design:bar-chart-outlined', '????????????', null, '0', '0', '/chart', '/chart/amap', 'LAYOUT', null, '1', '0', '0', '1', null);
INSERT INTO `system_menu` VALUES ('21', null, '???????????????', null, '2022-12-24 14:20:33.078562', '2022-12-24 14:20:33.078562', '1', 'ant-design:environment-outlined', '????????????', null, '0', '1', 'bmap', null, '/fuadmin/charts/map/Baidu', 'BaiduMap', '1', '0', '0', '1', '20');
INSERT INTO `system_menu` VALUES ('22', null, '???????????????', null, '2022-12-24 14:20:33.086565', '2022-12-24 14:20:33.086565', '2', 'ant-design:environment-outlined', '????????????', null, '0', '1', 'amap', null, '/fuadmin/charts/map/Gaode', 'AMap', '1', '0', '0', '1', '20');
INSERT INTO `system_menu` VALUES ('23', null, '???????????????', null, '2022-12-24 14:20:33.094564', '2022-12-24 14:20:33.094564', '3', 'ant-design:bar-chart-outlined', 'Echart Map', null, '0', '1', 'echartmap', null, '/fuadmin/charts/Map', 'AMap', '1', '0', '0', '1', '20');
INSERT INTO `system_menu` VALUES ('24', null, '???????????????', null, '2022-12-24 14:20:33.102562', '2022-12-24 14:20:33.102562', '7', 'ant-design:audit-outlined', '????????????', null, '0', '1', '/demo', null, '/demo/index', 'Demo', '1', '0', '0', '1', null);
INSERT INTO `system_menu` VALUES ('25', null, '???????????????', null, '2022-12-24 14:20:33.110561', '2022-12-24 14:20:33.110561', '6', 'ant-design:fund-projection-screen-outlined', '????????????', null, '0', '0', '/operation', '/chart/amap', 'LAYOUT', null, '1', '0', '0', '1', null);
INSERT INTO `system_menu` VALUES ('26', null, '???????????????', null, '2022-12-24 14:20:33.118570', '2022-12-24 14:20:33.118570', '1', 'ant-design:monitor-outlined', '????????????', null, '0', '1', 'monitor', null, '/fuadmin/system/monitor/server', 'Server', '1', '0', '0', '1', '25');

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
INSERT INTO `system_menu_button` VALUES ('1', null, '???????????????', null, '2022-12-24 14:20:33.132557', '2022-12-24 14:20:33.132557', '1', '??????', 'post:add', '/api/system/post', '1', '1', '5');
INSERT INTO `system_menu_button` VALUES ('2', '', '???????????????', null, '2022-12-24 14:20:33.140561', '2022-12-24 14:20:33.140561', '2', '??????', 'post:delete', '/api/system/post/{post_id}', '3', '1', '5');
INSERT INTO `system_menu_button` VALUES ('3', null, '???????????????', null, '2022-12-24 14:20:33.147561', '2022-12-24 14:20:33.147561', '3', '??????', 'post:update', '/api/system/post/{post_id}', '2', '1', '5');
INSERT INTO `system_menu_button` VALUES ('4', '', '???????????????', null, '2022-12-24 14:20:33.155566', '2022-12-24 14:20:33.155566', '4', '??????', 'post:search', '/api/system/post', '0', '1', '5');
INSERT INTO `system_menu_button` VALUES ('5', null, '???????????????', null, '2022-12-24 14:20:33.162562', '2022-12-24 14:20:33.162562', '1', '??????', 'menu:add', '/api/system/menu', '1', '1', '4');
INSERT INTO `system_menu_button` VALUES ('6', null, '???????????????', null, '2022-12-24 14:20:33.169559', '2022-12-24 14:20:33.169559', '2', '??????', 'menu:delete', '/api/system/menu/{menu_id}', '3', '1', '4');
INSERT INTO `system_menu_button` VALUES ('7', null, '???????????????', null, '2022-12-24 14:20:33.175561', '2022-12-24 14:20:33.175561', '3', '??????', 'menu:update', '/api/system/menu/{menu_id}', '2', '1', '4');
INSERT INTO `system_menu_button` VALUES ('8', null, '???????????????', null, '2022-12-24 14:20:33.181561', '2022-12-24 14:20:33.181561', '4', '??????', 'menu:search', '/api/system/menu', '0', '1', '4');
INSERT INTO `system_menu_button` VALUES ('9', null, '???????????????', null, '2022-12-24 14:20:33.188573', '2022-12-24 14:20:33.188573', '4', '????????????', 'button:add', '/api/system/menu_button', '0', '1', '8');
INSERT INTO `system_menu_button` VALUES ('10', null, '???????????????', null, '2022-12-24 14:20:33.195559', '2022-12-24 14:20:33.195559', '7', '????????????', 'button:update', '/api/system/menu_button/{menu_button_id}', '2', '1', '4');
INSERT INTO `system_menu_button` VALUES ('11', '', '???????????????', null, '2022-12-24 14:20:33.203569', '2022-12-24 14:20:33.203569', '5', '????????????', 'button:add', '/api/system/menu_button', '1', '1', '4');
INSERT INTO `system_menu_button` VALUES ('12', '', '???????????????', null, '2022-12-24 14:20:33.210561', '2022-12-24 14:20:33.210561', '6', '????????????', 'button:delete', '/api/system/menu_button/{menu_button}', '3', '1', '4');
INSERT INTO `system_menu_button` VALUES ('13', null, '???????????????', null, '2022-12-24 14:20:33.217561', '2022-12-24 14:20:33.217561', '1', '??????', 'user:add', '/api/system/user', '1', '1', '6');
INSERT INTO `system_menu_button` VALUES ('14', null, '???????????????', null, '2022-12-24 14:20:33.223562', '2022-12-24 14:20:33.223562', '2', '??????', 'user:delete', '/api/system/user/{user_id}', '3', '1', '6');
INSERT INTO `system_menu_button` VALUES ('15', null, '???????????????', null, '2022-12-24 14:20:33.231185', '2022-12-24 14:20:33.231185', '3', '??????', 'user:update', '/api/system/user/{user_id}', '2', '1', '6');
INSERT INTO `system_menu_button` VALUES ('16', '', '???????????????', null, '2022-12-24 14:20:33.237186', '2022-12-24 14:20:33.237186', '4', '??????', 'user:search', '/api/system/user', '0', '1', '6');
INSERT INTO `system_menu_button` VALUES ('17', null, '???????????????', null, '2022-12-24 14:20:33.244182', '2022-12-24 14:20:33.244182', '1', '??????', 'dept:add', '/api/system/dept', '1', '1', '7');
INSERT INTO `system_menu_button` VALUES ('18', null, '???????????????', null, '2022-12-24 14:20:33.251190', '2022-12-24 14:20:33.251190', '2', '??????', 'dept:delete', '/api/system/dept/{dept_id}', '3', '1', '7');
INSERT INTO `system_menu_button` VALUES ('19', null, '???????????????', null, '2022-12-24 14:20:33.258186', '2022-12-24 14:20:33.258186', '3', '??????', 'dept:update', '/api/system/dept/{dept_id}', '2', '1', '7');
INSERT INTO `system_menu_button` VALUES ('20', null, '???????????????', null, '2022-12-24 14:20:33.266185', '2022-12-24 14:20:33.266185', '4', '??????', 'dept:search', '/api/system/dept', '0', '1', '7');
INSERT INTO `system_menu_button` VALUES ('21', null, '???????????????', null, '2022-12-24 14:20:33.274181', '2022-12-24 14:20:33.274181', '1', '??????', 'role:add', '/api/system/role', '1', '1', '8');
INSERT INTO `system_menu_button` VALUES ('22', null, '???????????????', null, '2022-12-24 14:20:33.283188', '2022-12-24 14:20:33.283188', '2', '??????', 'role:delete', '/api/system/role/{role_id}', '3', '1', '8');
INSERT INTO `system_menu_button` VALUES ('23', null, '???????????????', null, '2022-12-24 14:20:33.292185', '2022-12-24 14:20:33.292185', '3', '??????', 'role:update', '/api/system/role/{role_id}', '2', '1', '8');
INSERT INTO `system_menu_button` VALUES ('24', '', '???????????????', null, '2022-12-24 14:20:33.300184', '2022-12-24 14:20:33.300184', '4', '??????', 'role:search', '/api/system/role', '0', '1', '8');
INSERT INTO `system_menu_button` VALUES ('25', null, '???????????????', null, '2022-12-24 14:20:33.308194', '2022-12-24 14:20:33.308194', '1', '??????', 'dict:add', '/api/dict/post', '1', '1', '9');
INSERT INTO `system_menu_button` VALUES ('26', null, '???????????????', null, '2022-12-24 14:20:33.316189', '2022-12-24 14:20:33.316189', '2', '??????', 'dict:delete', '/api/system/dict/{dict_id}', '3', '1', '9');
INSERT INTO `system_menu_button` VALUES ('27', null, '???????????????', null, '2022-12-24 14:20:33.324192', '2022-12-24 14:20:33.324192', '3', '??????', 'dict:update', '/api/system/dict/{dict_id}', '2', '1', '9');
INSERT INTO `system_menu_button` VALUES ('28', null, '???????????????', null, '2022-12-24 14:20:33.332185', '2022-12-24 14:20:33.332185', '4', '??????', 'dict:search', '/api/system/dict', '0', '1', '9');
INSERT INTO `system_menu_button` VALUES ('29', null, '???????????????', null, '2022-12-24 14:20:33.339182', '2022-12-24 14:20:33.339182', '1', '??????', 'category:add', '/api/system/category_dict', '1', '1', '10');
INSERT INTO `system_menu_button` VALUES ('30', null, '???????????????', null, '2022-12-24 14:20:33.347184', '2022-12-24 14:20:33.347184', '2', '??????', 'category:delete', '/api/system/category_dict/{category_dict_id}', '3', '1', '10');
INSERT INTO `system_menu_button` VALUES ('31', null, '???????????????', null, '2022-12-24 14:20:33.354186', '2022-12-24 14:20:33.354186', '3', '??????', 'category:update', '/api/system/category_dict/{category_dict_id}', '2', '1', '10');
INSERT INTO `system_menu_button` VALUES ('32', null, '???????????????', null, '2022-12-24 14:20:33.362562', '2022-12-24 14:20:33.362562', '4', '??????', 'category:search', '/api/system/category_dict', '0', '1', '10');
INSERT INTO `system_menu_button` VALUES ('33', null, '???????????????', null, '2022-12-24 14:20:33.371552', '2022-12-24 14:20:33.372555', '1', '??????', 'demo:add', '/api/demo/demo', '1', '1', '24');
INSERT INTO `system_menu_button` VALUES ('34', null, '???????????????', null, '2022-12-24 14:20:33.379554', '2022-12-24 14:20:33.379554', '2', '??????', 'demo:delete', '/api/demo/demo/{demo_id}', '3', '1', '24');
INSERT INTO `system_menu_button` VALUES ('35', null, '???????????????', null, '2022-12-24 14:20:33.386552', '2022-12-24 14:20:33.386552', '2', '??????', 'demo:update', '/api/demo/demo/{demo_id}', '3', '1', '24');
INSERT INTO `system_menu_button` VALUES ('36', null, '???????????????', null, '2022-12-24 14:20:33.393552', '2022-12-24 14:20:33.393552', '4', '??????', 'demo:search', '/api/demo/demo', '0', '1', '24');

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
INSERT INTO `system_operation_log` VALUES ('9', null, null, null, '2022-12-24 14:57:12.993714', '2022-12-24 14:57:12.993714', '1', 'superadmin', null, '/api/system/login', '{\'password\': \'******\', \'username\': \'superadmin\'}', 'POST', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'multi_depart\': \'1\', \'sysAllDictItems\': \'q\', \'departs\': \'e\', \'userInfo\': {\'last_login\': None, \'is_superuser\': True, \'is_staff\': True, \'is_active\': True, \'date_joined\': \'2022-12-24T14:20:33.469\', \'id\': 1, \'remark\': None, \'creator\': None, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': None, \'create_datetime\': None, \'sort\': 1, \'username\': \'superadmin\', \'email\': \'\', \'mobile\': None, \'avatar\': None, \'name\': \'???????????????\', \'status\': True, \'gender\': 1, \'user_type\': 0, \'dept\': None, \'first_name\': \'\', \'last_name\': \'\', \'groups\': [], \'user_permissions\': []}, \'token\': \'bearer eyJ0eXBlIjogIkpXVCIsICJhbGciOiAiSFMyNTYifQ.eyJleHAiOiAxNjcxOTA4MjMxLCAibGFzdF9sb2dpbiI6IG51bGwsICJpc19zdXBlcnVzZXIiOiB0cnVlLCAiaXNfc3RhZmYiOiB0cnVlLCAiaXNfYWN0aXZlIjogdHJ1ZSwgImRhdGVfam9pbmVkIjogIjIwMjItMTItMjQgMTQ6MjA6MzMiLCAiaWQiOiAxLCAicmVtYXJrIjogbnVsbCwgImNyZWF0b3IiOiBudWxsLCAibW9kaWZpZXIiOiBudWxsLCAiYmVsb25nX2RlcHQiOiBudWxsLCAic29ydCI6IDEsICJ1c2VybmFtZSI6ICJzdXBlcmFkbWluIiwgImVtYWlsIjogIiIsICJtb2JpbGUiOiBudWxsLCAibmFtZSI6ICJcdThkODVcdTdlYTdcdTdiYTFcdTc0MDZcdTU0NTgiLCAic3RhdHVzIjogdHJ1ZSwgImdlbmRlciI6IDEsICJ1c2VyX3R5cGUiOiAwLCAiZGVwdCI6IG51bGwsICJmaXJzdF9uYW1lIjogIiIsICJsYXN0X25hbWUiOiAiIiwgImdyb3VwcyI6IFtdLCAidXNlcl9wZXJtaXNzaW9ucyI6IFtdLCAicG9zdCI6IFtdLCAicm9sZSI6IFtdfQ.73r7VN2l2tpT1nOAHPQ7muY48w3fVEkcmvgOR0D4pwI\'}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('10', null, null, null, '2022-12-24 14:57:13.173515', '2022-12-24 14:57:13.173515', '1', 'superadmin', null, '/api/system/userinfo', '{\'_t\': \'1671865033013\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'last_login\': None, \'is_superuser\': True, \'is_staff\': True, \'is_active\': True, \'date_joined\': \'2022-12-24T14:20:33.469\', \'id\': 1, \'remark\': None, \'creator\': None, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:20:33.483\', \'create_datetime\': \'2022-12-24T14:20:33.483\', \'sort\': 1, \'username\': \'superadmin\', \'email\': \'\', \'mobile\': None, \'avatar\': None, \'name\': \'???????????????\', \'status\': True, \'gender\': 1, \'user_type\': 0, \'dept\': None, \'first_name\': \'\', \'last_name\': \'\', \'groups\': [], \'user_permissions\': []}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('11', null, null, null, '2022-12-24 14:57:13.289590', '2022-12-24 14:57:13.289590', '1', 'superadmin', null, '/api/system/permCode', '{\'_t\': \'1671865033210\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': [\'post:add\', \'menu:add\', \'user:add\', \'dept:add\', \'role:add\', \'dict:add\', \'category:add\', \'demo:add\', \'post:delete\', \'menu:delete\', \'user:delete\', \'dept:delete\', \'role:delete\', \'dict:delete\', \'category:delete\', \'demo:delete\', \'demo:update\', \'post:update\', \'menu:update\', \'user:update\', \'dept:update\', \'role:update\', \'dict:update\', \'category:update\', \'post:search\', \'menu:search\', \'button:add\', \'user:search\', \'dept:search\', \'role:search\', \'dict:search\', \'category:search\', \'demo:search\', \'button:add\', \'button:delete\', \'button:update\']}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('12', null, null, null, '2022-12-24 14:57:13.347593', '2022-12-24 14:57:13.347593', '1', 'superadmin', null, '/api/system/menu/route/tree', '{\'_t\': \'1671865033210\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': [{\'id\': 16, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/dashboard\', \'redirect\': \'/dashboard/analysis\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'Dashboard\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'bx:bx-home\'}, \'choice\': 0, \'children\': [{\'id\': 17, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 16, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'analysis\', \'redirect\': None, \'component\': \'/dashboard/analysis/index\', \'name\': \'Analysis\', \'status\': True, \'meta\': {\'title\': \'?????????\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'bx:bx-home\'}, \'choice\': 1, \'children\': []}, {\'id\': 18, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 16, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'workbench\', \'redirect\': None, \'component\': \'/dashboard/workbench/index\', \'name\': \'Workbench\', \'status\': True, \'meta\': {\'title\': \'?????????\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'bx:bx-home\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 1, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/system\', \'redirect\': \'/system/account\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ion:settings-outline\'}, \'choice\': 0, \'children\': [{\'id\': 4, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'menu\', \'redirect\': None, \'component\': \'/fuadmin/system/menu/index\', \'name\': \'MenuManagement\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:bars-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 5, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'post\', \'redirect\': None, \'component\': \'/fuadmin/system/post/index\', \'name\': \'PostManagement\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ant-design:contacts-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 6, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'account\', \'redirect\': None, \'component\': \'/fuadmin/system/account/index\', \'name\': \'AccountManagement\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:user-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 7, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'dept\', \'redirect\': None, \'component\': \'/fuadmin/system/dept/index\', \'name\': \'DeptManagement\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 4, \'hideMenu\': False, \'icon\': \'ant-design:project-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 8, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'role\', \'redirect\': None, \'component\': \'/fuadmin/system/role/index\', \'name\': \'RoleManagement\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 5, \'hideMenu\': False, \'icon\': \'ant-design:team-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 19, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'account/setting/:id\', \'redirect\': None, \'component\': \'/fuadmin/system/account/setting/index\', \'name\': \'AccountSetting\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 6, \'hideMenu\': False, \'icon\': \'ant-design:setting-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 2, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/tool\', \'redirect\': None, \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:appstore-outlined\'}, \'choice\': 0, \'children\': [{\'id\': 9, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 2, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'dict\', \'redirect\': None, \'component\': \'/fuadmin/system/data-dict/index\', \'name\': \'DataDict\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:database-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 10, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 2, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'category\', \'redirect\': None, \'component\': \'/fuadmin/system/category_dict/index\', \'name\': \'CategoryDict\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ant-design:database-filled\'}, \'choice\': 1, \'children\': []}, {\'id\': 11, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 2, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'celery\', \'redirect\': None, \'component\': \'/fuadmin/system/celery/index\', \'name\': \'Celery\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:clock-circle-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 12, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 2, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'file\', \'redirect\': None, \'component\': \'/fuadmin/system/file/index\', \'name\': \'FileManagement\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 4, \'hideMenu\': False, \'icon\': \'ant-design:folder-open-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 3, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/log\', \'redirect\': None, \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 4, \'hideMenu\': False, \'icon\': \'ant-design:code-filled\'}, \'choice\': 0, \'children\': [{\'id\': 13, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 3, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'login_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/login_log/index\', \'name\': \'LoginLogManagement\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:book-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 14, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 3, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'operation_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/operation_log/index\', \'name\': \'OperationLogManagement\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ant-design:book-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 15, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 3, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'celery_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/celery_log/index\', \'name\': \'CeleryLog\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:book-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 20, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/chart\', \'redirect\': \'/chart/amap\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 5, \'hideMenu\': False, \'icon\': \'ant-design:bar-chart-outlined\'}, \'choice\': 0, \'children\': [{\'id\': 21, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 20, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'bmap\', \'redirect\': None, \'component\': \'/fuadmin/charts/map/Baidu\', \'name\': \'BaiduMap\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:environment-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 22, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 20, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'amap\', \'redirect\': None, \'component\': \'/fuadmin/charts/map/Gaode\', \'name\': \'AMap\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ant-design:environment-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 23, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 20, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'echartmap\', \'redirect\': None, \'component\': \'/fuadmin/charts/Map\', \'name\': \'AMap\', \'status\': True, \'meta\': {\'title\': \'Echart Map\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:bar-chart-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 25, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/operation\', \'redirect\': \'/chart/amap\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 6, \'hideMenu\': False, \'icon\': \'ant-design:fund-projection-screen-outlined\'}, \'choice\': 0, \'children\': [{\'id\': 26, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 25, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'monitor\', \'redirect\': None, \'component\': \'/fuadmin/system/monitor/server\', \'name\': \'Server\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:monitor-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 24, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'/demo\', \'redirect\': None, \'component\': \'/demo/index\', \'name\': \'Demo\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 7, \'hideMenu\': False, \'icon\': \'ant-design:audit-outlined\'}, \'choice\': 1, \'children\': []}]}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('13', null, null, null, '2022-12-24 14:58:22.411593', '2022-12-24 14:58:22.411593', '1', 'superadmin', null, '/api/system/login_log', '{\'page\': \'1\', \'pageSize\': \'10\', \'_t\': \'1671865102320\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [{\'id\': 1, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:57:12.978\', \'create_datetime\': \'2022-12-24T14:57:12.978\', \'sort\': 1, \'username\': \'superadmin\', \'ip\': \'127.0.0.1\', \'agent\': \'PC / Windows 10 / Chrome 87.0.4280\', \'browser\': \'Chrome 87.0.4280\', \'os\': \'Windows 10\', \'continent\': \'\', \'country\': \'??????\', \'province\': \'\', \'city\': \'\', \'district\': \'\', \'isp\': \'\', \'area_code\': \'\', \'country_english\': \'\', \'country_code\': \'\', \'longitude\': \'\', \'latitude\': \'\', \'login_type\': 1}], \'total\': 1}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('14', null, null, null, '2022-12-24 14:58:28.096678', '2022-12-24 14:58:28.096678', '1', 'superadmin', null, '/api/system/operation_log', '{\'page\': \'1\', \'pageSize\': \'10\', \'_t\': \'1671865108014\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [{\'id\': 13, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:58:22.411\', \'create_datetime\': \'2022-12-24T14:58:22.411\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/login_log\', \'request_body\': \"{\'page\': \'1\', \'pageSize\': \'10\', \'_t\': \'1671865102320\'}\", \'request_method\': \'GET\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'2000\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 2000, \'msg\': {\'items\': [{\'id\': 1, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:57:12.978\', \'create_datetime\': \'2022-12-24T14:57:12.978\', \'sort\': 1, \'username\': \'superadmin\', \'ip\': \'127.0.0.1\', \'agent\': \'PC / Windows 10 / Chrome 87.0.4280\', \'browser\': \'Chrome 87.0.4280\', \'os\': \'Windows 10\', \'continent\': \'\', \'country\': \'??????\', \'province\': \'\', \'city\': \'\', \'district\': \'\', \'isp\': \'\', \'area_code\': \'\', \'country_english\': \'\', \'country_code\': \'\', \'longitude\': \'\', \'latitude\': \'\', \'login_type\': 1}], \'total\': 1}}\", \'status\': True}, {\'id\': 12, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:57:13.347\', \'create_datetime\': \'2022-12-24T14:57:13.347\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/menu/route/tree\', \'request_body\': \"{\'_t\': \'1671865033210\'}\", \'request_method\': \'GET\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'2000\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 2000, \'msg\': [{\'id\': 16, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/dashboard\', \'redirect\': \'/dashboard/analysis\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'Dashboard\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'bx:bx-home\'}, \'choice\': 0, \'children\': [{\'id\': 17, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 16, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'analysis\', \'redirect\': None, \'component\': \'/dashboard/analysis/index\', \'name\': \'Analysis\', \'status\': True, \'meta\': {\'title\': \'?????????\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'bx:bx-home\'}, \'choice\': 1, \'children\': []}, {\'id\': 18, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 16, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'workbench\', \'redirect\': None, \'component\': \'/dashboard/workbench/index\', \'name\': \'Workbench\', \'status\': True, \'meta\': {\'title\': \'?????????\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'bx:bx-home\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 1, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/system\', \'redirect\': \'/system/account\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ion:settings-outline\'}, \'choice\': 0, \'children\': [{\'id\': 4, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'menu\', \'redirect\': None, \'component\': \'/fuadmin/system/menu/index\', \'name\': \'MenuManagement\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:bars-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 5, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'post\', \'redirect\': None, \'component\': \'/fuadmin/system/post/index\', \'name\': \'PostManagement\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ant-design:contacts-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 6, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'account\', \'redirect\': None, \'component\': \'/fuadmin/system/account/index\', \'name\': \'AccountManagement\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:user-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 7, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'dept\', \'redirect\': None, \'component\': \'/fuadmin/system/dept/index\', \'name\': \'DeptManagement\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 4, \'hideMenu\': False, \'icon\': \'ant-design:project-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 8, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'role\', \'redirect\': None, \'component\': \'/fuadmin/system/role/index\', \'name\': \'RoleManagement\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 5, \'hideMenu\': False, \'icon\': \'ant-design:team-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 19, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 1, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'account/setting/:id\', \'redirect\': None, \'component\': \'/fuadmin/system/account/setting/index\', \'name\': \'AccountSetting\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 6, \'hideMenu\': False, \'icon\': \'ant-design:setting-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 2, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/tool\', \'redirect\': None, \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:appstore-outlined\'}, \'choice\': 0, \'children\': [{\'id\': 9, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 2, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'dict\', \'redirect\': None, \'component\': \'/fuadmin/system/data-dict/index\', \'name\': \'DataDict\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:database-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 10, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': 2, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'category\', \'redirect\': None, \'component\': \'/fuadmin/system/category_dict/index\', \'name\': \'CategoryDict\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ant-design:database-filled\'}, \'choice\': 1, \'children\': []}, {\'id\': 11, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 2, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'celery\', \'redirect\': None, \'component\': \'/fuadmin/system/celery/index\', \'name\': \'Celery\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:clock-circle-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 12, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 2, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'file\', \'redirect\': None, \'component\': \'/fuadmin/system/file/index\', \'name\': \'FileManagement\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 4, \'hideMenu\': False, \'icon\': \'ant-design:folder-open-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 3, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/log\', \'redirect\': None, \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 4, \'hideMenu\': False, \'icon\': \'ant-design:code-filled\'}, \'choice\': 0, \'children\': [{\'id\': 13, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 3, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'login_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/login_log/index\', \'name\': \'LoginLogManagement\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:book-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 14, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 3, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'operation_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/operation_log/index\', \'name\': \'OperationLogManagement\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ant-design:book-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 15, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 3, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'celery_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/celery_log/index\', \'name\': \'CeleryLog\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:book-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 20, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/chart\', \'redirect\': \'/chart/amap\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 5, \'hideMenu\': False, \'icon\': \'ant-design:bar-chart-outlined\'}, \'choice\': 0, \'children\': [{\'id\': 21, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 20, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'bmap\', \'redirect\': None, \'component\': \'/fuadmin/charts/map/Baidu\', \'name\': \'BaiduMap\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:environment-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 22, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 20, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'amap\', \'redirect\': None, \'component\': \'/fuadmin/charts/map/Gaode\', \'name\': \'AMap\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 2, \'hideMenu\': False, \'icon\': \'ant-design:environment-outlined\'}, \'choice\': 1, \'children\': []}, {\'id\': 23, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 20, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'echartmap\', \'redirect\': None, \'component\': \'/fuadmin/charts/Map\', \'name\': \'AMap\', \'status\': True, \'meta\': {\'title\': \'Echart Map\', \'ignoreKeepAlive\': False, \'orderNo\': 3, \'hideMenu\': False, \'icon\': \'ant-design:bar-chart-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 25, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/operation\', \'redirect\': \'/chart/amap\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 6, \'hideMenu\': False, \'icon\': \'ant-design:fund-projection-screen-outlined\'}, \'choice\': 0, \'children\': [{\'id\': 26, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': 25, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'monitor\', \'redirect\': None, \'component\': \'/fuadmin/system/monitor/server\', \'name\': \'Server\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 1, \'hideMenu\': False, \'icon\': \'ant-design:monitor-outlined\'}, \'choice\': 1, \'children\': []}]}, {\'id\': 24, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'parent_id\': None, \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'/demo\', \'redirect\': None, \'component\': \'/demo/index\', \'name\': \'Demo\', \'status\': True, \'meta\': {\'title\': \'????????????\', \'ignoreKeepAlive\': False, \'orderNo\': 7, \'hideMenu\': False, \'icon\': \'ant-design:audit-outlined\'}, \'choice\': 1, \'children\': []}]}\", \'status\': True}, {\'id\': 11, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:57:13.289\', \'create_datetime\': \'2022-12-24T14:57:13.289\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/permCode\', \'request_body\': \"{\'_t\': \'1671865033210\'}\", \'request_method\': \'GET\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'2000\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 2000, \'msg\': [\'post:add\', \'menu:add\', \'user:add\', \'dept:add\', \'role:add\', \'dict:add\', \'category:add\', \'demo:add\', \'post:delete\', \'menu:delete\', \'user:delete\', \'dept:delete\', \'role:delete\', \'dict:delete\', \'category:delete\', \'demo:delete\', \'demo:update\', \'post:update\', \'menu:update\', \'user:update\', \'dept:update\', \'role:update\', \'dict:update\', \'category:update\', \'post:search\', \'menu:search\', \'button:add\', \'user:search\', \'dept:search\', \'role:search\', \'dict:search\', \'category:search\', \'demo:search\', \'button:add\', \'button:delete\', \'button:update\']}\", \'status\': True}, {\'id\': 10, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:57:13.173\', \'create_datetime\': \'2022-12-24T14:57:13.173\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/userinfo\', \'request_body\': \"{\'_t\': \'1671865033013\'}\", \'request_method\': \'GET\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'2000\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 2000, \'msg\': {\'last_login\': None, \'is_superuser\': True, \'is_staff\': True, \'is_active\': True, \'date_joined\': \'2022-12-24T14:20:33.469\', \'id\': 1, \'remark\': None, \'creator\': None, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:20:33.483\', \'create_datetime\': \'2022-12-24T14:20:33.483\', \'sort\': 1, \'username\': \'superadmin\', \'email\': \'\', \'mobile\': None, \'avatar\': None, \'name\': \'???????????????\', \'status\': True, \'gender\': 1, \'user_type\': 0, \'dept\': None, \'first_name\': \'\', \'last_name\': \'\', \'groups\': [], \'user_permissions\': []}}\", \'status\': True}, {\'id\': 9, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:57:12.993\', \'create_datetime\': \'2022-12-24T14:57:12.993\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/login\', \'request_body\': \"{\'password\': \'******\', \'username\': \'superadmin\'}\", \'request_method\': \'POST\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'2000\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 2000, \'msg\': {\'multi_depart\': \'1\', \'sysAllDictItems\': \'q\', \'departs\': \'e\', \'userInfo\': {\'last_login\': None, \'is_superuser\': True, \'is_staff\': True, \'is_active\': True, \'date_joined\': \'2022-12-24T14:20:33.469\', \'id\': 1, \'remark\': None, \'creator\': None, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': None, \'create_datetime\': None, \'sort\': 1, \'username\': \'superadmin\', \'email\': \'\', \'mobile\': None, \'avatar\': None, \'name\': \'???????????????\', \'status\': True, \'gender\': 1, \'user_type\': 0, \'dept\': None, \'first_name\': \'\', \'last_name\': \'\', \'groups\': [], \'user_permissions\': []}, \'token\': \'bearer eyJ0eXBlIjogIkpXVCIsICJhbGciOiAiSFMyNTYifQ.eyJleHAiOiAxNjcxOTA4MjMxLCAibGFzdF9sb2dpbiI6IG51bGwsICJpc19zdXBlcnVzZXIiOiB0cnVlLCAiaXNfc3RhZmYiOiB0cnVlLCAiaXNfYWN0aXZlIjogdHJ1ZSwgImRhdGVfam9pbmVkIjogIjIwMjItMTItMjQgMTQ6MjA6MzMiLCAiaWQiOiAxLCAicmVtYXJrIjogbnVsbCwgImNyZWF0b3IiOiBudWxsLCAibW9kaWZpZXIiOiBudWxsLCAiYmVsb25nX2RlcHQiOiBudWxsLCAic29ydCI6IDEsICJ1c2VybmFtZSI6ICJzdXBlcmFkbWluIiwgImVtYWlsIjogIiIsICJtb2JpbGUiOiBudWxsLCAibmFtZSI6ICJcdThkODVcdTdlYTdcdTdiYTFcdTc0MDZcdTU0NTgiLCAic3RhdHVzIjogdHJ1ZSwgImdlbmRlciI6IDEsICJ1c2VyX3R5cGUiOiAwLCAiZGVwdCI6IG51bGwsICJmaXJzdF9uYW1lIjogIiIsICJsYXN0X25hbWUiOiAiIiwgImdyb3VwcyI6IFtdLCAidXNlcl9wZXJtaXNzaW9ucyI6IFtdLCAicG9zdCI6IFtdLCAicm9sZSI6IFtdfQ.73r7VN2l2tpT1nOAHPQ7muY48w3fVEkcmvgOR0D4pwI\'}}\", \'status\': True}, {\'id\': 8, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:49:58.760\', \'create_datetime\': \'2022-12-24T14:49:58.760\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/login\', \'request_body\': \"{\'username\': \'superadmin\', \'password\': \'******\'}\", \'request_method\': \'POST\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'500\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 500, \'msg\': []}\", \'status\': False}, {\'id\': 7, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:49:17.614\', \'create_datetime\': \'2022-12-24T14:49:17.614\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/login\', \'request_body\': \"{\'username\': \'superadmin\', \'password\': \'******\'}\", \'request_method\': \'POST\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'500\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 500, \'msg\': []}\", \'status\': False}, {\'id\': 6, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:48:21.189\', \'create_datetime\': \'2022-12-24T14:48:21.189\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/login\', \'request_body\': \"{\'username\': \'superadmin\', \'password\': \'******\'}\", \'request_method\': \'POST\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'500\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 500, \'msg\': []}\", \'status\': False}, {\'id\': 5, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:45:34.571\', \'create_datetime\': \'2022-12-24T14:45:34.571\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/login\', \'request_body\': \"{\'username\': \'superadmin\', \'password\': \'******\'}\", \'request_method\': \'POST\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'500\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 500, \'msg\': []}\", \'status\': False}, {\'id\': 4, \'remark\': None, \'creator\': 1, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:42:53.622\', \'create_datetime\': \'2022-12-24T14:42:53.622\', \'sort\': 1, \'request_username\': \'superadmin\', \'request_modular\': None, \'request_path\': \'/api/system/login\', \'request_body\': \"{\'username\': \'superadmin\', \'password\': \'******\'}\", \'request_method\': \'POST\', \'request_msg\': None, \'request_ip\': \'127.0.0.1\', \'request_browser\': \'Chrome 87.0.4280\', \'response_code\': \'500\', \'request_os\': \'Windows 10\', \'json_result\': \"{\'code\': 500, \'msg\': []}\", \'status\': False}], \'total\': 13}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('15', null, null, null, '2022-12-24 14:58:36.749723', '2022-12-24 14:58:36.749723', '1', 'superadmin', null, '/api/system/celery_log', '{\'page\': \'1\', \'pageSize\': \'10\', \'_t\': \'1671865116686\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [], \'total\': 0}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('16', null, null, null, '2022-12-24 14:58:42.350689', '2022-12-24 14:58:42.350689', '1', 'superadmin', null, '/api/system/menu', '{\'_t\': \'1671865122229\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': [{\'id\': 16, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 1, \'parent_id\': None, \'icon\': \'bx:bx-home\', \'title\': \'Dashboard\', \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/dashboard\', \'redirect\': \'/dashboard/analysis\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 0, \'children\': [{\'id\': 17, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 1, \'parent_id\': 16, \'icon\': \'bx:bx-home\', \'title\': \'?????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'analysis\', \'redirect\': None, \'component\': \'/dashboard/analysis/index\', \'name\': \'Analysis\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 18, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 2, \'parent_id\': 16, \'icon\': \'bx:bx-home\', \'title\': \'?????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'workbench\', \'redirect\': None, \'component\': \'/dashboard/workbench/index\', \'name\': \'Workbench\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}]}, {\'id\': 1, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'parent_id\': None, \'icon\': \'ion:settings-outline\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/system\', \'redirect\': \'/system/account\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 0, \'children\': [{\'id\': 4, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 1, \'parent_id\': 1, \'icon\': \'ant-design:bars-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'menu\', \'redirect\': None, \'component\': \'/fuadmin/system/menu/index\', \'name\': \'MenuManagement\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 5, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'parent_id\': 1, \'icon\': \'ant-design:contacts-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'post\', \'redirect\': None, \'component\': \'/fuadmin/system/post/index\', \'name\': \'PostManagement\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 6, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 3, \'parent_id\': 1, \'icon\': \'ant-design:user-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'account\', \'redirect\': None, \'component\': \'/fuadmin/system/account/index\', \'name\': \'AccountManagement\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 7, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 4, \'parent_id\': 1, \'icon\': \'ant-design:project-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'dept\', \'redirect\': None, \'component\': \'/fuadmin/system/dept/index\', \'name\': \'DeptManagement\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 8, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 5, \'parent_id\': 1, \'icon\': \'ant-design:team-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'role\', \'redirect\': None, \'component\': \'/fuadmin/system/role/index\', \'name\': \'RoleManagement\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 19, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 6, \'parent_id\': 1, \'icon\': \'ant-design:setting-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'account/setting/:id\', \'redirect\': None, \'component\': \'/fuadmin/system/account/setting/index\', \'name\': \'AccountSetting\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}]}, {\'id\': 2, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 3, \'parent_id\': None, \'icon\': \'ant-design:appstore-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/tool\', \'redirect\': None, \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 0, \'children\': [{\'id\': 9, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 1, \'parent_id\': 2, \'icon\': \'ant-design:database-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'dict\', \'redirect\': None, \'component\': \'/fuadmin/system/data-dict/index\', \'name\': \'DataDict\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 10, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'parent_id\': 2, \'icon\': \'ant-design:database-filled\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'category\', \'redirect\': None, \'component\': \'/fuadmin/system/category_dict/index\', \'name\': \'CategoryDict\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 11, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 3, \'parent_id\': 2, \'icon\': \'ant-design:clock-circle-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'celery\', \'redirect\': None, \'component\': \'/fuadmin/system/celery/index\', \'name\': \'Celery\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 12, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 4, \'parent_id\': 2, \'icon\': \'ant-design:folder-open-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'file\', \'redirect\': None, \'component\': \'/fuadmin/system/file/index\', \'name\': \'FileManagement\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}]}, {\'id\': 3, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 4, \'parent_id\': None, \'icon\': \'ant-design:code-filled\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/log\', \'redirect\': None, \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 0, \'children\': [{\'id\': 13, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 1, \'parent_id\': 3, \'icon\': \'ant-design:book-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'login_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/login_log/index\', \'name\': \'LoginLogManagement\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 14, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 2, \'parent_id\': 3, \'icon\': \'ant-design:book-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'operation_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/operation_log/index\', \'name\': \'OperationLogManagement\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 15, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 3, \'parent_id\': 3, \'icon\': \'ant-design:book-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'celery_log\', \'redirect\': None, \'component\': \'/fuadmin/system/log/celery_log/index\', \'name\': \'CeleryLog\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}]}, {\'id\': 20, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 5, \'parent_id\': None, \'icon\': \'ant-design:bar-chart-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/chart\', \'redirect\': \'/chart/amap\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 0, \'children\': [{\'id\': 21, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 1, \'parent_id\': 20, \'icon\': \'ant-design:environment-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'bmap\', \'redirect\': None, \'component\': \'/fuadmin/charts/map/Baidu\', \'name\': \'BaiduMap\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 22, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 2, \'parent_id\': 20, \'icon\': \'ant-design:environment-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'amap\', \'redirect\': None, \'component\': \'/fuadmin/charts/map/Gaode\', \'name\': \'AMap\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}, {\'id\': 23, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 3, \'parent_id\': 20, \'icon\': \'ant-design:bar-chart-outlined\', \'title\': \'Echart Map\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'echartmap\', \'redirect\': None, \'component\': \'/fuadmin/charts/Map\', \'name\': \'AMap\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}]}, {\'id\': 25, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 6, \'parent_id\': None, \'icon\': \'ant-design:fund-projection-screen-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 0, \'path\': \'/operation\', \'redirect\': \'/chart/amap\', \'component\': \'LAYOUT\', \'name\': None, \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 0, \'children\': [{\'id\': 26, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 1, \'parent_id\': 25, \'icon\': \'ant-design:monitor-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'monitor\', \'redirect\': None, \'component\': \'/fuadmin/system/monitor/server\', \'name\': \'Server\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}]}, {\'id\': 24, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:33\', \'create_datetime\': \'2022-12-24 14:20:33\', \'sort\': 7, \'parent_id\': None, \'icon\': \'ant-design:audit-outlined\', \'title\': \'????????????\', \'permission\': None, \'is_ext\': False, \'type\': 1, \'path\': \'/demo\', \'redirect\': None, \'component\': \'/demo/index\', \'name\': \'Demo\', \'status\': True, \'keepalive\': False, \'hide_menu\': False, \'choice\': 1, \'children\': []}]}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('17', null, null, null, '2022-12-24 14:59:07.761300', '2022-12-24 14:59:07.761300', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865146077\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.55, \'used\': 17.68}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': -0.0, \'down\': -0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': -0.0, \'down\': -0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': -0.0, \'down\': -0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': -0.0, \'down\': -0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490751316, \'downTotal\': 26696792862, \'up\': -0.0, \'down\': -0.0, \'downPackets\': 18780484, \'upPackets\': 6197784}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': -0.0, \'down\': -0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490751316, \'downTotal\': 26696792862, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 18780484, \'upPackets\': 6197784, \'iostat\': {}}, \'cpu\': [27.28, 16, [31.9, 13.4, 39.0, 14.5, 30.9, 17.8, 31.8, 19.9, 36.7, 15.3, 41.0, 20.1, 38.1, 18.0, 32.0, 36.0], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('18', null, null, null, '2022-12-24 14:59:09.643078', '2022-12-24 14:59:09.643078', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865149175\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.55, \'used\': 17.67}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490774036, \'downTotal\': 26697712571, \'up\': 7.57, \'down\': 306.31, \'downPackets\': 18781203, \'upPackets\': 6197951}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490774036, \'downTotal\': 26697712571, \'up\': 7.57, \'down\': 306.31, \'downPackets\': 18781203, \'upPackets\': 6197951, \'iostat\': {}}, \'cpu\': [24.6, 16, [21.1, 13.5, 35.7, 13.5, 31.5, 17.5, 24.6, 22.2, 32.5, 11.9, 35.4, 15.9, 27.8, 12.7, 36.5, 41.3], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('19', null, null, null, '2022-12-24 14:59:12.643688', '2022-12-24 14:59:12.643688', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865152172\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.55, \'used\': 17.67}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490801441, \'downTotal\': 26698295188, \'up\': 9.07, \'down\': 192.8, \'downPackets\': 18781704, \'upPackets\': 6198100}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490801441, \'downTotal\': 26698295188, \'up\': 9.07, \'down\': 192.8, \'downPackets\': 18781704, \'upPackets\': 6198100, \'iostat\': {}}, \'cpu\': [22.88, 16, [23.6, 14.6, 34.9, 13.0, 25.4, 13.0, 24.0, 14.1, 44.8, 14.6, 43.5, 14.6, 33.9, 14.1, 19.8, 18.2], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('20', null, null, null, '2022-12-24 14:59:15.690107', '2022-12-24 14:59:15.690107', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865155170\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.56, \'used\': 17.66}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490821548, \'downTotal\': 26698867483, \'up\': 6.69, \'down\': 190.54, \'downPackets\': 18782191, \'upPackets\': 6198265}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490821548, \'downTotal\': 26698867483, \'up\': 6.69, \'down\': 190.54, \'downPackets\': 18782191, \'upPackets\': 6198265, \'iostat\': {}}, \'cpu\': [25.01, 16, [24.9, 19.2, 43.0, 14.5, 22.7, 18.7, 21.6, 19.2, 41.5, 22.3, 48.7, 12.4, 32.0, 8.3, 22.2, 28.9], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('21', null, null, null, '2022-12-24 14:59:18.636855', '2022-12-24 14:59:18.636855', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865158167\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.58, \'used\': 17.65}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490842582, \'downTotal\': 26699509849, \'up\': 7.05, \'down\': 215.24, \'downPackets\': 18782706, \'upPackets\': 6198412}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490842582, \'downTotal\': 26699509849, \'up\': 7.05, \'down\': 215.24, \'downPackets\': 18782706, \'upPackets\': 6198412, \'iostat\': {}}, \'cpu\': [21.88, 16, [26.8, 10.5, 31.6, 7.4, 18.4, 6.8, 29.5, 8.9, 35.6, 17.9, 39.5, 18.4, 29.5, 7.4, 25.1, 36.8], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('22', null, null, null, '2022-12-24 14:59:21.608873', '2022-12-24 14:59:21.609895', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865161182\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.58, \'used\': 17.64}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490864376, \'downTotal\': 26700430170, \'up\': 7.18, \'down\': 303.2, \'downPackets\': 18783412, \'upPackets\': 6198623}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490864376, \'downTotal\': 26700430170, \'up\': 7.18, \'down\': 303.2, \'downPackets\': 18783412, \'upPackets\': 6198623, \'iostat\': {}}, \'cpu\': [22.31, 16, [25.3, 8.2, 36.9, 9.8, 22.8, 10.9, 19.2, 13.5, 49.7, 9.3, 43.0, 15.0, 30.1, 9.8, 24.4, 29.0], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('23', null, null, null, '2022-12-24 14:59:24.487670', '2022-12-24 14:59:24.487670', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865164169\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.58, \'used\': 17.64}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490889820, \'downTotal\': 26700758885, \'up\': 8.47, \'down\': 109.36, \'downPackets\': 18783743, \'upPackets\': 6198791}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490889820, \'downTotal\': 26700758885, \'up\': 8.47, \'down\': 109.36, \'downPackets\': 18783743, \'upPackets\': 6198791, \'iostat\': {}}, \'cpu\': [21.32, 16, [29.6, 5.7, 28.8, 17.3, 37.2, 11.0, 20.8, 12.0, 27.1, 12.0, 37.0, 11.5, 23.6, 7.9, 24.0, 35.6], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('24', null, null, null, '2022-12-24 14:59:27.698407', '2022-12-24 14:59:27.698407', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865167177\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.58, \'used\': 17.64}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490898068, \'downTotal\': 26700775446, \'up\': 2.73, \'down\': 5.48, \'downPackets\': 18783827, \'upPackets\': 6198874}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490898068, \'downTotal\': 26700775446, \'up\': 2.73, \'down\': 5.48, \'downPackets\': 18783827, \'upPackets\': 6198874, \'iostat\': {}}, \'cpu\': [17.77, 16, [23.1, 5.2, 32.6, 5.2, 13.5, 11.4, 16.6, 6.2, 30.6, 8.3, 36.8, 6.7, 17.1, 11.4, 14.0, 45.6], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('25', null, null, null, '2022-12-24 14:59:30.626916', '2022-12-24 14:59:30.626916', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865170174\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.3, \'total\': 47.23, \'free\': 29.59, \'used\': 17.63}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490919038, \'downTotal\': 26702243098, \'up\': 6.98, \'down\': 488.37, \'downPackets\': 18784901, \'upPackets\': 6199089}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490919038, \'downTotal\': 26702243098, \'up\': 6.98, \'down\': 488.37, \'downPackets\': 18784901, \'upPackets\': 6199089, \'iostat\': {}}, \'cpu\': [20.4, 16, [22.7, 6.8, 31.4, 4.2, 20.9, 9.4, 22.3, 11.0, 45.8, 7.3, 43.5, 13.6, 28.3, 9.4, 21.5, 28.3], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('26', null, null, null, '2022-12-24 14:59:33.649401', '2022-12-24 14:59:33.649401', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865173168\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.3, \'total\': 47.23, \'free\': 29.6, \'used\': 17.63}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490933594, \'downTotal\': 26702817665, \'up\': 4.83, \'down\': 190.51, \'downPackets\': 18785370, \'upPackets\': 6199238}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490933594, \'downTotal\': 26702817665, \'up\': 4.83, \'down\': 190.51, \'downPackets\': 18785370, \'upPackets\': 6199238, \'iostat\': {}}, \'cpu\': [26.57, 16, [24.6, 11.4, 45.9, 12.4, 26.8, 14.5, 27.5, 19.2, 37.3, 13.0, 31.4, 28.5, 36.8, 34.2, 28.5, 33.2], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('27', null, null, null, '2022-12-24 14:59:36.614674', '2022-12-24 14:59:36.614674', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865176169\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.3, \'total\': 47.23, \'free\': 29.6, \'used\': 17.63}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490956144, \'downTotal\': 26703394801, \'up\': 7.49, \'down\': 191.8, \'downPackets\': 18785869, \'upPackets\': 6199388}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490956144, \'downTotal\': 26703394801, \'up\': 7.49, \'down\': 191.8, \'downPackets\': 18785869, \'upPackets\': 6199388, \'iostat\': {}}, \'cpu\': [22.66, 16, [26.0, 13.1, 45.5, 7.9, 22.5, 16.8, 22.5, 12.0, 44.0, 13.1, 34.6, 14.1, 35.4, 17.3, 24.6, 13.1], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('28', null, null, null, '2022-12-24 14:59:39.730239', '2022-12-24 14:59:39.730239', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865179175\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.3, \'total\': 47.23, \'free\': 29.62, \'used\': 17.61}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 490980319, \'downTotal\': 26703675570, \'up\': 7.97, \'down\': 92.59, \'downPackets\': 18786171, \'upPackets\': 6199510}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 490980319, \'downTotal\': 26703675570, \'up\': 7.97, \'down\': 92.59, \'downPackets\': 18786171, \'upPackets\': 6199510, \'iostat\': {}}, \'cpu\': [30.07, 16, [37.1, 16.4, 42.9, 14.9, 29.6, 19.0, 26.2, 29.2, 40.3, 15.8, 38.5, 21.5, 36.9, 20.0, 65.6, 27.2], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('29', null, null, null, '2022-12-24 14:59:42.669513', '2022-12-24 14:59:42.669513', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865182166\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.3, \'total\': 47.23, \'free\': 29.61, \'used\': 17.61}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 491013164, \'downTotal\': 26704933362, \'up\': 11.06, \'down\': 423.48, \'downPackets\': 18787119, \'upPackets\': 6199714}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 491013164, \'downTotal\': 26704933362, \'up\': 11.06, \'down\': 423.48, \'downPackets\': 18787119, \'upPackets\': 6199714, \'iostat\': {}}, \'cpu\': [31.17, 16, [39.2, 13.8, 41.3, 16.9, 31.7, 16.9, 36.5, 15.9, 62.4, 16.4, 55.6, 19.0, 50.5, 13.8, 41.8, 27.0], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('30', null, null, null, '2022-12-24 14:59:45.668831', '2022-12-24 14:59:45.668831', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865185179\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.3, \'total\': 47.23, \'free\': 29.61, \'used\': 17.62}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 491035231, \'downTotal\': 26705258024, \'up\': 7.29, \'down\': 107.28, \'downPackets\': 18787425, \'upPackets\': 6199846}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 491035231, \'downTotal\': 26705258024, \'up\': 7.29, \'down\': 107.28, \'downPackets\': 18787425, \'upPackets\': 6199846, \'iostat\': {}}, \'cpu\': [29.17, 16, [36.0, 10.9, 32.1, 17.7, 25.4, 20.2, 32.6, 19.7, 56.5, 10.8, 42.7, 24.9, 30.6, 13.0, 38.0, 55.7], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('31', null, null, null, '2022-12-24 14:59:48.750831', '2022-12-24 14:59:48.750831', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865188261\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.3, \'total\': 47.23, \'free\': 29.59, \'used\': 17.63}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 491055132, \'downTotal\': 26705276802, \'up\': 6.4, \'down\': 6.04, \'downPackets\': 18787531, \'upPackets\': 6199991}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 491055132, \'downTotal\': 26705276802, \'up\': 6.4, \'down\': 6.04, \'downPackets\': 18787531, \'upPackets\': 6199991, \'iostat\': {}}, \'cpu\': [30.99, 16, [42.4, 13.6, 43.7, 13.1, 33.2, 14.1, 46.5, 21.6, 56.6, 19.2, 47.2, 18.7, 34.3, 17.5, 19.6, 54.5], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('32', null, null, null, '2022-12-24 14:59:51.688720', '2022-12-24 14:59:51.688720', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865191172\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.4, \'total\': 47.23, \'free\': 29.59, \'used\': 17.64}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 491085134, \'downTotal\': 26706725281, \'up\': 10.29, \'down\': 497.03, \'downPackets\': 18788630, \'upPackets\': 6200188}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 491085134, \'downTotal\': 26706725281, \'up\': 10.29, \'down\': 497.03, \'downPackets\': 18788630, \'upPackets\': 6200188, \'iostat\': {}}, \'cpu\': [30.29, 16, [41.6, 13.4, 43.9, 16.0, 35.8, 18.3, 42.8, 16.7, 69.9, 10.2, 53.2, 15.6, 34.2, 19.9, 30.1, 23.0], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.95 GB\', \'11.05 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.44 GB\', \'85.56 GB\', 47.8], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('33', null, null, null, '2022-12-24 15:00:10.494259', '2022-12-24 15:00:10.494259', '1', 'superadmin', null, '/api/demo/demo', '{\'page\': \'1\', \'pageSize\': \'10\', \'_t\': \'1671865210439\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '500', 'Windows 10', '{\'code\': 500, \'msg\': []}', '0', '1');
INSERT INTO `system_operation_log` VALUES ('34', null, null, null, '2022-12-24 15:00:39.628179', '2022-12-24 15:00:39.628179', '1', 'superadmin', null, '/api/system/dept/list/tree', '{\'_t\': \'1671865239546\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': [{\'id\': 1, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 1, \'name\': \'????????????\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': None, \'choice\': 0, \'children\': [{\'id\': 3, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 1, \'name\': \'IT??????\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': 1, \'choice\': 1, \'children\': []}, {\'id\': 4, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'name\': \'????????????\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': 1, \'choice\': 1, \'children\': []}]}, {\'id\': 2, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'name\': \'????????????\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': None, \'choice\': 0, \'children\': [{\'id\': 5, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 1, \'name\': \'IT??????\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': 2, \'choice\': 1, \'children\': []}, {\'id\': 6, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'name\': \'????????????\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': 2, \'choice\': 1, \'children\': []}]}]}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('35', null, null, null, '2022-12-24 15:00:39.729408', '2022-12-24 15:00:39.729408', '1', 'superadmin', null, '/api/system/user', '{\'page\': \'1\', \'pageSize\': \'10\', \'_t\': \'1671865239674\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [{\'last_login\': None, \'is_superuser\': False, \'is_staff\': False, \'is_active\': True, \'date_joined\': \'2022-12-24T14:20:33.469\', \'id\': 4, \'remark\': None, \'creator\': None, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:20:33.492\', \'create_datetime\': \'2022-12-24T14:20:33.492\', \'sort\': 1, \'username\': \'test\', \'email\': \'dlpuzcl@163.com\', \'mobile\': None, \'avatar\': None, \'name\': \'Test\', \'status\': True, \'gender\': 1, \'user_type\': 0, \'dept\': 2, \'first_name\': None, \'last_name\': None, \'groups\': [], \'user_permissions\': [], \'post\': [], \'role\': []}, {\'last_login\': None, \'is_superuser\': True, \'is_staff\': True, \'is_active\': True, \'date_joined\': \'2022-12-24T14:20:33.469\', \'id\': 1, \'remark\': None, \'creator\': None, \'modifier\': None, \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:20:33.483\', \'create_datetime\': \'2022-12-24T14:20:33.483\', \'sort\': 1, \'username\': \'superadmin\', \'email\': \'\', \'mobile\': None, \'avatar\': None, \'name\': \'???????????????\', \'status\': True, \'gender\': 1, \'user_type\': 0, \'dept\': None, \'first_name\': \'\', \'last_name\': \'\', \'groups\': [], \'user_permissions\': [], \'post\': [], \'role\': []}], \'total\': 2}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('36', null, null, null, '2022-12-24 15:00:44.302505', '2022-12-24 15:00:44.302505', '1', 'superadmin', null, '/api/system/post/all/list', '{\'_t\': \'1671865243814\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': []}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('37', null, null, null, '2022-12-24 15:00:44.328511', '2022-12-24 15:00:44.328511', '1', 'superadmin', null, '/api/system/role/all/list', '{\'_t\': \'1671865243790\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': [{\'id\': 1, \'remark\': None, \'creator\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:20:33.454\', \'create_datetime\': \'2022-12-24T14:20:33.454\', \'sort\': 1, \'name\': \'????????????\', \'code\': \'official\', \'status\': True, \'admin\': False, \'data_range\': 4, \'dept\': [], \'menu\': [], \'permission\': []}, {\'id\': 2, \'remark\': None, \'creator\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24T14:20:33.462\', \'create_datetime\': \'2022-12-24T14:20:33.462\', \'sort\': 2, \'name\': \'????????????\', \'code\': \'technicist\', \'status\': True, \'admin\': False, \'data_range\': 4, \'dept\': [], \'menu\': [], \'permission\': []}]}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('38', null, null, null, '2022-12-24 15:00:44.381021', '2022-12-24 15:00:44.381021', '1', 'superadmin', null, '/api/system/dept/list/tree', '{\'_t\': \'1671865244024\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': [{\'id\': 1, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 1, \'name\': \'????????????\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': None, \'choice\': 0, \'children\': [{\'id\': 3, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 1, \'name\': \'IT??????\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': 1, \'choice\': 1, \'children\': []}, {\'id\': 4, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'name\': \'????????????\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': 1, \'choice\': 1, \'children\': []}]}, {\'id\': 2, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'name\': \'????????????\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': None, \'choice\': 0, \'children\': [{\'id\': 5, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 1, \'name\': \'IT??????\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': 2, \'choice\': 1, \'children\': []}, {\'id\': 6, \'remark\': None, \'creator_id\': 1, \'modifier\': \'???????????????\', \'belong_dept\': None, \'update_datetime\': \'2022-12-24 14:20:32\', \'create_datetime\': \'2022-12-24 14:20:32\', \'sort\': 2, \'name\': \'????????????\', \'owner\': None, \'phone\': \'13244724433\', \'email\': \'939589097@qq.com\', \'status\': True, \'parent_id\': 2, \'choice\': 1, \'children\': []}]}]}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('39', null, null, null, '2022-12-24 15:01:22.481234', '2022-12-24 15:01:22.481234', '1', 'superadmin', null, '/api/system/user', '{\'page\': \'1\', \'pageSize\': \'10\', \'dept_ids[]\': \'3\', \'_t\': \'1671865282355\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [], \'total\': 0}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('40', null, null, null, '2022-12-24 15:01:25.028319', '2022-12-24 15:01:25.028319', '1', 'superadmin', null, '/api/system/user', '{\'page\': \'1\', \'pageSize\': \'10\', \'dept_ids[]\': \'4\', \'_t\': \'1671865284946\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [], \'total\': 0}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('41', null, null, null, '2022-12-24 15:01:26.345784', '2022-12-24 15:01:26.345784', '1', 'superadmin', null, '/api/system/user', '{\'page\': \'1\', \'pageSize\': \'10\', \'dept_ids[]\': \'3\', \'_t\': \'1671865286265\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [], \'total\': 0}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('42', null, null, null, '2022-12-24 15:01:27.715281', '2022-12-24 15:01:27.715281', '1', 'superadmin', null, '/api/system/user', '{\'page\': \'1\', \'pageSize\': \'10\', \'dept_ids[]\': \'4\', \'_t\': \'1671865287631\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [], \'total\': 0}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('43', null, null, null, '2022-12-24 15:01:41.580891', '2022-12-24 15:01:41.580891', '1', 'superadmin', null, '/api/system/post', '{\'page\': \'1\', \'pageSize\': \'10\', \'_t\': \'1671865301513\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'items\': [], \'total\': 0}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('44', null, null, null, '2022-12-24 15:02:46.865246', '2022-12-24 15:02:46.865246', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865365365\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.5, \'total\': 47.23, \'free\': 29.5, \'used\': 17.73}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 492244149, \'downTotal\': 26741790931, \'up\': 6.5, \'down\': 196.65, \'downPackets\': 18818112, \'upPackets\': 6208944}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 492244149, \'downTotal\': 26741790931, \'up\': 6.5, \'down\': 196.65, \'downPackets\': 18818112, \'upPackets\': 6208944, \'iostat\': {}}, \'cpu\': [24.99, 16, [29.9, 10.5, 36.8, 12.5, 26.6, 13.8, 26.0, 17.6, 38.0, 12.0, 43.3, 19.3, 34.3, 15.5, 30.1, 33.7], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.94 GB\', \'11.06 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.59 GB\', \'85.41 GB\', 47.9], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('45', null, null, null, '2022-12-24 15:02:48.822863', '2022-12-24 15:02:48.822863', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865368365\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.5, \'total\': 47.23, \'free\': 29.5, \'used\': 17.73}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 492275750, \'downTotal\': 26742383924, \'up\': 10.53, \'down\': 197.58, \'downPackets\': 18818625, \'upPackets\': 6209159}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 492275750, \'downTotal\': 26742383924, \'up\': 10.53, \'down\': 197.58, \'downPackets\': 18818625, \'upPackets\': 6209159, \'iostat\': {}}, \'cpu\': [23.29, 16, [34.4, 6.3, 49.2, 2.4, 31.5, 5.5, 28.3, 8.7, 34.6, 9.4, 42.2, 12.6, 32.3, 9.4, 52.4, 13.4], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.94 GB\', \'11.06 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.59 GB\', \'85.41 GB\', 47.9], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');
INSERT INTO `system_operation_log` VALUES ('46', null, null, null, '2022-12-24 15:02:51.897294', '2022-12-24 15:02:51.897294', '1', 'superadmin', null, '/api/system/monitor', '{\'_t\': \'1671865371366\'}', 'GET', null, '127.0.0.1', 'Chrome 87.0.4280', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': {\'mem\': {\'percent\': 37.5, \'total\': 47.23, \'free\': 29.5, \'used\': 17.73}, \'load_average\': {\'one\': 0, \'five\': 0, \'fifteen\': 0, \'max\': 32, \'limit\': 32, \'safe\': 24.0, \'percent\': 0}, \'network\': {\'network\': {\'?????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????? 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 1\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'????????????* 2\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}, \'WLAN\': {\'upTotal\': 492292554, \'downTotal\': 26743329927, \'up\': 5.55, \'down\': 312.59, \'downPackets\': 18819350, \'upPackets\': 6209302}, \'??????????????????\': {\'upTotal\': 0, \'downTotal\': 0, \'up\': 0.0, \'down\': 0.0, \'downPackets\': 0, \'upPackets\': 0}}, \'upTotal\': 492292554, \'downTotal\': 26743329927, \'up\': 5.55, \'down\': 312.59, \'downPackets\': 18819350, \'upPackets\': 6209302, \'iostat\': {}}, \'cpu\': [23.78, 16, [29.4, 17.6, 43.8, 13.4, 22.3, 8.8, 27.5, 11.9, 36.1, 14.5, 35.1, 17.6, 32.6, 14.5, 18.6, 36.8], \'AMD Ryzen 7 PRO 4750U with Radeon Graphics * 1\', 8.0, 1], \'disk\': [{\'path\': \'C:/\', \'size\': [\'100.00 GB\', \'88.94 GB\', \'11.06 GB\', 88.9], \'inodes\': False}, {\'path\': \'D:/\', \'size\': [\'164.00 GB\', \'78.59 GB\', \'85.41 GB\', 47.9], \'inodes\': False}, {\'path\': \'E:/\', \'size\': [\'162.52 GB\', \'59.76 GB\', \'102.76 GB\', 36.8], \'inodes\': False}, {\'path\': \'F:/\', \'size\': [\'50.00 GB\', \'161.17 MB\', \'49.84 GB\', 0.3], \'inodes\': False}], \'time\': \'0???\', \'system\': \'Windows 10 Pro (build 19041) x64 (Py3.8.6)\', \'is_windows\': True}}', '1', '1');

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
INSERT INTO `system_role` VALUES ('1', null, '???????????????', null, '2022-12-24 14:20:33.454723', '2022-12-24 14:20:33.454723', '1', '????????????', 'official', '1', '0', '4', '1');
INSERT INTO `system_role` VALUES ('2', null, '???????????????', null, '2022-12-24 14:20:33.462724', '2022-12-24 14:20:33.462724', '2', '????????????', 'technicist', '1', '0', '4', '1');

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
INSERT INTO `system_users` VALUES ('pbkdf2_sha256$320000$w6qJldmyHhHA2LJLROT5bx$Q/SDb4mvQ7qT5qYKV3naEFJqVHoq5yUSfSAiwssIEM8=', null, '1', '1', '1', '2022-12-24 14:20:33.469729', '1', null, null, null, '2022-12-24 14:20:33.483725', '2022-12-24 14:20:33.483725', '1', 'superadmin', '', null, null, '???????????????', '1', '1', '0', '', '', null, null);
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
