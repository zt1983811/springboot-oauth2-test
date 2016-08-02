-- Dump created by MySQL pump utility, version: 5.7.13, Linux (x86_64)
-- Dump start time: Mon Aug  1 13:44:17 2016
-- Server version: 5.7.13

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_TIME_ZONE=@@TIME_ZONE;
SET TIME_ZONE='+00:00';
SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT;
SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS;
SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION;
SET NAMES utf8mb4;
-- CREATE DATABASE /*!32312 IF NOT EXISTS*/ `toms` /*!40100 DEFAULT CHARACTER SET utf8 */;
CREATE TABLE `authority` (
`name` varchar(50) NOT NULL,
PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
CREATE TABLE `AGENCIES` (
`AGID` int(11) unsigned NOT NULL AUTO_INCREMENT,
`NAME` varchar(100) DEFAULT NULL,
`REP_NAME` varchar(50) DEFAULT NULL,
`GST` varchar(50) DEFAULT NULL,
`QST` varchar(50) DEFAULT NULL,
`IATA` varchar(50) DEFAULT NULL,
`ADDRESS` varchar(100) DEFAULT NULL,
`CITY` varchar(200) DEFAULT NULL,
`REGION` varchar(50) DEFAULT NULL,
`COUNTRY` varchar(50) DEFAULT NULL,
`ZIP` varchar(20) DEFAULT NULL,
`TEL` varchar(20) DEFAULT NULL,
`EMAIL` varchar(50) DEFAULT NULL,
PRIMARY KEY (`AGID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8
;
INSERT INTO `authority` VALUES ("ROLE_ADMIN"),("ROLE_USER");
INSERT INTO `AGENCIES` VALUES (1,"wingbuddy","WB",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
CREATE TABLE `oauth_access_token` (
`token_id` varchar(256) DEFAULT NULL,
`token` blob,
`authentication_id` varchar(256) DEFAULT NULL,
`user_name` varchar(256) DEFAULT NULL,
`client_id` varchar(256) DEFAULT NULL,
`authentication` blob,
`refresh_token` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
CREATE TABLE `oauth_refresh_token` (
`token_id` varchar(256) DEFAULT NULL,
`token` blob,
`authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
CREATE TABLE `user` (
`username` varchar(50) NOT NULL,
`email` varchar(50) DEFAULT NULL,
`password` varchar(500) DEFAULT NULL,
`activated` tinyint(1) DEFAULT '0',
`activationkey` varchar(50) DEFAULT NULL,
`resetpasswordkey` varchar(50) DEFAULT NULL,
PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
CREATE TABLE `user_authority` (
`username` varchar(50) NOT NULL,
`authority` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
INSERT INTO `user` VALUES ("admin","admin@mail.me","b8f57d6d6ec0a60dfe2e20182d4615b12e321cad9e2979e0b9f81e0d6eda78ad9b6dcfe53e4e22d1",1,NULL,NULL),("rajith","rajith@abc.com","d6dfa9ff45e03b161e7f680f35d90d5ef51d243c2a8285aa7e11247bc2c92acde0c2bb626b1fac74",1,NULL,NULL),("user","user@mail.me","d6dfa9ff45e03b161e7f680f35d90d5ef51d243c2a8285aa7e11247bc2c92acde0c2bb626b1fac74",1,NULL,NULL);
INSERT INTO `user_authority` VALUES ("admin","ROLE_ADMIN"),("admin","ROLE_USER"),("rajith","ROLE_USER"),("user","ROLE_USER");
USE `toms`;
ALTER TABLE `user_authority` ADD UNIQUE KEY `user_authority_idx_1` (`username`,`authority`);
ALTER TABLE `user_authority` ADD KEY `authority` (`authority`);
ALTER TABLE `user_authority` ADD CONSTRAINT `user_authority_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`);
ALTER TABLE `user_authority` ADD CONSTRAINT `user_authority_ibfk_2` FOREIGN KEY (`authority`) REFERENCES `authority` (`name`);
SET TIME_ZONE=@OLD_TIME_ZONE;
SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT;
SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS;
SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
-- Dump end time: Mon Aug  1 13:44:18 2016
