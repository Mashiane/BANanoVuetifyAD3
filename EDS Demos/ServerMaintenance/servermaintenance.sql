/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(255) NOT NULL,
  `categorydescription` varchar(254) NOT NULL,
  PRIMARY KEY (`categoryid`),
  UNIQUE KEY `categoryname` (`categoryname`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `categories` VALUES (36,'Updates','Updates'),(37,'Security','Security'),(39,'Monitoring','Monitoring'),(40,'File System Maintenance','File System Maintenance'),(41,'Other General Tasks','Other General Tasks'),(44,'Back Ups','Back Ups');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `taskid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `taskname` varchar(254) DEFAULT NULL,
  `daily` varchar(254) DEFAULT NULL,
  `weekly` varchar(254) DEFAULT NULL,
  `monthly` varchar(254) DEFAULT NULL,
  `occassionaly` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`taskid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `tasks` VALUES (15,36,'New Package Installations','No','','','Yes'),(16,36,'Other Application Updates','Yes','','',''),(17,37,'Review Server Access','No','Yes','',''),(18,37,'Review Firewall Rules','No','Yes','',''),(19,37,'Confirm User Password Changes','Yes','','',''),(20,44,'Backup and Restores Confirmed Working','Yes','No','No','No'),(21,44,'Automated System Recovery Backup','Yes','Yes','Yes','Yes'),(22,39,'Monitoring Checked and Confirmed','Yes','','',''),(23,39,'Resource Usage Checked','Yes','','',''),(24,39,'Cleaned Hardware & Error Checked','Yes','','',''),(25,40,'Review Disk Fragmentation','Yes','','',''),(26,40,'Monitor Available Space','Yes','','',''),(27,40,'Remove Unused Applications','Yes','','',''),(28,40,'Check Disk Intergrity','Yes','','',''),(29,41,'Monitor Event Logs and Statistics','Yes','','',''),(30,41,'Run Regular Scans','Yes','','',''),(31,41,'Check Server Reliability','Yes','','',''),(32,41,'Antivuris Logs and Updates','Yes','','',''),(33,41,'Capture Configuation Screenshots','Yes','','',''),(34,41,'Capture Service Performance Statistics','Yes','','',''),(35,41,'Capture Service Usage Statistics','Yes','','',''),(36,41,'Review Quota Levels','Yes','','',''),(37,41,'Check Print Ques','Yes','','','');
