/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.40 : Database - kroraina
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kroraina` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kroraina`;

/*Table structure for table `backstage` */

DROP TABLE IF EXISTS `backstage`;

CREATE TABLE `backstage` (
  `User_content` varchar(2000) DEFAULT NULL,
  `content_time` date DEFAULT NULL,
  `ban_state` smallint(2) DEFAULT NULL,
  `unblocking_time` datetime DEFAULT NULL,
  `fk_auto_increace` int(20) NOT NULL,
  `fk_User_name` varchar(18) NOT NULL,
  KEY `FK_backstage` (`fk_auto_increace`),
  KEY `FK_backstage1` (`fk_User_name`),
  CONSTRAINT `FK_backstage` FOREIGN KEY (`fk_auto_increace`) REFERENCES `main` (`auto_increace`),
  CONSTRAINT `FK_backstage1` FOREIGN KEY (`fk_User_name`) REFERENCES `user` (`User_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `backstage` */

/*Table structure for table `discuss` */

DROP TABLE IF EXISTS `discuss`;

CREATE TABLE `discuss` (
  `fk_User_name` varchar(18) NOT NULL,
  `discuss_cotent` varchar(200) DEFAULT NULL,
  `discuss_time` datetime DEFAULT NULL,
  KEY `FK_discuss` (`fk_User_name`),
  CONSTRAINT `FK_discuss` FOREIGN KEY (`fk_User_name`) REFERENCES `user` (`User_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `discuss` */

/*Table structure for table `main` */

DROP TABLE IF EXISTS `main`;

CREATE TABLE `main` (
  `auto_increace` int(20) NOT NULL,
  `fk_User_name` varchar(18) NOT NULL,
  `ban_state` smallint(2) DEFAULT '0',
  `register_date` datetime DEFAULT '2019-11-21 09:07:30',
  PRIMARY KEY (`auto_increace`),
  KEY `FK_main` (`fk_User_name`),
  CONSTRAINT `FK_main` FOREIGN KEY (`fk_User_name`) REFERENCES `user` (`User_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `main` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) NOT NULL,
  `AGE` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`ID`,`NAME`,`AGE`) values (2,'abcdd',80);

/*Table structure for table `topic` */

DROP TABLE IF EXISTS `topic`;

CREATE TABLE `topic` (
  `fk_User_name` varchar(18) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(4000) DEFAULT NULL,
  `content_time` datetime NOT NULL DEFAULT '2019-11-21 09:47:30',
  KEY `FK_topic` (`fk_User_name`),
  CONSTRAINT `FK_topic` FOREIGN KEY (`fk_User_name`) REFERENCES `user` (`User_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `topic` */

insert  into `topic`(`fk_User_name`,`title`,`content`,`content_time`) values ('acb','粽香传习语 家国情绵长','节分端午自谁言','2019-12-10 13:40:48'),('acb','中国公布核酸检测量，美日震惊','近日，中国官方公布的全国医疗卫生机构已累计进行新冠病毒核酸检测9041万人/份的数据，在国际上引起不少关注。','2019-12-10 14:25:52'),('acb','红场大阅兵后 普京作出这个手势！','非常时期，俄罗斯又阅兵了。1.4万受阅士兵，各种高精尖武器，亮相莫斯科红场。','2019-12-10 14:57:22'),('acb','云南一艘载27人船只在澜沧江翻沉 目前已搜救到9人','据省交通运输厅通报，6月25日凌晨，一艘载有27人的船只在西双版纳傣族自治州境内澜沧江与南班河交汇处发生翻沉，目前已搜救到9人。','2019-12-10 15:04:54'),('acb','扇贝还想“跑路”？北斗系统立功了！','扇贝多次跑路的獐子岛因涉嫌信息披露违法违规在2018年2月被证监会立案调查。值得一提的是，证监会在对獐子岛的调查过程中还使用了科技执法手段——借助北斗卫星导航系统，对公司27条采捕船只数百余万条海上航行定位数据进行分析。','2019-11-21 09:47:30'),('acb','“巨雷”将至:32家企业进入年报披露倒计时 退市风险“山雨欲来”','截至6月24日，还有至少32家上市公司未披露2019年年度报告。这些尚未披露年报的上市公司大多面临经营困境，甚至退市风险。','2019-11-21 09:47:30'),(NULL,'杨丞琳追《乘风破浪的姐姐》到凌晨 夸宁静美炸天','浪娱乐讯 25日凌晨4点多，杨丞琳[微博]追完《乘风破浪的姐姐》在微博发文，“追综艺追到此刻，宁静[微博]姐姐真的美炸天，我也要跟她一样保持地这么好。”粉丝们纷纷表示，“姐你已经保持得很好了”，也有人笑称原来大家都一样喜欢熬夜，是夜猫子。','2019-11-21 09:47:30'),(NULL,'EA Play：《星球大战：战机中队》实机演示首度公开','在今日（6月19日）举办的EA Play Live直播活动中，《星球大战：战机中队》公开了全新的实机演示，展示了单人模式和5V5团战“Dogfight”等多人模式玩法。','2019-11-21 09:47:30'),(NULL,'《原神》开放世界BOSS有多难 看各平台主播各显神通','自由城邦蒙德吹拂的清风，与岩君之国璃月富饶的土地，都在呼唤你一起冒险！米哈游自研的开放世界冒险游戏《原神》‘启程测试’火热进行中，本次测试为限号删档付费测试，测试平台为PC、iOS和Android。除了大量旅行者外，更有数百名主播加入提瓦特冒险之旅，主播们为了挑战游戏中的BOSS各出奇招，直播间人气持续火爆！','2019-11-21 09:47:30'),(NULL,'7名华东交大学生错过毕业典礼 学校次日暖心补办','原本毕业典礼是定在了6月24日，但24日可能会下雨，就把毕业典礼提前了一天。”该校相关教师向记者介绍，华东交大千人毕业典礼已于昨日（6月23日）完成。有7名毕业生由于计划返校时间晚、发热隔离等原因，缺席了这场毕业典礼。为不给这些学生的毕业季留下遗憾，华东交大决定为他们补办一场小型毕业典礼。','2019-11-21 09:47:30'),(NULL,'老伯洗空调洗出新冠肺炎？医生发现病因不简单','随着气温逐渐升高，不论公共场所还是自己家里，都开起了空调。上海有一位67岁的刘老伯平时特别爱干净，这不，在家洗空调后，竟遭遇了糟心事，甚至一度怀疑自己得了新冠肺炎…','2019-11-21 09:47:30'),(NULL,'北京平谷对重点行业8570人测咽拭子 结果均为阴性','新京报快讯 据幸福平谷微信公众号消息，6月16日起，北京市应急响应级别由三级调至二级。在市委市政府的领导下，我区迅速反应，争分夺秒，严格落实各项防控措施，对重点场所和人群进行检测，对外环境进行监测，并及时公布检测结果和相关工作进展。','2019-11-21 09:47:30'),(NULL,'黄光裕归来：失去首富11年的国美，能否东山再起','6月24日晚间，京法网事官微发布消息，2020年6月24日，北京市第一中级人民法院根据刑罚执行机关的报请，依法裁定对黄光裕予以假释，假释考验期限自假释之日起至2021年2月16日止。','2019-11-21 09:47:30'),(NULL,'云南盈江发生泥石流 3人失联','记者25日从云南省德宏州消防救援支队指挥中心获悉：据云南省德宏州政府办公室消息，2020年6月24日19时05分许，云南省盈江县弄璋镇古里卡村古里卡老寨下南姐双杆坡发生局部泥石流灾情，造成看守香茅草、坚果地的一处窝铺及牲口圈被冲毁。','2019-11-21 09:47:30'),(NULL,'美国警察又摊上大事了','在被勒令坐下后，撞车的男子指向不远处一名身着警服的当班女警，说“警察应当是礼貌的”。然而他还没有说完就遭打断。男警察站在他面前说，“我没值班啊，我在休假。给我坐下，我可以**”而他不远处的女同事附和道“坐下，照他说的坐下。”','2019-11-21 09:47:30'),(NULL,'新华国际时评：美“碰瓷”中国徒增笑耳','美国和俄罗斯日前在维也纳举行新一轮军控对话。这本是美俄两家的事，与中国无关，但令人大跌眼镜的是，率团参加对话的美国军控问题特别代表马歇尔·比林斯利，却处心积虑地操弄中国话题，一再“碰瓷”中国。','2019-11-21 09:47:30'),(NULL,'同样是警察资料被“黑”，推特这回行动倒是快！','据美国商业内幕网站报道，一家给美国200多个警察部门提供IT服务的公司近日遭到黑客入侵，大量储存在该公司服务器上的邮件被黑客们泄露到网络上，包括境外社交平台推特。','2019-11-21 09:47:30'),(NULL,'欧洲要抛开美国建高端海军？美媒：他们的规模将更小','据美国《防务新闻》网站报道，多年来，北约一直视美国海军为海上力量的中心，而欧洲海军则是补充力量。在后冷战时代，欧洲海军将重点放在反恐和反海盗等低端任务上。','2019-11-21 09:47:30'),(NULL,'《柳叶刀》子刊：度拉糖肽改善糖尿病患者的认知衰退','糖尿病是认知障碍乃至痴呆症的独立危险因素。因此，控制血糖及相关并发症也是预防痴呆症的潜在目标之一。然而，长期以来，尚无疗法被证明可减轻糖尿病患者的认知能力下降程度。','2019-11-21 09:47:30'),(NULL,'大鸟爆发！沈梓捷26+17 深圳胜天津取复赛首胜','北京时间6月24日，重启的CBA联赛进入到第五个比赛日，同样都是全华班的天津对阵深圳。沈梓捷砍下26分17篮板，杨林祎贡献20分，最终深圳以97-83战胜天津，迎来复赛以来的首场胜利。而天津则遭遇三连败。','2019-11-21 09:47:30'),(NULL,'一代名将在皇马荒废自我 转投穆帅手下终成正果','2007年，23岁的斯内德转会皇马，但在伯纳乌没有打出名堂。在自传中，斯内德回忆：“我没有意识到，转会皇马意味着，我同时进入了马德里的夜生活，我沉浸其中。当时我很年轻，很成功，喜欢吸引注意，我不吸毒，但却酗酒，有着皇马明星的摇滚式生活，当时所有这一切都被掩盖住了。”','2019-11-21 09:47:30');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `User_name` varchar(18) NOT NULL,
  `User_password` int(10) NOT NULL,
  `User_slogen` varchar(40) NOT NULL DEFAULT '少说话，多背锅',
  PRIMARY KEY (`User_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`User_name`,`User_password`,`User_slogen`) values ('aasdas',443,'少说话，多背锅'),('ab',776,'少说话，多背锅'),('acb',776,'少说话，多背锅'),('cba',123,'少说话，多背锅'),('lihao',345,'少说话，多背锅'),('wanglingbin',646899949,'少说话，多背锅'),('yanrunzhi',123,'少说话，多背锅'),('zhongyu',1820,'少说话，多背锅');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
