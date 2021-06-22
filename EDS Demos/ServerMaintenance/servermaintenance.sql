/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(255) NOT NULL,
  `categorydescription` varchar(254) NOT NULL,
  PRIMARY KEY (`categoryid`),
  UNIQUE KEY `categoryname` (`categoryname`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `categories` VALUES (33,'Hardware','Hardware Maintenance'),(34,'Software','Software Maintenance'),(35,'Cabling','Cable Maintenance');
