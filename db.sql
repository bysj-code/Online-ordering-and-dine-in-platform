/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zaixiandiancanpingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zaixiandiancanpingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zaixiandiancanpingtai`;

/*Table structure for table `caipin` */

DROP TABLE IF EXISTS `caipin`;

CREATE TABLE `caipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `caipin_name` varchar(200) DEFAULT NULL COMMENT '商品名称 Search111',
  `caipin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `caipin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `caipin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `caipin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `caipin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `caipin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `caipin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `caipin_content` text COMMENT '商品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `caipin` */

insert  into `caipin`(`id`,`caipin_name`,`caipin_photo`,`caipin_types`,`caipin_kucun_number`,`caipin_old_money`,`caipin_new_money`,`caipin_clicknum`,`shangxia_types`,`caipin_delete`,`caipin_content`,`create_time`) values (1,'商品名称1','http://localhost:8080/zaixiandiancanpingtai/upload/caipin1.jpg',2,101,'946.50','486.49',66,1,1,'商品简介1','2022-05-12 10:24:04'),(2,'商品名称2','http://localhost:8080/zaixiandiancanpingtai/upload/caipin2.jpg',1,102,'982.84','399.49',8,1,1,'商品简介2','2022-05-12 10:24:04'),(3,'商品名称3','http://localhost:8080/zaixiandiancanpingtai/upload/caipin3.jpg',2,103,'731.17','499.91',324,1,1,'商品简介3','2022-05-12 10:24:04'),(4,'商品名称4','http://localhost:8080/zaixiandiancanpingtai/upload/caipin4.jpg',2,103,'675.21','150.97',123,1,1,'商品简介4','2022-05-12 10:24:04'),(5,'商品名称5','http://localhost:8080/zaixiandiancanpingtai/upload/caipin5.jpg',1,104,'634.52','266.18',29,2,1,'商品简介5','2022-05-12 10:24:04');

/*Table structure for table `caipin_collection` */

DROP TABLE IF EXISTS `caipin_collection`;

CREATE TABLE `caipin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `caipin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `caipin_collection` */

insert  into `caipin_collection`(`id`,`caipin_id`,`yonghu_id`,`caipin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-05-12 10:24:04','2022-05-12 10:24:04'),(2,2,1,1,'2022-05-12 10:24:04','2022-05-12 10:24:04'),(4,4,2,1,'2022-05-12 10:24:04','2022-05-12 10:24:04'),(5,5,2,1,'2022-05-12 10:24:04','2022-05-12 10:24:04'),(7,4,1,1,'2022-05-12 11:14:39','2022-05-12 11:14:39');

/*Table structure for table `caipin_order` */

DROP TABLE IF EXISTS `caipin_order`;

CREATE TABLE `caipin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `caipin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `caipin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `caipin_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `caipin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `caipin_order` */

insert  into `caipin_order`(`id`,`caipin_order_uuid_number`,`caipin_id`,`yonghu_id`,`buy_number`,`caipin_order_true_price`,`caipin_order_types`,`caipin_order_payment_types`,`insert_time`,`create_time`) values (4,'1652324492129',5,1,1,'266.18',4,1,'2022-05-12 11:01:32','2022-05-12 11:01:32'),(5,'1652325312582',1,1,1,'486.49',2,1,'2022-05-12 11:15:13','2022-05-12 11:15:13'),(6,'1652325312582',4,1,1,'150.97',1,1,'2022-05-12 11:15:13','2022-05-12 11:15:13');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `caipin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/zaixiandiancanpingtai/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/zaixiandiancanpingtai/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/zaixiandiancanpingtai/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (21,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-05-12 10:21:08'),(22,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-05-12 10:21:08'),(23,'caipin_types','商品类型',1,'商品类型1',NULL,NULL,'2022-05-12 10:21:08'),(24,'caipin_types','商品类型',2,'商品类型2',NULL,NULL,'2022-05-12 10:21:08'),(25,'caipin_order_types','订单类型',1,'已支付',NULL,NULL,'2022-05-12 10:21:08'),(26,'caipin_order_types','订单类型',2,'退款',NULL,NULL,'2022-05-12 10:21:08'),(27,'caipin_order_types','订单类型',3,'已出餐',NULL,NULL,'2022-05-12 10:21:08'),(28,'caipin_order_types','订单类型',4,'已上餐',NULL,NULL,'2022-05-12 10:21:08'),(29,'caipin_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-05-12 10:21:08'),(30,'caipin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-05-12 10:21:08'),(31,'sex_types','性别类型',1,'男',NULL,NULL,'2022-05-12 10:21:08'),(32,'sex_types','性别类型',2,'女',NULL,NULL,'2022-05-12 10:21:08'),(33,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-05-12 10:21:08'),(34,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-05-12 10:21:08'),(35,'news_types','公告类型',3,'活动信息',NULL,NULL,'2022-05-12 10:21:08'),(36,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-05-12 10:21:08'),(37,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-05-12 10:21:08');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',NULL,1,'2022-05-12 10:24:04','2022-05-12 10:24:04','2022-05-12 10:24:04'),(2,'帖子标题2',1,NULL,'发布内容2',NULL,1,'2022-05-12 10:24:04','2022-05-12 10:24:04','2022-05-12 10:24:04'),(3,'帖子标题3',2,NULL,'发布内容3',NULL,1,'2022-05-12 10:24:04','2022-05-12 10:24:04','2022-05-12 10:24:04'),(4,'帖子标题4',1,NULL,'发布内容4',NULL,1,'2022-05-12 10:24:04','2022-05-12 10:24:04','2022-05-12 10:24:04'),(5,'帖子标题5',1,NULL,'发布内容5',NULL,1,'2022-05-12 10:24:04','2022-05-12 10:24:04','2022-05-12 10:24:04'),(8,NULL,NULL,1,'管理评论21212',5,2,'2022-05-12 11:10:29',NULL,'2022-05-12 11:10:29'),(9,NULL,1,NULL,'用户评论1111',5,2,'2022-05-12 11:15:04',NULL,'2022-05-12 11:15:04');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'http://localhost:8080/zaixiandiancanpingtai/upload/news1.jpg','2022-05-12 10:24:04','公告详情1','2022-05-12 10:24:04'),(2,'公告标题2',3,'http://localhost:8080/zaixiandiancanpingtai/upload/news2.jpg','2022-05-12 10:24:04','公告详情2','2022-05-12 10:24:04'),(3,'公告标题3',2,'http://localhost:8080/zaixiandiancanpingtai/upload/news3.jpg','2022-05-12 10:24:04','公告详情3','2022-05-12 10:24:04'),(4,'公告标题4',3,'http://localhost:8080/zaixiandiancanpingtai/upload/news4.jpg','2022-05-12 10:24:04','公告详情4','2022-05-12 10:24:04'),(5,'公告标题5',2,'http://localhost:8080/zaixiandiancanpingtai/upload/news5.jpg','2022-05-12 10:24:04','公告详情5','2022-05-12 10:24:04');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (5,1,'a1','yonghu','用户','61ihemy77dfrr10sd24hfcpav1yksnxm','2022-05-12 11:01:10','2022-05-12 12:16:02'),(6,1,'admin','users','管理员','9s20wa3xqpoxbir89sapnx2xdqzk5wjn','2022-05-12 11:09:07','2022-05-12 12:27:51');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/zaixiandiancanpingtai/upload/yonghu1.jpg',2,'1@qq.com','9545.71','2022-05-12 10:24:04'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/zaixiandiancanpingtai/upload/yonghu2.jpg',2,'2@qq.com','420.76','2022-05-12 10:24:04'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/zaixiandiancanpingtai/upload/yonghu3.jpg',2,'3@qq.com','771.24','2022-05-12 10:24:04');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
