/*
SQLyog Ultimate v11.25 (64 bit)
MySQL - 5.5.33 : Database - db_tpms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_tpms` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_tpms`;

/*Table structure for table `t_class` */

DROP TABLE IF EXISTS `t_class`;

CREATE TABLE `t_class` (
  `classID` int(32) NOT NULL AUTO_INCREMENT COMMENT '班级id',
  `className` varchar(80) DEFAULT NULL COMMENT '班级名称',
  `status` varchar(80) DEFAULT NULL COMMENT '班级状态',
  PRIMARY KEY (`classID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_class` */

insert  into `t_class`(`classID`,`className`,`status`) values (1,'软件1431','2'),(2,'软件1421','2'),(3,'软件1413','2');

/*Table structure for table `t_group` */

DROP TABLE IF EXISTS `t_group`;

CREATE TABLE `t_group` (
  `groupID` int(32) NOT NULL AUTO_INCREMENT,
  `leaderID` varchar(80) DEFAULT NULL,
  `itemID` varchar(80) DEFAULT NULL,
  `groupName` varchar(80) DEFAULT NULL,
  `groupDescription` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`groupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_group` */

/*Table structure for table `t_groupmemberrole` */

DROP TABLE IF EXISTS `t_groupmemberrole`;

CREATE TABLE `t_groupmemberrole` (
  `groupID` varchar(80) DEFAULT NULL,
  `memberID` varchar(80) DEFAULT NULL,
  `roleID` varchar(80) DEFAULT NULL,
  `id` int(32) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_groupmemberrole` */

/*Table structure for table `t_grouprole` */

DROP TABLE IF EXISTS `t_grouprole`;

CREATE TABLE `t_grouprole` (
  `roleID` int(32) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(80) DEFAULT NULL,
  `roleDescription` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_grouprole` */

/*Table structure for table `t_item` */

DROP TABLE IF EXISTS `t_item`;

CREATE TABLE `t_item` (
  `itemID` int(32) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(80) DEFAULT NULL,
  `itemDescription` varchar(80) DEFAULT NULL,
  `leaderID` varchar(80) DEFAULT NULL,
  `projectID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_item` */

/*Table structure for table `t_itemstage` */

DROP TABLE IF EXISTS `t_itemstage`;

CREATE TABLE `t_itemstage` (
  `itemID` varchar(80) DEFAULT NULL,
  `stageNumber` int(32) DEFAULT NULL,
  `stageState` varchar(80) DEFAULT NULL,
  `stageName` varchar(80) DEFAULT NULL,
  `stageDescription` varchar(80) DEFAULT NULL,
  `stageData` varchar(80) DEFAULT NULL,
  `id` int(32) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_itemstage` */

/*Table structure for table `t_managementright` */

DROP TABLE IF EXISTS `t_managementright`;

CREATE TABLE `t_managementright` (
  `teacherID` varchar(80) DEFAULT NULL,
  `classID` varchar(80) DEFAULT NULL,
  `effectiveDate` date DEFAULT NULL,
  `duration` int(32) DEFAULT NULL,
  `id` int(32) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

/*Data for the table `t_managementright` */

insert  into `t_managementright`(`teacherID`,`classID`,`effectiveDate`,`duration`,`id`) values ('111111','1',NULL,NULL,32),('1204111111','2',NULL,NULL,44),('1204111111','1',NULL,NULL,45),('111111','1',NULL,NULL,46),('1204111111','2',NULL,NULL,48),('1204111111','3',NULL,NULL,49),('3444444','3',NULL,NULL,50);

/*Table structure for table `t_monitoringright` */

DROP TABLE IF EXISTS `t_monitoringright`;

CREATE TABLE `t_monitoringright` (
  `teacherID` varchar(80) DEFAULT NULL,
  `classID` varchar(80) DEFAULT NULL,
  `effectiveDate` date DEFAULT NULL,
  `duration` int(32) DEFAULT NULL,
  `id` int(32) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `t_monitoringright` */

insert  into `t_monitoringright`(`teacherID`,`classID`,`effectiveDate`,`duration`,`id`) values ('111111','1',NULL,NULL,1),('111111','2',NULL,NULL,7),('111111','1',NULL,NULL,8),('1204111111','1',NULL,NULL,9),('1204111111','3',NULL,NULL,10),('1204111111','2',NULL,NULL,11),('3444444','3',NULL,NULL,12);

/*Table structure for table `t_project` */

DROP TABLE IF EXISTS `t_project`;

CREATE TABLE `t_project` (
  `projectID` int(32) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(80) DEFAULT NULL,
  `projectDescription` varchar(80) DEFAULT NULL,
  `projectData` varchar(80) DEFAULT NULL,
  `projectState` varchar(80) DEFAULT NULL,
  `effectiveDate` date DEFAULT NULL,
  `duration` int(32) DEFAULT NULL,
  `limit` int(32) DEFAULT NULL,
  `teacherID` varchar(80) DEFAULT NULL,
  `classID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`projectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_project` */

/*Table structure for table `t_student` */

DROP TABLE IF EXISTS `t_student`;

CREATE TABLE `t_student` (
  `studentID` varchar(80) NOT NULL,
  `classID` varchar(80) DEFAULT NULL,
  `studentName` varchar(80) DEFAULT NULL,
  `gender` varchar(80) DEFAULT NULL,
  `groupID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_student` */

insert  into `t_student`(`studentID`,`classID`,`studentName`,`gender`,`groupID`) values ('1','1',NULL,NULL,NULL),('2','1',NULL,NULL,NULL),('3','2',NULL,NULL,NULL),('4','2',NULL,NULL,NULL),('5','3',NULL,NULL,NULL),('6','3',NULL,NULL,NULL);

/*Table structure for table `t_teacher` */

DROP TABLE IF EXISTS `t_teacher`;

CREATE TABLE `t_teacher` (
  `teacherID` varchar(80) NOT NULL,
  `teacherName` varchar(80) DEFAULT NULL,
  `gender` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`teacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_teacher` */

insert  into `t_teacher`(`teacherID`,`teacherName`,`gender`) values ('111111','哈哈哈','0'),('1111111','张三的歌','0'),('111111111111111','111111111111111','0'),('11111111111111111','测试用户','0'),('1204111111','张三','0'),('1234567','随便的名字','0'),('1402753115','张一凡','0'),('1402753128','12','1'),('1402753129','meng','1'),('1402753131','noone','1'),('1402753132','小','1'),('22222222222222222222','2222222222222222222','0'),('333333333','3333333333','0'),('33333333333333333','33333333333333333','0'),('333333333333333333333','3333333333333333333','0'),('3444444','3444444','0'),('44444444444444444','4444444444444','0'),('7654321','名字随便','0');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `identity` varchar(80) NOT NULL COMMENT '账号',
  `passwd` varchar(80) DEFAULT NULL COMMENT '密码',
  `role` varchar(80) DEFAULT NULL COMMENT '角色',
  `status` varchar(80) DEFAULT NULL COMMENT '角色状态',
  PRIMARY KEY (`identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`identity`,`passwd`,`role`,`status`) values ('111111','111111','1','1'),('1111111','111111','1','1'),('111111111111111','111111','1','0'),('11111111111111111','111111','1','0'),('1204111111','111111','1','1'),('1234567','234567','1','0'),('1402753115','753115','1','1'),('1402753128','753128','1','1'),('1402753129','753129','1','0'),('1402753131','753131','1','1'),('1402753132','753132','1','0'),('22222222222222222222','222222','1','1'),('333333333','333333','1','1'),('33333333333333333','333333','1','1'),('333333333333333333333','333333','1','0'),('3444444','444444','1','1'),('44444444444444444','444444','1','0'),('7654321','654321','1','0'),('admin','admin','0','0');

/*Table structure for table `t_userinfo` */

DROP TABLE IF EXISTS `t_userinfo`;

CREATE TABLE `t_userinfo` (
  `identity` varchar(80) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `academy` varchar(80) DEFAULT NULL,
  `phoneNumber` varchar(80) DEFAULT NULL,
  `workNumber` varchar(80) DEFAULT NULL,
  `selfIntroduction` varchar(80) DEFAULT NULL,
  `head` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_userinfo` */

insert  into `t_userinfo`(`identity`,`name`,`email`,`academy`,`phoneNumber`,`workNumber`,`selfIntroduction`,`head`) values ('111111','哈哈哈',NULL,NULL,NULL,NULL,NULL,NULL),('1111111','张三的歌',NULL,NULL,NULL,NULL,NULL,NULL),('111111111111111','111111111111111',NULL,NULL,NULL,NULL,NULL,NULL),('11111111111111111','测试用户',NULL,NULL,NULL,NULL,NULL,NULL),('1204111111','张三',NULL,NULL,NULL,NULL,NULL,NULL),('1234567','随便的名字',NULL,NULL,NULL,NULL,NULL,NULL),('1402753115','张一凡',NULL,NULL,NULL,NULL,NULL,NULL),('1402753128','12',NULL,NULL,NULL,NULL,NULL,NULL),('1402753129','meng',NULL,NULL,NULL,NULL,NULL,NULL),('1402753131','noone',NULL,NULL,NULL,NULL,NULL,NULL),('1402753132','小',NULL,NULL,NULL,NULL,NULL,NULL),('22222222222222222222','2222222222222222222',NULL,NULL,NULL,NULL,NULL,NULL),('333333333','3333333333',NULL,NULL,NULL,NULL,NULL,NULL),('33333333333333333','33333333333333333',NULL,NULL,NULL,NULL,NULL,NULL),('333333333333333333333','3333333333333333333',NULL,NULL,NULL,NULL,NULL,NULL),('3444444','3444444',NULL,NULL,NULL,NULL,NULL,NULL),('44444444444444444','4444444444444',NULL,NULL,NULL,NULL,NULL,NULL),('7654321','名字随便',NULL,NULL,NULL,NULL,NULL,NULL),('admin','管理员','test@xx.com','计软','18752001982','123456','To be or not to be,that is a question.\r\nAha so easy.','http://ogxfabiku.bkt.clouddn.com/head/20161120151340860857.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
