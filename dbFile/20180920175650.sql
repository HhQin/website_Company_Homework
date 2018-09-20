/*
MySQL Backup
Database: mybatis
Backup Time: 2018-09-20 17:56:50
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `mybatis`.`t_news`;
DROP TABLE IF EXISTS `mybatis`.`t_product`;
DROP TABLE IF EXISTS `mybatis`.`t_professor`;
DROP TABLE IF EXISTS `mybatis`.`users`;
CREATE TABLE `t_news` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `simpleIntroduce` varchar(25536) DEFAULT NULL,
  `particularIntroduce` varchar(25536) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
CREATE TABLE `t_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(256) DEFAULT NULL,
  `productIntroduce` varchar(25536) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
CREATE TABLE `t_professor` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `professorName` varchar(255) DEFAULT NULL,
  `professorIntroduce` varchar(25536) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
BEGIN;
LOCK TABLES `mybatis`.`t_news` WRITE;
DELETE FROM `mybatis`.`t_news`;
INSERT INTO `mybatis`.`t_news` (`id`,`title`,`simpleIntroduce`,`particularIntroduce`) VALUES (1, 'testTitle', 'testSimpleIntroduce', 'testParticularIntroduce'),(2, 'testTitle', 'testSimpleIntroduce', 'testParticularIntroduce');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `mybatis`.`t_product` WRITE;
DELETE FROM `mybatis`.`t_product`;
INSERT INTO `mybatis`.`t_product` (`id`,`productName`,`productIntroduce`) VALUES (5, 'SiaoMi Notebook Pro', 'The 12.5-inch siaomi laptop features ultra-thin, portable, metal body like the apple MacBook, while the 15.6-inch model features gaming capabilities. Offers a fourth-generation core i7 processor with a built-in NVIDIAGeForce GTX 760M graphics card and 8GB memory.'),(6, 'SiaoMi No.9 balancing car', 'No. 9 is small in size and weighs only 12.8kg. It has super high performance and can reach a speed of 16km/h. It is equipped with two direct drive motors, with a total output power of up to 700 watts and instantaneous power of over 2,000 watts.'),(7, 'SiaoMi Mix2', 'The 5.99-inch display has the same holding feel as the 5.5-inch traditional 16:9 phone. The millet MIX2 USES a four-curved ceramic body, the camera decoration ring is all 18K gold-plated, and the body frame part is made of 7 series aluminum.');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `mybatis`.`t_professor` WRITE;
DELETE FROM `mybatis`.`t_professor`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `mybatis`.`users` WRITE;
DELETE FROM `mybatis`.`users`;
INSERT INTO `mybatis`.`users` (`id`,`NAME`,`age`) VALUES (21, 'Lisi', 20),(22, 'Lisi', 20),(23, 'Lisi', 20),(24, 'Lisi', 20),(26, 'Lisi', 20),(27, 'Lisi', 20),(28, 'Lisi', 20),(29, 'Lisi', 20),(30, 'Lisi', 20),(31, 'zhangsan', 22);
UNLOCK TABLES;
COMMIT;
