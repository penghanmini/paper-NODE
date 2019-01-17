/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.53 : Database - mypaper
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mypaper` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `mypaper`;

/*Table structure for table `carousellist` */

DROP TABLE IF EXISTS `carousellist`;

CREATE TABLE `carousellist` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID唯一值',
  `src` varchar(200) NOT NULL COMMENT '图片路径',
  `belong` int(10) NOT NULL COMMENT '所属页面',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

/*Data for the table `carousellist` */

insert  into `carousellist`(`id`,`src`,`belong`) values (1,'https://yanxuan.nosdn.127.net/92ef3b8c5a071205881fc3d2dd239a2e.jpg?imageView&quality=95&thumbnail=1920x420',1),(2,'https://yanxuan.nosdn.127.net/81d976a1372ba92e1df73c96e4a447e8.jpg?imageView&quality=95&thumbnail=1920x420',1),(3,'https://yanxuan.nosdn.127.net/ef9b42036d43e8fe0edbe4d722cbaa7b.jpg?imageView&quality=95&thumbnail=1920x420',1),(4,'https://yanxuan.nosdn.127.net/ece59ae8e8a70ded51a387055e19fcf0.jpg?imageView&quality=95&thumbnail=1920x420',1),(5,'https://yanxuan.nosdn.127.net/ece59ae8e8a70ded51a387055e19fcf0.jpg?imageView&quality=95&thumbnail=1920x420',1),(6,'https://yanxuan.nosdn.127.net/0c90345ede8cc7b4e959ae113f701d95.jpg?imageView&quality=95&thumbnail=1920x420',1),(7,'https://yanxuan.nosdn.127.net/d763efe3fe66123069fe0705b158de54.jpg?imageView&quality=95&thumbnail=1920x420',1),(8,'https://yanxuan.nosdn.127.net/f4766822f76274a3987466280d1c0d38.jpg?imageView&quality=95&thumbnail=1920x420',1),(9,'https://yanxuan.nosdn.127.net/874de1f81d910dd5efee2817babc7977.jpg?imageView&quality=95&thumbnail=1090x310',2),(10,'https://yanxuan.nosdn.127.net/c85b03119e81390003edbd0dddf485cd.jpg?imageView&quality=95&thumbnail=1090x310',2),(11,'https://yanxuan.nosdn.127.net/eea03529f52942c111107af728a771ec.jpg?imageView&quality=95&thumbnail=1090x310',2),(12,'https://yanxuan.nosdn.127.net/42e190f910816f85818cd49994ccdf4e.jpg?imageView&quality=95&thumbnail=1090x310',3),(13,'https://yanxuan.nosdn.127.net/f723ad4700a1f0d327d6524681648e58.jpg?imageView&quality=95&thumbnail=1090x310',3),(14,'https://yanxuan.nosdn.127.net/674762f17f27bf412ef2e09a4ed83dc0.jpg?imageView&quality=95&thumbnail=1090x310',3),(15,'https://yanxuan.nosdn.127.net/565ff72294f594771f9ed8c2a84ab5fc.jpg?imageView&quality=95&thumbnail=1090x310',4),(16,'https://yanxuan.nosdn.127.net/242f4333ba8d04fb64e6d2ff4b173796.jpg?imageView&quality=95&thumbnail=1090x310',4),(17,'https://yanxuan.nosdn.127.net/fdf7d47065085bf3add86f2108fd7eb0.jpg?imageView&quality=95&thumbnail=1090x310',4),(18,'https://yanxuan.nosdn.127.net/a3264aa49d299ada7439b03739a615c4.jpg?imageView&quality=95&thumbnail=1090x310',5),(19,'https://yanxuan.nosdn.127.net/f93cccbec25358c8d492c828969a520c.jpg?imageView&quality=95&thumbnail=1090x310',5),(20,'https://yanxuan.nosdn.127.net/40627216cc7388dc0ff730531a00a390.jpg?imageView&quality=95&thumbnail=1090x310',5),(21,'https://yanxuan.nosdn.127.net/356179268d544ccb0244dded502c8931.jpg?imageView&quality=95&thumbnail=1090x310',6),(22,'https://yanxuan.nosdn.127.net/5552c4fa8cd2b97f353ac5e6235d947c.jpg?imageView&quality=95&thumbnail=1090x310',6),(23,'https://yanxuan.nosdn.127.net/07f96bdf830305510c685b52d2b5e9ec.jpg?imageView&quality=95&thumbnail=1090x310',6),(24,'https://yanxuan.nosdn.127.net/511cd6e879fc27b5239b15c2b703d616.jpg?imageView&quality=95&thumbnail=1090x310',7),(25,'https://yanxuan.nosdn.127.net/fa685c2eb548c41d161935f80ce73755.jpg?imageView&quality=95&thumbnail=1090x310',7),(26,'https://yanxuan.nosdn.127.net/8bc33a4ebbab45282699045db1c1f8ea.jpg?imageView&quality=95&thumbnail=1090x310',7),(27,'https://yanxuan.nosdn.127.net/5992eb7e25ac386627a1680e3d8eee57.jpg?imageView&quality=95&thumbnail=1090x310',8),(28,'https://yanxuan.nosdn.127.net/4e4806eb489e3dc09c46fcb847696e1c.jpg?imageView&quality=95&thumbnail=1090x310',8),(29,'https://yanxuan.nosdn.127.net/7e89ae70acb7dca00bc09753df5b787a.jpg?imageView&quality=95&thumbnail=1090x310',8),(30,'https://yanxuan.nosdn.127.net/600a1065dedd8873a94dfe431a7f34b9.jpg?imageView&quality=95&thumbnail=1090x310',9),(31,'https://yanxuan.nosdn.127.net/4f4379a8b4d7b1e87906290dda68cba9.jpg?imageView&quality=95&thumbnail=1090x310',9),(32,'https://yanxuan.nosdn.127.net/468a511f9335ac5480a22a94889d1f6f.jpg?imageView&quality=95&thumbnail=1090x310',9),(33,'https://yanxuan.nosdn.127.net/477ea73c4e10bcf234a3882eba749b4d.jpg?imageView&quality=95&thumbnail=1090x310',10),(34,'https://yanxuan.nosdn.127.net/2c077c13a22a0665efb6ef7c27d30770.jpg?imageView&quality=95&thumbnail=1090x310',10),(35,'https://yanxuan.nosdn.127.net/c7b35be043da3287318f128a4ca7a950.jpg?imageView&quality=95&thumbnail=1090x310',10),(36,'https://yanxuan.nosdn.127.net/51b77fee0a49ff39e075209e51a982d8.jpg?imageView&quality=95&thumbnail=1090x310',11),(37,'https://yanxuan.nosdn.127.net/82fe054f4082f7457822f14353b8ebe3.jpg?imageView&quality=95&thumbnail=1090x310',11),(38,'https://yanxuan.nosdn.127.net/1f19f0e09af714cd5b6809a443cdf49d.jpg?imageView&quality=95&thumbnail=1090x310',11);

/*Table structure for table `commodity` */

DROP TABLE IF EXISTS `commodity`;

CREATE TABLE `commodity` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `name` varchar(50) NOT NULL COMMENT '商品名称',
  `shop` varchar(20) NOT NULL COMMENT '商品所属商店',
  `category` varchar(20) NOT NULL COMMENT '商品一级分类',
  `categorydetail` varchar(20) DEFAULT NULL COMMENT '商品二级分类',
  `remark` varchar(100) DEFAULT NULL COMMENT '商品备注',
  `oldprice` varchar(10) DEFAULT NULL COMMENT '老价',
  `newprice` varchar(10) NOT NULL COMMENT '新价',
  `size` varchar(20) DEFAULT NULL COMMENT '商品规格尺寸',
  `activeType` int(2) DEFAULT NULL COMMENT '活动类型(1.新品2.年货节特卖3.APP特惠4.店铺福利)',
  `activeText` varchar(20) DEFAULT NULL COMMENT '活动详情',
  `samllimg` varchar(200) DEFAULT NULL COMMENT '商品小图',
  `imgUrl` varchar(10) DEFAULT NULL COMMENT '商品预览图片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `commodity` */

insert  into `commodity`(`id`,`name`,`shop`,`category`,`categorydetail`,`remark`,`oldprice`,`newprice`,`size`,`activeType`,`activeText`,`samllimg`,`imgUrl`) values (1,'霓裳凤翎刺绣婚庆十件套','shop_1','category_1','1','凤翎精致蕾丝刺绣，百支奢密风光大嫁','','￥2399','',1,'新品','https://yanxuan.nosdn.127.net/c74e2290b4cde2661affe43d52143b98.jpg?quality=95&thumbnail=245x245&imageView',''),(2,'60s锦眠贡缎四件套','shop_1','category_1','1','400根纯棉贡缎，入门奢享高阶柔滑','','￥469','',2,'年货节特卖','https://yanxuan.nosdn.127.net/5240f52c0f410054fe9c20abc54aa7b9.jpg?quality=95&thumbnail=245x245&imageView',''),(3,'21s素暖轻磨毛四件套','shop_1','category_1','1','厚实粗犷肌理感，越睡越舒适','￥279.3','￥399','',4,'店铺福利','https://yanxuan.nosdn.127.net/9cc53c0ab9ec374184859824cec18764.jpg?quality=95&thumbnail=245x245&imageView',''),(4,'猪莉·粉糖四件套','shop_1','category_1','1','少女粉糯贡缎，猪莉甜美相赠','￥359','￥439','',3,'APP特惠','https://yanxuan.nosdn.127.net/20f2330e0de7b764c14ae8105229592a.jpg?quality=95&thumbnail=245x245&imageView',''),(5,'全棉针织条纹四件套 新款','shop_1','category_1','1','超柔针织棉，亲肤可裸睡','￥299','￥239','',2,'年货节特卖','https://yanxuan.nosdn.127.net/fffb1322337ad58526ba69e5738b9c7f.jpg?quality=95&thumbnail=245x245&imageView',''),(6,'水洗棉间隔条纹四件套','shop_1','category_1','1','水洗慵懒会呼吸，日式简约条纹，床笠款设计','￥299','￥254','',5,'限时购','https://yanxuan.nosdn.127.net/c0c386a7bc0b700ff9f7607166e51424.jpg?quality=95&thumbnail=245x245&imageView',''),(7,'秋遇·待叶归磨毛四件套','shop_1','category_1','1','全棉生态磨毛，温和厚软细腻','','￥499','',0,NULL,'https://yanxuan.nosdn.127.net/f76877d706edc8eafa01d23c8562033f.jpg?quality=95&thumbnail=245x245&imageView',''),(8,'秋遇·漫花开贡缎四件套','shop_1','category_1','1','经典暖调配色，随性美式加身','','￥439','',0,NULL,'https://yanxuan.nosdn.127.net/d08f9664e59142c8d39ad4234a16b8f4.jpg?quality=95&thumbnail=245x245&imageView',''),(9,'北欧花鸟集四件套','shop_1','category_1','1','北欧色彩美学，2种质感，双享体验','￥339','￥213',NULL,2,'年货节特卖','https://yanxuan.nosdn.127.net/bbc529686c9eecdf57c2c217f7d5806a.jpg?quality=95&thumbnail=245x245&imageView',NULL),(10,'科尔玛小镇·碎花四件套','shop_1','category_1','1','纯正法式田园风，亲肤浪漫自由',NULL,'￥399',NULL,0,NULL,'https://yanxuan.nosdn.127.net/05f944c6f1653418b764d85ea6bc56b5.jpg?quality=95&thumbnail=245x245&imageView',NULL),(11,'挚·染色提花四件套','shop_1','category_1','1','新疆长绒棉+奢密缎纹，立体提花轻奢现代',NULL,'￥999',NULL,NULL,NULL,'https://yanxuan.nosdn.127.net/86ab2e9ffb0228030374ca93ebe921c1.jpg?quality=95&thumbnail=245x245&imageView',NULL),(12,'挚·商务简约提花四件套','shop_1','category_1','1','140支脂密纯棉，双丝光工艺，轻奢美学',NULL,'￥1999',NULL,NULL,NULL,'https://yanxuan.nosdn.127.net/e52ed08840259b627efab262d73e7d95.jpg?quality=95&thumbnail=245x245&imageView',NULL);

/*Table structure for table `detailimg` */

DROP TABLE IF EXISTS `detailimg`;

CREATE TABLE `detailimg` (
  `id` int(10) NOT NULL COMMENT '商品ID',
  `src` varchar(200) NOT NULL COMMENT '图片路径',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Data for the table `detailimg` */

/*Table structure for table `livinghome` */

DROP TABLE IF EXISTS `livinghome`;

CREATE TABLE `livinghome` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID唯一值',
  `src` varchar(200) NOT NULL COMMENT '图片路径',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `livinghome` */

insert  into `livinghome`(`id`,`src`) values (1,'https://yanxuan.nosdn.127.net/874de1f81d910dd5efee2817babc7977.jpg?imageView&quality=95&thumbnail=1090x310'),(2,'https://yanxuan.nosdn.127.net/c85b03119e81390003edbd0dddf485cd.jpg?imageView&quality=95&thumbnail=1090x310'),(3,'https://yanxuan.nosdn.127.net/eea03529f52942c111107af728a771ec.jpg?imageView&quality=95&thumbnail=1090x310');

/*Table structure for table `smallimg` */

DROP TABLE IF EXISTS `smallimg`;

CREATE TABLE `smallimg` (
  `id` int(10) NOT NULL COMMENT '商品ID',
  `src` varchar(200) NOT NULL COMMENT '商品图片路径',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Data for the table `smallimg` */

insert  into `smallimg`(`id`,`src`) values (1,'https://yanxuan.nosdn.127.net/c74e2290b4cde2661affe43d52143b98.jpg?quality=95&thumbnail=245x245&imageView'),(2,'https://yanxuan.nosdn.127.net/5240f52c0f410054fe9c20abc54aa7b9.jpg?quality=95&thumbnail=245x245&imageView'),(4,'https://yanxuan.nosdn.127.net/20f2330e0de7b764c14ae8105229592a.jpg?quality=95&thumbnail=245x245&imageView'),(3,'https://yanxuan.nosdn.127.net/9cc53c0ab9ec374184859824cec18764.jpg?quality=95&thumbnail=245x245&imageView'),(5,'https://yanxuan.nosdn.127.net/fffb1322337ad58526ba69e5738b9c7f.jpg?quality=95&thumbnail=245x245&imageView'),(6,'https://yanxuan.nosdn.127.net/c0c386a7bc0b700ff9f7607166e51424.jpg?quality=95&thumbnail=245x245&imageView'),(7,'https://yanxuan.nosdn.127.net/f76877d706edc8eafa01d23c8562033f.jpg?quality=95&thumbnail=245x245&imageView'),(8,'https://yanxuan.nosdn.127.net/d08f9664e59142c8d39ad4234a16b8f4.jpg?quality=95&thumbnail=245x245&imageView'),(9,'https://yanxuan.nosdn.127.net/bbc529686c9eecdf57c2c217f7d5806a.jpg?quality=95&thumbnail=245x245&imageView'),(10,'https://yanxuan.nosdn.127.net/05f944c6f1653418b764d85ea6bc56b5.jpg?quality=95&thumbnail=245x245&imageView'),(11,'https://yanxuan.nosdn.127.net/86ab2e9ffb0228030374ca93ebe921c1.jpg?quality=95&thumbnail=245x245&imageView'),(12,'https://yanxuan.nosdn.127.net/e52ed08840259b627efab262d73e7d95.jpg?quality=95&thumbnail=245x245&imageView');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
