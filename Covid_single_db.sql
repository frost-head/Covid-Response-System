-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: PassManager
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main` (
  `primarykey` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `passcode` varchar(255) DEFAULT NULL,
  `date_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `uid` int DEFAULT NULL,
  `etext` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`primarykey`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main`
--

LOCK TABLES `main` WRITE;
/*!40000 ALTER TABLE `main` DISABLE KEYS */;
INSERT INTO `main` VALUES (18,'jkdlshfjkhsdjkfhjkh','frosthead','/FC$Kpd3lCNNi^fF%PKKiVdf/V-A$','2021-06-22 00:35:57',1,'/FC$dTGny2PB#3o&w$9ZZ&OFnO4zkZaxO2wTf2r!50^n6C@w32!Au6jbxpfziX&wXxRj!j!T0^g^sFzAXnlvfPrg70PTQ7Y2&B&g%F9Ivj9Qf$cIRerYk$OkDnIFuBbCFI94/V-A$'),(39,'zdasdsadaf','asdf','/FC$%1xmWDf&97DUFbOer9Ub/V-A$','2021-06-23 21:51:37',5,'/FC$xFq6LdLBHn!to0OumMb8zvuxW&j0O%Urpsk0GKNU0d%Kkun4QAfozOS@z56WypPgmgCsrjQ5a9!MVCaSz#&42hF5@@gFNEsH1dnqThfepwKfDwhj29w8^qudKPVsHix3/V-A$'),(40,'zdasdsadaf','asdf','/FC$t&SJOoQ8QJTeeUIjxq9&/V-A$','2021-06-23 22:42:19',5,'/FC$c@TELNOSKrCXkqdCquSMyt8a4bRy2Zu9MC4@7zL^53O#7E41dWNx#rtDHFUd63BqEGhNIJxNr^ZlM&QsrpoIo24QTe550cgHmCGnApvckNnHNa!KCtTELuzSmeXVB!H2/V-A$'),(41,'ayuhs','N/A','/FC$%Sw#VDl!438CtW!^C&hJ/V-A$','2021-08-10 11:20:35',6,'/FC$SqOku$h3$51^gGOCZNKIjw8H@lbITUiF3bjmsz7q$s^uuANUF%Id91qCsQW#2#pmC4C9!xg#!w1DLR60&Ov2Gjpp^UGThDN1Pl60vtzeygZERZodGnn2TBEj1p&Xrjy&/V-A$'),(43,'helloworld.com','ayush','/FC$ghufO!nlj42uctHNV6Si/V-A$','2021-08-10 13:13:56',7,'/FC$9P0t3jdqg$pIPtPsXv^jKC2pPPcw#xrkW8MIXBO&pgn^9IQAL!r$zm7YuwEaBpWtt&jXHVcyGAFt6M2GofB8Vc^IYTl6&R5vy2C5TPu7J%kxJl0YLrOUQokbSdyo$mqU/V-A$'),(44,'asdf','asdf','/FC$%sM!pf21#ZPBtNNsBelT/V-A$','2021-09-30 05:42:07',8,'/FC$Nx#ZYW!kWcY0%sAaCvXDyXgN3gE6^3@OWesroVEy&b8kz&nsjbuPaurOjuX^%$8pRswdS9dlqlJBP%bz!^vyObUQ9bmvrV%#gg1ZyZw&T1c!I5nmG6#dmxAXu^i6oQ#v/V-A$'),(45,'hjjhghg','fff','/FC$pxdF!zSKK#VTKdErXHXd/V-A$','2022-02-25 13:49:55',9,'/FC$6am4wpoa2rq8Y%vwzCecP@^JlsO!XLcHnBeS@pswxbK03a3LYuxQdcoltZZdddDi@lHfz1cksUv!GPfZnb&8r1l34niXq2QYjxd3%MQ5qGAdIUFzAmlGhcgwPJE#!yb0/V-A$');
/*!40000 ALTER TABLE `main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `privatekeys` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Ayush Sharma','letsgameupatngc@gmail.com','$5$rounds=535000$xAQrQt1XSeoqyKQY$SwFSOnPpfvx01UUVJC7rgfJHpg0HysbWgMOqU08.y9/','saf','$5$rounds=535000$uu41SbTwMf66IBZo$nZFxc5hptRViPHY7fWCKB9B4TDagmE7Qa1cBGVhvg19'),(2,'Ayush Sharma','letsgameupatngc@gmail.com','$5$rounds=535000$pOt/9HBMPM6TLGVf$DYESFUWuqCdlCtFw.l60TrgNdkrJwt7b9R6lQWNhra7','FrostHead','$5$rounds=535000$SjsdP8NpSaw6V1sg$4okecdaYhTWJHhraPQeSjRWwF67pCQkRRM/yEUXNmS2'),(3,'Ayush Sharma','letsgameupatngc@gmail.com','$5$rounds=535000$/06ZVMcN1WO8TdZG$pRPmr5rr8jA9HgbH.cm3zT3wbJRyFl9n4Sqx4sd.MH8','FrostHeadCrypto','$5$rounds=535000$Jj520Bk6IBhgV.vA$zTAyZamxb0pAF/07omXl4Tt30OeubclqJApCovRCIJ7'),(4,'Ayush Sharma','letsgameupatngc@gmail.com','$5$rounds=535000$05dAIp3onejIG3XP$uBXUUv5EtbeRln8kfv.NwJVjUdY3dwucDrC2pQWnVX2','ayush','$5$rounds=535000$pCqWSOQN.hH8H12V$mo0BmHtMWI1/q7JLZYut8sraFpAdaeup/.HDqKQ7Nv3'),(5,'nitika','example.com','$5$rounds=535000$Av0qbGpJCWFNe8Xh$O929bGySvit5Fc/7RsS1aYAdDR4BPocCgSASP1sC237','niku','$5$rounds=535000$QGgof3hLbkyXNUBl$NmtfOA1yB6kKZ/eJrbITfrSQ/mhZW4WZNNnNWZ2EN0/'),(6,'ayush ','letsgameupatngc@gmai.com','$5$rounds=535000$UOqiVFl9lIrrOoB6$BjRKiLIDJyW3hAm5GT4tR1/RCxZbj8r7JYZT.STXSh9','ayush ','$5$rounds=535000$kY1ox.9iXFQ/2aET$53.TALaoBCt3R/4aUMZv2Tznes.MacG/q5x57HMaYj3'),(7,'ayush ','jasj@jsad','$5$rounds=535000$sx.uSqoEXN4jLwFa$rf15EZoJ5vuHGrJwQGdixYFLQhSjgneckj./0jDoUJ1','helloworld','$5$rounds=535000$YQYivMifXDwiy3z7$Q2W39cKI4NIZS1WlqGPyiagT4Kr2VkyH1hH.zhnLqY9'),(8,'fuck','fuck@gmailc.ocm','$5$rounds=535000$kj04wlHWGUA7Tqn7$SFpZqp.zEZinV76V5OvQj1r1jcS71lVeMJOHpu8MoXC','fuck','$5$rounds=535000$4x.lO0y9DeCp5uob$l7nIe0OHe/AGA78Jq7jSiJHQJvgv4k0Psx.h7wxNx74'),(9,'jkghhg','bbb@l','$5$rounds=535000$7wNP2LBGBbeKOhRl$k67MFKEVimtu6JxKmerVrgVIaQcFq/TRFecYw6xtzAC','ajhj','$5$rounds=535000$gUS1uZyoD6M4oDGP$l7KE0hdfslkHcZrge0i1PFunO23k46iPEqGFs7VdLwC');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-26 16:33:30
-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: FightCovid
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Requests`
--

DROP TABLE IF EXISTS `Requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Requests` (
  `Rid` int NOT NULL AUTO_INCREMENT,
  `Uid` int NOT NULL,
  `Requirnment` longtext,
  `Address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `Zipcode` varchar(255) DEFAULT NULL,
  `Pnumber` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Rid`),
  KEY `Uid` (`Uid`),
  CONSTRAINT `Requests_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `USER` (`Uid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Requests`
--

LOCK TABLES `Requests` WRITE;
/*!40000 ALTER TABLE `Requests` DISABLE KEYS */;
INSERT INTO `Requests` VALUES (1,1,'Need of urgent Covid Vaccine','krishna enterprises 95/5','Mandi','HP',NULL,NULL),(2,2,'I need urgent covid-19 vacine','villa dari p.o. chail-chowk, teh. chachyot mandi hp','Mandi','Himachal Pradesh','175028',NULL),(3,2,'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nobis eaque maxime, esse eius repudiandae ad est ea aliquid a dolores voluptatibus ex iste ipsam, ducimus atque ab sunt officiis eum. Quos obcaecati sequi, minus quas beatae magnam iusto atque voluptatum.','villa dari p.o. chail-chowk, teh. chachyot mandi hp','Mandi','Himachal Pradesh','175028',NULL);
/*!40000 ALTER TABLE `Requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER` (
  `Uid` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` VALUES (1,'Ayush','Flanadhimka@mimka.com','aaahaaah'),(2,'ayush','letsgameupatngc@gmail.com','$5$rounds=535000$nkSXMZ1B74BRhdIX$2EaPQ6MfH2UejGCChbNu.GvPEozUniOE4.erN0H.sc6'),(3,'Ayush ','FrostHead@gmail.com','$5$rounds=535000$6AcRRXpLVUJ4Qlf0$JrXpDOEsUkygx/WAMGONJBq/X9nDQyjKBmDC3KvbT3B'),(4,'D.a.v. Public school gohar','help@covid.com','$5$rounds=535000$AvxDYvnYhTKhH4BL$/wVRVE7o8bF1q87gj3siF9NfeTX6R5duoFVsSZbmDMD'),(5,'Ayush','shdfjk@gmail','$5$rounds=535000$l1K.FYy0Z7gGhv/A$eDGLHqMboW2PJe6tsffF.O0xsjvjMwY4zH02TdKD2e9'),(6,'D.a.v. Public school gohar','asda@df','$5$rounds=535000$BeLwC5oZKbmHwHYr$j.g7yzV1l5GWytoQAVHihbmGBMHX.Rro8guxh18pN20'),(7,'hethan','helllo@gnma','$5$rounds=535000$e9cQ/Iy.IeDJxb55$.NIzCv7hBc2rASbzWP3n6kwDkuWZuKagqvXRg/KHAE3');
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-26 16:33:30
