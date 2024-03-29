-- MySQL dump 10.13  Distrib 5.6.50, for Linux (x86_64)
--
-- Host: localhost    Database: jifenpdcom
-- ------------------------------------------------------
-- Server version	5.6.50-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `xy_ad`
--

DROP TABLE IF EXISTS `xy_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_ad` (
  `ad_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ad_logo` varchar(100) NOT NULL,
  `ad_url` varchar(100) NOT NULL,
  `ad_type` varchar(10) NOT NULL DEFAULT 'pc' COMMENT '广告类型(pc/h5)',
  `ad_position` varchar(15) NOT NULL,
  `ad_state` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '广告显示状态',
  `ad_order` int(10) unsigned NOT NULL DEFAULT '0',
  `category_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_ad`
--

LOCK TABLES `xy_ad` WRITE;
/*!40000 ALTER TABLE `xy_ad` DISABLE KEYS */;
INSERT INTO `xy_ad` VALUES (19,'attachment/2023-04/2023042713202016852c.png','','pc','index_jdt',1,0,0),(16,'attachment/2023-04/2023042704520516843g.jpg','','h5','index_jdt',1,0,0);
/*!40000 ALTER TABLE `xy_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_admin`
--

DROP TABLE IF EXISTS `xy_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_admin` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理id',
  `admin_name` varchar(20) NOT NULL COMMENT '管理名',
  `admin_pw` varchar(32) NOT NULL COMMENT '管理密码',
  `admin_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理注册时间',
  `admin_ltime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理上次登录时间',
  `adminlevel_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_admin`
--

LOCK TABLES `xy_admin` WRITE;
/*!40000 ALTER TABLE `xy_admin` DISABLE KEYS */;
INSERT INTO `xy_admin` VALUES (1,'admin','7fef6171469e80d32c0559f88b377245',1269059337,1682673710,1);
/*!40000 ALTER TABLE `xy_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_adminlevel`
--

DROP TABLE IF EXISTS `xy_adminlevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_adminlevel` (
  `adminlevel_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理等级id',
  `adminlevel_name` varchar(20) NOT NULL COMMENT '管理等级名称',
  `adminlevel_modact` text NOT NULL COMMENT '管理等级权限',
  `adminlevel_menumark` text NOT NULL,
  PRIMARY KEY (`adminlevel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_adminlevel`
--

LOCK TABLES `xy_adminlevel` WRITE;
/*!40000 ALTER TABLE `xy_adminlevel` DISABLE KEYS */;
INSERT INTO `xy_adminlevel` VALUES (1,'总管理员','','');
/*!40000 ALTER TABLE `xy_adminlevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_article`
--

DROP TABLE IF EXISTS `xy_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_name` varchar(100) NOT NULL,
  `article_text` text NOT NULL,
  `article_atime` int(10) unsigned NOT NULL DEFAULT '0',
  `article_clicknum` int(10) unsigned NOT NULL DEFAULT '0',
  `class_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`),
  KEY `class_id` (`class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_article`
--

LOCK TABLES `xy_article` WRITE;
/*!40000 ALTER TABLE `xy_article` DISABLE KEYS */;
INSERT INTO `xy_article` VALUES (6,'支付方式','<p>支付宝在线支付<br/></p><p><br/></p>',1576488540,58,4),(7,'常见问题','<p>详情请咨询18284305034</p>',1576488540,42,4),(8,'配送时间及运费','<p>付款后48小时内发货 全场包邮</p>',1576488540,294,5),(11,'售后政策','<p><span style=\"color: rgb(51, 51, 51); font-family: Arial, Verdana, 宋体; background-color: rgb(255, 255, 255);\">1.退换货承诺:</span><br/><span style=\"color: rgb(51, 51, 51); font-family: Arial, Verdana, 宋体; background-color: rgb(255, 255, 255);\">换货服务三大优势:</span><br/><span style=\"color: rgb(51, 51, 51); font-family: Arial, Verdana, 宋体; background-color: rgb(255, 255, 255);\">自您签收商品之日起10日内，为您提供退换货服务;</span><br/><span style=\"color: rgb(51, 51, 51); font-family: Arial, Verdana, 宋体; background-color: rgb(255, 255, 255);\">B退货，换货时质检商品承诺在3个工作日内完成，做到最快速质检服务;&nbsp;c.退款工作承诺3个工作日内执行完成，做到购物退货退款无顾点:</span><br/><br/><span style=\"color: rgb(51, 51, 51); font-family: Arial, Verdana, 宋体; background-color: rgb(255, 255, 255);\">2.按以下标准为您提供退，换货服务:</span><br/><span style=\"color: rgb(51, 51, 51); font-family: Arial, Verdana, 宋体; background-color: rgb(255, 255, 255);\">A&nbsp;本公司对外承诺10天退换货服务(从签收日起10天内);(1)商品号码不合适可退换:</span><br/><span style=\"color: rgb(51, 51, 51); font-family: Arial, Verdana, 宋体; background-color: rgb(255, 255, 255);\">(2)商品款式，颜色等不满意可退，换:(3)商品配送错误可退换;</span></p>',1576488600,100,6),(14,'公司简介','<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Verdana, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"font-size: 16px;\">四川亦缘阁网络科技有限公司成立于2020年是一家专业从事销售珠宝首饰、工艺美术品（象牙及其制品除外）等的公司。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Verdana, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"font-size: 16px;\">地址：成都高新区天晖中街56号1栋14层1405号</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Verdana, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"font-size: 16px;\">手机：18284305034<br/><img src=\"https://cdn045.yun-img.com/static/upload/yiyuange/system/20230329152338_88207.jpg\" title=\"20230329152338_88207.jpg\" alt=\"360截图20230329152207693.jpg\"/></span></p><p><br/></p>',1584696600,190,7),(15,'联系我们','<div style=\"margin: 0px; padding: 0px; font-family: Arial, Verdana, 宋体; font-size: 12px; white-space: normal; background-color: rgb(243, 241, 236); box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 307px; top: 0px; width: 25px; height: 25px;\"></div><div style=\"margin: 0px; padding: 0px; font-family: Arial, Verdana, 宋体; font-size: 12px; white-space: normal; background-color: rgb(243, 241, 236); box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 0px; top: 64px; width: 25px; height: 25px;\"></div><div style=\"margin: 0px; padding: 0px; font-family: Arial, Verdana, 宋体; font-size: 12px; white-space: normal; background-color: rgb(243, 241, 236); box-sizing: content-box; overflow: hidden; z-index: 1; position: absolute; left: 307px; top: 64px; width: 25px; height: 25px;\"></div><p></p><p style=\"margin-top: 0px; padding: 0px; width: 300px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: bold; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: arial, simsun, sans-serif; color: rgb(204, 85, 34); white-space: nowrap; overflow: hidden;\">四川亦缘阁网络科技有限公司</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 10px 0px 0px; width: 300px; word-break: break-all;\">地址：成都高新区天晖中街56号1栋14层1405号</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 10px 0px 0px; width: 220px; word-break: break-all;\">电话：18284305034</p><p><br/></p>',1576488600,71,7),(18,'在线支付','在这里填写在线支付内容',1576488660,14,12),(21,'四川亦缘阁网络科技有限公司','<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Verdana, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"font-size: 16px;\">四川亦缘阁网络科技有限公司成立于2020年是一家专业从事销售珠宝首饰、工艺美术品（象牙及其制品除外）等的公司。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Verdana, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"font-size: 16px;\">地址：成都高新区天晖中街56号1栋14层1405号</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Verdana, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"font-size: 16px;\">手机：18284305034</span></p><p><br/></p>',1682542740,4,2),(22,'会员注册协议','<h2 style=\"margin: 0px; padding: 0px; font-size: 18px; white-space: normal; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); background-color: rgb(255, 255, 255);\">会员注册协议</h2><p class=\"terms-head\" style=\"margin-top: 0px; margin-bottom: 1.5em; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255); font-size: 14px; transition: color 0.5s ease-in-out 0s;\"><br/></p><p class=\"terms-head\" style=\"margin-top: 0px; margin-bottom: 1.5em; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255); font-size: 14px; transition: color 0.5s ease-in-out 0s; vertical-align: baseline; line-height: 18px;\">尊敬的用户，欢迎您注册成为本网站用户。在注册前请您仔细阅读如下服务条款：<br/>本服务协议双方为本网站与本网站用户，本服务协议具有合同效力。<br/>您确认本服务协议后，本服务协议即在您和本网站之间产生法律效力。请您务必在注册之前认真阅读全部服务协议内容，如有任何疑问，可向本网站咨询。<br/>无论您事实上是否在注册之前认真阅读了本服务协议，只要您点击协议正本下方的&quot;注册&quot;按钮并按照本网站注册程序成功注册为用户，您的行为仍然表示您同意并签署了本服务协议。</p><h4 class=\"terms-del\" style=\"margin: 40px 0px 10px; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); white-space: normal; background-color: rgb(255, 255, 255); vertical-align: baseline; line-height: 18px;\">1．本网站服务条款的确认和接纳</h4><p><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">本网站各项服务的所有权和运作权归本网站拥有。</span></p><h4 class=\"terms-del\" style=\"margin: 40px 0px 10px; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); white-space: normal; background-color: rgb(255, 255, 255); vertical-align: baseline; line-height: 18px;\">2．用户必须：</h4><p><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(1) 自行配备上网的所需设备， 包括个人电脑、调制解调器或其他必备上网装置。</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(2) 自行负担个人上网所支付的与此服务有关的电话费用、 网络费用。</span></p><h4 class=\"terms-del\" style=\"margin: 40px 0px 10px; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); white-space: normal; background-color: rgb(255, 255, 255); vertical-align: baseline; line-height: 18px;\">3．用户在本网站上交易平台上不得发布下列违法信息：</h4><p><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(1) 反对宪法所确定的基本原则的；</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(2) 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(3) 损害国家荣誉和利益的；</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(4) 煽动民族仇恨、民族歧视，破坏民族团结的；</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(5) 破坏国家宗教政策，宣扬邪教和封建迷信的；</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(6) 散布谣言，扰乱社会秩序，破坏社会稳定的；</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(7) 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(8) 侮辱或者诽谤他人，侵害他人合法权益的；</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(9) 含有法律、行政法规禁止的其他内容的。</span></p><h4 class=\"terms-del\" style=\"margin: 40px 0px 10px; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); white-space: normal; background-color: rgb(255, 255, 255); vertical-align: baseline; line-height: 18px;\">4． 有关个人资料</h4><p><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">用户同意：</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(1) 提供及时、详尽及准确的个人资料。</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(2) 同意接收来自本网站的信息。</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(3) 不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(4) 本网站不公开用户的姓名、地址、电子邮箱和笔名，以下情况除外：</span><br/><span class=\"terms-txt txt-ind\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s; margin-left: 20px;\">(a) 用户授权本网站透露这些信息。</span><br/><span class=\"terms-txt txt-ind\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s; margin-left: 20px;\">(b) 相应的法律及程序要求本网站提供用户的个人资料。如果用户提供的资料包含有不正确的信息，本网站保留结束用户使用本网站信息服务资格的权利。</span></p><h4 class=\"terms-del\" style=\"margin: 40px 0px 10px; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); white-space: normal; background-color: rgb(255, 255, 255); vertical-align: baseline; line-height: 18px;\">5. 用户在注册时应当选择稳定性及安全性相对较好的电子邮箱，并且同意接受并阅读本网站发往用户的各类电子邮件。如用户未及时从自己的电子邮箱接受电子邮件或因用户电子邮箱或用户电子邮件接收及阅读程序本身的问题使电子邮件无法正常接收或阅读的，只要本网站成功发送了电子邮件，应当视为用户已经接收到相关的电子邮件。电子邮件在发信服务器上所记录的发出时间视为送达时间。</h4><h4 class=\"terms-del\" style=\"margin: 40px 0px 10px; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); white-space: normal; background-color: rgb(255, 255, 255); vertical-align: baseline; line-height: 18px;\">6． 服务条款的修改</h4><p><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">本网站有权在必要时修改服务条款，本网站服务条款一旦发生变动，将会在重要页面上提示修改内容。如果不同意所改动的内容，用户可以主动取消获得的本网站信息服务。如果用户继续享用本网站信息服务，则视为接受服务条款的变动。本网站保留随时修改或中断服务而不需通知用户的权利。本网站行使修改或中断服务的权利，不需对用户或第三方负责。</span></p><h4 class=\"terms-del\" style=\"margin: 40px 0px 10px; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); white-space: normal; background-color: rgb(255, 255, 255); vertical-align: baseline; line-height: 18px;\">7． 用户隐私制度</h4><p><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">尊重用户个人隐私是本网站的一项基本政策。所以，本网站一定不会在未经合法用户授权时公开、编辑或透露其注册资料及保存在本网站中的非公开内容，除非有法律许可要求或本网站在诚信的基础上认为透露这些信息在以下四种情况是必要的：</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(1) 遵守有关法律规定，遵从本网站合法服务程序。</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(2) 保持维护本网站的商标所有权。</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(3) 在紧急情况下竭力维护用户个人和社会大众的隐私安全。</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(4) 符合其他相关的要求。</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">本网站保留发布会员人口分析资询的权利。</span></p><h4 class=\"terms-del\" style=\"margin: 40px 0px 10px; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); white-space: normal; background-color: rgb(255, 255, 255); vertical-align: baseline; line-height: 18px;\">8．用户的帐号、密码和安全性</h4><p><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">你一旦注册成功成为用户，你将得到一个密码和帐号。如果你不保管好自己的帐号和密码安全，将负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。你可随时根据指示改变你的密码，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，请立即通告本网站。</span></p><h4 class=\"terms-del\" style=\"margin: 40px 0px 10px; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); white-space: normal; background-color: rgb(255, 255, 255); vertical-align: baseline; line-height: 18px;\">9． 拒绝提供担保</h4><p><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">用户明确同意信息服务的使用由用户个人承担风险。 本网站不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保，但会在能力范围内，避免出错。</span></p><h4 class=\"terms-del\" style=\"margin: 40px 0px 10px; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); white-space: normal; background-color: rgb(255, 255, 255); vertical-align: baseline; line-height: 18px;\">10．有限责任</h4><p><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">本网站对任何直接、间接、偶然、特殊及继起的损害不负责任，这些损害来自：不正当使用本网站服务，或用户传送的信息不符合规定等。这些行为都有可能导致本网站形象受损，所以本网站事先提出这种损害的可能性，同时会尽量避免这种损害的发生。</span></p><h4 class=\"terms-del\" style=\"margin: 40px 0px 10px; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); white-space: normal; background-color: rgb(255, 255, 255); vertical-align: baseline; line-height: 18px;\">11．信息的储存及限制</h4><p><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">本网站有判定用户的行为是否符合本网站服务条款的要求和精神的权利，如果用户违背本网站服务条款的规定，本网站有权中断其服务的帐号。</span></p><h4 class=\"terms-del\" style=\"margin: 40px 0px 10px; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); white-space: normal; background-color: rgb(255, 255, 255); vertical-align: baseline; line-height: 18px;\">12．用户管理</h4><p><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">用户必须遵循</span><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">：</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(1) 使用信息服务不作非法用途。</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(2) 不干扰或混乱网络服务。</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(3) 遵守所有使用服务的网络协议、规定、程序和惯例。用户的行为准则是以因特网法规，政策、程序和惯例为根据的。</span></p><h4 class=\"terms-del\" style=\"margin: 40px 0px 10px; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); white-space: normal; background-color: rgb(255, 255, 255); vertical-align: baseline; line-height: 18px;\">13．保障</h4><p><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">用户同意保障和维护本网站全体成员的利益，负责支付由用户使用超出服务范围引起的律师费用，违反服务条款的损害补偿费用，其它人使用用户的电脑、帐号和其它知识产权的追索费。</span></p><h4 class=\"terms-del\" style=\"margin: 40px 0px 10px; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); white-space: normal; background-color: rgb(255, 255, 255); vertical-align: baseline; line-height: 18px;\">14．结束服务</h4><p><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">用户或本网站可随时根据实际情况中断一项或多项服务。本网站不需对任何个人或第三方负责而随时中断服务。用户若反对任何服务条款的建议或对后来的条款修改有异议，或对本网站服务不满，用户可以行使如下权利：</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(1) 不再使用本网站信息服务。</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">(2) 通知本网站停止对该用户的服务。</span><br/><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">结束用户服务后，用户使用本网站服务的权利马上中止。从那时起，用户没有权利，本网站也没有义务传送任何未处理的信息或未完成的服务给用户或第三方。</span></p><h4 class=\"terms-del\" style=\"margin: 40px 0px 10px; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); white-space: normal; background-color: rgb(255, 255, 255); vertical-align: baseline; line-height: 18px;\">15．通告</h4><p><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。服务条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。</span></p><h4 class=\"terms-del\" style=\"margin: 40px 0px 10px; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); white-space: normal; background-color: rgb(255, 255, 255); vertical-align: baseline; line-height: 18px;\">16．信息内容的所有权</h4><p><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">本网站定义的信息内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内容；本网站为用户提供的其它信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在本网站和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。</span></p><h4 class=\"terms-del\" style=\"margin: 40px 0px 10px; padding: 0px; font-family: Tahoma; list-style: none; color: rgb(17, 17, 17); white-space: normal; background-color: rgb(255, 255, 255); vertical-align: baseline; line-height: 18px;\">17．法律</h4><p><span class=\"terms-txt\" style=\"font-family: Tahoma; list-style: none; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); line-height: 22px; font-size: 14px; transition: color 0.5s ease-in-out 0s;\">本网站信息服务条款要与中华人民共和国的法律解释一致。用户和本网站一致同意服从本网站所在地有管辖权的法院管辖。如发生本网站服务条款与中华人民共和国法律相抵触时，则这些条款将完全按法律规定重新解释，而其它条款则依旧保持对用户的约束力。</span></p><p><br/></p>',1682542920,24,1);
/*!40000 ALTER TABLE `xy_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_ask`
--

DROP TABLE IF EXISTS `xy_ask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_ask` (
  `ask_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ask_text` text NOT NULL,
  `ask_atime` int(10) unsigned NOT NULL DEFAULT '0',
  `ask_replytext` text NOT NULL,
  `ask_replytime` int(10) unsigned NOT NULL DEFAULT '0',
  `ask_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL,
  `product_name` varchar(50) NOT NULL COMMENT '商品名称',
  `product_logo` varchar(100) NOT NULL COMMENT '商品logo',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  `user_ip` char(15) NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`ask_id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_ask`
--

LOCK TABLES `xy_ask` WRITE;
/*!40000 ALTER TABLE `xy_ask` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_ask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_brand`
--

DROP TABLE IF EXISTS `xy_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_brand` (
  `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(30) NOT NULL,
  `brand_logo` varchar(255) NOT NULL COMMENT '品牌图片',
  `brand_text` varchar(255) NOT NULL COMMENT '品牌介绍',
  `brand_word` char(1) NOT NULL COMMENT '品牌首字母',
  `brand_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_brand`
--

LOCK TABLES `xy_brand` WRITE;
/*!40000 ALTER TABLE `xy_brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_cart`
--

DROP TABLE IF EXISTS `xy_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_cart` (
  `cart_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_act` varchar(10) NOT NULL DEFAULT 'cart' COMMENT '购买方式(cart加入购物车/buy立即购买)',
  `cart_type` varchar(10) NOT NULL,
  `cart_atime` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '唯一id',
  `product_name` varchar(100) NOT NULL,
  `product_rule` varchar(255) NOT NULL COMMENT '规格数据集',
  `product_logo` varchar(100) NOT NULL,
  `product_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0',
  `product_num` smallint(5) unsigned NOT NULL DEFAULT '1',
  `huodong_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pintuan_id` bigint(15) unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(32) NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_type` (`cart_act`),
  KEY `product_id` (`product_id`),
  KEY `product_guid` (`product_guid`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=267 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_cart`
--

LOCK TABLES `xy_cart` WRITE;
/*!40000 ALTER TABLE `xy_cart` DISABLE KEYS */;
INSERT INTO `xy_cart` VALUES (221,'buy','fixed',1682592386,8,31,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项','','attachment/2023-04/2023042623014416828l.jpg',988.0,1,0,0,'48');
/*!40000 ALTER TABLE `xy_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_cashout`
--

DROP TABLE IF EXISTS `xy_cashout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_cashout` (
  `cashout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cashout_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0',
  `cashout_fee` decimal(5,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '提现手续费',
  `cashout_atime` int(10) unsigned NOT NULL DEFAULT '0',
  `cashout_ptime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结算日期',
  `cashout_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cashout_ip` char(15) NOT NULL COMMENT '用户ip',
  `cashout_bankname` varchar(20) NOT NULL,
  `cashout_banknum` varchar(50) NOT NULL,
  `cashout_banktname` varchar(10) NOT NULL,
  `cashout_bankaddress` varchar(50) NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(30) NOT NULL,
  PRIMARY KEY (`cashout_id`),
  KEY `user_id` (`user_id`),
  KEY `cashout_state` (`cashout_state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_cashout`
--

LOCK TABLES `xy_cashout` WRITE;
/*!40000 ALTER TABLE `xy_cashout` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_cashout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_category`
--

DROP TABLE IF EXISTS `xy_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_category` (
  `category_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `category_pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `category_name` varchar(30) NOT NULL,
  `category_title` varchar(100) NOT NULL,
  `category_keys` varchar(255) NOT NULL,
  `category_desc` varchar(255) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `category_icon` varchar(150) DEFAULT NULL COMMENT '分类图标',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_category`
--

LOCK TABLES `xy_category` WRITE;
/*!40000 ALTER TABLE `xy_category` DISABLE KEYS */;
INSERT INTO `xy_category` VALUES (4,3,'奶粉','','','',0,'attachment/2020-02/2020021122385715894x.jpg'),(5,3,'营养辅食','','','',0,'attachment/2020-02/2020021122393915818c.jpg'),(43,0,'时尚戒指','时尚戒指','坦桑蓝高碳钻戒指','材质：银饰\r\n\r\n金属材质：925银\r\n\r\n颜色分类：坦桑蓝宝石钻戒',0,'attachment/2023-04/2023042713440316849q.jpg'),(42,0,'时尚手链','时尚手链','金镶碧玉精美手链','材质：合金/镀银/镀金\r\n\r\n\r\n风格：复古/宫廷\r\n\r\n颜色分类：碧玉手链，和田玉手链\r\n\r\n工艺：镶金',0,'attachment/2023-04/2023042713431916803l.jpg'),(41,0,'时尚耳坠','时尚耳坠','个性贝珠耳环','材质：珍珠母贝\r\n\r\n风格：原创设计\r\n\r\n成色：全新\r\n\r\n颜色分类：贝珠耳环',0,'attachment/2023-04/2023042713424016804j.jpg'),(40,0,'时尚项链时尚项链','时尚项链','和田玉珠纯银锁骨链配饰','链子材质：银质\r\n\r\n金属材质：925银\r\n\r\n风格：日韩\r\n\r\n成色：全新\r\n\r\n延长链：10cm以下',0,'attachment/2023-04/2023042713410716881j.jpg'),(11,10,'厨房小电','','','',0,'attachment/2020-02/2020021117430815821c.jpg'),(12,10,'个护健康','','','',0,'attachment/2020-02/2020021117434915896p.png'),(13,10,'冰箱','','','',0,'attachment/2020-02/2020021117442515813d.jpg'),(15,14,'电脑整机','','','',0,'attachment/2020-02/2020021117481215843u.jpg'),(16,14,'外设产品','','','',0,'attachment/2020-02/2020021117485115816v.jpg'),(17,14,'电脑配件','','','',0,'attachment/2020-02/2020021117493215838w.jpg'),(19,18,'拔草推荐','','','',0,'attachment/2020-02/2020021117542915868l.jpg'),(20,18,'面部护肤','','','',0,'attachment/2020-02/2020021117550115857r.jpg'),(21,18,'男士护肤','','','',0,'attachment/2020-02/2020021122373315841d.jpg'),(22,18,'香水','','','',0,'attachment/2020-02/2020021122380715879h.jpg'),(24,23,'文学','','','',0,'attachment/2020-02/2020021122403515824e.jpg'),(25,23,'童书','','','',0,'attachment/2020-02/2020021122410815859h.jpg'),(26,23,'教材辅导','','','',0,'attachment/2020-02/2020021122413515877k.jpg'),(28,27,'健身训练','','','',0,'attachment/2020-02/2020021122422915876e.jpg'),(29,27,'运动服饰','','','',0,'attachment/2020-02/2020021122425615815f.jpg'),(30,27,'户外装备','','','',0,'attachment/2020-02/2020021122432915857u.jpg'),(32,31,'休闲食品','','','',0,'attachment/2020-02/2020021122442015835j.jpg'),(33,31,'新鲜水果','','','',0,'attachment/2020-02/2020021122453515889i.jpg'),(34,31,'粮油调味','','','',0,'attachment/2020-02/2020021122460715855m.jpg'),(36,35,'汽车装饰','','','',0,'attachment/2020-02/2020021122512915841n.jpg'),(37,35,'美容清洗','','','',0,'attachment/2020-02/2020021122520315843x.jpg'),(38,35,'车载电器','','','',0,'attachment/2020-02/2020021122523015896b.jpg'),(39,35,'维修保养','','','',0,'attachment/2020-02/2020021122530615854s.jpg');
/*!40000 ALTER TABLE `xy_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_class`
--

DROP TABLE IF EXISTS `xy_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_class` (
  `class_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(30) NOT NULL,
  `class_type` varchar(10) NOT NULL DEFAULT 'news' COMMENT '分类类型',
  `class_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_class`
--

LOCK TABLES `xy_class` WRITE;
/*!40000 ALTER TABLE `xy_class` DISABLE KEYS */;
INSERT INTO `xy_class` VALUES (1,'网站公告','news',0),(2,'新闻动态','news',1),(4,'用户指南','help',1),(5,'配送方式','help',2),(6,'售后服务','help',4),(7,'关于我们','help',5),(12,'支付方式','help',3);
/*!40000 ALTER TABLE `xy_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_collect`
--

DROP TABLE IF EXISTS `xy_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_collect` (
  `collect_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `collect_atime` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`collect_id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_collect`
--

LOCK TABLES `xy_collect` WRITE;
/*!40000 ALTER TABLE `xy_collect` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_comment`
--

DROP TABLE IF EXISTS `xy_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '留言id',
  `comment_star` tinyint(1) unsigned NOT NULL DEFAULT '5' COMMENT '评价星级',
  `comment_text` text NOT NULL COMMENT '留言内容',
  `comment_logo` text NOT NULL COMMENT '评价晒图',
  `comment_atime` int(10) NOT NULL DEFAULT '0' COMMENT '留言时间',
  `comment_reply` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否回复(0/1)',
  `comment_reply_text` text NOT NULL COMMENT '回复内容',
  `comment_reply_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复时间',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单id',
  `product_id` int(10) unsigned NOT NULL,
  `product_name` varchar(50) NOT NULL COMMENT '商品名称',
  `product_logo` varchar(100) NOT NULL COMMENT '商品logo',
  `user_id` int(10) unsigned NOT NULL COMMENT '接受方用户id',
  `user_name` varchar(20) NOT NULL,
  `user_logo` varchar(100) NOT NULL COMMENT '用户头像',
  `user_ip` char(15) NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`comment_id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_comment`
--

LOCK TABLES `xy_comment` WRITE;
/*!40000 ALTER TABLE `xy_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_express`
--

DROP TABLE IF EXISTS `xy_express`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_express` (
  `express_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '快递模板id',
  `express_name` varchar(30) NOT NULL COMMENT '快递模板名',
  `express_logo` varchar(100) NOT NULL COMMENT '快递模板logo',
  `express_tag` text NOT NULL COMMENT '快递模板信息',
  `express_width` int(10) unsigned NOT NULL,
  `express_height` int(10) unsigned NOT NULL,
  `express_width_px` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '像素宽',
  `express_height_px` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '像素高',
  `express_x` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'x轴偏移量',
  `express_y` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'y轴偏移量',
  `express_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `express_state` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '启用状态',
  `express_order` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`express_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_express`
--

LOCK TABLES `xy_express` WRITE;
/*!40000 ALTER TABLE `xy_express` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_express` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_getpw`
--

DROP TABLE IF EXISTS `xy_getpw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_getpw` (
  `getpw_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `getpw_token` char(32) NOT NULL,
  `getpw_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `getpw_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定日期',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  PRIMARY KEY (`getpw_id`),
  KEY `getpw_token` (`getpw_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_getpw`
--

LOCK TABLES `xy_getpw` WRITE;
/*!40000 ALTER TABLE `xy_getpw` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_getpw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_huodong`
--

DROP TABLE IF EXISTS `xy_huodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_huodong` (
  `huodong_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '活动自增id',
  `huodong_tag` varchar(10) NOT NULL COMMENT '活动价格标签',
  `huodong_type` varchar(10) NOT NULL DEFAULT 'zhekou' COMMENT '活动类型(zhekou/pintuan)',
  `huodong_desc` varchar(30) NOT NULL COMMENT '活动描述',
  `huodong_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '活动开始日期',
  `huodong_stime` int(10) unsigned NOT NULL DEFAULT '0',
  `huodong_etime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '活动结束日期',
  PRIMARY KEY (`huodong_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_huodong`
--

LOCK TABLES `xy_huodong` WRITE;
/*!40000 ALTER TABLE `xy_huodong` DISABLE KEYS */;
INSERT INTO `xy_huodong` VALUES (49,'限时拼团','pintuan','',1582010452,1582010400,1608880800),(53,'新品上市','zhekou','',1682573714,1682573640,1685165640),(54,'限时拼团','pintuan','',1682573765,1682573700,1684560900);
/*!40000 ALTER TABLE `xy_huodong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_huodongdata`
--

DROP TABLE IF EXISTS `xy_huodongdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_huodongdata` (
  `huodongdata_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `huodong_id` int(10) unsigned NOT NULL DEFAULT '0',
  `huodong_tag` varchar(10) NOT NULL,
  `huodong_type` varchar(10) NOT NULL COMMENT '活动类型(zhekou/pintuan)',
  `huodong_stime` int(10) unsigned NOT NULL DEFAULT '0',
  `huodong_etime` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_name` varchar(100) NOT NULL,
  `product_logo` varchar(100) NOT NULL,
  `product_smoney` decimal(10,1) unsigned NOT NULL DEFAULT '0.0',
  `product_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0',
  `product_zhe` float unsigned NOT NULL DEFAULT '0' COMMENT '折扣率',
  `product_ptnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '拼团人数',
  PRIMARY KEY (`huodongdata_id`),
  KEY `huodong_id` (`huodong_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_huodongdata`
--

LOCK TABLES `xy_huodongdata` WRITE;
/*!40000 ALTER TABLE `xy_huodongdata` DISABLE KEYS */;
INSERT INTO `xy_huodongdata` VALUES (93,53,'新品上市','zhekou',1682573640,1685165640,10,'玫瑰金情侣对戒','attachment/2023-04/2023042704442316851e.jpg',189.0,151.2,8,0),(92,54,'限时拼团','pintuan',1682573700,1684560900,11,'红宝石纯银手链','attachment/2023-04/2023042704461916869f.jpg',519.0,419.0,0,2);
/*!40000 ALTER TABLE `xy_huodongdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_iplog`
--

DROP TABLE IF EXISTS `xy_iplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_iplog` (
  `iplog_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ip记录id',
  `iplog_ip` char(15) NOT NULL COMMENT 'ip记录ip',
  `iplog_ipname` varchar(20) NOT NULL COMMENT '验证码上传省份',
  `iplog_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ip记录时间',
  `iplog_adate` date NOT NULL COMMENT 'ip记录日期',
  PRIMARY KEY (`iplog_id`),
  KEY `iplog_ip` (`iplog_ip`),
  KEY `iplog_adate` (`iplog_adate`)
) ENGINE=MyISAM AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_iplog`
--

LOCK TABLES `xy_iplog` WRITE;
/*!40000 ALTER TABLE `xy_iplog` DISABLE KEYS */;
INSERT INTO `xy_iplog` VALUES (96,'36.7.153.41','',1584522534,'2020-03-18'),(97,'125.34.11.161','',1584533991,'2020-03-18'),(98,'60.165.65.37','',1584534571,'2020-03-18'),(99,'139.208.254.100','',1584584825,'2020-03-19'),(100,'139.208.253.128','',1584587256,'2020-03-19'),(101,'36.7.153.41','',1584587554,'2020-03-19'),(102,'60.165.65.37','',1584589111,'2020-03-19'),(103,'42.236.10.84','',1584593257,'2020-03-19'),(104,'42.236.10.75','',1584593274,'2020-03-19'),(105,'113.77.184.20','',1584607270,'2020-03-19'),(106,'114.100.97.176','',1584618835,'2020-03-19'),(107,'36.7.153.41','',1584682482,'2020-03-20'),(108,'119.50.73.231','',1584690141,'2020-03-20'),(109,'36.7.153.41','',1584766964,'2020-03-21'),(110,'183.160.64.41','',1584767338,'2020-03-21'),(111,'221.237.93.75','',1584770095,'2020-03-21'),(112,'42.236.10.75','',1584770174,'2020-03-21'),(113,'116.21.62.163','',1584770365,'2020-03-21'),(114,'180.163.220.4','',1584770485,'2020-03-21'),(115,'119.50.73.231','',1584782162,'2020-03-21'),(116,'60.255.77.43','',1584886530,'2020-03-22'),(117,'101.21.174.130','',1584901380,'2020-03-23'),(118,'36.7.153.41','',1584947025,'2020-03-23'),(119,'58.243.250.152','',1584953018,'2020-03-23'),(120,'117.136.117.71','',1584953401,'2020-03-23'),(121,'36.61.196.156','',1584959438,'2020-03-23'),(122,'36.7.153.41','',1585038288,'2020-03-24'),(123,'183.193.60.133','',1585043970,'2020-03-24'),(124,'120.204.17.71','',1585044032,'2020-03-24'),(125,'183.193.60.133','',1585104361,'2020-03-25'),(126,'36.7.153.41','',1585105949,'2020-03-25'),(127,'36.61.196.156','',1585115494,'2020-03-25'),(128,'42.236.10.117','',1585154676,'2020-03-26'),(129,'36.7.153.41','',1585187843,'2020-03-26'),(130,'36.61.223.240','',1585193028,'2020-03-26'),(131,'58.243.254.165','',1585205828,'2020-03-26'),(132,'36.61.214.50','',1585205932,'2020-03-26'),(133,'223.104.34.1','',1585206149,'2020-03-26'),(134,'183.193.60.133','',1585212148,'2020-03-26'),(135,'223.104.35.164','',1585218262,'2020-03-26'),(136,'36.7.153.41','',1585269041,'2020-03-27'),(137,'36.61.223.240','',1585289786,'2020-03-27'),(138,'114.100.98.230','',1585315947,'2020-03-27'),(139,'114.100.98.230','',1585324806,'2020-03-28'),(140,'114.100.97.238','',1585356202,'2020-03-28'),(141,'183.160.65.161','',1585377988,'2020-03-28'),(142,'36.7.153.41','',1585404730,'2020-03-28'),(143,'203.190.109.234','',1585414263,'2020-03-29'),(144,'183.160.65.243','',1585450887,'2020-03-29'),(145,'114.100.96.140','',1585466618,'2020-03-29'),(146,'36.7.153.41','',1585467091,'2020-03-29'),(147,'36.7.153.41','',1585538860,'2020-03-30'),(148,'114.100.96.140','',1585577414,'2020-03-30'),(149,'114.100.96.140','',1585584082,'2020-03-31'),(150,'36.7.153.41','',1585633080,'2020-03-31'),(151,'36.61.191.130','',1585634129,'2020-03-31'),(152,'36.7.153.41','',1585710019,'2020-04-01'),(153,'36.7.153.41','',1589171183,'2020-05-11'),(154,'112.47.231.254','',1649954464,'2022-04-15'),(155,'113.123.214.44','',1649954562,'2022-04-15'),(156,'117.68.110.38','',1682519130,'2023-04-26'),(157,'117.173.33.86','',1682519622,'2023-04-26'),(158,'222.214.203.83','',1682519630,'2023-04-26'),(159,'27.115.124.101','',1682522007,'2023-04-26'),(160,'27.115.124.6','',1682522029,'2023-04-26'),(161,'117.135.173.70','',1682523064,'2023-04-26'),(162,'117.173.33.86','',1682525078,'2023-04-27'),(163,'117.68.110.38','',1682541729,'2023-04-27'),(164,'42.236.10.78','',1682542144,'2023-04-27'),(165,'117.173.35.222','',1682550782,'2023-04-27'),(166,'119.41.205.77','',1682551194,'2023-04-27'),(167,'125.123.142.228','',1682551239,'2023-04-27'),(168,'117.135.171.114','',1682571610,'2023-04-27'),(169,'171.218.29.149','',1682585128,'2023-04-27'),(170,'36.134.84.224','',1682591543,'2023-04-27'),(171,'111.7.100.20','',1682593040,'2023-04-27'),(172,'36.99.136.141','',1682593363,'2023-04-27'),(173,'36.99.136.140','',1682593386,'2023-04-27'),(174,'111.7.100.27','',1682593425,'2023-04-27'),(175,'111.7.100.21','',1682593467,'2023-04-27'),(176,'36.99.136.138','',1682593470,'2023-04-27'),(177,'111.7.100.26','',1682594017,'2023-04-27'),(178,'180.153.201.163','',1682621608,'2023-04-28'),(179,'120.241.136.17','',1682622079,'2023-04-28'),(180,'36.99.136.130','',1682622207,'2023-04-28'),(181,'36.99.136.134','',1682622209,'2023-04-28'),(182,'101.226.140.232','',1682622363,'2023-04-28'),(183,'183.47.117.93','',1682624183,'2023-04-28'),(184,'183.47.117.54','',1682629804,'2023-04-28'),(185,'27.199.195.223','',1682648147,'2023-04-28'),(186,'117.173.35.222','',1682648214,'2023-04-28'),(187,'39.83.1.165','',1682649891,'2023-04-28'),(188,'182.46.218.235','',1682659397,'2023-04-28'),(189,'39.83.2.121','',1682664020,'2023-04-28'),(190,'182.39.83.223','',1682664823,'2023-04-28'),(191,'223.104.196.38','',1682666345,'2023-04-28'),(192,'113.109.79.4','',1682668066,'2023-04-28'),(193,'106.225.215.17','',1682669374,'2023-04-28'),(194,'125.124.59.103','',1682669485,'2023-04-28'),(195,'111.7.100.20','',1682669974,'2023-04-28'),(196,'111.7.100.24','',1682670123,'2023-04-28'),(197,'111.7.100.23','',1682670159,'2023-04-28'),(198,'111.7.100.21','',1682670198,'2023-04-28');
/*!40000 ALTER TABLE `xy_iplog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_link`
--

DROP TABLE IF EXISTS `xy_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接id',
  `link_name` varchar(50) NOT NULL COMMENT '友情链接名称',
  `link_url` varchar(100) NOT NULL COMMENT '友情链接url',
  `link_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '友情链接排序',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_link`
--

LOCK TABLES `xy_link` WRITE;
/*!40000 ALTER TABLE `xy_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_menu`
--

DROP TABLE IF EXISTS `xy_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_menu` (
  `menu_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '导航id',
  `menu_name` varchar(20) NOT NULL COMMENT '导航名称',
  `menu_type` char(3) NOT NULL DEFAULT 'sys' COMMENT '导航类型',
  `menu_url` varchar(50) NOT NULL COMMENT '导航链接',
  `menu_target` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '新标签打开',
  `menu_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '导航排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_menu`
--

LOCK TABLES `xy_menu` WRITE;
/*!40000 ALTER TABLE `xy_menu` DISABLE KEYS */;
INSERT INTO `xy_menu` VALUES (1,'产品中心','diy','/index.php?mod=product&amp;act=list',0,1),(2,'新闻中心','diy','/index.php/article/list-2',0,2),(3,'公司介绍','diy','/index.php/article/14',0,3),(4,'联系我们','diy','/index.php/article/15',0,4),(7,'售后政策','diy','/index.php/article/11',1,0);
/*!40000 ALTER TABLE `xy_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_moneylog`
--

DROP TABLE IF EXISTS `xy_moneylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_moneylog` (
  `moneylog_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `moneylog_type` varchar(10) NOT NULL,
  `moneylog_in` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '收入',
  `moneylog_out` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '支出',
  `moneylog_now` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '当前结余',
  `moneylog_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  `moneylog_text` varchar(255) NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  PRIMARY KEY (`moneylog_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_moneylog`
--

LOCK TABLES `xy_moneylog` WRITE;
/*!40000 ALTER TABLE `xy_moneylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_moneylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_notice`
--

DROP TABLE IF EXISTS `xy_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_notice` (
  `notice_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_name` varchar(20) NOT NULL COMMENT '通知名称',
  `notice_type` varchar(20) NOT NULL COMMENT '通知类型',
  `notice_obj` varchar(5) NOT NULL COMMENT '通知对象',
  `notice_sms_text` varchar(255) NOT NULL,
  `notice_sms_templateid` varchar(20) DEFAULT NULL COMMENT '短信模板ID',
  `notice_sms_state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `notice_email_name` varchar(100) NOT NULL COMMENT '邮件标题',
  `notice_email_text` text NOT NULL COMMENT '邮件内容',
  `notice_email_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '通知状态',
  PRIMARY KEY (`notice_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_notice`
--

LOCK TABLES `xy_notice` WRITE;
/*!40000 ALTER TABLE `xy_notice` DISABLE KEYS */;
INSERT INTO `xy_notice` VALUES (1,'用户下单','order_add','user','下单通知：订单${order_id}提交成功，请及时付款！','',0,'下单通知：订单{order_id}提交成功，请及时付款！','<p>\n	订单金额：{order_money}元\n</p>\n<p>\n	收货姓名：{user_tname}\n</p>\n<p>\n	联系电话：{user_phone}\n</p>\n<p>\n	收货地址：{user_address}\n</p>\n<p>\n	<br />\n</p>',0),(2,'订单付款','order_pay','user','付款通知：订单${order_id}付款成功，祝您生活愉快！','',0,'付款通知：订单{order_id}付款成功，祝您生活愉快！','<p>\n	订单金额：{order_money}元\n</p>\n<p>\n	收货姓名：{user_tname}\n</p>\n<p>\n	联系电话：{user_phone}\n</p>\n<p>\n	收货地址：{user_address}\n</p>\n<p>\n	<br />\n</p>',0),(3,'订单发货','order_send','user','发货通知：订单${order_id}已发货，请注意接收！','',0,'发货通知：订单{order_id}已发货，请注意接收！','<p>\n	快递公司：{order_wl_name}，运单编号：{order_wl_id}<span class=\"tag_gray fl mar5 mab5\" style=\"line-height:20px;\"></span>，如有问题请及时联系！\n</p>',0),(4,'订单关闭','order_close','user','关闭通知：订单${order_id}已关闭，原因：${order_closetext}','',0,'关闭通知：订单{order_id}已关闭，原因：{order_closetext}','订单金额：{order_money}元\n<p>\n	收货姓名：{user_tname}\n</p>\n<p>\n	联系电话：{user_phone}\n</p>\n<p>\n	收货地址：{user_address}\n</p>\n<p>\n	<br />\n</p>',0),(5,'用户下单','order_add','admin','新订单通知：${order_id}，金额：${order_money}元，姓名：${user_tname}，电话：${user_phone}，请注意查看！','',0,'新订单通知：{order_id}，金额：{order_money}元，姓名：{user_tname}，电话：{user_phone}，请注意查看！','<p>\n	订单金额：{order_money}元\n</p>\n<p>\n	收货姓名：{user_tname}\n</p>\n<p>\n	联系电话：{user_phone}\n</p>\n<p>\n	收货地址：{user_address}\n</p>',0),(6,'订单付款','order_pay','admin','关闭通知：订单${order_id}已关闭，原因：${order_closetext}','',0,'付款通知：订单{order_id}付款成功，请及时安排发货！','<p>\n	订单金额：{order_money}元\n</p>\n<p>\n	收货姓名：{user_tname}\n</p>\n<p>\n	联系电话：{user_phone}\n</p>\n<p>\n	收货地址：{user_address}\n</p>',0);
/*!40000 ALTER TABLE `xy_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_noticelog`
--

DROP TABLE IF EXISTS `xy_noticelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_noticelog` (
  `noticelog_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '通知记录id',
  `noticelog_type` varchar(5) NOT NULL DEFAULT 'email',
  `noticelog_user` varchar(30) NOT NULL COMMENT '通知对象',
  `noticelog_name` varchar(100) NOT NULL COMMENT '通知名称',
  `noticelog_text` text NOT NULL COMMENT '通知内容',
  `noticelog_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `noticelog_stime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '通知时间',
  `noticelog_state` varchar(10) NOT NULL DEFAULT 'new' COMMENT '通知状态',
  `noticelog_error` varchar(50) NOT NULL COMMENT '失败提醒',
  PRIMARY KEY (`noticelog_id`),
  KEY `noticelog_state` (`noticelog_state`)
) ENGINE=MyISAM AUTO_INCREMENT=278 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_noticelog`
--

LOCK TABLES `xy_noticelog` WRITE;
/*!40000 ALTER TABLE `xy_noticelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_noticelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_order`
--

DROP TABLE IF EXISTS `xy_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_order` (
  `order_id` bigint(15) unsigned NOT NULL COMMENT '订单id',
  `order_outid` varchar(50) NOT NULL COMMENT '第三方支付订单号',
  `order_type` varchar(10) NOT NULL COMMENT '订单类型(fixed/pintuan)',
  `order_virtual` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否虚拟商品订单',
  `order_name` varchar(50) NOT NULL,
  `order_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '订单金额',
  `order_product_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0',
  `order_quan_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_quan_name` varchar(30) NOT NULL,
  `order_quan_money` int(10) unsigned NOT NULL DEFAULT '0',
  `order_point_get` smallint(5) unsigned NOT NULL DEFAULT '0',
  `order_point_use` smallint(5) unsigned NOT NULL DEFAULT '0',
  `order_point_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0',
  `order_wl_id` varchar(20) NOT NULL,
  `order_wl_name` varchar(20) NOT NULL,
  `order_wl_money` decimal(5,1) unsigned NOT NULL DEFAULT '0.0',
  `order_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下单时间',
  `order_ptime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '付款时间',
  `order_stime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发货时间',
  `order_ftime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '完成时间',
  `order_payment` varchar(10) NOT NULL DEFAULT 'alipay_js' COMMENT '支付方式类型',
  `order_payment_name` varchar(20) NOT NULL COMMENT '支付方式名称',
  `order_comment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `order_state` varchar(10) NOT NULL DEFAULT 'wpay',
  `order_pstate` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '付款状态',
  `order_sstate` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '发货状态',
  `order_text` varchar(255) NOT NULL COMMENT '订单留言',
  `order_closetext` varchar(255) NOT NULL COMMENT '订单关闭原因',
  `huodong_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '活动id',
  `pintuan_id` bigint(15) unsigned NOT NULL DEFAULT '0' COMMENT '拼团id',
  `user_id` int(10) unsigned NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_tname` varchar(10) NOT NULL,
  `user_phone` char(11) NOT NULL COMMENT '用户手机',
  `user_tel` varchar(20) NOT NULL,
  `user_address` varchar(255) NOT NULL COMMENT '用户地址',
  KEY `order_id` (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_order`
--

LOCK TABLES `xy_order` WRITE;
/*!40000 ALTER TABLE `xy_order` DISABLE KEYS */;
INSERT INTO `xy_order` VALUES (230427071835492,'','fixed',0,'和田玉珠纯银锁骨链配饰',599.0,599.0,0,'',0,0,0,0.0,'','',0.0,1682551115,1682573254,0,0,'alipay','支付宝',0,'wsend',1,0,'','',0,0,46,'12345','q','18183320486','','四川省成都市金牛区抚琴'),(230427175927435,'','fixed',0,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项',988.0,988.0,0,'',0,0,0,0.0,'','',0.0,1682589567,0,0,1682677090,'balance','余额支付',0,'close',0,0,'','订单未付款，超时关闭',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230427180012277,'','fixed',0,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项',988.0,988.0,0,'',0,0,0,0.0,'','',0.0,1682589612,0,0,1682677092,'alipay','支付宝',0,'close',0,0,'','订单未付款，超时关闭',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230427180219674,'','fixed',0,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项',988.0,988.0,0,'',0,0,0,0.0,'','',0.0,1682589739,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230427180508999,'','fixed',0,'天然红玛瑙耳环个性水滴耳坠',760.0,760.0,0,'',0,0,0,0.0,'','',0.0,1682589908,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230427180532219,'','fixed',0,'天然红玛瑙耳环个性水滴耳坠',760.0,760.0,0,'',0,0,0,0.0,'','',0.0,1682589932,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230427180737487,'','fixed',0,'天然红玛瑙耳环个性水滴耳坠',760.0,760.0,0,'',0,0,0,0.0,'','',0.0,1682590057,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230427180820700,'','fixed',0,'个性贝珠耳环',399.0,399.0,0,'',0,0,0,0.0,'','',0.0,1682590100,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230427181133326,'','fixed',0,'和田玉珠纯银锁骨链配饰',599.0,599.0,0,'',0,0,0,0.0,'','',0.0,1682590293,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230427181245608,'','fixed',0,'和田玉珠纯银锁骨链配饰',599.0,599.0,0,'',0,0,0,0.0,'','',0.0,1682590365,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230427182101002,'','fixed',0,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项',988.0,988.0,0,'',0,0,0,0.0,'','',0.0,1682590861,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,48,'17891868055','的的','17891864055','','湖南省长沙市天心区呃呃呃额度多少的'),(230427183659753,'','fixed',0,'和田玉珠纯银锁骨链配饰',599.0,599.0,0,'',0,0,0,0.0,'','',0.0,1682591819,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230427184558650,'','fixed',0,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项',988.0,988.0,0,'',0,0,0,0.0,'','',0.0,1682592358,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,48,'17891868055','的的','17891864055','','湖南省长沙市天心区呃呃呃额度多少的'),(230427184745714,'','fixed',0,'和田玉珠纯银锁骨链配饰',599.0,599.0,0,'',0,0,0,0.0,'','',0.0,1682592465,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230427185135035,'','fixed',0,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项',988.0,988.0,0,'',0,0,0,0.0,'','',0.0,1682592695,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,48,'17891868055','的的','17891864055','','湖南省长沙市天心区呃呃呃额度多少的'),(230427185211529,'','fixed',0,'和田玉珠纯银锁骨链配饰',599.0,599.0,0,'',0,0,0,0.0,'','',0.0,1682592731,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230427185427585,'','fixed',0,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项',988.0,988.0,0,'',0,0,0,0.0,'','',0.0,1682592867,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230427185453064,'','fixed',0,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项',988.0,988.0,0,'',0,0,0,0.0,'','',0.0,1682592893,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230427204442608,'','fixed',0,'和田玉珠纯银锁骨链配饰',599.0,599.0,0,'',0,0,0,0.0,'','',0.0,1682599482,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428130719326,'','fixed',0,'和田玉珠纯银锁骨链配饰',599.0,599.0,0,'',0,0,0,0.0,'','',0.0,1682658439,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428130810238,'','fixed',0,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项',988.0,988.0,0,'',0,0,0,0.0,'','',0.0,1682658490,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428131710618,'','fixed',0,'坦桑蓝高碳钻戒指',298.9,298.9,0,'',0,0,0,0.0,'','',0.0,1682659030,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428133133843,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682659893,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,49,'ceshi','背景是','13012345678','','北京北京市东城区奥术大师'),(230428141616372,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682662576,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,49,'ceshi','背景是','13012345678','','北京北京市东城区奥术大师'),(230428143404436,'','fixed',0,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项',988.0,988.0,0,'',0,0,0,0.0,'','',0.0,1682663644,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428143520517,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682663720,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428143658077,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682663818,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428143930720,'','fixed',0,'和田玉珠纯银锁骨链配饰',599.0,599.0,0,'',0,0,0,0.0,'','',0.0,1682663970,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428144108005,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682664068,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428144305431,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682664185,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428144507757,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682664307,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428144518550,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682664318,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428144844641,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682664524,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428145116707,'','fixed',0,'和田玉珠纯银锁骨链配饰',599.0,599.0,0,'',0,0,0,0.0,'','',0.0,1682664676,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428145431762,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682664871,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428145752109,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682665072,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428145848484,'','fixed',0,'和田玉珠纯银锁骨链配饰',599.0,599.0,0,'',0,0,0,0.0,'','',0.0,1682665128,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428145936365,'','fixed',0,'和田玉珠纯银锁骨链配饰',599.0,599.0,0,'',0,0,0,0.0,'','',0.0,1682665176,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428150220296,'','fixed',0,'天然红玛瑙耳环个性水滴耳坠',760.0,760.0,0,'',0,0,0,0.0,'','',0.0,1682665340,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428150404914,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682665444,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428150705475,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682665625,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428150812466,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682665692,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428150849963,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682665729,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428151054850,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682665854,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,49,'ceshi','背景是','13012345678','','北京北京市东城区奥术大师'),(230428151340513,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682666020,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428151444334,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682666084,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,49,'ceshi','背景是','13012345678','','北京北京市东城区奥术大师'),(230428151759627,'','fixed',0,'和田玉珠纯银锁骨链配饰',599.0,599.0,0,'',0,0,0,0.0,'','',0.0,1682666279,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428151812655,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682666292,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,49,'ceshi','背景是','13012345678','','北京北京市东城区奥术大师'),(230428151952452,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682666392,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428152133658,'','fixed',0,'和田玉珠纯银锁骨链配饰;个性贝珠耳环',998.0,998.0,0,'',0,0,0,0.0,'','',0.0,1682666493,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428152141968,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682666501,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428152422872,'','fixed',0,'玫瑰金情侣对戒',151.2,151.2,0,'',0,0,0,0.0,'','',0.0,1682666662,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428152612542,'','fixed',0,'和田玉珠纯银锁骨链配饰',599.0,599.0,0,'',0,0,0,0.0,'','',0.0,1682666772,0,0,0,'balance','余额支付',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428152658376,'','fixed',0,'和田玉珠纯银锁骨链配饰',599.0,599.0,0,'',0,0,0,0.0,'','',0.0,1682666818,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428154436534,'','fixed',0,'天然红玛瑙耳环个性水滴耳坠',760.0,760.0,0,'',0,0,0,0.0,'','',0.0,1682667876,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷'),(230428161210617,'','fixed',0,'和田玉珠纯银锁骨链配饰',599.0,599.0,0,'',0,0,0,0.0,'','',0.0,1682669530,0,0,0,'alipay','支付宝',0,'wpay',0,0,'','',0,0,50,'a123456','dfgdfg','13760694212','','上海上海市宝山区sdfg'),(230428161333386,'','fixed',0,'天然红玛瑙耳环个性水滴耳坠',759.9,760.0,0,'',0,0,10,0.1,'','',0.0,1682669613,1682674017,0,0,'alipay','支付宝',0,'wsend',1,0,'','',0,0,47,'123456','q','18183320486','','四川省成都市金牛区抚琴南一巷');
/*!40000 ALTER TABLE `xy_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_order_pay`
--

DROP TABLE IF EXISTS `xy_order_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_order_pay` (
  `order_id` varchar(25) NOT NULL COMMENT '订单id',
  `order_outid` varchar(50) NOT NULL,
  `order_name` varchar(50) NOT NULL,
  `order_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '订单金额',
  `order_state` varchar(10) NOT NULL DEFAULT 'wpay',
  `order_payment` varchar(10) NOT NULL DEFAULT 'alipay_js' COMMENT '支付方式类型',
  `order_payment_name` varchar(20) NOT NULL COMMENT '支付方式名称',
  `order_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下单时间',
  `order_ptime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '付款时间',
  `order_pstate` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '付款状态',
  `user_id` int(10) unsigned NOT NULL,
  `user_name` varchar(20) NOT NULL,
  KEY `order_id` (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_order_pay`
--

LOCK TABLES `xy_order_pay` WRITE;
/*!40000 ALTER TABLE `xy_order_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_order_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_orderdata`
--

DROP TABLE IF EXISTS `xy_orderdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_orderdata` (
  `orderdata_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单数据id',
  `order_id` bigint(15) unsigned NOT NULL DEFAULT '0' COMMENT '订单id',
  `product_guid` char(32) NOT NULL COMMENT '唯一id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `product_name` varchar(50) NOT NULL COMMENT '订单名称',
  `product_rule` varchar(255) NOT NULL,
  `product_logo` varchar(200) NOT NULL COMMENT '商品logo',
  `product_money` decimal(10,1) NOT NULL DEFAULT '0.0',
  `product_jjmoney` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '加减价格',
  `product_allmoney` decimal(10,1) unsigned NOT NULL DEFAULT '0.0',
  `product_num` smallint(5) unsigned NOT NULL,
  `refund_id` bigint(15) unsigned NOT NULL DEFAULT '0',
  `refund_state` varchar(10) NOT NULL,
  `prorule_key` varchar(30) NOT NULL COMMENT '规格id组合',
  `prorule_name` varchar(255) NOT NULL COMMENT '规格名称组合',
  PRIMARY KEY (`orderdata_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=285 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_orderdata`
--

LOCK TABLES `xy_orderdata` WRITE;
/*!40000 ALTER TABLE `xy_orderdata` DISABLE KEYS */;
INSERT INTO `xy_orderdata` VALUES (227,230427071835492,'38',15,'和田玉珠纯银锁骨链配饰','','attachment/2023-04/2023042704503616839d.jpg',599.0,0.0,599.0,1,0,'','',''),(228,230427175927435,'31',8,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项','','attachment/2023-04/2023042623014416828l.jpg',988.0,0.0,988.0,1,0,'','',''),(229,230427180012277,'31',8,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项','','attachment/2023-04/2023042623014416828l.jpg',988.0,0.0,988.0,1,0,'','',''),(230,230427180219674,'31',8,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项','','attachment/2023-04/2023042623014416828l.jpg',988.0,0.0,988.0,1,0,'','',''),(231,230427180508999,'37',14,'天然红玛瑙耳环个性水滴耳坠','','attachment/2023-04/2023042704491516888v.jpg',760.0,0.0,760.0,1,0,'','',''),(232,230427180532219,'37',14,'天然红玛瑙耳环个性水滴耳坠','','attachment/2023-04/2023042704491516888v.jpg',760.0,0.0,760.0,1,0,'','',''),(233,230427180737487,'37',14,'天然红玛瑙耳环个性水滴耳坠','','attachment/2023-04/2023042704491516888v.jpg',760.0,0.0,760.0,1,0,'','',''),(234,230427180820700,'36',13,'个性贝珠耳环','','attachment/2023-04/2023042704482216816d.jpg',399.0,0.0,399.0,1,0,'','',''),(235,230427181133326,'38',15,'和田玉珠纯银锁骨链配饰','','attachment/2023-04/2023042704503616839d.jpg',599.0,0.0,599.0,1,0,'','',''),(236,230427181245608,'38',15,'和田玉珠纯银锁骨链配饰','','attachment/2023-04/2023042704503616839d.jpg',599.0,0.0,599.0,1,0,'','',''),(237,230427182101002,'31',8,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项','','attachment/2023-04/2023042623014416828l.jpg',988.0,0.0,988.0,1,0,'','',''),(238,230427183659753,'38',15,'和田玉珠纯银锁骨链配饰','','attachment/2023-04/2023042704503616839d.jpg',599.0,0.0,599.0,1,0,'','',''),(239,230427184558650,'31',8,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项','','attachment/2023-04/2023042623014416828l.jpg',988.0,0.0,988.0,1,0,'','',''),(240,230427184745714,'38',15,'和田玉珠纯银锁骨链配饰','','attachment/2023-04/2023042704503616839d.jpg',599.0,0.0,599.0,1,0,'','',''),(241,230427185135035,'31',8,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项','','attachment/2023-04/2023042623014416828l.jpg',988.0,0.0,988.0,1,0,'','',''),(242,230427185211529,'38',15,'和田玉珠纯银锁骨链配饰','','attachment/2023-04/2023042704503616839d.jpg',599.0,0.0,599.0,1,0,'','',''),(243,230427185427585,'31',8,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项','','attachment/2023-04/2023042623014416828l.jpg',988.0,0.0,988.0,1,0,'','',''),(244,230427185453064,'31',8,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项','','attachment/2023-04/2023042623014416828l.jpg',988.0,0.0,988.0,1,0,'','',''),(245,230427204442608,'38',15,'和田玉珠纯银锁骨链配饰','','attachment/2023-04/2023042704503616839d.jpg',599.0,0.0,599.0,1,0,'','',''),(246,230428130719326,'38',15,'和田玉珠纯银锁骨链配饰','','attachment/2023-04/2023042704503616839d.jpg',599.0,0.0,599.0,1,0,'','',''),(247,230428130810238,'31',8,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项','','attachment/2023-04/2023042623014416828l.jpg',988.0,0.0,988.0,1,0,'','',''),(248,230428131710618,'32',9,'坦桑蓝高碳钻戒指','','attachment/2023-04/2023042704433116862l.jpg',298.9,0.0,298.9,1,0,'','',''),(249,230428133133843,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(250,230428141616372,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(251,230428143404436,'31',8,'925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项','','attachment/2023-04/2023042623014416828l.jpg',988.0,0.0,988.0,1,0,'','',''),(252,230428143520517,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(253,230428143658077,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(254,230428143930720,'38',15,'和田玉珠纯银锁骨链配饰','','attachment/2023-04/2023042704503616839d.jpg',599.0,0.0,599.0,1,0,'','',''),(255,230428144108005,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(256,230428144305431,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(257,230428144507757,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(258,230428144518550,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(259,230428144844641,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(260,230428145116707,'38',15,'和田玉珠纯银锁骨链配饰','','attachment/2023-04/2023042704503616839d.jpg',599.0,0.0,599.0,1,0,'','',''),(261,230428145431762,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(262,230428145752109,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(263,230428145848484,'38',15,'和田玉珠纯银锁骨链配饰','','attachment/2023-04/2023042704503616839d.jpg',599.0,0.0,599.0,1,0,'','',''),(264,230428145936365,'38',15,'和田玉珠纯银锁骨链配饰','','attachment/2023-04/2023042704503616839d.jpg',599.0,0.0,599.0,1,0,'','',''),(265,230428150220296,'37',14,'天然红玛瑙耳环个性水滴耳坠','','attachment/2023-04/2023042704491516888v.jpg',760.0,0.0,760.0,1,0,'','',''),(266,230428150404914,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(267,230428150705475,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(268,230428150812466,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(269,230428150849963,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(270,230428151054850,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(271,230428151340513,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(272,230428151444334,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(273,230428151759627,'38',15,'和田玉珠纯银锁骨链配饰','','attachment/2023-04/2023042704503616839d.jpg',599.0,0.0,599.0,1,0,'','',''),(274,230428151812655,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(275,230428151952452,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(276,230428152133658,'38',15,'和田玉珠纯银锁骨链配饰','','attachment/2023-04/2023042704503616839d.jpg',599.0,0.0,599.0,1,0,'','',''),(277,230428152133658,'36',13,'个性贝珠耳环','','attachment/2023-04/2023042704482216816d.jpg',399.0,0.0,399.0,1,0,'','',''),(278,230428152141968,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(279,230428152422872,'33',10,'玫瑰金情侣对戒','','attachment/2023-04/2023042704442316851e.jpg',151.2,0.0,151.2,1,0,'','',''),(280,230428152612542,'38',15,'和田玉珠纯银锁骨链配饰','','attachment/2023-04/2023042704503616839d.jpg',599.0,0.0,599.0,1,0,'','',''),(281,230428152658376,'38',15,'和田玉珠纯银锁骨链配饰','','attachment/2023-04/2023042704503616839d.jpg',599.0,0.0,599.0,1,0,'','',''),(282,230428154436534,'37',14,'天然红玛瑙耳环个性水滴耳坠','','attachment/2023-04/2023042704491516888v.jpg',760.0,0.0,760.0,1,0,'','',''),(283,230428161210617,'38',15,'和田玉珠纯银锁骨链配饰','','attachment/2023-04/2023042704503616839d.jpg',599.0,0.0,599.0,1,0,'','',''),(284,230428161333386,'37',14,'天然红玛瑙耳环个性水滴耳坠','','attachment/2023-04/2023042704491516888v.jpg',760.0,0.0,760.0,1,0,'','','');
/*!40000 ALTER TABLE `xy_orderdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_payment`
--

DROP TABLE IF EXISTS `xy_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_payment` (
  `payment_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `payment_name` varchar(10) NOT NULL,
  `payment_type` varchar(15) NOT NULL,
  `payment_desc` varchar(255) NOT NULL COMMENT '支付描述',
  `payment_model` text NOT NULL,
  `payment_config` text NOT NULL,
  `payment_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `payment_state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_payment`
--

LOCK TABLES `xy_payment` WRITE;
/*!40000 ALTER TABLE `xy_payment` DISABLE KEYS */;
INSERT INTO `xy_payment` VALUES (2,'支付宝','alipay','即时到帐接口，买家交易金额直接转入卖家支付宝账户。','a:5:{s:10:\"alipay_pid\";a:2:{s:4:\"name\";s:18:\"合作者身份Pid\";s:4:\"type\";s:4:\"text\";}s:10:\"alipay_key\";a:2:{s:4:\"name\";s:18:\"安全校验码Key\";s:4:\"type\";s:4:\"text\";}s:12:\"alipay_appid\";a:2:{s:4:\"name\";s:20:\"支付宝应用APPid\";s:4:\"type\";s:4:\"text\";}s:17:\"alipay_public_key\";a:2:{s:4:\"name\";s:15:\"支付宝公钥\";s:4:\"type\";s:8:\"textarea\";}s:21:\"alipay_my_private_key\";a:2:{s:4:\"name\";s:15:\"开发者私钥\";s:4:\"type\";s:8:\"textarea\";}}','a:5:{s:10:\"alipay_pid\";s:16:\"2088121065809893\";s:10:\"alipay_key\";s:32:\"wdvfe1who1sa6cchu7e7du756t6zodf9\";s:12:\"alipay_appid\";s:16:\"2016012601122018\";s:17:\"alipay_public_key\";s:392:\"MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoJrdxe7XnMYYmg+xqJbEcFWCDEOA6zeKuHRs3KJ6qjO+iZQP78/shBUAL/hHnSSjOakGf0yIQEn888KMG2AWoD4tv8hmEmoewL2CACbEwwxfQiSqvJhWcbFxDizY1gTFzRclGBw5FzBdeaHG66rmZuLcUSIewKwRgCo++/jmzsI8s9nOhOpXhu4APbadb8EhWzxaQA2fcFxAf/ExnF0gabBJ/Z/urtQhIcvhK1wTEgsM/u70bNSOFd6MP6uH2t6kqTfkFC939t/KScnCOh1VAmw69RlMpAiCRsT5HzFL6GdSeSw1xJcPa/0GeKzSodd/eM9Np3kEnlwqsWfW90NXJwIDAQAB\";s:21:\"alipay_my_private_key\";s:1592:\"MIIEpQIBAAKCAQEAnzRdAOBQJaQoKlpZ9ONY3w+GTh+/jiPzGi5w0vWX58NSXL8YJ6ctm9B0CMEYShdaTxIZ6n1Uw71N6NZAe2YMBq7lLzS5TNV/wjvGDwOkJyHNKUMR1uGrba0XuodNEpZe+yhjq0z+6o9Lg68y9yBJ1HCY6D2js6unSmVbBwn81WRHyrwqrOX9qjyvrhzazZnASvNay6/3pt7NBNInE5RViYkRIXG3VurECC87hPJqQwSiS8ppChNuCBBnXcyS6R8PjckwoBP+kN6BfTR2/EvWEaIatV1cFeeGUVQyiZe/18rvx7+lgK6znvTLnkc92OX/ZtWV+Y43ppGNW5XJkdtr5wIDAQABAoIBAHjmgg5NSnAbZqkrLg9Lq0zR9FNVxtmBsXbbd7Cs8yv854opUIWkbn1aYxPW18REUb+kZmvtu7ZeB1Ffi15qk41ruf4MUv/nTntJe1IhmMJi5/OCzIRbohzLCy8K2tvXt8+Rz4biFOA568XYAaMsMQUUcPpE/RFPtN5JdEQ3MHs31q+doUEir838b/ozmlFWQ73BGWHj15bt/6nCgqeWq+QT8jZ14c8Nj0UdW9RX3oxGGSHU6Cy9smryt1weqxypX7NpTM3DcWfgULveWmQ+71DzxZrlQO4aI/y8ngDYJgBI32Od01WEVUNKPtX/7tUzWmEW02iYeYTp/p2+9xZsejECgYEAyz9mSRcsUc2EleeNkEBZ8uzcKmUYWFJemAJ6avLHhESnVm28fm0gWDEYwqdxmh54zJzO+l++vfx+KiMpALi3EHOYmaZyDhPRTkCw8JFaluE7ly5PD39jL4bml5RKDHczE8FowXanV3abGxgaCrqRaM70YS137pHZXcAFqhbnyukCgYEAyIaPeLB1LWJD9GXSt9jFqcMmo+YdhbsR0E5HenufMJbmYLWxYjkgULgC1WHtAJ3qSEwX1LrP5TvJx6tOzPXFHLigxi3bHyvw5BAHsVgyYnM88bQcXkaJRCvCrzuJIz8vYtsRp+1pGlmpN3WQOnFIb4ofzaRaIZHWwf2AnYlYnk8CgYEAqcHQWufh+okfXl1CXeOBvWacFUTO6qYRoAEh4kXY4t68rXGGaEoZI9AOEDbuqX0eBDhMn85scB59+g/X5WRicnk6Ucs1pBBlV2is4KFm+nIw5XqmShlp7H5OBviySGse3DdEmaHS7zh/IEgnKCLf5JxGfQwPCdIDrUv+7yumelECgYEAjDDW+S+UnGgIzkKpsPKSLn9K8mcc2LPSXml7u3vV7WhyI8ai/uKlXwlmobvWsAm3E1hviMAaPE8yYK+5Zb2lUtEZRbQlb4OO5EL4vdnFT+L1Bp4+/wIdUVWuxEfBNq0j+d7iVx65zjxE+4rrjJBKbgCI/4IZqUKGfBU45+pv1C0CgYEAndIqsLJHSutZgDRq5LBdtfyAjTQCRH0KtwF9xGXBnAkSyhlS15qoG6ukRJQNs+PIuc9Qqsv9HaSH59kqGFqf2y5fUIpOjf0Iv9gjMguh2Klya3zMze3luqaTbiG/GRl7lCvzvnm09jfr3G+o+a9cww+UeaOTZNv7biZ8A/tvxyY=\";}',0,1);
/*!40000 ALTER TABLE `xy_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_pintuan`
--

DROP TABLE IF EXISTS `xy_pintuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_pintuan` (
  `pintuan_id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `pintuan_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '拼团价',
  `pintuan_num` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pintuan_atime` int(10) unsigned NOT NULL DEFAULT '0',
  `pintuan_stime` int(10) unsigned NOT NULL DEFAULT '0',
  `pintuan_etime` int(10) unsigned NOT NULL DEFAULT '0',
  `pintuan_state` varchar(10) NOT NULL DEFAULT 'wtuan',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_name` varchar(100) NOT NULL,
  `product_logo` varchar(100) NOT NULL,
  `product_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0',
  `huodong_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  PRIMARY KEY (`pintuan_id`),
  KEY `pintuan_state` (`pintuan_state`),
  KEY `product_id` (`product_id`),
  KEY `huodong_id` (`huodong_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_pintuan`
--

LOCK TABLES `xy_pintuan` WRITE;
/*!40000 ALTER TABLE `xy_pintuan` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_pintuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_pintuanlog`
--

DROP TABLE IF EXISTS `xy_pintuanlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_pintuanlog` (
  `pintuanlog_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pintuanlog_atime` int(10) unsigned NOT NULL DEFAULT '0',
  `pintuan_id` bigint(15) unsigned NOT NULL DEFAULT '0',
  `order_id` bigint(15) unsigned NOT NULL DEFAULT '0' COMMENT '订单id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  `user_logo` varchar(100) NOT NULL,
  PRIMARY KEY (`pintuanlog_id`),
  KEY `pintuan_id` (`pintuan_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_pintuanlog`
--

LOCK TABLES `xy_pintuanlog` WRITE;
/*!40000 ALTER TABLE `xy_pintuanlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_pintuanlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_pointlog`
--

DROP TABLE IF EXISTS `xy_pointlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_pointlog` (
  `pointlog_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pointlog_type` varchar(10) NOT NULL COMMENT '积分类型',
  `pointlog_in` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分收入',
  `pointlog_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分支出',
  `pointlog_now` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当前结余',
  `pointlog_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  `pointlog_text` varchar(255) NOT NULL COMMENT '备注',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  PRIMARY KEY (`pointlog_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_pointlog`
--

LOCK TABLES `xy_pointlog` WRITE;
/*!40000 ALTER TABLE `xy_pointlog` DISABLE KEYS */;
INSERT INTO `xy_pointlog` VALUES (76,'give',10,0,10,1682550992,'新用户注册奖励',46,'12345'),(77,'give',10,0,10,1682589513,'新用户注册奖励',47,'123456'),(78,'give',10,0,10,1682590810,'新用户注册奖励',48,'17891868055'),(79,'give',10,0,10,1682659819,'新用户注册奖励',49,'ceshi'),(80,'give',10,0,10,1682668623,'新用户注册奖励',50,'a123456'),(81,'order_pay',0,10,0,1682669613,'订单支付抵现，单号【230428161333386】',47,'123456');
/*!40000 ALTER TABLE `xy_pointlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_prodata`
--

DROP TABLE IF EXISTS `xy_prodata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_prodata` (
  `product_guid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品规格id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `product_ruleid` varchar(30) NOT NULL COMMENT '规格id组合',
  `product_rulename` varchar(50) NOT NULL COMMENT '规格名组合',
  `product_rule` varchar(255) NOT NULL COMMENT '规格数据集',
  `product_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '真实售价（有活动即活动价）',
  `product_smoney` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '商城价',
  `product_mmoney` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '市场价',
  `product_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '剩余库存',
  `product_order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`product_guid`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_prodata`
--

LOCK TABLES `xy_prodata` WRITE;
/*!40000 ALTER TABLE `xy_prodata` DISABLE KEYS */;
INSERT INTO `xy_prodata` VALUES (20,6,'2','深邃黑深邃黑','a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"深邃黑深邃黑\";}}',77.0,77.0,0.0,8888,1),(21,6,'1','汝瓷白汝瓷白','a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"汝瓷白汝瓷白\";}}',77.0,77.0,0.0,8888,2),(22,6,'3','荣耀金荣耀金','a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"荣耀金荣耀金\";}}',77.0,77.0,0.0,8888,3),(23,6,'4','高端蓝高端蓝','a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"高端蓝高端蓝\";}}',77.0,77.0,0.0,8888,4),(24,6,'5','天空蓝天空蓝','a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"天空蓝天空蓝\";}}',77.0,77.0,0.0,8888,5),(25,6,'6','长江黄长江黄','a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"长江黄长江黄\";}}',77.0,77.0,0.0,8888,6),(26,6,'7','深海蓝深海蓝','a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"深海蓝深海蓝\";}}',77.0,77.0,0.0,8888,7),(27,6,'8','草地绿草地绿','a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"草地绿草地绿\";}}',77.0,77.0,0.0,8888,8),(28,6,'9','黑夜黑黑夜黑','a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"黑夜黑黑夜黑\";}}',77.0,77.0,0.0,8888,9),(29,6,'10','银白银白','a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:12:\"银白银白\";}}',77.0,77.0,0.0,8888,10),(30,6,'11','彩色彩色','a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:12:\"彩色彩色\";}}',77.0,77.0,0.0,8888,11),(31,8,'','','',988.0,988.0,0.0,92,1),(32,9,'','','',298.9,298.9,0.0,99,1),(33,10,'','','',151.2,189.0,0.0,109,1),(34,11,'','','',419.0,519.0,0.0,100,1),(35,12,'','','',389.0,389.0,0.0,100,1),(36,13,'','','',300.0,300.0,0.0,98,1),(37,14,'','','',760.0,760.0,0.0,94,1),(38,15,'','','',599.0,599.0,0.0,83,1);
/*!40000 ALTER TABLE `xy_prodata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_product`
--

DROP TABLE IF EXISTS `xy_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_product` (
  `product_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `product_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `product_type` varchar(10) NOT NULL DEFAULT 'normal' COMMENT '商品类型',
  `product_name` varchar(100) NOT NULL COMMENT '商品名称',
  `product_text` text NOT NULL COMMENT '商品描述',
  `product_keys` varchar(50) NOT NULL COMMENT '页面关键词',
  `product_desc` varchar(255) NOT NULL COMMENT '页面描述',
  `product_logo` varchar(100) NOT NULL COMMENT '商品logo',
  `product_album` text NOT NULL COMMENT '商品相册',
  `product_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '商品商城价（有活动即活动价）',
  `product_smoney` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '商品商城价',
  `product_mmoney` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '商品市场价',
  `product_wlmoney` decimal(5,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '商品物流价',
  `product_point` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '赠送积分',
  `product_mark` varchar(20) NOT NULL COMMENT '商品货号',
  `product_weight` decimal(7,2) NOT NULL COMMENT '商品尺寸',
  `product_state` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '商品状态',
  `product_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品发布时间',
  `product_order` smallint(5) unsigned NOT NULL DEFAULT '10000' COMMENT '商品排序',
  `product_num` smallint(5) unsigned NOT NULL COMMENT '商品库存数',
  `product_sellnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品销售数',
  `product_clicknum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品点击数',
  `product_collectnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品收藏数',
  `product_asknum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品咨询数',
  `product_commentnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品评价数',
  `product_commentrate` varchar(10) NOT NULL COMMENT '商品评价比例',
  `product_commentstar` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品评价星级',
  `product_istuijian` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `product_rule` text NOT NULL COMMENT '规格数据集',
  `prokey_type` varchar(10) NOT NULL COMMENT '点卡发放类型',
  `prokey_user` varchar(50) NOT NULL COMMENT '点卡帐号',
  `prokey_pw` varchar(50) NOT NULL COMMENT '点卡密码',
  `prokey_edate` date NOT NULL COMMENT '卡点有效期',
  `huodong_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '活动id',
  `huodong_type` varchar(10) NOT NULL COMMENT '活动类型',
  `huodong_tag` varchar(10) NOT NULL COMMENT '活动标签',
  `huodong_stime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '活动开始时间',
  `huodong_etime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '活动结束时间',
  `category_id` smallint(5) unsigned NOT NULL COMMENT '商品分类id',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '品牌id',
  `rule_id` varchar(30) NOT NULL COMMENT '商品规格id',
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  KEY `brand_id` (`brand_id`),
  KEY `huodong_type` (`huodong_type`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_product`
--

LOCK TABLES `xy_product` WRITE;
/*!40000 ALTER TABLE `xy_product` DISABLE KEYS */;
INSERT INTO `xy_product` VALUES (8,0,'normal','925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项','<p>				</p><p><br/></p><p>品种：碧玉</p><p>规格：10*15mm吊坠＋链</p><p>商品形态：吊坠</p><p>产状：山料</p><p>鉴定标识：国内鉴定</p><p><br/></p><p><img src=\"https://cdn065.yun-img.com/static/upload/yiyuange/team/20230403193335_39911.jpg\" title=\"20230403193335_39911.jpg\"/></p><p><img src=\"https://cdn063.yun-img.com/static/upload/yiyuange/team/20230403193335_51019.jpg\" title=\"20230403193335_51019.jpg\"/></p><p><br/></p><p><br/></p><p>				</p>','','','attachment/2023-04/2023042623014416828l.jpg','attachment/2023-04/2023042623014416828l.jpg,attachment/2023-04/2023042623014216859o.jpg,attachment/2023-04/2023042623014116890z.jpg',988.0,988.0,0.0,0.0,0,'',0.00,1,1682521307,10000,92,0,239,0,0,0,'',0,0,'','','','','0000-00-00',0,'','',0,0,40,0,''),(9,0,'normal','坦桑蓝高碳钻戒指','<p>				</p><p><br/><a href=\"http://www.yyg618.com/teamview_6628145.html#g-top\" style=\"cursor: pointer; text-decoration-line: none; color: rgb(51, 51, 51); display: block; width: 30px; height: 30px; position: absolute; right: 10px; top: 26px;\"></a></p><h5 style=\"margin: 0px; padding: 0px; font-size: 16px; color: rgb(60, 60, 60); font-family: Arial, Verdana, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; font-size: 13px; color: rgb(108, 108, 108);\">材质：银饰</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; font-size: 13px; color: rgb(108, 108, 108);\">金属材质：925银</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; font-size: 13px; color: rgb(108, 108, 108);\">颜色分类：坦桑蓝宝石钻戒</p></h5><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://cdn043.yun-img.com/static/upload/yiyuange/team/20230403230819_98163.jpg\" title=\"20230403230819_98163.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Verdana, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://cdn035.yun-img.com/static/upload/yiyuange/team/20230403230819_82039.jpg\" title=\"20230403230819_82039.jpg\"/></p><p><br/></p><p>				</p>','','','attachment/2023-04/2023042704433116862l.jpg','attachment/2023-04/2023042704433116862l.jpg,attachment/2023-04/2023042704433316824d.jpg,attachment/2023-04/2023042704433416872a.jpg',298.9,298.9,0.0,0.0,0,'',0.00,1,1682541816,10000,99,1,67,0,0,0,'',0,0,'','','','','0000-00-00',0,'','',0,0,43,0,''),(10,0,'normal','玫瑰金情侣对戒','<p>				</p><p style=\"font-size: 14.1176px; white-space: normal;\">材质：银饰</p><p style=\"font-size: 14.1176px; white-space: normal;\">风格：欧美</p><p style=\"font-size: 14.1176px; white-space: normal;\">适用性别：情侣</p><p style=\"font-size: 14.1176px; white-space: normal;\">镶嵌材质：镀金镶嵌人工宝石/半宝石</p><p><img src=\"http://cs.yyg618.com/attachment/2023-04/2023042815144616823q.jpg\" title=\"2023042815144616823q.jpg\" alt=\"111.jpg\"/><img src=\"http://cs.yyg618.com/attachment/2023-04/2023042815145716839i.jpg\" title=\"2023042815145716839i.jpg\" alt=\"1111.jpg\"/></p><p>				</p>','','','attachment/2023-04/2023042704442316851e.jpg','attachment/2023-04/2023042704442316851e.jpg,attachment/2023-04/2023042704443316833r.jpg',151.2,189.0,0.0,0.0,0,'',0.00,1,1682541923,10000,109,10,375,0,0,0,'',0,0,'','','','','0000-00-00',53,'zhekou','新品上市',1682573640,1685165640,43,0,''),(11,0,'normal','红宝石纯银手链','<h5 style=\"margin: 0px; padding: 0px; font-size: 16px; color: rgb(60, 60, 60); font-family: Arial, Verdana, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; font-size: 13px; color: rgb(108, 108, 108);\">材质：银饰</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; font-size: 13px; color: rgb(108, 108, 108);\">颜色分类：红宝石手链</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; font-size: 13px; color: rgb(108, 108, 108);\">工艺：电镀</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; font-size: 13px; color: rgb(108, 108, 108);\">镶嵌材质：纯银镶嵌宝石</p></h5><p><img src=\"http://cs.yyg618.com/attachment/2023-04/2023042713093016875i.jpg\" title=\"2023042713093016875i.jpg\" alt=\"5.jpg\"/><img src=\"http://cs.yyg618.com/attachment/2023-04/2023042713094316850w.jpg\" title=\"2023042713094316850w.jpg\" alt=\"5555.jpg\"/><img src=\"http://cs.yyg618.com/attachment/2023-04/2023042713095716889d.jpg\" title=\"2023042713095716889d.jpg\" alt=\"6.jpg\"/></p>','','','attachment/2023-04/2023042704461916869f.jpg','attachment/2023-04/2023042704461916869f.jpg,attachment/2023-04/2023042704462116877i.jpg',419.0,519.0,0.0,0.0,0,'',0.00,1,1682541991,10000,100,1,57,0,0,0,'',0,0,'','','','','0000-00-00',54,'pintuan','限时拼团',1682573700,1684560900,42,0,''),(12,0,'normal','金镶碧玉精美手链','<h5 style=\"margin: 0px; padding: 0px; font-size: 16px; color: rgb(60, 60, 60); font-family: Arial, Verdana, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">材质：合金/镀银/镀金<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; font-size: 13px; color: rgb(108, 108, 108);\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; font-size: 13px; color: rgb(108, 108, 108);\">风格：复古/宫廷</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; font-size: 13px; color: rgb(108, 108, 108);\">颜色分类：碧玉手链，和田玉手链</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; font-size: 13px; color: rgb(108, 108, 108);\">工艺：镶金</p></h5><p><img src=\"http://cs.yyg618.com/attachment/2023-04/2023042713071916810c.jpg\" title=\"2023042713071916810c.jpg\" alt=\"4.jpg\"/><img src=\"http://cs.yyg618.com/attachment/2023-04/2023042713072616819e.jpg\" title=\"2023042713072616819e.jpg\" alt=\"44.jpg\"/></p>','','','attachment/2023-04/2023042704471716884i.jpg','attachment/2023-04/2023042704471716884i.jpg,attachment/2023-04/2023042704471916863j.jpg',389.0,389.0,0.0,0.0,0,'',0.00,1,1682542048,10000,100,0,36,0,0,0,'',0,0,'','','','','0000-00-00',0,'','',0,0,42,0,''),(13,0,'normal','个性贝珠耳环','<p>				</p><p><br/></p><p>材质：珍珠母贝</p><p>风格：原创设计</p><p>成色：全新</p><p>颜色分类：贝珠耳环</p><p><img src=\"http://cs.yyg618.com/attachment/2023-04/2023042713051516852g.jpg\" title=\"2023042713051516852g.jpg\" alt=\"a2.jpg\"/></p><p><br/></p><p>				</p>','','','attachment/2023-04/2023042704482216816d.jpg','attachment/2023-04/2023042704482216816d.jpg,attachment/2023-04/2023042704482416862f.jpg',300.0,300.0,0.0,0.0,0,'',0.00,1,1682542105,10000,98,1,79,0,0,0,'',0,0,'','','','','0000-00-00',0,'','',0,0,41,0,''),(14,0,'normal','天然红玛瑙耳环个性水滴耳坠','<p>颜色分类：天然红玛瑙耳坠</p><p>上市时间：2022年冬季</p><p>款式：耳环</p><p>是否商场同款：否</p><p><img src=\"http://cs.yyg618.com/attachment/2023-04/2023042713033916853s.jpg\" title=\"2023042713033916853s.jpg\" alt=\"a1.jpg\"/></p>','','','attachment/2023-04/2023042704491516888v.jpg','attachment/2023-04/2023042704491516888v.jpg,attachment/2023-04/2023042704491716812i.jpg,attachment/2023-04/2023042704492016879y.jpg',760.0,760.0,0.0,0.0,0,'',0.00,1,1682542170,10000,94,1,88,0,0,0,'',0,0,'','','','','0000-00-00',0,'','',0,0,41,0,''),(15,0,'normal','和田玉珠纯银锁骨链配饰','<p>				</p><p>链子材质：银质</p><p>金属材质：925银</p><p>风格：日韩</p><p>成色：全新</p><p>延长链：10cm以下</p><p><img src=\"http://cs.yyg618.com/attachment/2023-04/2023042713020516831k.jpg\" title=\"2023042713020516831k.jpg\" alt=\"a.jpg\"/></p><p>				</p>','','','attachment/2023-04/2023042704503616839d.jpg','attachment/2023-04/2023042704503616839d.jpg,attachment/2023-04/2023042704503816857w.jpg,attachment/2023-04/2023042704504016834q.jpg',599.0,599.0,0.0,0.0,0,'',0.00,1,1682542249,10000,83,1,295,0,0,0,'',0,0,'','','','','0000-00-00',0,'','',0,0,40,0,'');
/*!40000 ALTER TABLE `xy_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_prokey`
--

DROP TABLE IF EXISTS `xy_prokey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_prokey` (
  `prokey_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prokey_type` varchar(10) DEFAULT NULL COMMENT 'one=固定卡密，more=逐条发放',
  `prokey_user` varchar(50) NOT NULL,
  `prokey_pw` varchar(50) NOT NULL,
  `prokey_atime` int(10) unsigned NOT NULL DEFAULT '0',
  `prokey_edate` date NOT NULL,
  `prokey_state` varchar(10) NOT NULL DEFAULT 'new',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` bigint(15) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  PRIMARY KEY (`prokey_id`),
  KEY `prokey_state` (`prokey_state`),
  KEY `product_id` (`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_prokey`
--

LOCK TABLES `xy_prokey` WRITE;
/*!40000 ALTER TABLE `xy_prokey` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_prokey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_prorule`
--

DROP TABLE IF EXISTS `xy_prorule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_prorule` (
  `prorule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品规格id',
  `prorule_key` varchar(30) NOT NULL COMMENT '规格id组合',
  `prorule_name` varchar(50) NOT NULL COMMENT '规格名组合',
  `product_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '商品商城价（有活动即活动价）',
  `product_smoney` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '商城价',
  `product_mmoney` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '规格市场价',
  `product_num` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '规格数量',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  PRIMARY KEY (`prorule_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_prorule`
--

LOCK TABLES `xy_prorule` WRITE;
/*!40000 ALTER TABLE `xy_prorule` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_prorule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_quan`
--

DROP TABLE IF EXISTS `xy_quan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_quan` (
  `quan_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '优惠券自增id',
  `quan_name` varchar(30) NOT NULL COMMENT '优惠券名称',
  `quan_type` varchar(10) NOT NULL DEFAULT 'online' COMMENT '发放方式(online线上领取/offline线下发放)',
  `quan_money` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券面值',
  `quan_limit` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券限制条件',
  `quan_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券发行量',
  `quan_num_get` int(10) unsigned NOT NULL DEFAULT '0',
  `quan_num_use` int(10) unsigned NOT NULL DEFAULT '0',
  `quan_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券增加日期',
  `quan_sdate` date NOT NULL COMMENT '优惠券开始日期',
  `quan_edate` date NOT NULL COMMENT '优惠券结束日期',
  `product_id` text NOT NULL COMMENT '商品id',
  PRIMARY KEY (`quan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_quan`
--

LOCK TABLES `xy_quan` WRITE;
/*!40000 ALTER TABLE `xy_quan` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_quan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_quanlog`
--

DROP TABLE IF EXISTS `xy_quanlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_quanlog` (
  `quanlog_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '优惠券自增id',
  `quanlog_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '领取时间',
  `quanlog_utime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用日期',
  `quanlog_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未使用,1已使用,2过期',
  `quan_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quan_key` char(10) NOT NULL,
  `quan_name` varchar(30) NOT NULL COMMENT '优惠券名称',
  `quan_money` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券面值',
  `quan_limit` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券限制条件',
  `quan_sdate` date NOT NULL COMMENT '优惠券开始日期',
  `quan_edate` date NOT NULL COMMENT '优惠券结束日期',
  `product_id` text NOT NULL COMMENT '商品id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  PRIMARY KEY (`quanlog_id`),
  KEY `quanlog_state` (`quanlog_state`),
  KEY `quan_id` (`quan_id`),
  KEY `quan_key` (`quan_key`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=81670 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_quanlog`
--

LOCK TABLES `xy_quanlog` WRITE;
/*!40000 ALTER TABLE `xy_quanlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_quanlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_refund`
--

DROP TABLE IF EXISTS `xy_refund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_refund` (
  `refund_id` bigint(15) unsigned NOT NULL,
  `refund_outid` varchar(50) NOT NULL,
  `refund_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `refund_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0',
  `refund_product_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0',
  `refund_wl_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0',
  `refund_text` varchar(255) NOT NULL COMMENT '订单留言',
  `refund_tname` varchar(10) NOT NULL,
  `refund_phone` varchar(30) NOT NULL,
  `refund_address` varchar(50) NOT NULL,
  `refund_wl_name` varchar(20) NOT NULL,
  `refund_wl_id` varchar(20) NOT NULL,
  `refund_atime` int(10) unsigned NOT NULL DEFAULT '0',
  `refund_ftime` int(10) unsigned NOT NULL DEFAULT '0',
  `refund_state` varchar(10) NOT NULL DEFAULT 'wcheck',
  `refund_pstate` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否付款(0未付款/1已付款)',
  `refund_presult` varchar(50) NOT NULL,
  `order_id` varchar(30) NOT NULL COMMENT '订单id',
  `orderdata_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_guid` char(32) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_rule` varchar(255) NOT NULL,
  `product_logo` varchar(200) NOT NULL,
  `product_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0',
  `product_jjmoney` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '商品加减价格',
  `product_allmoney` decimal(10,1) unsigned NOT NULL DEFAULT '0.0',
  `product_num` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL,
  `user_name` varchar(20) NOT NULL,
  KEY `refund_id` (`refund_id`),
  KEY `order_id` (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_refund`
--

LOCK TABLES `xy_refund` WRITE;
/*!40000 ALTER TABLE `xy_refund` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_refund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_refund_addr`
--

DROP TABLE IF EXISTS `xy_refund_addr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_refund_addr` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `address_order` int(10) unsigned NOT NULL DEFAULT '0',
  `refund_tname` varchar(10) NOT NULL,
  `refund_phone` varchar(30) NOT NULL,
  `refund_address` varchar(100) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_refund_addr`
--

LOCK TABLES `xy_refund_addr` WRITE;
/*!40000 ALTER TABLE `xy_refund_addr` DISABLE KEYS */;
INSERT INTO `xy_refund_addr` VALUES (1,0,'张开明','18955129593','广东省汕头市金平区下水道88号');
/*!40000 ALTER TABLE `xy_refund_addr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_refundlog`
--

DROP TABLE IF EXISTS `xy_refundlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_refundlog` (
  `refundlog_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `refundlog_atime` int(10) unsigned NOT NULL DEFAULT '0',
  `refundlog_text` text NOT NULL,
  `refund_id` bigint(15) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  PRIMARY KEY (`refundlog_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_refundlog`
--

LOCK TABLES `xy_refundlog` WRITE;
/*!40000 ALTER TABLE `xy_refundlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_refundlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_rule`
--

DROP TABLE IF EXISTS `xy_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_rule` (
  `rule_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '规格id',
  `rule_name` varchar(20) NOT NULL COMMENT '规格名称',
  `rule_memo` varchar(20) NOT NULL COMMENT '规格备注',
  PRIMARY KEY (`rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_rule`
--

LOCK TABLES `xy_rule` WRITE;
/*!40000 ALTER TABLE `xy_rule` DISABLE KEYS */;
INSERT INTO `xy_rule` VALUES (1,'颜色','');
/*!40000 ALTER TABLE `xy_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_ruledata`
--

DROP TABLE IF EXISTS `xy_ruledata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_ruledata` (
  `ruledata_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '规格值id',
  `ruledata_name` varchar(20) NOT NULL COMMENT '规格值名',
  `ruledata_logo` varchar(100) NOT NULL COMMENT '规格值图',
  `ruledata_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '规格值排序',
  `rule_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '规格id',
  PRIMARY KEY (`ruledata_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_ruledata`
--

LOCK TABLES `xy_ruledata` WRITE;
/*!40000 ALTER TABLE `xy_ruledata` DISABLE KEYS */;
INSERT INTO `xy_ruledata` VALUES (1,'汝瓷白汝瓷白','',2,1),(2,'深邃黑深邃黑','',1,1),(3,'荣耀金荣耀金','',3,1),(4,'高端蓝高端蓝','',4,1),(5,'天空蓝天空蓝','',5,1),(6,'长江黄长江黄','',6,1),(7,'深海蓝深海蓝','',7,1),(8,'草地绿草地绿','',8,1),(9,'黑夜黑黑夜黑','',9,1),(10,'银白银白','',10,1),(11,'彩色彩色','',11,1);
/*!40000 ALTER TABLE `xy_ruledata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_setting`
--

DROP TABLE IF EXISTS `xy_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_setting` (
  `setting_key` varchar(50) NOT NULL,
  `setting_value` text NOT NULL,
  KEY `setting_key` (`setting_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_setting`
--

LOCK TABLES `xy_setting` WRITE;
/*!40000 ALTER TABLE `xy_setting` DISABLE KEYS */;
INSERT INTO `xy_setting` VALUES ('web_title','四川亦缘阁网络科技有限公司'),('web_keywords','四川亦缘阁网络科技有限公司'),('web_description','四川亦缘阁网络科技有限公司'),('web_copyright','2023'),('web_tpl','default'),('web_logo','attachment/2023-04/2023042705063516842d.png'),('web_qrcode','attachment/2023-04/2023042713185516887s.jpg'),('web_phone','18284305034'),('web_qq','907850488'),('web_icp','蜀ICP备2021013916号-1'),('web_guestbuy','0'),('web_hotword','四川亦缘阁网络科技有限公司'),('web_tongji',''),('web_wlname','顺丰快递,申通快递,圆通快递,韵达快递,中通快递,天天快递,宅急送,EMS快递,百事汇通,全峰快递,德邦物流'),('wechat_admin_openid',''),('wap_logo','attachment/2023-04/2023042705063616878a.png'),('email_smtp',''),('email_port',''),('email_ssl','1'),('email_name',''),('email_pw',''),('email_nname',''),('email_admin',''),('sms_key','23306060'),('sms_admin','18955129593'),('sms_sign','第一楼市'),('point_state','1'),('point_reg','10'),('point_comment','50'),('point_login','0'),('point_money','100'),('cashout_min','10'),('cashout_fee','0.01'),('wechat_appid','wx8d74b946b84f199a'),('wechat_appsecret','e28760c2989d94ce7d906e8b6f936f53'),('wechat_token','xyshopBh7cBHxtqdALk'),('wechat_rssadd',''),('wechat_access_token',''),('wechat_menu',''),('tg_state','0'),('tg_fc1','0'),('tg_fc2','0'),('tg_fc3','0'),('web_checkphone','0'),('web_checkemail','0'),('sms_secret','5b0f65074988da17b3958f6452dd2821');
/*!40000 ALTER TABLE `xy_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_sign`
--

DROP TABLE IF EXISTS `xy_sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_sign` (
  `key` varchar(20) NOT NULL,
  `value` text NOT NULL,
  KEY `setting_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_sign`
--

LOCK TABLES `xy_sign` WRITE;
/*!40000 ALTER TABLE `xy_sign` DISABLE KEYS */;
INSERT INTO `xy_sign` VALUES ('sign_state','0'),('sign_text',''),('sign_point','10'),('sign_point_shouci','10'),('sign_point_lianxu',''),('sign_point_leiji','');
/*!40000 ALTER TABLE `xy_sign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_signlog`
--

DROP TABLE IF EXISTS `xy_signlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_signlog` (
  `signlog_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `signlog_point` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '奖励积分',
  `signlog_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '签到时间',
  `signlog_adate` date NOT NULL COMMENT '签到日期',
  `signlog_month` char(7) NOT NULL COMMENT '签到月份',
  `signlog_lx_day` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '连续签到天数',
  `signlog_lj_day` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '累计签到天数',
  `signlog_ip` char(15) NOT NULL COMMENT '签到者ip',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `user_logo` varchar(100) NOT NULL,
  PRIMARY KEY (`signlog_id`),
  KEY `signlog_adate` (`signlog_adate`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_signlog`
--

LOCK TABLES `xy_signlog` WRITE;
/*!40000 ALTER TABLE `xy_signlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_signlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_tguser`
--

DROP TABLE IF EXISTS `xy_tguser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_tguser` (
  `tg_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `tguser_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推广用户id',
  `tguser_name` varchar(20) NOT NULL COMMENT '推广用户名',
  `tguser_level` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '推广层级关系',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `user_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`tg_id`),
  KEY `tguser_id` (`tguser_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_tguser`
--

LOCK TABLES `xy_tguser` WRITE;
/*!40000 ALTER TABLE `xy_tguser` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_tguser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_user`
--

DROP TABLE IF EXISTS `xy_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `user_nickname` varchar(30) DEFAULT NULL,
  `user_pw` char(32) NOT NULL COMMENT '登录密码',
  `user_paypw` char(32) NOT NULL COMMENT '支付密码',
  `user_logo` varchar(200) NOT NULL,
  `user_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '账户余额',
  `user_money_cost` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '总消费额',
  `user_money_tg` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '推广总收益',
  `user_point` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '账户积分余额',
  `user_point_all` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '累计获得积分',
  `user_tname` varchar(10) NOT NULL COMMENT '用户姓名',
  `user_phone` char(11) NOT NULL COMMENT '用户手机',
  `user_tel` varchar(20) NOT NULL COMMENT '固定电话',
  `user_qq` varchar(10) NOT NULL COMMENT '用户QQ',
  `user_email` varchar(30) NOT NULL COMMENT '用户email',
  `user_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户注册时间',
  `user_ltime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户上次登录时间',
  `user_address` varchar(255) NOT NULL COMMENT '用户地址',
  `user_ordernum` int(10) unsigned NOT NULL DEFAULT '0',
  `user_ip` char(15) NOT NULL COMMENT '用户注册ip',
  `user_wx_openid` varchar(50) NOT NULL,
  `userlevel_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户等级id',
  `tguser_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推广用户id',
  `tguser_name` varchar(20) NOT NULL COMMENT '推广用户名',
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `user_wx_openid` (`user_wx_openid`),
  KEY `tguser_id` (`tguser_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_user`
--

LOCK TABLES `xy_user` WRITE;
/*!40000 ALTER TABLE `xy_user` DISABLE KEYS */;
INSERT INTO `xy_user` VALUES (46,'12345',NULL,'e10adc3949ba59abbe56e057f20f883e','','',0.0,0.0,0.0,10,10,'','18183320486','','','',1682550992,1682573474,'',1,'117.173.35.222','',1,0,''),(47,'123456',NULL,'e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e','',0.0,0.0,0.0,0,0,'','','','','907850488@qq.com',1682589513,1682667787,'',47,'117.173.35.222','',1,0,''),(48,'17891868055',NULL,'e10adc3949ba59abbe56e057f20f883e','','',0.0,0.0,0.0,10,10,'','17891868055','','','',1682590810,1682591584,'',3,'117.68.110.38','',1,0,''),(49,'ceshi',NULL,'62c8ad0a15d9d1ca38d5dee762a16e01','','',0.0,0.0,0.0,10,10,'','','','','test@qq.com',1682659819,1682659819,'',5,'182.46.218.235','',1,0,''),(50,'a123456',NULL,'dc483e80a7a0bd9ef71d8cf973673924','','',0.0,0.0,0.0,10,10,'','13760694212','','','',1682668623,1682670979,'',1,'113.109.79.4','',1,0,'');
/*!40000 ALTER TABLE `xy_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_useraddr`
--

DROP TABLE IF EXISTS `xy_useraddr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_useraddr` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `address_province` varchar(20) NOT NULL,
  `address_city` varchar(20) NOT NULL,
  `address_area` varchar(20) NOT NULL,
  `address_text` varchar(100) NOT NULL,
  `address_atime` int(10) unsigned NOT NULL DEFAULT '0',
  `address_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  `user_tname` varchar(10) NOT NULL,
  `user_phone` char(11) NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_useraddr`
--

LOCK TABLES `xy_useraddr` WRITE;
/*!40000 ALTER TABLE `xy_useraddr` DISABLE KEYS */;
INSERT INTO `xy_useraddr` VALUES (10,'四川省','成都市','金牛区','抚琴',1682551110,0,46,'12345','q','18183320486'),(11,'四川省','成都市','金牛区','抚琴南一巷',1682589563,0,47,'123456','q','18183320486'),(12,'湖南省','长沙市','天心区','呃呃呃额度多少的',1682590855,0,48,'17891868055','的的','17891864055'),(13,'北京','北京市','东城区','奥术大师',1682659869,1,49,'ceshi','背景是','13012345678'),(14,'上海','上海市','宝山区','sdfg',1682669518,0,50,'a123456','dfgdfg','13760694212');
/*!40000 ALTER TABLE `xy_useraddr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_userbank`
--

DROP TABLE IF EXISTS `xy_userbank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_userbank` (
  `userbank_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userbank_name` varchar(20) NOT NULL,
  `userbank_num` varchar(50) NOT NULL,
  `userbank_type` varchar(10) NOT NULL COMMENT '银行标识',
  `userbank_tname` varchar(10) NOT NULL COMMENT '账户姓名',
  `userbank_address` varchar(50) NOT NULL,
  `userbank_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定日期',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  PRIMARY KEY (`userbank_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_userbank`
--

LOCK TABLES `xy_userbank` WRITE;
/*!40000 ALTER TABLE `xy_userbank` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_userbank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_userlevel`
--

DROP TABLE IF EXISTS `xy_userlevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_userlevel` (
  `userlevel_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userlevel_name` varchar(10) NOT NULL COMMENT '用户组名',
  `userlevel_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户组最大值',
  `userlevel_logo` varchar(100) NOT NULL COMMENT '用户组图标',
  `userlevel_zhe` decimal(3,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '折扣率',
  `userlevel_up` varchar(10) NOT NULL DEFAULT 'auto' COMMENT '升级方式(auto自动/hand手动)',
  PRIMARY KEY (`userlevel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_userlevel`
--

LOCK TABLES `xy_userlevel` WRITE;
/*!40000 ALTER TABLE `xy_userlevel` DISABLE KEYS */;
INSERT INTO `xy_userlevel` VALUES (1,'普通用户',0,'',1.00,'auto');
/*!40000 ALTER TABLE `xy_userlevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_wechat_notice`
--

DROP TABLE IF EXISTS `xy_wechat_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_wechat_notice` (
  `notice_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '通知记录id',
  `notice_name` varchar(20) NOT NULL,
  `notice_type` varchar(20) NOT NULL,
  `notice_obj` varchar(5) NOT NULL,
  `notice_tpl` varchar(50) NOT NULL,
  `notice_tplid` varchar(100) NOT NULL,
  `notice_industry1` varchar(20) NOT NULL DEFAULT 'IT科技',
  `notice_industry2` varchar(20) NOT NULL DEFAULT '互联网|电子商务',
  `notice_example` text NOT NULL,
  `notice_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`notice_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_wechat_notice`
--

LOCK TABLES `xy_wechat_notice` WRITE;
/*!40000 ALTER TABLE `xy_wechat_notice` DISABLE KEYS */;
INSERT INTO `xy_wechat_notice` VALUES (1,'用户下单','order_add','user','OPENTM202297555','','IT科技','互联网|电子商务','亲，您的订单已创建成功，请及时付款\n订单号：180621101215088\n商品名称：iPhoneX 64GB 深空灰色\n订购数量：1台\n订单总额：5980元\n付款方式：微信支付\n',0),(2,'订单付款','order_pay','user','OPENTM202183094','','IT科技','互联网|电子商务','亲，您的订单已支付成功，正在为您备货，请耐心等待\n付款金额：5980元\n商品详情：iPhoneX 64GB 深空灰色\n支付方式：微信支付\n交易单号：180621101215088\n交易时间：2018年6月26日 18:36',0),(3,'订单发货','order_send','user','OPENTM410090504','','IT科技','互联网|电子商务','亲，您的订单已发货，请注意查收\n商品详情：iPhoneX 64GB 深空灰色\n发货时间：2018年6月26日 18:36\n物流公司：顺丰快递\n快递单号：123456789\n收货地址：河南省灵宝市新华路\n',0),(4,'订单关闭','order_close','user','OPENTM408744504','','IT科技','互联网|电子商务','亲，您的订单已被关闭\n商品名称：iPhoneX 64GB 深空灰色\n订单编号：180621101215088\n关闭原因：超时未付款',0),(5,'用户下单','order_add','admin','OPENTM202297555','','IT科技','互联网|电子商务','您好，您收到了一个新订单\n订单号：180621101215088\n商品名称：iPhoneX 64GB 深空灰色\n订购数量：1台\n订单总额：5980元\n付款方式：微信支付\n付款状态：未支付',0),(6,'订单付款','order_pay','admin','OPENTM400255038','','IT科技','互联网|电子商务','您好，您有一笔订单收款成功\n客户账号：\n订单编号：180621101215088\n付款金额：5980元\n付款时间：2018年6月26日 18:36\n商品信息：iPhoneX 64GB 深空灰色\n',0);
/*!40000 ALTER TABLE `xy_wechat_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_wechat_noticelog`
--

DROP TABLE IF EXISTS `xy_wechat_noticelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_wechat_noticelog` (
  `noticelog_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '通知记录id',
  `noticelog_tpl` varchar(50) NOT NULL,
  `noticelog_tplid` varchar(100) NOT NULL,
  `noticelog_name` varchar(100) NOT NULL COMMENT '通知名称',
  `noticelog_data` text NOT NULL COMMENT '通知内容',
  `noticelog_url` varchar(100) NOT NULL,
  `noticelog_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `noticelog_stime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '通知时间',
  `noticelog_state` varchar(10) NOT NULL DEFAULT 'new' COMMENT '通知状态',
  `noticelog_error` varchar(50) NOT NULL COMMENT '失败提醒',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `user_wx_openid` varchar(50) NOT NULL,
  PRIMARY KEY (`noticelog_id`),
  KEY `noticelog_state` (`noticelog_state`)
) ENGINE=MyISAM AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_wechat_noticelog`
--

LOCK TABLES `xy_wechat_noticelog` WRITE;
/*!40000 ALTER TABLE `xy_wechat_noticelog` DISABLE KEYS */;
INSERT INTO `xy_wechat_noticelog` VALUES (193,'OPENTM408744504','','亲，您的订单已被关闭','a:4:{s:5:\"first\";a:1:{s:5:\"value\";s:30:\"亲，您的订单已被关闭\";}s:8:\"keyword1\";a:1:{s:5:\"value\";s:57:\"925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项\";}s:8:\"keyword2\";a:1:{s:5:\"value\";s:15:\"230427175927435\";}s:8:\"keyword3\";a:1:{s:5:\"value\";s:30:\"订单未付款，超时关闭\";}}','http://www.yyg618.com/user.php?mod=order&act=view&id=230427175927435',1682677090,1682677090,'fail','user_wx_openid为空',47,'123456',''),(194,'OPENTM408744504','','亲，您的订单已被关闭','a:4:{s:5:\"first\";a:1:{s:5:\"value\";s:30:\"亲，您的订单已被关闭\";}s:8:\"keyword1\";a:1:{s:5:\"value\";s:57:\"925银镶嵌水滴碧玉吊坠和田玉纯银竹节玉项\";}s:8:\"keyword2\";a:1:{s:5:\"value\";s:15:\"230427180012277\";}s:8:\"keyword3\";a:1:{s:5:\"value\";s:30:\"订单未付款，超时关闭\";}}','http://www.yyg618.com/user.php?mod=order&act=view&id=230427180012277',1682677092,1682677092,'fail','user_wx_openid为空',47,'123456','');
/*!40000 ALTER TABLE `xy_wechat_noticelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy_yzmlog`
--

DROP TABLE IF EXISTS `xy_yzmlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy_yzmlog` (
  `yzmlog_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `yzmlog_user` varchar(30) NOT NULL COMMENT '接受用户',
  `yzmlog_value` varchar(10) NOT NULL COMMENT '验证码值',
  `yzmlog_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '验证码状态(0待验证/1已验证)',
  `yzmlog_ip` char(15) NOT NULL COMMENT '验证码发送ip',
  `yzmlog_sessid` varchar(50) NOT NULL COMMENT '发送用户sessionid',
  `yzmlog_url` varchar(255) NOT NULL COMMENT '发送来源',
  `yzmlog_checknum` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '验证码检测失败次数',
  `yzmlog_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码时间',
  `yzmlog_adate` date NOT NULL,
  PRIMARY KEY (`yzmlog_id`),
  KEY `yzmlog_user` (`yzmlog_user`),
  KEY `yzmlog_adate` (`yzmlog_adate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy_yzmlog`
--

LOCK TABLES `xy_yzmlog` WRITE;
/*!40000 ALTER TABLE `xy_yzmlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy_yzmlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'jifenpdcom'
--

--
-- Dumping routines for database 'jifenpdcom'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28 18:47:02
