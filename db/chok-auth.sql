-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: chok-auth
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `oauth_access_token`
--

DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `authentication` mediumblob,
  `refresh_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token`
--

LOCK TABLES `oauth_access_token` WRITE;
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
INSERT INTO `oauth_access_token` VALUES ('5b006c15445e022dbb68b0000dcb7878','¨\Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙\Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ\‹\Á\–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0g,-\ŸZxsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valueq\0~\0xpt\0$6701645e-bff6-46f1-b5f9-cce2d63b614fsq\0~\0	w\0\0g,-\ŸYxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0foot\0readt\0writext\0bearert\0$9f437fa0-ecc7-4071-8098-bab36359b84a','7d600c276b5409c6966fbcafddcf27db','root','chok-demo','¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0com.admin.domain.OauthAuthority\0\0\0\0\0\0\0\0L\0	authorityt\0Ljava/lang/String;L\0usernameq\0~\0xpt\0SUPER_ADMINt\0rootxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0	chok-demosr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0codet\0dkFvoBt\0\ngrant_typet\0authorization_codet\0\rresponse_typet\0codet\0redirect_urit\0%http://localhost:9093/chok-demo/logint\0statet\0e26X8Ot\0	client_idq\0~\0xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0foot\0readt\0writexsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0%http://localhost:9093/chok-demo/loginpsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsq\0~\0+w\0\0\0?@\0\0\0\0\0q\0~\0\"xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0Ù\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\08sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0Ù\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 59C4636A306399C7CDA98F70410A131Epsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0Ù\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0(sr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0Ù\0\0xpw\0\0\0q\0~\0xpt\0root','82e8f967d96f749c5ee3e9b08e9820e0'),('2238f0d3ada1b8fe26ef9d7a808bddf4','¨\Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙\Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ\‹\Á\–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0g,-mjxsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valueq\0~\0xpt\0$19b0e1ae-deb9-4c19-8b3f-69208c21fbc9sq\0~\0	w\0\0g,-mixsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0foot\0readt\0writext\0bearert\0$3709f555-1d27-43be-8628-5b4eefae651b','d04574625434b31eee27c1bf212a0706','admin','chok-demo','¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0com.admin.domain.OauthAuthority\0\0\0\0\0\0\0\0L\0	authorityt\0Ljava/lang/String;L\0usernameq\0~\0xpt\0DEFAULTt\0adminsq\0~\0\rt\0USERq\0~\0xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0	chok-demosr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0codet\03pwUuPt\0\ngrant_typet\0authorization_codet\0\rresponse_typet\0codet\0redirect_urit\0%http://localhost:9093/chok-demo/logint\0statet\0wHRO9yt\0	client_idq\0~\0\Zxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0foot\0readt\0writexsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0%http://localhost:9093/chok-demo/loginpsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0$xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0Ù\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\0:sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0Ù\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 08B01AC2B80EBE6D7E8C55E263DA8FDCpsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0Ù\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0*sr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0Ù\0\0xpw\0\0\0q\0~\0q\0~\0xpt\0admin','6aec44abba0cf8ecc3df5ae035478753');
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(256) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_details`
--

LOCK TABLES `oauth_client_details` WRITE;
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;
INSERT INTO `oauth_client_details` VALUES ('chok-demo',NULL,'$2a$10$RFIQhZfcAVwBMmuE1UJ8BuudOpBPUJIm96YflNjUx1ebAZKB/GGOK','foo,read,write','password,authorization_code,refresh_token','http://localhost:9093/chok-demo/login',NULL,36000,36000,NULL,'true'),('client1',NULL,'$2a$10$RFIQhZfcAVwBMmuE1UJ8BuudOpBPUJIm96YflNjUx1ebAZKB/GGOK','foo,read,write','password,authorization_code,refresh_token','http://localhost:9091/chok-sso-client1/login',NULL,36000,36000,NULL,'true'),('client2',NULL,'$2a$10$RFIQhZfcAVwBMmuE1UJ8BuudOpBPUJIm96YflNjUx1ebAZKB/GGOK','foo,read,write','password,authorization_code,refresh_token','http://localhost:9092/chok-sso-client2/login',NULL,36000,36000,NULL,'true');
/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_token`
--

DROP TABLE IF EXISTS `oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` mediumblob,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_token`
--

LOCK TABLES `oauth_refresh_token` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_token` DISABLE KEYS */;
INSERT INTO `oauth_refresh_token` VALUES ('6aec44abba0cf8ecc3df5ae035478753','¨\Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valuet\0Ljava/lang/String;xpt\0$19b0e1ae-deb9-4c19-8b3f-69208c21fbc9sr\0java.util.DatehjÅKYt\0\0xpw\0\0g,-mix','¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0com.admin.domain.OauthAuthority\0\0\0\0\0\0\0\0L\0	authorityt\0Ljava/lang/String;L\0usernameq\0~\0xpt\0DEFAULTt\0adminsq\0~\0\rt\0USERq\0~\0xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0	chok-demosr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0codet\00FwiEit\0\ngrant_typet\0authorization_codet\0\rresponse_typet\0codet\0redirect_urit\0%http://localhost:9093/chok-demo/logint\0statet\0rvPigyt\0	client_idq\0~\0\Zxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0foot\0readt\0writexsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0%http://localhost:9093/chok-demo/loginpsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0$xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0Ù\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\0:sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0Ù\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 18726BD319570048204B0492D8F322F3psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0Ù\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0*sr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0Ù\0\0xpw\0\0\0q\0~\0q\0~\0xpt\0admin'),('82e8f967d96f749c5ee3e9b08e9820e0','¨\Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valuet\0Ljava/lang/String;xpt\0$6701645e-bff6-46f1-b5f9-cce2d63b614fsr\0java.util.DatehjÅKYt\0\0xpw\0\0g,-\ŸYx','¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0com.admin.domain.OauthAuthority\0\0\0\0\0\0\0\0L\0	authorityt\0Ljava/lang/String;L\0usernameq\0~\0xpt\0SUPER_ADMINt\0rootxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0	chok-demosr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0codet\0dkFvoBt\0\ngrant_typet\0authorization_codet\0\rresponse_typet\0codet\0redirect_urit\0%http://localhost:9093/chok-demo/logint\0statet\0e26X8Ot\0	client_idq\0~\0xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0foot\0readt\0writexsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0%http://localhost:9093/chok-demo/loginpsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsq\0~\0+w\0\0\0?@\0\0\0\0\0q\0~\0\"xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0Ù\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\08sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0Ù\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 59C4636A306399C7CDA98F70410A131Epsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0Ù\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0(sr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0Ù\0\0xpw\0\0\0q\0~\0xpt\0root');
/*!40000 ALTER TABLE `oauth_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_app`
--

DROP TABLE IF EXISTS `tb_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_app` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tc_code` varchar(45) DEFAULT NULL,
  `tc_name` varchar(45) DEFAULT NULL,
  `tc_url` varchar(200) DEFAULT NULL,
  `tc_status` varchar(1) DEFAULT NULL,
  `tc_order` varchar(10) DEFAULT NULL,
  `tc_authority_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_app`
--

LOCK TABLES `tb_app` WRITE;
/*!40000 ALTER TABLE `tb_app` DISABLE KEYS */;
INSERT INTO `tb_app` VALUES (1,'chok-auth','ÊéàÊùÉÂ∫îÁî®','http://localhost:9094/chok-auth','1','1',83),(3,'chok-demo','Á§∫‰æãÂ∫îÁî®','http://localhost:9093/chok-demo','1','2',84),(5,'testapp','testapp','','0','3',88);
/*!40000 ALTER TABLE `tb_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_authority`
--

DROP TABLE IF EXISTS `tb_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_authority` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT '0',
  `tc_app_id` bigint(20) DEFAULT NULL,
  `tc_code` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tc_name` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tc_type` int(11) DEFAULT NULL COMMENT '1:ËèúÂçïÊùÉÈôê\n2:ÊåâÈíÆÊùÉÈôê',
  `tc_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tc_order` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_authority`
--

LOCK TABLES `tb_authority` WRITE;
/*!40000 ALTER TABLE `tb_authority` DISABLE KEYS */;
INSERT INTO `tb_authority` VALUES (2,84,3,'Model management','Ê®°ÂûãÁÆ°ÁêÜ',1,'/admin/model/query','2-2'),(3,83,1,'sys management','Á≥ªÁªüÁÆ°ÁêÜ',1,'','1-1'),(4,3,1,'menu management','ËèúÂçïÁÆ°ÁêÜ',1,'/admin/menu/query','1-1-3'),(5,3,1,'authority management','ÊùÉÈôêÁÆ°ÁêÜ',1,'/admin/authority/query','1-1-2'),(6,3,1,'role management','ËßíËâ≤ÁÆ°ÁêÜ',1,'/admin/role/query','1-1-4'),(7,3,1,'user management','Áî®Êà∑ÁÆ°ÁêÜ',1,'/admin/user/query','1-1-5'),(13,2,3,'pbtn_add','Ê∑ªÂä†',2,'/admin/model/add','2-2-1'),(14,2,3,'pbtn_del','Âà†Èô§',2,'/admin/model/del','2-2-3'),(15,2,3,'pbtn_upd','‰øÆÊîπ',2,'/admin/model/upd','2-2-4'),(16,2,3,'pbtn_query2','Êü•ËØ¢',2,'/admin/model/query2','2-2-6'),(17,2,3,'pbtn_get','ÊòéÁªÜ',2,'/admin/model/get','2-2-7'),(18,84,3,'Image management','ÂõæÁâáÁÆ°ÁêÜ',1,'/admin/image/query','2-3'),(27,84,3,'Category management','ÂàÜÁ±ªÁÆ°ÁêÜ',1,'/admin/category/query','2-1'),(28,27,3,'pbtn_add','Ê∑ªÂä†',2,'/admin/category/add','2-1-1'),(29,27,3,'pbtn_del','Âà†Èô§',2,'/admin/category/del','2-1-3'),(30,27,3,'pbtn_upd','‰øÆÊîπ',2,'/admin/category/upd','2-1-4'),(31,27,3,'pbtn_query2','Êü•ËØ¢',2,'/admin/category/query2','2-1-6'),(32,27,3,'pbtn_get','ÊòéÁªÜ',2,'/admin/category/get','2-1-7'),(33,5,1,'pbtn_add','Ê∑ªÂä†',2,'/admin/authority/add','2-1-1-1-1'),(34,5,1,'pbtn_del','Âà†Èô§',2,'/admin/authority/del','2-1-1-1-3'),(35,5,1,'pbtn_upd','‰øÆÊîπ',2,'/admin/authority/upd','2-1-1-1-4'),(36,5,1,'pbtn_query2','Êü•ËØ¢',2,'/admin/authority/query2','2-1-1-1-6'),(37,5,1,'pbtn_get','ÊòéÁªÜ',2,'/admin/authority/get','2-1-1-1-7'),(38,4,1,'pbtn_add','Ê∑ªÂä†',2,'/admin/menu/add','3-1-1-1-1'),(39,4,1,'pbtn_del','Âà†Èô§',2,'/admin/menu/del','3-1-1-1-3'),(40,4,1,'pbtn_upd','‰øÆÊîπ',2,'/admin/menu/upd','3-1-1-1-4'),(41,4,1,'pbtn_query2','Êü•ËØ¢',2,'/admin/menu/query2','3-1-1-1-6'),(42,4,1,'pbtn_get','ÊòéÁªÜ',2,'/admin/menu/get','3-1-1-1-7'),(43,6,1,'pbtn_add','Ê∑ªÂä†',2,'/admin/role/add','4-1-1-1-1'),(44,6,1,'pbtn_del','Âà†Èô§',2,'/admin/role/del','4-1-1-1-3'),(45,6,1,'pbtn_upd','‰øÆÊîπ',2,'/admin/role/upd','4-1-1-1-4'),(46,6,1,'pbtn_query2','Êü•ËØ¢',2,'/admin/role/query2','4-1-1-1-6'),(47,6,1,'pbtn_get','ÊòéÁªÜ',2,'/admin/role/get','4-1-1-1-7'),(48,7,1,'pbtn_add','Ê∑ªÂä†',2,'/admin/user/add','5-1-1-1-1'),(49,7,1,'pbtn_del','Âà†Èô§',2,'/admin/user/del','5-1-1-1-3'),(50,7,1,'pbtn_upd','‰øÆÊîπ',2,'/admin/user/upd','5-1-1-1-4'),(51,7,1,'pbtn_query2','Êü•ËØ¢',2,'/admin/user/query2','5-1-1-1-6'),(52,7,1,'pbtn_get','ÊòéÁªÜ',2,'/admin/user/get','5-1-1-1-7'),(58,6,1,'act_getPermitTreeNodesByRoleId','ËßíËâ≤Â∑≤ÂÖ≥ËÅîÊùÉÈôê',3,'/admin/role/getPermitTreeNodesByRoleId','4-1-1-1-7'),(59,83,1,'dict_getRoleTreeNodes','Â≠óÂÖ∏-ËßíËâ≤',3,'/dict/getRoleTreeNodes','9003'),(60,7,1,'act_getRoleTreeNodesByUserId','Áî®Êà∑Â∑≤ÂÖ≥ËÅîËßíËâ≤',3,'/admin/user/getRoleTreeNodesByUserId','5-1-1-1-7'),(61,83,1,'test','test',1,'','2-1'),(62,61,1,'test-c','test-c',1,'','2-1-1'),(67,62,1,'test-c-c1','test-c-c1',1,'','2-1-1-1'),(68,62,1,'test-c-c2','test-c-c2',1,'','2-1-1-2'),(69,27,3,'pbtn_add2','Ê∑ªÂä†2',2,'/admin/category/add2','2-1-2'),(70,27,3,'pbtn_upd2','‰øÆÊîπ2',2,'/admin/category/upd2','2-1-5'),(71,5,1,'pbtn_add2','Ê∑ªÂä†2',2,'/admin/authority/add2','2-1-1-1-2'),(72,5,1,'pbtn_upd2','‰øÆÊîπ2',2,'/admin/authority/upd2','2-1-1-1-5'),(73,4,1,'pbtn_upd2','‰øÆÊîπ2',2,'/admin/menu/upd2','3-1-1-1-5'),(74,4,1,'pbtn_add2','Ê∑ªÂä†2',2,'/admin/menu/add2','3-1-1-1-2'),(75,3,1,'app management','Â∫îÁî®ÁÆ°ÁêÜ',1,'/admin/app/query','1-1-1'),(76,75,1,'pbtn_add','Ê∑ªÂä†',2,'/admin/app/add','1-1-1-1-1'),(77,75,1,'pbtn_add2','Ê∑ªÂä†2',2,'/admin/app/add2','1-1-1-1-2'),(78,75,1,'pbtn_del','Âà†Èô§',2,'/admin/app/del','1-1-1-1-3'),(79,75,1,'pbtn_upd','‰øÆÊîπ',2,'/admin/app/upd','1-1-1-1-4'),(80,75,1,'pbtn_upd2','‰øÆÊîπ2',2,'/admin/app/upd2','1-1-1-1-5'),(81,75,1,'pbtn_query2','Êü•ËØ¢',2,'/admin/app/query2','1-1-1-1-6'),(82,75,1,'pbtn_get','ÊòéÁªÜ',2,'/admin/app/get','1-1-1-1-7'),(83,0,1,'chok-auth','ÊéàÊùÉÂ∫îÁî®',0,'http://localhost:9094/chok-auth','1'),(84,0,3,'chok-demo','Á§∫‰æãÂ∫îÁî®',0,'http://localhost:8787/origami','2'),(85,83,1,'dict_getAppTreeNodes','Â≠óÂÖ∏-Â∫îÁî®',3,'/dict/getAppTreeNodes','9000'),(86,83,1,'dict_getMenuTreeNodes','Â≠óÂÖ∏-ËèúÂçï',3,'/dict/getMenuTreeNodes','9002'),(87,83,1,'dict_getPermitTreeNodes','Â≠óÂÖ∏-ÊùÉÈôê',3,'/dict/getAuthorityTreeNodes','9001'),(88,0,NULL,'testapp','testapp',0,'','3'),(89,6,1,'pbtn_add2','Ê∑ªÂä†2',2,'/admin/role/add2','4-1-1-1-2'),(90,6,1,'pbtn_upd2','‰øÆÊîπ2',2,'/admin/role/upd2','4-1-1-1-5'),(91,2,3,'pbtn_upd2','‰øÆÊîπ2',2,'/admin/model/upd2','2-2-5'),(92,7,1,'pbtn_add2','Ê∑ªÂä†2',2,'/admin/user/add2','5-1-1-1-2'),(93,7,1,'pbtn_upd2','‰øÆÊîπ2',2,'/admin/user/upd2','5-1-1-1-5'),(94,18,3,'pbtn_add','Ê∑ªÂä†',2,'/admin/image/add','2-3-1'),(95,18,3,'pbtn_del','Âà†Èô§',2,'/admin/image/del','2-3-3'),(96,18,3,'pbtn_query2','Êü•ËØ¢',2,'/admin/image/query2','2-3-5'),(97,18,3,'pbtn_get','ÊòéÁªÜ',2,'/admin/image/get','2-3-6'),(98,2,3,'pbtn_add2','Ê∑ªÂä†2',2,'/admin/model/add2','2-2-2'),(99,18,3,'pbtn_upd2','‰øÆÊîπ2',2,'/admin/image/upd2','2-3-4'),(100,18,3,'pbtn_add2','Ê∑ªÂä†2',2,'/admin/image/add2','2-3-2');
/*!40000 ALTER TABLE `tb_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_menu`
--

DROP TABLE IF EXISTS `tb_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `tc_authority_id` bigint(20) DEFAULT NULL,
  `tc_app_id` bigint(20) DEFAULT NULL,
  `tc_code` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tc_name` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tc_order` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tc_level` varchar(1) CHARACTER SET utf8 DEFAULT '1' COMMENT 'Á∫ßÂà´Ôºö0->Ê†πËäÇÁÇπÔºõ1->‰∏ÄÁ∫ßËäÇÁÇπÔºõ2->Ê¨°Á∫ßËäÇÁÇπ',
  PRIMARY KEY (`id`),
  KEY `fk_permit` (`tc_authority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menu`
--

LOCK TABLES `tb_menu` WRITE;
/*!40000 ALTER TABLE `tb_menu` DISABLE KEYS */;
INSERT INTO `tb_menu` VALUES (1,0,27,3,'Category management','ÂàÜÁ±ªÁÆ°ÁêÜ','2-1','1'),(2,0,2,3,'Model management','Ê®°ÂûãÁÆ°ÁêÜ','2-2','1'),(3,0,3,1,'System management','Á≥ªÁªüÁÆ°ÁêÜ','1-1','1'),(4,3,4,1,'Menu management','ËèúÂçïÁÆ°ÁêÜ','1-1-3','2'),(5,3,5,1,'Permit management','ÊùÉÈôêÁÆ°ÁêÜ','1-1-2','2'),(6,3,6,1,'Role management','ËßíËâ≤ÁÆ°ÁêÜ','1-1-4','2'),(7,3,7,1,'User management','Áî®Êà∑ÁÆ°ÁêÜ','1-1-5','2'),(8,0,61,1,'test','test','1-2','1'),(9,8,62,1,'test-c','test-c','1-2-1','2'),(10,9,67,1,'test-c-c1','test-c-c1','1-2-1-1','2'),(12,3,75,1,'App management','Â∫îÁî®ÁÆ°ÁêÜ','1-1-1','2'),(13,9,68,1,'test-c-c2','test-c-c2','1-2-1-2','2'),(14,0,18,3,'Image management','ÂõæÁâáÁÆ°ÁêÜ','2-3','1');
/*!40000 ALTER TABLE `tb_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_role`
--

DROP TABLE IF EXISTS `tb_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tc_code` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tc_name` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_role`
--

LOCK TABLES `tb_role` WRITE;
/*!40000 ALTER TABLE `tb_role` DISABLE KEYS */;
INSERT INTO `tb_role` VALUES (28,'SYS_ADMIN','Á≥ªÁªüÁÆ°ÁêÜÂëò'),(34,'USER','ÊôÆÈÄöÁî®Êà∑'),(35,'SUPER_ADMIN','Ë∂ÖÁ∫ßÁÆ°ÁêÜÂëò'),(36,'DEFAULT','ÈªòËÆ§');
/*!40000 ALTER TABLE `tb_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_role_authority`
--

DROP TABLE IF EXISTS `tb_role_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_role_authority` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tc_role_id` bigint(20) NOT NULL,
  `tc_authority_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_permit` (`tc_authority_id`),
  KEY `fk_role` (`tc_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1834 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_role_authority`
--

LOCK TABLES `tb_role_authority` WRITE;
/*!40000 ALTER TABLE `tb_role_authority` DISABLE KEYS */;
INSERT INTO `tb_role_authority` VALUES (1476,34,83),(1477,34,3),(1478,34,75),(1479,34,81),(1480,34,82),(1481,34,5),(1482,34,36),(1483,34,37),(1484,34,4),(1485,34,41),(1486,34,42),(1487,34,6),(1488,34,46),(1489,34,47),(1490,34,58),(1491,34,7),(1492,34,51),(1493,34,52),(1494,34,60),(1495,34,84),(1496,34,27),(1497,34,31),(1498,34,32),(1499,34,2),(1500,34,16),(1501,34,17),(1724,35,83),(1725,35,3),(1726,35,75),(1727,35,76),(1728,35,77),(1729,35,78),(1730,35,79),(1731,35,80),(1732,35,81),(1733,35,82),(1734,35,5),(1735,35,33),(1736,35,71),(1737,35,34),(1738,35,35),(1739,35,72),(1740,35,36),(1741,35,37),(1742,35,4),(1743,35,38),(1744,35,74),(1745,35,39),(1746,35,40),(1747,35,73),(1748,35,41),(1749,35,42),(1750,35,6),(1751,35,43),(1752,35,89),(1753,35,44),(1754,35,45),(1755,35,90),(1756,35,46),(1757,35,47),(1758,35,58),(1759,35,7),(1760,35,48),(1761,35,92),(1762,35,49),(1763,35,50),(1764,35,93),(1765,35,51),(1766,35,52),(1767,35,60),(1768,35,61),(1769,35,62),(1770,35,67),(1771,35,68),(1772,35,85),(1773,35,87),(1774,35,86),(1775,35,59),(1776,35,84),(1777,35,27),(1778,35,28),(1779,35,69),(1780,35,29),(1781,35,30),(1782,35,70),(1783,35,31),(1784,35,32),(1785,35,2),(1786,35,13),(1787,35,98),(1788,35,14),(1789,35,15),(1790,35,91),(1791,35,16),(1792,35,17),(1793,35,18),(1794,35,94),(1795,35,100),(1796,35,95),(1797,35,99),(1798,35,96),(1799,35,97),(1800,35,88),(1801,28,83),(1802,28,3),(1803,28,5),(1804,28,35),(1805,28,72),(1806,28,36),(1807,28,37),(1808,28,4),(1809,28,38),(1810,28,39),(1811,28,40),(1812,28,41),(1813,28,42),(1814,28,7),(1815,28,51),(1816,28,52),(1817,28,60),(1818,28,59),(1819,28,84),(1820,28,27),(1821,28,28),(1822,28,69),(1823,28,29),(1824,28,30),(1825,28,70),(1826,28,31),(1827,28,32),(1828,28,2),(1829,28,16),(1830,28,17),(1831,28,18),(1832,28,96),(1833,28,97);
/*!40000 ALTER TABLE `tb_role_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tc_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tc_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tc_email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tc_password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tc_add_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tc_enable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (2,'u1','u1','u1@qq.com','E10ADC3949BA59ABBE56E057F20F883E','2016-10-31 05:09:24',NULL),(3,'u2','u2','u2@qq.com','E10ADC3949BA59ABBE56E057F20F883E','2016-11-02 03:33:30',NULL),(4,'u3','u3','u3@qq.com','E10ADC3949BA59ABBE56E057F20F883E','2016-11-02 03:37:02',NULL),(5,'root','root','','$2a$10$hbxecwitQQ.dDT4JOFzQAulNySFwEpaFLw38jda6Td.Y/cOiRzDFu',NULL,NULL),(7,'sysadmin1','Á≥ªÁªüÁÆ°ÁêÜÂëò1','','E3CEB5881A0A1FDAAD01296D7554868D','2016-11-07 03:29:47',NULL),(8,'u4','u4','','E10ADC3949BA59ABBE56E057F20F883E','2017-1-18 09:30:24',NULL),(9,'u5','u5','','E10ADC3949BA59ABBE56E057F20F883E','2017-1-18 09:30:34',NULL),(10,'u6','u6','','E10ADC3949BA59ABBE56E057F20F883E','2017-1-18 09:30:42',NULL),(11,'u7','u7','','E10ADC3949BA59ABBE56E057F20F883E','2017-1-18 09:30:48',NULL),(12,'u8','u8','','E10ADC3949BA59ABBE56E057F20F883E','2017-1-18 09:30:55',NULL),(13,'u9','u9','','E10ADC3949BA59ABBE56E057F20F883E','2017-1-18 09:31:04',NULL),(14,'u10','u10','','E10ADC3949BA59ABBE56E057F20F883E','2017-1-18 09:31:20',NULL),(15,'u11','u11','','E10ADC3949BA59ABBE56E057F20F883E','2017-1-18 09:31:28',NULL),(16,'u12','u12','','E10ADC3949BA59ABBE56E057F20F883E','2017-1-18 09:31:35',NULL),(17,'u13','u13','','E10ADC3949BA59ABBE56E057F20F883E','2017-1-18 09:31:42',NULL),(18,'u14','u14','','E10ADC3949BA59ABBE56E057F20F883E','2017-1-18 09:31:51',NULL),(19,'u15','u15','','E10ADC3949BA59ABBE56E057F20F883E','2017-1-18 09:31:57',NULL),(20,'u16','u16','','E10ADC3949BA59ABBE56E057F20F883E','2017-1-18 09:32:07',NULL),(21,'u17','u17','','E10ADC3949BA59ABBE56E057F20F883E','2017-1-18 09:32:14',NULL),(22,'u18','u18','','E10ADC3949BA59ABBE56E057F20F883E','2017-1-18 09:32:22',NULL),(23,'u19','u19','','E10ADC3949BA59ABBE56E057F20F883E','2017-1-18 09:32:30',NULL),(24,'u20','u20','','E10ADC3949BA59ABBE56E057F20F883E','2017-1-18 09:32:38',NULL),(25,'admin','admin',NULL,'$2a$10$hbxecwitQQ.dDT4JOFzQAulNySFwEpaFLw38jda6Td.Y/cOiRzDFu',NULL,1);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_role`
--

DROP TABLE IF EXISTS `tb_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tc_user_id` bigint(20) NOT NULL,
  `tc_role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_role` (`tc_role_id`),
  KEY `fk_user` (`tc_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_role`
--

LOCK TABLES `tb_user_role` WRITE;
/*!40000 ALTER TABLE `tb_user_role` DISABLE KEYS */;
INSERT INTO `tb_user_role` VALUES (43,7,28),(47,3,34),(50,9,34),(51,10,34),(52,11,34),(53,12,34),(54,13,34),(55,14,34),(56,15,34),(57,16,34),(58,17,34),(59,18,34),(60,19,34),(61,20,34),(62,21,34),(63,22,34),(64,23,34),(65,24,34),(71,4,34),(72,8,34),(76,5,35),(79,2,34),(80,25,34),(81,25,36);
/*!40000 ALTER TABLE `tb_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-19 18:29:37
