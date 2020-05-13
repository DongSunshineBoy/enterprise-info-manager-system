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
	( 'images/uploads/220x135/auckland-city.jpg', '���߷�ȥ��̨������ֻ���ҵ�����', '��ʵ��֮ǰ����̨û��̫����㽺�Ԥ�ڣ��˴��ó����Ǹ���һ�����µľ�ϲ��' ),
	( 'images/uploads/220x135/rio-de-jainero.jpg', '������Լ���ڽ̽��գ�һ�����ã�һ�����', '����������ɽ����ƽ̨�ϡ�����ׯ���ִ��飬���ܵ����ϵ۵�ΰ����ػ�����' ),
	( 'images/uploads/220x135/stupa.jpg', '�������Ӻ�ɫתΪ�������ǿ�����û', '�ڸ����ɽ���еĻ��ɽ������������η�ĵ�ò����ӡ����Ϊ׳�۵ķ羰֮һ��' ),
	( 'images/uploads/220x135/st-basil-2.jpg', '���紵��Ī˹�ƺ��϶���˹����к������н��', '����������˥ή����˥ή�������ʵ����������Ź�ȥ��������΢˯����Ӱ�С�' ),
	( 'images/uploads/220x135/castle-schwerin.jpg', 'ŷ������Ĵ�Ƶ�', '��������ʳ�ǰ����������ζȼٵı�ѡ� �������ˣ�����컣��ż��鲼��' ),
	( 'images/uploads/220x135/egypt.jpg', '�������Ѱ�η�������', 'Ϊ���Ķ������Ȿ�飬�����Ǿ�����Ŭ��׷�����У������������У��ٹ����ġ���' ),
	( 'images/uploads/220x135/temple-kyoto.jpg', '���������ձ�', '�������Դ����µĹŶ����ӻ����������棬��ʷ���ִ�������ձ��ڶ������' ),
	( 'images/uploads/220x135/florence-italy.jpg', '������ȼ�ʤ��', '�˶ൽ�޷����㣬�����ڹ��ڹ�ʹ�һ�����Ҹ��ط��������ʹ��һ��ɹ̫��' ),
	( 'images/uploads/220x135/mount-rushmore.jpg', '��ʲĪ��ɽ���Ҽ��԰������ͳ��', '��԰��������������ʷ��������ǰ��ͳ�����Ƿֱ��ǻ�ʢ�١����ѷ������˹�����ֿ�...' ),
	( 'images/uploads/220x135/paris.jpg', '���ΰ��裺���λ������ĵط�ԭ�������', '�ң�����һ���Σ������йŵ�ķ��ӣ��λõĻ�԰����������Ļ�������ͻ�...' ),
	( 'images/uploads/220x135/royal-versailes.jpg', '��ʳ����ָ�ϣ��ں����Ƶ��������Ǽ���ζ', '��������һ��Ҫѡ�þƵ꣬����û����Ϣ�ã��϶���Ӱ���������������״̬��' ),
	( 'images/uploads/220x135/rome.jpg', 'ŷ����ʷ�Ļ�֮�ã��������ǹ��ϵĴ���', '��ĸ����Ӥ���Ĺ��¼������йش�������ųǵĴ�˵����Ԫǰ7��8���ͣ��������...' );
INSERT INTO resortDetail ( detail_img, detail_desc, detail_remark, detail_id )
VALUES
	( 'images/uploads/220x135/auckland-city.jpg', '���߷�ȥ��̨������ֻ���ҵ�����', '��ʵ��֮ǰ����̨û��̫����㽺�Ԥ�ڣ��˴��ó����Ǹ���һ�����µľ�ϲ��', 5 ),
	( 'images/uploads/220x135/rio-de-jainero.jpg', '������Լ���ڽ̽��գ�һ�����ã�һ�����', '����������ɽ����ƽ̨�ϡ�����ׯ���ִ��飬���ܵ����ϵ۵�ΰ����ػ�����', 6 ),
	( 'images/uploads/220x135/stupa.jpg', '�������Ӻ�ɫתΪ�������ǿ�����û', '�ڸ����ɽ���еĻ��ɽ������������η�ĵ�ò����ӡ����Ϊ׳�۵ķ羰֮һ��', 7 ),
	( 'images/uploads/220x135/st-basil-2.jpg', '���紵��Ī˹�ƺ��϶���˹����к������н��', '����������˥ή����˥ή�������ʵ����������Ź�ȥ��������΢˯����Ӱ�С�', 8 ),
	( 'images/uploads/220x135/castle-schwerin.jpg', 'ŷ������Ĵ�Ƶ�', '��������ʳ�ǰ����������ζȼٵı�ѡ� �������ˣ�����컣��ż��鲼��', 9 ),
	( 'images/uploads/220x135/egypt.jpg', '�������Ѱ�η�������', 'Ϊ���Ķ������Ȿ�飬�����Ǿ�����Ŭ��׷�����У������������У��ٹ����ġ���', 10 ),
	( 'images/uploads/220x135/temple-kyoto.jpg', '���������ձ�', '�������Դ����µĹŶ����ӻ����������棬��ʷ���ִ�������ձ��ڶ������', 11 ),
	( 'images/uploads/220x135/florence-italy.jpg', '������ȼ�ʤ��', '�˶ൽ�޷����㣬�����ڹ��ڹ�ʹ�һ�����Ҹ��ط��������ʹ��һ��ɹ̫��', 12 ),
	( 'images/uploads/220x135/mount-rushmore.jpg', '��ʲĪ��ɽ���Ҽ��԰������ͳ��', '��԰��������������ʷ��������ǰ��ͳ�����Ƿֱ��ǻ�ʢ�١����ѷ������˹�����ֿ�...', 13 ),
	( 'images/uploads/220x135/paris.jpg', '���ΰ��裺���λ������ĵط�ԭ�������', '�ң�����һ���Σ������йŵ�ķ��ӣ��λõĻ�԰����������Ļ�������ͻ�...', 14 ),
	( 'images/uploads/220x135/royal-versailes.jpg', '��ʳ����ָ�ϣ��ں����Ƶ��������Ǽ���ζ', '��������һ��Ҫѡ�þƵ꣬����û����Ϣ�ã��϶���Ӱ���������������״̬��', 15 ),
	( 'images/uploads/220x135/rome.jpg', 'ŷ����ʷ�Ļ�֮�ã��������ǹ��ϵĴ���', '��ĸ����Ӥ���Ĺ��¼������йش�������ųǵĴ�˵����Ԫǰ7��8���ͣ��������...', 16 );