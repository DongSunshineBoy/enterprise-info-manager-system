CREATE DATABASE travelWeb charset = utf8;
USE travelweb;
CREATE TABLE resort (
	id INT ( 11 ) auto_increment PRIMARY KEY,
	img VARCHAR ( 100 ) NOT NULL DEFAULT '',
	resortName CHAR ( 10 ) NOT NULL DEFAULT '',
	presentation VARCHAR ( 200 ) DEFAULT NULL,
	detail_id INT ( 11 ) 
) ENGINE = MyISAM,
CHARSET = utf8;
CREATE TABLE `flight` (
	`id` INT ( 11 ) NOT NULL AUTO_INCREMENT,
	`start_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`back_date` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
	`start_place` VARCHAR ( 10 ) NOT NULL DEFAULT '',
	`arrive_place` VARCHAR ( 10 ) NOT NULL DEFAULT '',
	`canContain` SMALLINT ( 6 ) DEFAULT NULL,
	`flight_name` VARCHAR ( 10 ) NOT NULL DEFAULT '',
	`flightLevel` CHAR ( 10 ) DEFAULT NULL,
	PRIMARY KEY ( `id` ) 
	) ENGINE = MyISAM AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8 CREATE TABLE `hotel` (
	`id` INT ( 11 ) NOT NULL AUTO_INCREMENT,
	`city` VARCHAR ( 10 ) NOT NULL DEFAULT '',
	`inDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`outDate` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
	`containNum` INT ( 11 ) DEFAULT NULL,
	`hotelName` VARCHAR ( 10 ) NOT NULL DEFAULT '',
	`hotelDesc` VARCHAR ( 100 ) NOT NULL DEFAULT '',
	`hotelLevel` CHAR ( 10 ) NOT NULL,
	PRIMARY KEY ( `id` ) 
	) ENGINE = MyISAM AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8 CREATE TABLE resortDetail (
	detail_id INT auto_increment PRIMARY KEY NOT NULL,
	detail_img VARCHAR ( 30 ) NOT NULL DEFAULT '',
	detail_desc VARCHAR ( 500 ) NOT NULL DEFAULT '',
	detail_remark VARCHAR ( 300 ) NOT NULL DEFAULT '' 
) ENGINE = myisam,
charset = utf8;
INSERT INTO resort ( img, resortName, presentation )
VALUES
	( 'images/uploads/220x135/auckland-city.jpg', '错开高峰去烟台，感受只有我的世界', '其实我之前对烟台没有太多的憧憬和预期，此次旅程算是给我一个别致的惊喜！' ),
	( 'images/uploads/220x135/rio-de-jainero.jpg', '体验里约的宗教节日：一面天堂，一面地狱', '基督像矗立在山顶的平台上。表情庄严又慈祥，感受到“上帝的伟大和胸怀”。' ),
	( 'images/uploads/220x135/stupa.jpg', '天慢慢从黑色转为深蓝，星空逐渐隐没', '腾格尔火山口中的活火山，有着令人生畏的地貌，是印尼最为壮观的风景之一。' ),
	( 'images/uploads/220x135/st-basil-2.jpg', '海风吹向莫斯科河畔俄罗斯的秋，有寒冷亦有金黄', '美丽的夏天衰萎啦，衰萎啦；明朗的日子正飞逝过去；在松林微睡的阴影中。' ),
	( 'images/uploads/220x135/castle-schwerin.jpg', '欧洲最棒的大酒店', '艺术与美食是巴塞罗那旅游度假的必选项。 气候宜人，风光旖旎，古迹遍布。' ),
	( 'images/uploads/220x135/egypt.jpg', '上天入地寻梦法老王国', '为了阅读世界这本书，我总是尽最大的努力追求“旅行，归来；再旅行，再归来的”…' ),
	( 'images/uploads/220x135/temple-kyoto.jpg', '玩儿不腻的日本', '京都，自带雅致的古都；庇护的神祉；大阪，历史与现代并存的日本第二大城市' ),
	( 'images/uploads/220x135/florence-italy.jpg', '意大利度假胜地', '人多到无法立足，就像在国内逛故宫一样，找个地方坐下来和大家一起晒太阳' ),
	( 'images/uploads/220x135/mount-rushmore.jpg', '拉什莫尔山国家纪念公园的四总统像', '公园内有四座美国历史上著名的前总统像，他们分别是华盛顿、杰斐逊、老罗斯福和林肯...' ),
	( 'images/uploads/220x135/paris.jpg', '梦游巴黎：比梦还浪漫的地方原来真的有', '我，做了一个梦，梦中有古典的房子，梦幻的花园，有数不清的花主题的油画...' ),
	( 'images/uploads/220x135/royal-versailes.jpg', '美食攻略指南，在豪华酒店里享受星级美味', '出门在外一定要选好酒店，晚上没有休息好，肯定会影响白天游玩的心情和状态。' ),
	( 'images/uploads/220x135/rome.jpg', '欧洲历史文化之旅：罗马，你是古老的传奇', '“母狼乳婴”的故事记载了有关创建罗马古城的传说：公元前7、8世纪，罗马国王...' );
INSERT INTO resortDetail ( detail_img, detail_desc, detail_remark, detail_id )
VALUES
	( 'images/uploads/220x135/auckland-city.jpg', '错开高峰去烟台，感受只有我的世界', '其实我之前对烟台没有太多的憧憬和预期，此次旅程算是给我一个别致的惊喜！', 5 ),
	( 'images/uploads/220x135/rio-de-jainero.jpg', '体验里约的宗教节日：一面天堂，一面地狱', '基督像矗立在山顶的平台上。表情庄严又慈祥，感受到“上帝的伟大和胸怀”。', 6 ),
	( 'images/uploads/220x135/stupa.jpg', '天慢慢从黑色转为深蓝，星空逐渐隐没', '腾格尔火山口中的活火山，有着令人生畏的地貌，是印尼最为壮观的风景之一。', 7 ),
	( 'images/uploads/220x135/st-basil-2.jpg', '海风吹向莫斯科河畔俄罗斯的秋，有寒冷亦有金黄', '美丽的夏天衰萎啦，衰萎啦；明朗的日子正飞逝过去；在松林微睡的阴影中。', 8 ),
	( 'images/uploads/220x135/castle-schwerin.jpg', '欧洲最棒的大酒店', '艺术与美食是巴塞罗那旅游度假的必选项。 气候宜人，风光旖旎，古迹遍布。', 9 ),
	( 'images/uploads/220x135/egypt.jpg', '上天入地寻梦法老王国', '为了阅读世界这本书，我总是尽最大的努力追求“旅行，归来；再旅行，再归来的”…', 10 ),
	( 'images/uploads/220x135/temple-kyoto.jpg', '玩儿不腻的日本', '京都，自带雅致的古都；庇护的神祉；大阪，历史与现代并存的日本第二大城市', 11 ),
	( 'images/uploads/220x135/florence-italy.jpg', '意大利度假胜地', '人多到无法立足，就像在国内逛故宫一样，找个地方坐下来和大家一起晒太阳', 12 ),
	( 'images/uploads/220x135/mount-rushmore.jpg', '拉什莫尔山国家纪念公园的四总统像', '公园内有四座美国历史上著名的前总统像，他们分别是华盛顿、杰斐逊、老罗斯福和林肯...', 13 ),
	( 'images/uploads/220x135/paris.jpg', '梦游巴黎：比梦还浪漫的地方原来真的有', '我，做了一个梦，梦中有古典的房子，梦幻的花园，有数不清的花主题的油画...', 14 ),
	( 'images/uploads/220x135/royal-versailes.jpg', '美食攻略指南，在豪华酒店里享受星级美味', '出门在外一定要选好酒店，晚上没有休息好，肯定会影响白天游玩的心情和状态。', 15 ),
	( 'images/uploads/220x135/rome.jpg', '欧洲历史文化之旅：罗马，你是古老的传奇', '“母狼乳婴”的故事记载了有关创建罗马古城的传说：公元前7、8世纪，罗马国王...', 16 );