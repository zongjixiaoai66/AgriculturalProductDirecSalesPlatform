/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t263`;
CREATE DATABASE IF NOT EXISTS `t263` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t263`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 3, '收货人1', '17703786901', '地址1', 1, '2022-03-16 02:34:14', '2022-03-16 02:34:14', '2022-03-16 02:34:14'),
	(2, 1, '收货人2', '17703786902', '地址2', 2, '2022-03-16 02:34:14', '2022-03-16 02:43:37', '2022-03-16 02:34:14'),
	(3, 1, '收货人3', '17703786903', '地址3', 1, '2022-03-16 02:34:14', '2022-03-16 02:43:31', '2022-03-16 02:34:14'),
	(4, 3, '收货人4', '17703786904', '地址4', 1, '2022-03-16 02:34:14', '2022-03-16 02:34:14', '2022-03-16 02:34:14'),
	(5, 2, '收货人5', '17703786905', '地址5', 1, '2022-03-16 02:34:14', '2022-03-16 02:34:14', '2022-03-16 02:34:14');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `nongchanpin_id` int DEFAULT NULL COMMENT '农产品',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/nongchanpinzhimai/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/nongchanpinzhimai/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/nongchanpinzhimai/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-16 02:34:10'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-16 02:34:10'),
	(3, 'shangjia_xingji_types', '商家信用类型', 1, '一级', NULL, NULL, '2022-03-16 02:34:10'),
	(4, 'shangjia_xingji_types', '商家信用类型', 2, '二级', NULL, NULL, '2022-03-16 02:34:10'),
	(5, 'shangjia_xingji_types', '商家信用类型', 3, '三级', NULL, NULL, '2022-03-16 02:34:10'),
	(6, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-03-16 02:34:10'),
	(7, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-03-16 02:34:10'),
	(8, 'nongchanpin_types', '农产品类型', 1, '农产品类型1', NULL, NULL, '2022-03-16 02:34:10'),
	(9, 'nongchanpin_types', '农产品类型', 2, '农产品类型2', NULL, NULL, '2022-03-16 02:34:10'),
	(10, 'nongchanpin_types', '农产品类型', 3, '农产品类型3', NULL, NULL, '2022-03-16 02:34:10'),
	(11, 'nongchanpin_types', '农产品类型', 4, '农产品类型4', NULL, NULL, '2022-03-16 02:34:10'),
	(12, 'nongchanpin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-03-16 02:34:10'),
	(13, 'nongchanpin_order_types', '订单类型', 1, '已评价', NULL, NULL, '2022-03-16 02:34:11'),
	(14, 'nongchanpin_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-03-16 02:34:11'),
	(15, 'nongchanpin_order_types', '订单类型', 3, '已支付', NULL, NULL, '2022-03-16 02:34:11'),
	(16, 'nongchanpin_order_types', '订单类型', 4, '已发货', NULL, NULL, '2022-03-16 02:34:11'),
	(17, 'nongchanpin_order_types', '订单类型', 5, '已收货', NULL, NULL, '2022-03-16 02:34:11'),
	(18, 'nongchanpin_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-03-16 02:34:11'),
	(19, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2022-03-16 02:34:11'),
	(20, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2022-03-16 02:34:11'),
	(21, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-16 02:34:11'),
	(22, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-16 02:34:11');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/nongchanpinzhimai/upload/gonggao1.jpg', 1, '2022-03-16 02:34:14', '公告详情1', '2022-03-16 02:34:14'),
	(2, '公告名称2', 'http://localhost:8080/nongchanpinzhimai/upload/gonggao2.jpg', 2, '2022-03-16 02:34:14', '公告详情2', '2022-03-16 02:34:14'),
	(3, '公告名称3', 'http://localhost:8080/nongchanpinzhimai/upload/gonggao3.jpg', 1, '2022-03-16 02:34:14', '公告详情3', '2022-03-16 02:34:14'),
	(4, '公告名称4', 'http://localhost:8080/nongchanpinzhimai/upload/gonggao4.jpg', 2, '2022-03-16 02:34:14', '公告详情4', '2022-03-16 02:34:14'),
	(5, '公告名称5', 'http://localhost:8080/nongchanpinzhimai/upload/gonggao5.jpg', 1, '2022-03-16 02:34:14', '公告详情5', '2022-03-16 02:34:14');

DROP TABLE IF EXISTS `nongchanpin`;
CREATE TABLE IF NOT EXISTS `nongchanpin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int DEFAULT NULL COMMENT '商家',
  `nongchanpin_name` varchar(200) DEFAULT NULL COMMENT '农产品名称  Search111 ',
  `nongchanpin_photo` varchar(200) DEFAULT NULL COMMENT '农产品照片',
  `nongchanpin_types` int DEFAULT NULL COMMENT '农产品类型 Search111',
  `nongchanpin_kucun_number` int DEFAULT NULL COMMENT '农产品库存',
  `nongchanpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '农产品原价 ',
  `nongchanpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `nongchanpin_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `nongchanpin_content` text COMMENT '农产品介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `nongchanpin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='农产品';

DELETE FROM `nongchanpin`;
INSERT INTO `nongchanpin` (`id`, `shangjia_id`, `nongchanpin_name`, `nongchanpin_photo`, `nongchanpin_types`, `nongchanpin_kucun_number`, `nongchanpin_old_money`, `nongchanpin_new_money`, `nongchanpin_clicknum`, `nongchanpin_content`, `shangxia_types`, `nongchanpin_delete`, `create_time`) VALUES
	(1, 3, '农产品名称1', 'http://localhost:8080/nongchanpinzhimai/upload/nongchanpin1.jpg', 3, 97, 579.34, 352.35, 446, '农产品介绍1', 1, 1, '2022-03-16 02:34:14'),
	(2, 2, '农产品名称2', 'http://localhost:8080/nongchanpinzhimai/upload/nongchanpin2.jpg', 1, 102, 917.63, 252.26, 358, '农产品介绍2', 1, 1, '2022-03-16 02:34:14'),
	(3, 1, '农产品名称3', 'http://localhost:8080/nongchanpinzhimai/upload/nongchanpin3.jpg', 2, 101, 924.97, 257.70, 220, '<p>农产品介绍3是是是</p>', 1, 1, '2022-03-16 02:34:14'),
	(4, 2, '农产品名称4', 'http://localhost:8080/nongchanpinzhimai/upload/nongchanpin4.jpg', 3, 103, 738.30, 160.92, 252, '农产品介绍4', 1, 1, '2022-03-16 02:34:14'),
	(5, 3, '农产品名称5', 'http://localhost:8080/nongchanpinzhimai/upload/nongchanpin5.jpg', 3, 103, 886.02, 453.75, 480, '农产品介绍5', 1, 1, '2022-03-16 02:34:14');

DROP TABLE IF EXISTS `nongchanpin_collection`;
CREATE TABLE IF NOT EXISTS `nongchanpin_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nongchanpin_id` int DEFAULT NULL COMMENT '农产品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `nongchanpin_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='农产品收藏';

DELETE FROM `nongchanpin_collection`;
INSERT INTO `nongchanpin_collection` (`id`, `nongchanpin_id`, `yonghu_id`, `nongchanpin_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2022-03-16 02:34:14', '2022-03-16 02:34:14'),
	(2, 2, 2, 1, '2022-03-16 02:34:14', '2022-03-16 02:34:14'),
	(3, 3, 2, 1, '2022-03-16 02:34:14', '2022-03-16 02:34:14'),
	(4, 4, 1, 1, '2022-03-16 02:34:14', '2022-03-16 02:34:14'),
	(5, 5, 1, 1, '2022-03-16 02:34:14', '2022-03-16 02:34:14');

DROP TABLE IF EXISTS `nongchanpin_commentback`;
CREATE TABLE IF NOT EXISTS `nongchanpin_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nongchanpin_id` int DEFAULT NULL COMMENT '农产品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `nongchanpin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='农产品评价';

DELETE FROM `nongchanpin_commentback`;
INSERT INTO `nongchanpin_commentback` (`id`, `nongchanpin_id`, `yonghu_id`, `nongchanpin_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '评价内容1', '2022-03-16 02:34:14', '回复信息1', '2022-03-16 02:34:14', '2022-03-16 02:34:14'),
	(2, 2, 2, '评价内容2', '2022-03-16 02:34:14', '回复信息2', '2022-03-16 02:34:14', '2022-03-16 02:34:14'),
	(3, 3, 2, '评价内容3', '2022-03-16 02:34:14', '回复信息3', '2022-03-16 02:34:14', '2022-03-16 02:34:14'),
	(4, 4, 2, '评价内容4', '2022-03-16 02:34:14', '回复信息4', '2022-03-16 02:34:14', '2022-03-16 02:34:14'),
	(5, 5, 3, '评价内容5', '2022-03-16 02:34:14', '回复信息5', '2022-03-16 02:34:14', '2022-03-16 02:34:14'),
	(6, 3, 1, '好的很', '2022-03-16 02:46:45', '感谢您的鼓掌怒', '2022-03-16 02:47:11', '2022-03-16 02:46:45');

DROP TABLE IF EXISTS `nongchanpin_order`;
CREATE TABLE IF NOT EXISTS `nongchanpin_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nongchanpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int DEFAULT NULL COMMENT '收获地址 ',
  `nongchanpin_id` int DEFAULT NULL COMMENT '农产品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `nongchanpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `nongchanpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `nongchanpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '订单快递单号',
  `nongchanpin_order_types` int DEFAULT NULL COMMENT '订单类型',
  `nongchanpin_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='农产品订单';

DELETE FROM `nongchanpin_order`;
INSERT INTO `nongchanpin_order` (`id`, `nongchanpin_order_uuid_number`, `address_id`, `nongchanpin_id`, `yonghu_id`, `buy_number`, `nongchanpin_order_true_price`, `nongchanpin_order_courier_name`, `nongchanpin_order_courier_number`, `nongchanpin_order_types`, `nongchanpin_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1647398596033', 2, 3, 1, 1, 357.70, NULL, NULL, 2, 1, '2022-03-16 02:43:16', '2022-03-16 02:43:16'),
	(2, '1647398632086', 2, 3, 1, 2, 715.40, '申通快递', '5649961', 1, 1, '2022-03-16 02:43:52', '2022-03-16 02:43:52'),
	(3, '1647398632086', 2, 1, 1, 4, 1409.40, NULL, NULL, 3, 1, '2022-03-16 02:43:52', '2022-03-16 02:43:52'),
	(4, '1647398632086', 2, 5, 1, 2, 907.50, NULL, NULL, 3, 1, '2022-03-16 02:43:52', '2022-03-16 02:43:52'),
	(5, '1721019916985', 2, 4, 1, 1, 160.92, NULL, NULL, 3, 1, '2024-07-15 05:05:17', '2024-07-15 05:05:17');

DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE IF NOT EXISTS `shangjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_xingji_types` int DEFAULT NULL COMMENT '商家信用类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` text COMMENT '商家介绍',
  `shangjia_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='商家';

DELETE FROM `shangjia`;
INSERT INTO `shangjia` (`id`, `username`, `password`, `shangjia_name`, `shangjia_phone`, `shangjia_email`, `shangjia_photo`, `shangjia_xingji_types`, `new_money`, `shangjia_content`, `shangjia_delete`, `create_time`) VALUES
	(1, '商家1', '123456', '商家名称1', '17703786901', '1@qq.com', 'http://localhost:8080/nongchanpinzhimai/upload/shangjia1.jpg', 3, 1522.44, '<p>商家介绍1是是是</p>', 1, '2022-03-16 02:34:14'),
	(2, '商家2', '123456', '商家名称2', '17703786902', '2@qq.com', 'http://localhost:8080/nongchanpinzhimai/upload/shangjia2.jpg', 3, 722.27, '商家介绍2', 1, '2022-03-16 02:34:14'),
	(3, '商家3', '123456', '商家名称3', '17703786903', '3@qq.com', 'http://localhost:8080/nongchanpinzhimai/upload/shangjia3.jpg', 3, 1508.45, '商家介绍3', 1, '2022-03-16 02:34:14');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'omh3h6xb9eme333x7buky0a6yc3rk7ha', '2022-03-16 02:27:14', '2024-07-15 06:04:44'),
	(2, 6, 'admin', 'users', '管理员', 'mlfy0tipgtqokkyp7enhmpc01b01o8pq', '2022-03-16 02:44:25', '2024-07-15 06:03:12'),
	(3, 1, 'a1', 'shangjia', '商家', '55lh67k0meszsrzfxghvfpgywcqc1i7v', '2022-03-16 02:44:55', '2024-07-15 06:04:18');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/nongchanpinzhimai/upload/yonghu1.jpg', 1, '1@qq.com', 10117.66, '2022-03-16 02:34:14'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/nongchanpinzhimai/upload/yonghu2.jpg', 2, '2@qq.com', 148.83, '2022-03-16 02:34:14'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/nongchanpinzhimai/upload/yonghu3.jpg', 2, '3@qq.com', 705.50, '2022-03-16 02:34:14');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;