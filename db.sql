/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zuoyeyuchashou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zuoyeyuchashou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zuoyeyuchashou`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-22 13:57:45'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-22 13:57:45'),(3,'xueyuanzhuanye_types','学院专业类型名称',1,'哲学',NULL,'2021-04-22 13:57:45'),(4,'xueyuanzhuanye_types','学院专业类型名称',2,'经济学',NULL,'2021-04-22 13:57:45'),(5,'xueyuanzhuanye_types','学院专业类型名称',3,'法学类',NULL,'2021-04-22 13:57:45'),(6,'xueyuanzhuanye_types','学院专业类型名称',4,'教育学',NULL,'2021-04-22 13:57:45'),(7,'zuoye_types','作业类型名称',1,'日常作业',NULL,'2021-04-22 13:57:45'),(8,'zuoye_types','作业类型名称',2,'期末作业',NULL,'2021-04-22 13:57:45'),(9,'zuoye_types','作业类型名称',3,'毕业作业',NULL,'2021-04-22 13:57:45'),(10,'news_types','新闻类型名称',1,'日常新闻',NULL,'2021-04-22 13:57:45'),(11,'news_types','新闻类型名称',2,'紧急新闻',NULL,'2021-04-22 13:57:45'),(12,'tongzhi_types','通知类型名称',1,'日常通知',NULL,'2021-04-22 13:57:46'),(13,'tongzhi_types','通知类型名称',2,'紧急通知',NULL,'2021-04-22 13:57:46'),(14,'zuoye_types','作业类型名称',4,'作业类型4',NULL,'2021-04-22 15:44:46');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号 Search111 ',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号 Search111 ',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xueyuanzhuanye_types` int(11) DEFAULT NULL COMMENT '学院专业类型 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`laoshi_phone`,`laoshi_id_number`,`laoshi_photo`,`sex_types`,`xueyuanzhuanye_types`,`create_time`) values (1,'a11','123456','张11','17703786901','410224199610232001','http://localhost:8080/zuoyeyuchashou/file/download?fileName=1619073357879.jpg',2,4,'2021-04-22 14:35:59'),(2,'a22','123456','张22','17703786902','410224199610232002','http://localhost:8080/zuoyeyuchashou/file/download?fileName=1619073396177.jpg',2,3,'2021-04-22 14:36:39'),(3,'a33','123456','张3','17703786903','410224199610232003','http://localhost:8080/zuoyeyuchashou/file/download?fileName=1619077201917.jpg',2,4,'2021-04-22 15:40:09');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'新闻1',2,'http://localhost:8080/zuoyeyuchashou/file/download?fileName=1619076076823.jfif','2021-04-22 15:21:24','新闻1的详情\r\n','2021-04-22 15:21:24'),(4,'新闻2',1,'http://localhost:8080/zuoyeyuchashou/file/download?fileName=1619077340846.jpg','2021-04-22 15:42:27','新闻2的详情\r\n','2021-04-22 15:42:27');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','m8pq2uzwxvyth51qj5n648t0uyw2sptv','2021-04-22 14:17:04','2021-04-22 16:58:19'),(2,1,'a1','yonghu','用户','2xk9yc684wh3tljua5iwk80ma62mu9zo','2021-04-22 15:25:53','2021-04-22 18:10:55'),(3,2,'a2','yonghu','用户','za8heqr2o5zzducgngd0mzvf07xoiugu','2021-04-22 15:33:34','2021-04-22 16:35:03'),(4,1,'a11','laoshi','老师','8yky7qavto4xt5l7chy6fu0d1j77uxor','2021-04-22 15:37:35','2021-04-22 18:04:12'),(5,3,'a33','laoshi','老师','2x857qt3qguilsw8u9nsbz0lb696b9v2','2021-04-22 15:45:01','2021-04-22 16:45:02');

/*Table structure for table `tongzhi` */

DROP TABLE IF EXISTS `tongzhi`;

CREATE TABLE `tongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `tongzhi_name` varchar(200) DEFAULT NULL COMMENT '通知名称 Search111 ',
  `tongzhi_types` int(11) DEFAULT NULL COMMENT '通知类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '通知时间',
  `tongzhi_content` text COMMENT '通知详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='通知';

/*Data for the table `tongzhi` */

insert  into `tongzhi`(`id`,`laoshi_id`,`tongzhi_name`,`tongzhi_types`,`insert_time`,`tongzhi_content`,`create_time`) values (3,2,'通知1',2,'2021-04-22 15:25:14','通知1的内容\r\n','2021-04-22 15:25:14'),(4,2,'张22老师的通知1',2,'2021-04-22 15:25:39','张22老师的通知1\r\n','2021-04-22 15:25:39'),(5,1,'张11老师通知的1',2,'2021-04-22 15:34:23','张11老师的通知1\r\n','2021-04-22 15:34:23'),(6,3,'张33老师的通知1',1,'2021-04-22 15:43:37','张33老师的通知1的详情\r\n','2021-04-22 15:43:37'),(7,1,'老师张11通知1',2,'2021-04-22 17:10:28','通知1的内容\r\n','2021-04-22 17:10:28');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xueyuanzhuanye_types` int(11) DEFAULT NULL COMMENT '学院专业类型 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`xueyuanzhuanye_types`,`create_time`) values (1,'a1','123456','张1111','17703786901','410224199610232001','http://localhost:8080/zuoyeyuchashou/file/download?fileName=1619072287041.jpg',2,4,'2021-04-22 14:18:11'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/zuoyeyuchashou/file/download?fileName=1619073277298.jpg',1,3,'2021-04-22 14:34:41'),(3,'a3','123456','张三','17703786903','410224199610232003','http://localhost:8080/zuoyeyuchashou/file/download?fileName=1619073298906.jpg',2,4,'2021-04-22 14:35:01'),(4,'a4','123456','张43','17703786904','410224199610232004','http://localhost:8080/zuoyeyuchashou/file/download?fileName=1619077162089.jpg',2,4,'2021-04-22 15:39:25');

/*Table structure for table `yonghuzuoye` */

DROP TABLE IF EXISTS `yonghuzuoye`;

CREATE TABLE `yonghuzuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuoye_id` int(11) DEFAULT NULL COMMENT '作业',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yonghuzuoye_file` varchar(200) DEFAULT NULL COMMENT '回答作业',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '回答作业时间',
  `yonghuzuoye_fenshu` int(11) DEFAULT NULL COMMENT '分数',
  `yonghuzuoye_content` text COMMENT '批改详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='回答作业';

/*Data for the table `yonghuzuoye` */

insert  into `yonghuzuoye`(`id`,`zuoye_id`,`yonghu_id`,`yonghuzuoye_file`,`insert_time`,`yonghuzuoye_fenshu`,`yonghuzuoye_content`,`create_time`) values (1,2,1,'http://localhost:8080/zuoyeyuchashou/file/download?fileName=1619076785549.txt','2021-04-22 15:33:07',10,'‍还成\r\n','2021-04-22 15:33:07'),(2,3,2,'http://localhost:8080/zuoyeyuchashou/file/download?fileName=1619076926708.txt','2021-04-22 15:35:28',NULL,'‍\r\n','2021-04-22 15:35:28'),(3,4,1,'http://localhost:8080/zuoyeyuchashou/file/download?fileName=1619082760947.txt','2021-04-22 17:12:44',NULL,'‍\r\n','2021-04-22 17:12:44');

/*Table structure for table `zuoye` */

DROP TABLE IF EXISTS `zuoye`;

CREATE TABLE `zuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `zuoye_name` varchar(200) DEFAULT NULL COMMENT '作业名称  Search111 ',
  `zuoye_types` int(11) DEFAULT NULL COMMENT '作业类型  Search111 ',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '作业文件',
  `zuoye_end_time` timestamp NULL DEFAULT NULL COMMENT '作业截止时间 Search111 ',
  `zuoye_content` text COMMENT '作业详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='作业';

/*Data for the table `zuoye` */

insert  into `zuoye`(`id`,`laoshi_id`,`zuoye_name`,`zuoye_types`,`zuoye_file`,`zuoye_end_time`,`zuoye_content`,`create_time`) values (1,2,'作业1',3,'http://localhost:8080/zuoyeyuchashou/file/download?fileName=1619074558989.txt','2021-04-30 00:00:00','作业1的详情\r\n','2021-04-22 14:56:06'),(2,1,'作业2',3,'http://localhost:8080/zuoyeyuchashou/file/download?fileName=1619074586766.txt','2021-04-29 00:00:00','作业2的详情\r\n','2021-04-22 14:56:45'),(3,2,'作业3',2,'http://localhost:8080/zuoyeyuchashou/file/download?fileName=1619074763370.txt','2021-04-30 00:00:00','作业3的详情\r\n','2021-04-22 14:59:31'),(4,3,'作业4',2,'http://localhost:8080/zuoyeyuchashou/file/download?fileName=1619077264064.jpg','2021-04-27 00:00:00','作业4的详情\r\n','2021-04-22 15:41:20'),(5,3,'作业5',2,'http://localhost:8080/zuoyeyuchashou/file/download?fileName=1619077660854.txt','2021-04-21 00:00:00','作业511\r\n','2021-04-22 15:47:46');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
