# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.22)
# Database: testdb
# Generation Time: 2018-06-20 22:56:20 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table sys_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_users`;

CREATE TABLE `sys_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) DEFAULT NULL COMMENT '用户昵称',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱|登录帐号',
  `pswd` varchar(32) DEFAULT NULL COMMENT '密码',
  `username` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` bigint(1) DEFAULT '1' COMMENT '1:有效，0:禁止登录',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_email` (`email`),
  UNIQUE KEY `uniq_name` (`nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table u_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `u_permission`;

CREATE TABLE `u_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(256) DEFAULT NULL COMMENT 'url地址',
  `name` varchar(64) DEFAULT NULL COMMENT 'url描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `u_permission` WRITE;
/*!40000 ALTER TABLE `u_permission` DISABLE KEYS */;

INSERT INTO `u_permission` (`id`, `url`, `name`)
VALUES
	(4,'/permission/index.shtml','权限列表'),
	(6,'/permission/addPermission.shtml','权限添加'),
	(7,'/permission/deletePermissionById.shtml','权限删除'),
	(8,'/member/list.shtml','用户列表'),
	(9,'/member/online.shtml','在线用户'),
	(10,'/member/changeSessionStatus.shtml','用户Session踢出'),
	(11,'/member/forbidUserById.shtml','用户激活&禁止'),
	(12,'/member/deleteUserById.shtml','用户删除'),
	(13,'/permission/addPermission2Role.shtml','权限分配'),
	(14,'/role/clearRoleByUserIds.shtml','用户角色分配清空'),
	(15,'/role/addRole2User.shtml','角色分配保存'),
	(16,'/role/deleteRoleById.shtml','角色列表删除'),
	(17,'/role/addRole.shtml','角色列表添加'),
	(18,'/role/index.shtml','角色列表'),
	(19,'/permission/allocation.shtml','权限分配'),
	(20,'/role/allocation.shtml','角色分配');

/*!40000 ALTER TABLE `u_permission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table u_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `u_role`;

CREATE TABLE `u_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `type` varchar(10) DEFAULT NULL COMMENT '角色类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `u_role` WRITE;
/*!40000 ALTER TABLE `u_role` DISABLE KEYS */;

INSERT INTO `u_role` (`id`, `name`, `type`)
VALUES
	(1,'系统管理员','888888'),
	(3,'权限角色','100003'),
	(4,'用户中心','100002');

/*!40000 ALTER TABLE `u_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table u_role_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `u_role_permission`;

CREATE TABLE `u_role_permission` (
  `rid` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `pid` bigint(20) DEFAULT NULL COMMENT '权限ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `u_role_permission` WRITE;
/*!40000 ALTER TABLE `u_role_permission` DISABLE KEYS */;

INSERT INTO `u_role_permission` (`rid`, `pid`)
VALUES
	(4,8),
	(4,9),
	(4,10),
	(4,11),
	(4,12),
	(3,4),
	(3,6),
	(3,7),
	(3,13),
	(3,14),
	(3,15),
	(3,16),
	(3,17),
	(3,18),
	(3,19),
	(3,20),
	(1,4),
	(1,6),
	(1,7),
	(1,8),
	(1,9),
	(1,10),
	(1,11),
	(1,12),
	(1,13),
	(1,14),
	(1,15),
	(1,16),
	(1,17),
	(1,18),
	(1,19),
	(1,20);

/*!40000 ALTER TABLE `u_role_permission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table u_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `u_user`;

CREATE TABLE `u_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL COMMENT '用户昵称',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱|登录帐号',
  `pswd` varchar(100) DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` bigint(1) DEFAULT '1' COMMENT '1:有效，0:禁止登录',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_email` (`email`),
  UNIQUE KEY `uniq_name` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `u_user` WRITE;
/*!40000 ALTER TABLE `u_user` DISABLE KEYS */;

INSERT INTO `u_user` (`id`, `username`, `email`, `pswd`, `create_time`, `last_login_time`, `status`)
VALUES
	(1,'admin','admin','57eb72e6b78a87a12d46a7f5e9315138','2016-06-16 11:15:33','2018-05-07 23:59:48',1),
	(11,'soso','8446666@qq.com','d57ffbe486910dd5b26d0167d034f9ad','2016-05-26 20:50:54','2016-06-16 11:24:35',1),
	(12,'8446666','8446666','4afdc875a67a55528c224ce088be2ab8','2016-05-27 22:34:19','2016-06-15 17:03:16',1),
	(15,'test','test@163.com','7f1fd2a4dd33c968d3415db1709e9d34','2018-05-05 09:09:22','2018-05-05 09:10:54',1),
	(17,'ttt','ttt@falado.xyz','123456',NULL,NULL,NULL),
	(18,'1','1','$shiro1$SHA-256$500000$iua3NpP5N1VEro9p96ABrw==$mFW9w+8Ha9lVNo70pbtCjR6IdXEgE5fCnRmEvk1clSo=','2018-05-25 23:48:36',NULL,NULL),
	(19,'2','2','$shiro1$SHA-256$500000$fdJrpGSTq4u+voB8zHJe8A==$KzrKbiN81srVdPySJX+/SB7zE+2bWczbFvk+dpj3qGU=','2018-05-25 23:51:13',NULL,NULL),
	(21,'3','3','$shiro1$SHA-256$500000$kgdjCWHgb7J5su3JbU6o7g==$5NdG8xV9jNpqFgaWOQcdlHezlQmqCQiezpc3Ia+WYwQ=','2018-05-26 00:03:54',NULL,NULL);

/*!40000 ALTER TABLE `u_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table u_user_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `u_user_role`;

CREATE TABLE `u_user_role` (
  `uid` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `rid` bigint(20) DEFAULT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `u_user_role` WRITE;
/*!40000 ALTER TABLE `u_user_role` DISABLE KEYS */;

INSERT INTO `u_user_role` (`uid`, `rid`)
VALUES
	(12,4),
	(11,3),
	(11,4),
	(1,1);

/*!40000 ALTER TABLE `u_user_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '用户名称',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `username`, `birthday`, `sex`, `address`)
VALUES
	(27,'刘海涛','1983-01-01','男','南京玄武');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table WHS_DEVICE_PROCESS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WHS_DEVICE_PROCESS`;

CREATE TABLE `WHS_DEVICE_PROCESS` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `device_id` int(11) NOT NULL,
  `process_id` int(11) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `standardhours` int(11) NOT NULL,
  `pre_process` int(11) DEFAULT NULL,
  `post_process` int(11) DEFAULT NULL,
  `active` tinyint(11) DEFAULT '1',
  `limit_workhours` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `WHS_DEVICE_PROCESS` WRITE;
/*!40000 ALTER TABLE `WHS_DEVICE_PROCESS` DISABLE KEYS */;

INSERT INTO `WHS_DEVICE_PROCESS` (`id`, `device_id`, `process_id`, `priority`, `standardhours`, `pre_process`, `post_process`, `active`, `limit_workhours`)
VALUES
	(2,0,0,NULL,0,NULL,NULL,1,NULL);

/*!40000 ALTER TABLE `WHS_DEVICE_PROCESS` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table WHS_DEVICE_STANDARDTIMES
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WHS_DEVICE_STANDARDTIMES`;

CREATE TABLE `WHS_DEVICE_STANDARDTIMES` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `device_id` int(11) DEFAULT NULL COMMENT '设备id',
  `mechanical_hours` int(11) DEFAULT NULL COMMENT '机械装配额定工时',
  `electrical_hours` int(11) DEFAULT NULL COMMENT '电气装配额定工时',
  `other_hours` int(11) DEFAULT NULL COMMENT '其他',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table WHS_DEVICES
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WHS_DEVICES`;

CREATE TABLE `WHS_DEVICES` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `device_name` varchar(200) NOT NULL DEFAULT '' COMMENT '设备名称',
  `device_code` varchar(100) DEFAULT '' COMMENT '设备编码',
  `model` varchar(100) NOT NULL DEFAULT '' COMMENT '型号',
  `spec` varchar(100) DEFAULT NULL COMMENT '规格',
  `param` varchar(100) DEFAULT NULL COMMENT '参数',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `mechanical_hours` int(11) DEFAULT NULL COMMENT '机械装配工时',
  `electrical_hours` int(11) DEFAULT NULL COMMENT '电气装配工时',
  `other_hours` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `WHS_DEVICES` WRITE;
/*!40000 ALTER TABLE `WHS_DEVICES` DISABLE KEYS */;

INSERT INTO `WHS_DEVICES` (`id`, `device_name`, `device_code`, `model`, `spec`, `param`, `remark`, `mechanical_hours`, `electrical_hours`, `other_hours`)
VALUES
	(30,'设备1','HQT-3/3','HQT','3/3','',NULL,100,100,100),
	(31,'设备2','HTS-3/3','HTS','3/3','',NULL,200,200,200);

/*!40000 ALTER TABLE `WHS_DEVICES` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table WHS_EMPLOYEE_GROUPS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WHS_EMPLOYEE_GROUPS`;

CREATE TABLE `WHS_EMPLOYEE_GROUPS` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '班组名称',
  `leader` int(11) DEFAULT NULL COMMENT '部门负责人',
  `description` text COMMENT '部门介绍',
  `process_id` int(11) DEFAULT NULL COMMENT '职责工序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `WHS_EMPLOYEE_GROUPS` WRITE;
/*!40000 ALTER TABLE `WHS_EMPLOYEE_GROUPS` DISABLE KEYS */;

INSERT INTO `WHS_EMPLOYEE_GROUPS` (`id`, `name`, `leader`, `description`, `process_id`)
VALUES
	(1,'机械装配1组',NULL,NULL,6),
	(2,'机械装配2组',NULL,NULL,6),
	(3,'机械装配3组',NULL,NULL,6),
	(4,'机械装配4组',NULL,NULL,6),
	(5,'生产辅助',NULL,NULL,NULL),
	(6,'生产电工',NULL,NULL,7),
	(7,'筑炉',NULL,NULL,NULL),
	(8,'油漆',NULL,NULL,NULL);

/*!40000 ALTER TABLE `WHS_EMPLOYEE_GROUPS` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table WHS_EMPLOYEE_LEAVE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WHS_EMPLOYEE_LEAVE`;

CREATE TABLE `WHS_EMPLOYEE_LEAVE` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `leave_begin` datetime DEFAULT NULL,
  `leave_end` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table WHS_EMPLOYEES
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WHS_EMPLOYEES`;

CREATE TABLE `WHS_EMPLOYEES` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `work_years` int(11) DEFAULT NULL,
  `skill` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `WHS_EMPLOYEES` WRITE;
/*!40000 ALTER TABLE `WHS_EMPLOYEES` DISABLE KEYS */;

INSERT INTO `WHS_EMPLOYEES` (`id`, `name`, `birthday`, `age`, `sex`, `work_years`, `skill`, `status`, `groupid`)
VALUES
	(1,'张三',NULL,NULL,NULL,NULL,NULL,NULL,1),
	(2,'李四',NULL,NULL,NULL,NULL,NULL,NULL,2),
	(3,'Bob',NULL,NULL,NULL,NULL,NULL,NULL,6),
	(4,'Cart',NULL,NULL,NULL,NULL,NULL,NULL,6);

/*!40000 ALTER TABLE `WHS_EMPLOYEES` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table WHS_PLAN_ASSET
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WHS_PLAN_ASSET`;

CREATE TABLE `WHS_PLAN_ASSET` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_name` varchar(100) DEFAULT NULL COMMENT '跟踪任务名称，如主要零件',
  `plan_finish_time` datetime DEFAULT NULL COMMENT '预计完成时间',
  `actural_finish_time` datetime DEFAULT NULL COMMENT '实际完成时间',
  `deadline_time` datetime DEFAULT NULL COMMENT '截止到货日期',
  `subproject_id` int(11) DEFAULT NULL COMMENT '子项目编号',
  `status` varchar(10) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table WHS_PLAN_MEMBERS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WHS_PLAN_MEMBERS`;

CREATE TABLE `WHS_PLAN_MEMBERS` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subproject_id` int(11) DEFAULT NULL COMMENT '子项目id',
  `employee_id` int(11) DEFAULT NULL COMMENT '分配人（车间主任）',
  `executor_id` int(11) DEFAULT NULL COMMENT '执行人员',
  `group_id` int(11) DEFAULT NULL COMMENT '部门，班组',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table WHS_PROCESSES
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WHS_PROCESSES`;

CREATE TABLE `WHS_PROCESSES` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `process_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `WHS_PROCESSES` WRITE;
/*!40000 ALTER TABLE `WHS_PROCESSES` DISABLE KEYS */;

INSERT INTO `WHS_PROCESSES` (`id`, `process_name`)
VALUES
	(1,'油漆'),
	(2,'筑炉'),
	(6,'机械装配'),
	(7,'电气装配'),
	(8,'配合调试'),
	(9,'底漆'),
	(10,'面漆'),
	(11,'包装发运');

/*!40000 ALTER TABLE `WHS_PROCESSES` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table WHS_PROJECT_LOG
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WHS_PROJECT_LOG`;

CREATE TABLE `WHS_PROJECT_LOG` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` bigint(11) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `createdby` bigint(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table WHS_PROJECT_PLAN
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WHS_PROJECT_PLAN`;

CREATE TABLE `WHS_PROJECT_PLAN` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subproject_id` int(11) DEFAULT NULL COMMENT '子项目id',
  `plan_begin` datetime DEFAULT NULL COMMENT '计划开始时间',
  `plan_end` datetime DEFAULT NULL COMMENT '计划结束时间',
  `actural_begin` datetime DEFAULT NULL COMMENT '实际开始时间',
  `actural_end` datetime DEFAULT NULL COMMENT '实际完成时间',
  `assigner_id` int(11) DEFAULT NULL COMMENT '分配人',
  `plan_type` varchar(50) DEFAULT NULL COMMENT '计划类型：电气、机械、采购、车间装配',
  `work_number` int(11) DEFAULT NULL COMMENT '安排人数（仅限机械、电气装配阶段)',
  `dayhours` int(11) DEFAULT NULL COMMENT '每天多少小时',
  `week_days` int(11) DEFAULT NULL COMMENT '每周天数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table WHS_PROJECTS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WHS_PROJECTS`;

CREATE TABLE `WHS_PROJECTS` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `project_code` varchar(20) NOT NULL DEFAULT '' COMMENT '项目号',
  `customer_name` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `project_type` varchar(11) DEFAULT NULL COMMENT '类型',
  `delivery_date` date NOT NULL COMMENT '合同交货日期',
  `remark` text,
  `project_status` varchar(20) DEFAULT NULL,
  `created_by` char(10) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `modifydate` datetime DEFAULT NULL,
  `project_owner` int(11) DEFAULT NULL,
  `project_phase` varchar(20) DEFAULT NULL,
  `order_date` date NOT NULL COMMENT '订货通报日期',
  `assurance_begin` int(11) DEFAULT NULL COMMENT '质保期生效时间',
  `assurance_duration` int(11) DEFAULT NULL COMMENT '质保周期',
  `assurance_remark` varchar(200) DEFAULT NULL COMMENT '质保期备注条件',
  `reserve` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `WHS_PROJECTS` WRITE;
/*!40000 ALTER TABLE `WHS_PROJECTS` DISABLE KEYS */;

INSERT INTO `WHS_PROJECTS` (`id`, `project_code`, `customer_name`, `project_type`, `delivery_date`, `remark`, `project_status`, `created_by`, `createdate`, `modifydate`, `project_owner`, `project_phase`, `order_date`, `assurance_begin`, `assurance_duration`, `assurance_remark`, `reserve`)
VALUES
	(1,'HMM','MMM','已签订合同','2018-06-20','remark','新建','1','2018-06-06 00:00:00','2018-06-06 00:00:00',1,'1','2018-06-06',1000,11,'111',NULL);

/*!40000 ALTER TABLE `WHS_PROJECTS` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table WHS_SUB_PROJECTS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WHS_SUB_PROJECTS`;

CREATE TABLE `WHS_SUB_PROJECTS` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `device_id` int(11) DEFAULT NULL COMMENT '设备id',
  `device_quantity` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `device_option` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table WHS_SYSTEM_LOG
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WHS_SYSTEM_LOG`;

CREATE TABLE `WHS_SYSTEM_LOG` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `createdate` datetime DEFAULT NULL,
  `message` text,
  `createdby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table WHS_TICKETS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WHS_TICKETS`;

CREATE TABLE `WHS_TICKETS` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` bigint(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `starttime` date DEFAULT NULL,
  `monday` int(11) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `status_id` varchar(20) DEFAULT NULL,
  `process` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `device_id` int(20) DEFAULT NULL,
  `tuesday` int(11) DEFAULT NULL,
  `wednesday` int(11) DEFAULT NULL,
  `thursday` int(11) DEFAULT NULL,
  `friday` int(11) DEFAULT NULL,
  `saturday` int(11) DEFAULT NULL,
  `sunday` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table WHS_TICKETS_CHECK
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WHS_TICKETS_CHECK`;

CREATE TABLE `WHS_TICKETS_CHECK` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticketid_id` bigint(11) NOT NULL,
  `manager_id` bigint(11) DEFAULT NULL,
  `opinion` varchar(200) DEFAULT '',
  `hr_id` bigint(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
