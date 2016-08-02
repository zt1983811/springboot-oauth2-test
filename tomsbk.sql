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
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `toms` /*!40100 DEFAULT CHARACTER SET utf8 */;
CREATE TABLE `toms`.`authority` (
`name` varchar(50) NOT NULL,
PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
CREATE TABLE `toms`.`AGENCIES` (
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
INSERT INTO `toms`.`authority` VALUES ("ROLE_ADMIN"),("ROLE_USER");
INSERT INTO `toms`.`AGENCIES` VALUES (1,"wingbuddy","WB",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
CREATE TABLE `toms`.`oauth_access_token` (
`token_id` varchar(256) DEFAULT NULL,
`token` blob,
`authentication_id` varchar(256) DEFAULT NULL,
`user_name` varchar(256) DEFAULT NULL,
`client_id` varchar(256) DEFAULT NULL,
`authentication` blob,
`refresh_token` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
CREATE TABLE `toms`.`oauth_refresh_token` (
`token_id` varchar(256) DEFAULT NULL,
`token` blob,
`authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
CREATE TABLE `toms`.`user` (
`username` varchar(50) NOT NULL,
`email` varchar(50) DEFAULT NULL,
`password` varchar(500) DEFAULT NULL,
`activated` tinyint(1) DEFAULT '0',
`activationkey` varchar(50) DEFAULT NULL,
`resetpasswordkey` varchar(50) DEFAULT NULL,
PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
CREATE TABLE `toms`.`user_authority` (
`username` varchar(50) NOT NULL,
`authority` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
INSERT INTO `toms`.`oauth_access_token` VALUES ("d4aae9e1f98829dccc7fa97c0bcc6e2e","¨\Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙\Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ\‹\Á\–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0VG3?˙xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valueq\0~\0xpt\0$84d60be5-252d-4c2a-bedb-d7bb10d4a1c6sq\0~\0	w\0\0V·ñêπxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^\˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writext\0bearert\0$67ff84dc-a5b4-4b7d-b650-c33ebbdf3f9c","d115b520b380e5ed7baf1642c1c526ba","admin","rajithapp","¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^\˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0ê\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_ADMINsq\0~\0\rt\0	ROLE_USERxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0	rajithappsr\0%java.util.Collections$UnmodifiableMap\Ò•®˛t\ıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0%w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0	ROLE_USERsq\0~\0\rt\0\nROLE_ADMINxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0$w\0\0\0?@\0\0\0\0\0\0xsq\0~\0%w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0ê\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\04sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0 q\0~\0!q\0~\0q\0~\0x\0psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0ê\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0\"sr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0ê\0\0xpw\0\0\0q\0~\0q\0~\0xpt\0admin","7e2ab58160f19b304da0c1707bb62fd4");
INSERT INTO `toms`.`oauth_refresh_token` VALUES ("7e2ab58160f19b304da0c1707bb62fd4","¨\Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valuet\0Ljava/lang/String;xpt\0$84d60be5-252d-4c2a-bedb-d7bb10d4a1c6sr\0java.util.DatehjÅKYt\0\0xpw\0\0V·ñêπx","¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^\˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0ê\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_ADMINsq\0~\0\rt\0	ROLE_USERxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0	rajithappsr\0%java.util.Collections$UnmodifiableMap\Ò•®˛t\ıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0%w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0	ROLE_USERsq\0~\0\rt\0\nROLE_ADMINxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0$w\0\0\0?@\0\0\0\0\0\0xsq\0~\0%w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0ê\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\04sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0 q\0~\0!q\0~\0q\0~\0x\0psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0ê\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0\"sr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0ê\0\0xpw\0\0\0q\0~\0q\0~\0xpt\0admin");
INSERT INTO `toms`.`user` VALUES ("admin","admin@mail.me","b8f57d6d6ec0a60dfe2e20182d4615b12e321cad9e2979e0b9f81e0d6eda78ad9b6dcfe53e4e22d1",1,NULL,NULL),("rajith","rajith@abc.com","d6dfa9ff45e03b161e7f680f35d90d5ef51d243c2a8285aa7e11247bc2c92acde0c2bb626b1fac74",1,NULL,NULL),("user","user@mail.me","d6dfa9ff45e03b161e7f680f35d90d5ef51d243c2a8285aa7e11247bc2c92acde0c2bb626b1fac74",1,NULL,NULL);
INSERT INTO `toms`.`user_authority` VALUES ("admin","ROLE_ADMIN"),("admin","ROLE_USER"),("rajith","ROLE_USER"),("user","ROLE_USER");
USE `toms`;
ALTER TABLE `toms`.`user_authority` ADD UNIQUE KEY `user_authority_idx_1` (`username`,`authority`);
ALTER TABLE `toms`.`user_authority` ADD KEY `authority` (`authority`);
ALTER TABLE `toms`.`user_authority` ADD CONSTRAINT `user_authority_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`);
ALTER TABLE `toms`.`user_authority` ADD CONSTRAINT `user_authority_ibfk_2` FOREIGN KEY (`authority`) REFERENCES `authority` (`name`);
SET TIME_ZONE=@OLD_TIME_ZONE;
SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT;
SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS;
SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
-- Dump end time: Mon Aug  1 13:44:18 2016
