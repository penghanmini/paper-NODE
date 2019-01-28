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

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '地址唯一标识',
  `addressCnName` varchar(100) NOT NULL COMMENT '地址中文名',
  `userId` varchar(100) DEFAULT NULL COMMENT '所属用户',
  `category` varchar(100) DEFAULT NULL COMMENT '地址所属分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `address` */

insert  into `address`(`id`,`addressCnName`,`userId`,`category`) values (1,'香港',NULL,'0'),(2,'澳门',NULL,'0'),(3,'台湾',NULL,'0'),(4,'日韩',NULL,'0'),(5,'亚洲',NULL,'0'),(6,'欧洲',NULL,'0'),(7,'美洲',NULL,'0'),(8,'内陆',NULL,'0');

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

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '一级分类',
  `name` varchar(20) NOT NULL COMMENT '分类名称',
  `category` varchar(20) DEFAULT NULL COMMENT '分类标识',
  `secondCate` int(10) DEFAULT NULL COMMENT '二级分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4;

/*Data for the table `category` */

insert  into `category`(`id`,`name`,`category`,`secondCate`) values (1,'首页','category_0',0),(2,'居家','category_1',0),(3,'鞋包配饰','category_2',0),(4,'服装','category_3',0),(5,'电器','category_4',0),(6,'洗护','category_5',0),(7,'饮食','category_6',0),(8,'餐厨','category_7',0),(9,'婴童','category_8',0),(10,'文体','category_9',0),(11,'特色区','category_10',0),(13,'床品件套','category_1',1),(14,'被枕','category_1',2),(15,'家具','category_1',3),(16,'灯具','category_1',4),(17,'收纳','category_1',5),(18,'布艺软装','category_1',6),(19,'家饰','category_1',7),(20,'旅行用品','category_1',8),(21,'晾晒除味','category_1',9),(22,'家庭医疗','category_1',10),(23,'宠物','category_1',11),(24,'行李箱','category_2',1),(25,'女士包袋','category_2',2),(26,'男士包袋','category_2',3),(27,'钱包及小皮件','category_2',4),(28,'女鞋','category_2',5),(29,'男鞋','category_2',6),(30,'拖鞋','category_2',7),(31,'鞋配','category_2',8),(32,'围巾件套','category_2',9),(33,'袜子','category_2',10),(34,'丝袜','category_2',11),(35,'首饰','category_2',12),(36,'配件','category_2',13),(37,'眼镜','category_2',14),(38,'男式外套','category_3',1),(39,'男式针织衫/卫衣','category_3',2),(40,'男式裤装','category_3',3),(41,'男式牛仔','category_3',4),(42,'男式衬衫','category_3',5),(43,'男式T恤/POLO','category_3',6),(44,'女式外套','category_3',7),(45,'女式针织衫/卫衣','category_3',8),(46,'女式裤装','category_3',9),(47,'女式牛仔','category_3',10),(48,'女式裙装','category_3',11),(49,'女式T恤/POLO','category_3',12),(50,'男式运动装','category_3',13),(51,'女式运动装','category_3',14),(52,'男式户外','category_3',15),(53,'女式户外','category_3',16),(54,'男式家居服','category_3',17),(55,'女式家居服','category_3',18),(56,'男式内衣/内裤','category_3',19),(57,'女式内衣/内裤','category_3',20),(58,'生活电器','category_4',1),(59,'厨房电器','category_4',2),(60,'个人健康','category_4',3),(61,'数码','category_4',4),(62,'影音娱乐','category_4',5),(93,'蜜饯果干','category_6',5),(91,'坚果炒货','category_6',3),(89,'饼干糕点','category_6',1),(94,'冲调饮品','category_6',6),(92,'肉类零食','category_6',4),(90,'小食糖巧','category_6',2),(88,'洗发护发','category_5',11),(87,'身体护理','category_5',10),(86,'面部口腔护理','category_5',9),(83,'毛巾浴巾','category_5',6),(81,'女性用品','category_5',4),(79,'家庭清洁','category_5',2),(85,'香水香氛','category_5',8),(82,'浴室用具','category_5',5),(84,'美妆','category_5',7),(80,'生理用品','category_5',3),(78,'纸品湿巾','category_5',1),(95,'茶包花茶','category_6',7),(96,'传统茗茶','category_6',8),(97,'方便食品','category_6',9),(98,'米面粮油','category_6',10),(99,'南北干货','category_6',11),(100,'调味酱菜','category_6',12),(101,'酒类','category_6',13),(102,'乳品饮料','category_6',14),(103,'滋补食材','category_6',15),(104,'保健品','category_6',16),(105,'果鲜肉蛋','category_6',17),(106,'海外美食','category_6',18),(107,'水具杯壶','category_7',1),(108,'餐具','category_7',2),(109,'锅具','category_7',3),(110,'清洁保鲜','category_7',4),(111,'厨房配件','category_7',5),(112,'剪刀砧板','category_7',6),(113,'茶具咖啡具酒具','category_7',7),(115,'新生儿服装','category_8',1),(116,'小童服装','category_8',2),(117,'中大童服装','category_8',3),(118,'童鞋','category_8',4),(119,'婴童洗护','category_8',5),(120,'婴童床品','category_8',6),(121,'童车童床','category_8',7),(122,'玩具','category_8',8),(123,'孕产内衣','category_8',9),(124,'童包','category_8',10),(125,'婴童搭配','category_8',11),(126,'毛巾口水巾','category_8',12),(127,'儿童家具收纳','category_8',13),(128,'喂养用品','category_8',14),(129,'孕妈装','category_8',15),(130,'妈咪用品','category_8',16),(131,'文具','category_9',1),(132,'运动户外','category_9',2),(133,'乐器唱片','category_9',3),(134,'礼品卡','category_9',4),(135,'游戏点卡','category_9',5),(136,'文创周边','category_9',6),(137,'影视周边','category_9',7),(138,'动漫电玩','category_9',8),(139,'进口尖货','category_10',1),(141,'春味馆','category_10',2),(142,'国风馆','category_10',3),(143,'东方草木馆','category_10',4);

/*Table structure for table `commodity` */

DROP TABLE IF EXISTS `commodity`;

CREATE TABLE `commodity` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `name` varchar(50) NOT NULL COMMENT '商品名称',
  `shop` varchar(20) DEFAULT NULL COMMENT '商品所属商店',
  `category` varchar(20) DEFAULT NULL COMMENT '商品一级分类',
  `categorydetail` varchar(20) DEFAULT NULL COMMENT '商品二级分类',
  `remark` varchar(100) DEFAULT NULL COMMENT '商品备注',
  `oldprice` varchar(10) DEFAULT NULL COMMENT '老价',
  `newprice` varchar(10) DEFAULT NULL COMMENT '新价',
  `size` varchar(20) DEFAULT NULL COMMENT '商品规格尺寸',
  `activeText` varchar(20) DEFAULT NULL COMMENT '活动详情',
  `samllimg` varchar(200) DEFAULT NULL COMMENT '商品小图',
  `imgUrl` varchar(10) DEFAULT NULL COMMENT '商品预览图片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

/*Data for the table `commodity` */

insert  into `commodity`(`id`,`name`,`shop`,`category`,`categorydetail`,`remark`,`oldprice`,`newprice`,`size`,`activeText`,`samllimg`,`imgUrl`) values (1,'霓裳凤翎刺绣婚庆十件套','shop_1','category_1','1','凤翎精致蕾丝刺绣，百支奢密风光大嫁','','￥2399','','新品','https://yanxuan.nosdn.127.net/c74e2290b4cde2661affe43d52143b98.jpg?quality=95&thumbnail=245x245&imageView',''),(2,'60s锦眠贡缎四件套','shop_1','category_1','1','400根纯棉贡缎，入门奢享高阶柔滑','','￥469','','年货节特卖','https://yanxuan.nosdn.127.net/5240f52c0f410054fe9c20abc54aa7b9.jpg?quality=95&thumbnail=245x245&imageView',''),(3,'21s素暖轻磨毛四件套','shop_1','category_1','1','厚实粗犷肌理感，越睡越舒适','￥279.3','￥399','','店铺福利','https://yanxuan.nosdn.127.net/9cc53c0ab9ec374184859824cec18764.jpg?quality=95&thumbnail=245x245&imageView',''),(4,'猪莉·粉糖四件套','shop_1','category_1','1','少女粉糯贡缎，猪莉甜美相赠','￥359','￥439','','APP特惠','https://yanxuan.nosdn.127.net/20f2330e0de7b764c14ae8105229592a.jpg?quality=95&thumbnail=245x245&imageView',''),(5,'全棉针织条纹四件套 新款','shop_1','category_1','1','超柔针织棉，亲肤可裸睡','￥299','￥239','','年货节特卖','https://yanxuan.nosdn.127.net/fffb1322337ad58526ba69e5738b9c7f.jpg?quality=95&thumbnail=245x245&imageView',''),(6,'水洗棉间隔条纹四件套','shop_1','category_1','1','水洗慵懒会呼吸，日式简约条纹，床笠款设计','￥299','￥254','','限时购','https://yanxuan.nosdn.127.net/c0c386a7bc0b700ff9f7607166e51424.jpg?quality=95&thumbnail=245x245&imageView',''),(7,'秋遇·待叶归磨毛四件套','shop_1','category_1','1','全棉生态磨毛，温和厚软细腻','','￥499','',NULL,'https://yanxuan.nosdn.127.net/f76877d706edc8eafa01d23c8562033f.jpg?quality=95&thumbnail=245x245&imageView',''),(8,'秋遇·漫花开贡缎四件套','shop_1','category_1','1','经典暖调配色，随性美式加身','','￥439','',NULL,'https://yanxuan.nosdn.127.net/d08f9664e59142c8d39ad4234a16b8f4.jpg?quality=95&thumbnail=245x245&imageView',''),(9,'北欧花鸟集四件套','shop_1','category_1','1','北欧色彩美学，2种质感，双享体验','￥339','￥213',NULL,'年货节特卖','https://yanxuan.nosdn.127.net/bbc529686c9eecdf57c2c217f7d5806a.jpg?quality=95&thumbnail=245x245&imageView',NULL),(10,'科尔玛小镇·碎花四件套','shop_1','category_1','1','纯正法式田园风，亲肤浪漫自由',NULL,'￥399',NULL,NULL,'https://yanxuan.nosdn.127.net/05f944c6f1653418b764d85ea6bc56b5.jpg?quality=95&thumbnail=245x245&imageView',NULL),(11,'挚·染色提花四件套','shop_1','category_1','1','新疆长绒棉+奢密缎纹，立体提花轻奢现代',NULL,'￥999',NULL,NULL,'https://yanxuan.nosdn.127.net/86ab2e9ffb0228030374ca93ebe921c1.jpg?quality=95&thumbnail=245x245&imageView',NULL),(12,'挚·商务简约提花四件套','shop_1','category_1','1','140支脂密纯棉，双丝光工艺，轻奢美学',NULL,'￥1999',NULL,NULL,'https://yanxuan.nosdn.127.net/e52ed08840259b627efab262d73e7d95.jpg?quality=95&thumbnail=245x245&imageView',NULL),(13,'祺宴 糕饼礼盒 1.15千克','shop_1','category_6','1','9款精致饼食，新春礼赠','￥198','￥149',NULL,'年货节特卖','https://yanxuan.nosdn.127.net/79dce49ffebf3b0fda025adcf802b80d.png?quality=95&thumbnail=265x265&imageView',NULL),(14,'祺宴 坚果礼盒 840克','shop_1','category_6','1','四仁荟萃，佳节甄礼','￥298','￥225',NULL,'年货节特卖','https://yanxuan.nosdn.127.net/f25b1102215f6b22e833665bef22157f.png?quality=95&thumbnail=265x265&imageView',NULL),(15,'茅台王子酒 金王子53° 500毫升','shop_1','category_6','3','国酒茅台 金王子','￥388','￥218',NULL,'吃货福利','https://yanxuan.nosdn.127.net/d0125f6c41beb964722a96bcc93c9c59.jpg?quality=95&thumbnail=265x265&imageView&quality=95&thumbnail=265x265&imageView',NULL),(16,'西班牙制造 高浓VC保湿抗皱安瓶','shop_1','category_5','1','高浓度VC精华注入安瓶，强效抗氧化',NULL,'￥289',NULL,'满减','https://yanxuan.nosdn.127.net/a695a85621b21d2842435fe485b80f6b.jpg?quality=95&thumbnail=265x265&imageView&quality=95&thumbnail=265x265&imageView',NULL),(17,'升级款95%白鹅绒秋冬加厚羽绒被','shop_1','category_1','2','热销5万+条，一条被子过冬','￥1149','￥896',NULL,'居家特惠','https://yanxuan.nosdn.127.net/fa1a1b42cdf47e67ea542681c29211d3.jpg?quality=95&thumbnail=245x245&imageView',NULL),(18,'波兰进口95%白鹅绒提花静音羽绒被','shop_1','category_1','2','波兰进口95%白鹅绒，双效保暖','￥2999','￥2099',NULL,'居家特惠','https://yanxuan.nosdn.127.net/0089b8902bdb016e89f76be9939be519.png?quality=95&thumbnail=245x245&imageView',NULL),(19,'丹麦制造95.8%高支白鹅绒被 可机洗','shop_1','category_1','2','丹麦70年企业 皇室专供 可机洗烘干',NULL,'￥3599',NULL,NULL,'https://yanxuan.nosdn.127.net/8a5f001e797835e6348ba52e9db2c970.jpg?quality=95&thumbnail=245x245&imageView',NULL),(20,'秋冬保暖加厚澳洲羊毛被','shop_1','category_1','2','臻品级澳洲进口羊毛','￥479','￥383',NULL,'限时购','https://yanxuan.nosdn.127.net/9d31b815627808f0e2b2c09fdcb105c8.jpg?quality=95&thumbnail=245x245&imageView',NULL),(21,'轻奢·蕨之语提花四件套','shop_1','category_1','1','400根如绸臻密，提花精致层次感','￥799','￥719',NULL,'限时购','https://yanxuan.nosdn.127.net/666340f240f9b71db3cea8b0dacba4a1.png?imageView&amp;quality=95&amp;thumbnail=245x245',NULL),(22,'真奢柔暖细羊毛被','shop_1','category_1','2','珍稀“绵羊绒”，A类标准细腻柔暖','￥549','￥465',NULL,'居家特惠','https://yanxuan.nosdn.127.net/27fe1ed89a6b78fdfb9db95ca1738d25.jpg?quality=95&thumbnail=245x245&imageView',NULL),(23,'轻暖升温澳洲羊毛被 春秋被','shop_1','category_1','2','南方御秋寒，北方暖气房，一条搞定','￥299','￥255',NULL,'限时购','https://yanxuan.nosdn.127.net/43611360471cf69862d2968b6dcb3f94.jpg?quality=95&thumbnail=245x245&imageView',NULL),(24,'透气保暖元绒棉花被','shop_1','category_1','2','新疆品牌棉花，从里到外全棉打造','￥279','￥239',NULL,'居家特惠','https://yanxuan.nosdn.127.net/26124e2564a5169090830ade16caf505.jpg?quality=95&amp;thumbnail=245x245&amp;imageView',NULL),(25,'新色 安全智能控温电热毯','shop_1','category_1','2','日本进口原配件，安全调温，多重保护','￥279','￥218',NULL,'居家特惠','https://yanxuan.nosdn.127.net/1e87dd75634f40081aa8a0cb16281f3f.jpg?quality=95&amp;thumbnail=245x245&amp;imageView',NULL),(26,'AB面独立弹簧床垫 进口乳胶','shop_1','category_1','2','仅售供应商建议价的1/3','￥2599','￥2079',NULL,'居家特惠','https://yanxuan.nosdn.127.net/6bd1ea1d237244d05e8fafea82f90c5b.jpg?quality=95&amp;thumbnail=245x245&amp;imageView',NULL),(27,'升级款怡眠高山苦荞枕','shop_1','category_1','2','高山苦荞分区承托，草本怡人',NULL,'￥109',NULL,NULL,'https://yanxuan.nosdn.127.net/93ab7ff30662d473a8c04983c715bc1a.jpg?quality=95&amp;thumbnail=245x245&amp;imageView',NULL),(28,'圆形护颈苦荞麦枕','shop_1','category_1','2','高山苦荞，多用护腰颈',NULL,'￥69',NULL,NULL,'https://yanxuan.nosdn.127.net/babfe5bcc01900db4223e69137cdd3fb.jpg?quality=95&amp;thumbnail=245x245&amp;imageView',NULL),(29,'林音系列实木床+2个床头柜组合','shop_1','category_1','3','经典组合，超值优惠',NULL,'￥3799',NULL,NULL,'https://yanxuan.nosdn.127.net/a43bb2c5225476c21c4b1a778e0a65f9.jpg?quality=95&amp;thumbnail=245x245&amp;imageView',NULL),(30,'林音系列实木床','shop_1','category_1','3','素美之作，匠心雕琢','￥1999','￥1799',NULL,'居家特惠','https://yanxuan.nosdn.127.net/2f6c5caa1a96ff8c355e2a209e49fb7d.jpg?quality=95&amp;thumbnail=245x245&amp;imageView',NULL),(31,'多功能人体工学转椅','shop_1','category_1','3','专利设计，强力承托，重点呵护',NULL,'￥1399',NULL,'满额减','https://yanxuan.nosdn.127.net/5443fa754bd06656d9ace7ff0e93a579.jpg?quality=95&amp;thumbnail=245x245&amp;imageView',NULL);

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
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `category` varchar(20) DEFAULT NULL COMMENT '商品一级目录',
  `categorydetail` varchar(20) DEFAULT NULL COMMENT '商品二级目录',
  `src` varchar(200) DEFAULT NULL COMMENT '商品图片路径',
  `belong` varchar(20) DEFAULT NULL COMMENT '所属分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

/*Data for the table `smallimg` */

insert  into `smallimg`(`id`,`category`,`categorydetail`,`src`,`belong`) values (1,'category_1','1','https://yanxuan.nosdn.127.net/c74e2290b4cde2661affe43d52143b98.jpg?quality=95&thumbnail=245x245&imageView',NULL),(2,'category_1','1','https://yanxuan.nosdn.127.net/5240f52c0f410054fe9c20abc54aa7b9.jpg?quality=95&thumbnail=245x245&imageView',NULL),(4,'category_1','1','https://yanxuan.nosdn.127.net/20f2330e0de7b764c14ae8105229592a.jpg?quality=95&thumbnail=245x245&imageView',NULL),(3,'category_1','1','https://yanxuan.nosdn.127.net/9cc53c0ab9ec374184859824cec18764.jpg?quality=95&thumbnail=245x245&imageView',NULL),(5,'category_1','1','https://yanxuan.nosdn.127.net/fffb1322337ad58526ba69e5738b9c7f.jpg?quality=95&thumbnail=245x245&imageView',NULL),(6,'category_1','1','https://yanxuan.nosdn.127.net/c0c386a7bc0b700ff9f7607166e51424.jpg?quality=95&thumbnail=245x245&imageView',NULL),(7,'category_1','1','https://yanxuan.nosdn.127.net/f76877d706edc8eafa01d23c8562033f.jpg?quality=95&thumbnail=245x245&imageView',NULL),(8,'category_1','1','https://yanxuan.nosdn.127.net/d08f9664e59142c8d39ad4234a16b8f4.jpg?quality=95&thumbnail=245x245&imageView',NULL),(9,'category_1','1','https://yanxuan.nosdn.127.net/bbc529686c9eecdf57c2c217f7d5806a.jpg?quality=95&thumbnail=245x245&imageView',NULL),(10,'category_1','1','https://yanxuan.nosdn.127.net/05f944c6f1653418b764d85ea6bc56b5.jpg?quality=95&thumbnail=245x245&imageView',NULL),(11,'category_1','1','https://yanxuan.nosdn.127.net/86ab2e9ffb0228030374ca93ebe921c1.jpg?quality=95&thumbnail=245x245&imageView',NULL),(12,'category_1','1','https://yanxuan.nosdn.127.net/e52ed08840259b627efab262d73e7d95.jpg?quality=95&thumbnail=245x245&imageView',NULL),(13,'category_0','1','https://yanxuan.nosdn.127.net/15468656849650181.png','cloth'),(14,'category_0','1','https://yanxuan.nosdn.127.net/15468657004320182.png','livingHome'),(15,'category_0','1','https://yanxuan.nosdn.127.net/15469338844231471.png','diet'),(16,'category_0','1','https://yanxuan.nosdn.127.net/15468657087870184.png','electric'),(17,'category_0','1','https://yanxuan.nosdn.127.net/15469338976701472.png','shoeBag'),(18,'category_0','1','https://yanxuan.nosdn.127.net/15468657715450186.png','kitchen'),(19,'category_0','1','https://yanxuan.nosdn.127.net/15468657745740187.png','personalCare'),(20,'category_0','1','https://yanxuan.nosdn.127.net/15470888713462407.png','special'),(21,'category_0','1','https://yanxuan.nosdn.127.net/15468658381750192.png','baby'),(22,'category_0','1','https://yanxuan.nosdn.127.net/15468658414510193.png','literaryForm'),(23,'category_0','1','https://yanxuan.nosdn.127.net/15468658456620194.png','special'),(24,'category_0','1','https://yanxuan.nosdn.127.net/15468658499210195.png','special');

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `userId` int(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `userName` varchar(100) NOT NULL COMMENT '用户账号',
  `userPassword` varchar(20) NOT NULL COMMENT '用户密码',
  `nickname` varchar(15) NOT NULL COMMENT '昵称',
  `avatar` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `userinfo` */

insert  into `userinfo`(`userId`,`userName`,`userPassword`,`nickname`,`avatar`) values (1,'panda','123456','熊猫',NULL),(2,'Sophia','123456','牛',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
