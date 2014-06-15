/*
SQLyog Community v10.3 
MySQL - 5.6.17 : Database - aveclesoleil
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`aveclesoleil` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `aveclesoleil`;

/*Table structure for table `articles` */

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titreFr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titreEn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `textFr` longtext COLLATE utf8_unicode_ci NOT NULL,
  `textEn` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `dateEdition` datetime NOT NULL,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `site_id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BFDD3168989D9B62` (`slug`),
  UNIQUE KEY `UNIQ_BFDD31683DA5256D` (`image_id`),
  KEY `IDX_BFDD3168F6BD1646` (`site_id`),
  CONSTRAINT `FK_BFDD31683DA5256D` FOREIGN KEY (`image_id`) REFERENCES `imagearticles` (`id`),
  CONSTRAINT `FK_BFDD3168F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `articles` */

insert  into `articles`(`id`,`titreFr`,`titreEn`,`textFr`,`textEn`,`date`,`dateEdition`,`slug`,`site_id`,`image_id`,`video`) values (1,'article 1 eft Fr','article 1 eft En','<p>txt fr</p>','<p>txt en</p>','2014-05-13 08:07:51','2014-05-13 08:07:51','article-1-eft-fr',1,5,NULL),(2,'Article sans rien','Article sans rien En','<p>FR Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />&nbsp;</p>','<p>EN Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />&nbsp;</p>','2014-05-13 08:52:20','2014-05-13 08:52:20','article-sans-rien',3,6,NULL),(3,'article 2 eft Fr','article 2 eft En','<p>txt fr</p>','<p>txt en</p>','2014-05-13 09:04:24','2014-05-13 09:04:24','article-2-eft-fr',1,7,NULL),(4,'article 3 eft Fr','article 3 eft En','<p>FR kdfqjlkgjfdlkq,</p>','<p>EN dfhnjkvndkfnvkdw</p>','2014-05-31 06:37:11','2014-05-31 06:37:11','article-3-eft-fr',1,NULL,NULL),(5,'article 4 eft Fr','article 4 eft En','<p>kjhlkbjlbjhbnkjnk</p>','<p>hhljkhnkjnkjn</p>','2014-05-31 07:00:53','2014-05-31 07:00:53','article-4-eft-fr',1,9,NULL),(8,'article 1 eft video Fr','article 1 eft video En','<p>fr fsdbxghdwfgdwfgwdfg</p>','<p>en fghdghdwgdwfgdwfgdfwg</p>','2014-05-31 07:53:54','2014-05-31 07:53:54','article-1-eft-video-fr',1,NULL,NULL),(9,'Poterie en grosse pièce','Poterie en grosse pièce en','<p>La technique la plus perfectionn&eacute;e est celle du tournage. Cette poterie permet d&#39;obtenir rapidement des formes beaucoup plus r&eacute;guli&egrave;res et des pi&egrave;ces beaucoup plus l&eacute;g&egrave;res. Le tournage permet d&#39;obtenir des pi&egrave;ces de r&eacute;volution.</p>','<p>dfdfdfdf</p>','2014-06-02 21:17:20','2014-06-02 21:17:20','poterie-en-grosse-piece',3,NULL,'https://www.youtube.com/embed/81eua5qNuTM'),(10,'Salon de la céramique','Salon de la céramique en','<p>Une s&eacute;lection d&#39;une trentaine de c&eacute;ramistes vous font d&eacute;couvrir leurs cr&eacute;ations r&eacute;centes de pi&egrave;ces uniques. Lors de cette occasion, le Centre International de formation aux m&eacute;tiers d&#39;art et de la c&eacute;ramique (EMA-CNIFOP) &eacute;tait pr&eacute;sent.</p>','<p>defdef</p>','2014-06-02 21:36:41','2014-06-02 21:36:41','salon-de-la-ceramique',3,NULL,'https://www.youtube.com/embed/NJOkvqMB98U'),(11,'Technique d\'estampage','Technique d\'estampage fr','<p>L&rsquo;estampage est une technique de reproduction qui donne des estampes, et qui produit, &eacute;ventuellement, des effets de relief par impression d&rsquo;argile dans un moule en creux ou d&rsquo;une feuille de papier sur une plaque grav&eacute;e.</p>','<p>dfgwdfgw</p>','2014-06-02 21:37:42','2014-06-02 21:37:42','technique-d-estampage',3,NULL,'https://www.youtube.com/embed/s763Nkxk_XE'),(12,'Article sans video','Article sans video en','<p>FR Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />&nbsp;</p>','<p>EN Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />&nbsp;</p>','2014-06-03 04:45:37','2014-06-03 04:45:37','article-sans-video',3,NULL,NULL),(13,'Article sans image','Article sans image  en','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />&nbsp;</p>','<p>EN Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />&nbsp;</p>','2014-06-03 05:14:24','2014-06-03 05:14:24','article-sans-image',3,NULL,NULL);

/*Table structure for table `clients` */

DROP TABLE IF EXISTS `clients`;

CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realisation_id` int(11) NOT NULL,
  `genre` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `etatprov` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pays` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datenaissance` date DEFAULT NULL,
  `dateIsc` datetime DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `numTrans` int(11) DEFAULT NULL,
  `numInscrit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moyenpayement` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `statut` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dl_token` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_complete` longtext COLLATE utf8_unicode_ci,
  `cp` int(11) DEFAULT NULL,
  `lu` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C82E74989D9B62` (`slug`),
  UNIQUE KEY `UNIQ_C82E74DDBB484C` (`numTrans`),
  UNIQUE KEY `UNIQ_C82E741DD02AC2` (`numInscrit`),
  KEY `IDX_C82E74B685E551` (`realisation_id`),
  CONSTRAINT `FK_C82E74B685E551` FOREIGN KEY (`realisation_id`) REFERENCES `realisations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `clients` */

insert  into `clients`(`id`,`realisation_id`,`genre`,`nom`,`adresse`,`ville`,`etatprov`,`pays`,`tel`,`mail`,`datenaissance`,`dateIsc`,`slug`,`numTrans`,`numInscrit`,`moyenpayement`,`amount`,`statut`,`dl_token`,`paypal_complete`,`cp`,`lu`) values (8,3,'M','pat acheteur','Av. de la Pelouse, 87648672 Mayet','Paris','Alsace','France','04 222 555 333','vvv@fff.com','2009-01-01','2014-06-12 20:55:39','pat-acheteur-1',1,'068','PayPal',478,'Completed','EC-57C42958T0533594U','{\"TOKEN\":\"EC-57C42958T0533594U\",\"SUCCESSPAGEREDIRECTREQUESTED\":\"false\",\"TIMESTAMP\":\"2014-06-12T20:55:36Z\",\"CORRELATIONID\":\"335703f7176b\",\"ACK\":\"Success\",\"VERSION\":\"114\",\"BUILD\":\"11411635\",\"TRANSACTIONID\":\"1EA12516228495713\",\"TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTTYPE\":\"instant\",\"ORDERTIME\":\"2014-06-12T20:55:36Z\",\"AMT\":\"478.00\",\"FEEAMT\":\"16.50\",\"TAXAMT\":\"0.00\",\"CURRENCYCODE\":\"EUR\",\"PAYMENTSTATUS\":\"Completed\",\"PENDINGREASON\":\"None\",\"REASONCODE\":\"None\",\"PROTECTIONELIGIBILITY\":\"Ineligible\",\"INSURANCEOPTIONSELECTED\":\"false\",\"SHIPPINGOPTIONISDEFAULT\":\"false\",\"PAYMENTINFO_0_TRANSACTIONID\":\"1EA12516228495713\",\"PAYMENTINFO_0_TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTINFO_0_PAYMENTTYPE\":\"instant\",\"PAYMENTINFO_0_ORDERTIME\":\"2014-06-12T20:55:36Z\",\"PAYMENTINFO_0_AMT\":\"478.00\",\"PAYMENTINFO_0_FEEAMT\":\"16.50\",\"PAYMENTINFO_0_TAXAMT\":\"0.00\",\"PAYMENTINFO_0_CURRENCYCODE\":\"EUR\",\"PAYMENTINFO_0_PAYMENTSTATUS\":\"Completed\",\"PAYMENTINFO_0_PENDINGREASON\":\"None\",\"PAYMENTINFO_0_REASONCODE\":\"None\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\":\"Ineligible\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\":\"None\",\"PAYMENTINFO_0_SECUREMERCHANTACCOUNTID\":\"8EYBCT8YCC6TQ\",\"PAYMENTINFO_0_ERRORCODE\":\"0\",\"PAYMENTINFO_0_ACK\":\"Success\"}',75002,0),(10,5,'M','pat acheteur','Av. de la Pelouse, 87648672 Mayet','Paris','Alsace','France','04 222 555 333','vvv@fff.com','2009-01-01','2014-06-14 09:38:56','pat-acheteur-2',59,'0610','PayPal',145,'Completed','EC-524278494F111443S','{\"TOKEN\":\"EC-524278494F111443S\",\"SUCCESSPAGEREDIRECTREQUESTED\":\"false\",\"TIMESTAMP\":\"2014-06-14T09:38:52Z\",\"CORRELATIONID\":\"a7098fcc59b9a\",\"ACK\":\"Success\",\"VERSION\":\"114\",\"BUILD\":\"11411635\",\"TRANSACTIONID\":\"59V94743Y3014744L\",\"TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTTYPE\":\"instant\",\"ORDERTIME\":\"2014-06-14T09:38:52Z\",\"AMT\":\"145.00\",\"FEEAMT\":\"5.18\",\"TAXAMT\":\"0.00\",\"CURRENCYCODE\":\"EUR\",\"PAYMENTSTATUS\":\"Completed\",\"PENDINGREASON\":\"None\",\"REASONCODE\":\"None\",\"PROTECTIONELIGIBILITY\":\"Ineligible\",\"INSURANCEOPTIONSELECTED\":\"false\",\"SHIPPINGOPTIONISDEFAULT\":\"false\",\"PAYMENTINFO_0_TRANSACTIONID\":\"59V94743Y3014744L\",\"PAYMENTINFO_0_TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTINFO_0_PAYMENTTYPE\":\"instant\",\"PAYMENTINFO_0_ORDERTIME\":\"2014-06-14T09:38:52Z\",\"PAYMENTINFO_0_AMT\":\"145.00\",\"PAYMENTINFO_0_FEEAMT\":\"5.18\",\"PAYMENTINFO_0_TAXAMT\":\"0.00\",\"PAYMENTINFO_0_CURRENCYCODE\":\"EUR\",\"PAYMENTINFO_0_PAYMENTSTATUS\":\"Completed\",\"PAYMENTINFO_0_PENDINGREASON\":\"None\",\"PAYMENTINFO_0_REASONCODE\":\"None\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\":\"Ineligible\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\":\"None\",\"PAYMENTINFO_0_SECUREMERCHANTACCOUNTID\":\"8EYBCT8YCC6TQ\",\"PAYMENTINFO_0_ERRORCODE\":\"0\",\"PAYMENTINFO_0_ACK\":\"Success\"}',75002,1);

/*Table structure for table `configurations` */

DROP TABLE IF EXISTS `configurations`;

CREATE TABLE `configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `likedln` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_31C6AD96B74C8E0` (`facebook`),
  UNIQUE KEY `UNIQ_31C6AD9166A7BB6` (`twitter`),
  UNIQUE KEY `UNIQ_31C6AD93007ED18` (`likedln`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `configurations` */

insert  into `configurations`(`id`,`facebook`,`twitter`,`likedln`) values (1,'compte face','compte twit','compte like');

/*Table structure for table `contacts` */

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gsm` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_33401573989D9B62` (`slug`),
  UNIQUE KEY `UNIQ_33401573C35F0816` (`adresse`),
  UNIQUE KEY `UNIQ_334015735126AC48` (`mail`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `contacts` */

insert  into `contacts`(`id`,`nom`,`prenom`,`tel`,`gsm`,`slug`,`adresse`,`mail`) values (2,'Debeur','Paulette','04/367 70 67','0495/187608','debeur-paulette','23, rue de la Chaudronnerie <br/> 4030 Grivegnée','wolfoux@hotmail.com');

/*Table structure for table `evenementsagenda` */

DROP TABLE IF EXISTS `evenementsagenda`;

CREATE TABLE `evenementsagenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomFr` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dateDeb` datetime NOT NULL,
  `dateFin` datetime NOT NULL,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `nbMax` int(11) NOT NULL,
  `nbInsc` int(11) NOT NULL,
  `descriptionFr` longtext COLLATE utf8_unicode_ci NOT NULL,
  `descriptionEn` longtext COLLATE utf8_unicode_ci NOT NULL,
  `formation_id` int(11) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  `nomEn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `nbJour` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_97054B1D989D9B62` (`slug`),
  KEY `IDX_97054B1DF6BD1646` (`site_id`),
  KEY `IDX_97054B1D5200282E` (`formation_id`),
  CONSTRAINT `FK_97054B1D5200282E` FOREIGN KEY (`formation_id`) REFERENCES `formations` (`id`),
  CONSTRAINT `FK_97054B1DF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `evenementsagenda` */

insert  into `evenementsagenda`(`id`,`nomFr`,`dateDeb`,`dateFin`,`slug`,`nbMax`,`nbInsc`,`descriptionFr`,`descriptionEn`,`formation_id`,`site_id`,`nomEn`,`prix`,`nbJour`) values (17,'ev ceramique 1 FR','2014-06-01 00:00:00','2014-06-01 00:00:00','ev-ceramique-1-fr',2,0,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p>','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p>',1,1,'ev ceramique 2 FR','259.90',1),(18,'ev ceramique 2 FR','2014-06-03 00:00:00','2014-06-03 00:00:00','ev-ceramique-2-fr',3,0,'<p>dfbdwfg</p>','<p>wdfgdwfg</p>',1,1,'ev ceramique 2 FR','20.90',1),(19,'ev ceramique 3 FR','2014-06-05 00:00:00','2014-06-05 00:00:00','ev-ceramique-3-fr',4,0,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p>','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p>',1,1,'ev ceramique 3 FR','9.90',1),(20,'mais fff','2014-05-18 00:00:00','2014-05-18 00:00:00','mais-fff',2,0,'<p>ffff</p>','<p>ffff</p>',1,1,'fffff','9.90',1),(21,'ev ceramique 1 FR','2014-06-01 00:00:00','2014-06-01 00:00:00','ev-ceramique-1-fr-1',3,3,'<p>ffff</p>','<p>fffff</p>',6,3,'ev ceramique 2 FR','19.90',1),(22,'ev ceramique 2 FR','2014-06-01 00:00:00','2014-06-01 00:00:00','ev-ceramique-2-fr-1',3,1,'<p>fff</p>','<p>ffff</p>',6,3,'ev ceramique 2 en','9.90',1),(23,'ev ceramique 4 FR','2014-06-20 00:00:00','2014-06-20 00:00:00','ev-ceramique-4-fr',5,0,'<p>fff</p>','<p>fff</p>',6,3,'ev ceramique 4 FR','187.36',1),(24,'ev + jour','2014-06-23 00:00:00','2014-06-26 00:00:00','ev-jour',6,3,'<p>fff</p>','<p>fff</p>',6,3,'ev 3 jour en','124.36',4);

/*Table structure for table `formations` */

DROP TABLE IF EXISTS `formations`;

CREATE TABLE `formations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `titreFr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titreEn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `textFr` longtext COLLATE utf8_unicode_ci NOT NULL,
  `textEn` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `dateEdition` datetime NOT NULL,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_40902137989D9B62` (`slug`),
  KEY `IDX_40902137F6BD1646` (`site_id`),
  CONSTRAINT `FK_40902137F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `formations` */

insert  into `formations`(`id`,`site_id`,`titreFr`,`titreEn`,`textFr`,`textEn`,`date`,`dateEdition`,`slug`) values (1,1,'formation 1 eft','formation 1 eft en','<p>formation 1 texte fr</p>','<p>EN txt</p>','2014-05-27 04:42:46','2014-05-27 04:42:46','formation-1-eft'),(2,1,'formation 2 eft','formation 2 eft en','<p>blbala</p>','<p>blabla</p>','2014-05-27 04:51:04','2014-05-28 05:20:48','formation-2-eft'),(6,3,'Atelier Terre','formation 1 ceramic en','<p>Vous souhaitez mettre vos mains dans la terre et faire surgir de celle-ci une forme qui vous parle, profitez de ce temps personnel de calme et de d&eacute;tente dans un environnement accueillant. Venez d&eacute;couvrir ce <strong>travail passionnant</strong>, <strong>enrichissant</strong> et <strong>&eacute;panouissant</strong> &agrave; l&#39;atelier.</p><p>Le 1er objectif sera de d&eacute;couvrir la terre et sa plasticit&eacute; dans un lieu de <strong>rencontres</strong>, de <strong>cr&eacute;ations</strong> et de <strong>discussions</strong> dans le respect de la cr&eacute;ativit&eacute; de chacun. Nous ferons ensemble des exp&eacute;riences et partagerons nos d&eacute;couvertes</p><p>Pour les d&eacute;butants, l&#39;approche de la terre se fait par l&#39;<strong>apprentissage des diff&eacute;rentes techniques</strong> de base. Il n&#39;y a pas de th&egrave;me impos&eacute;.</p><p>Vous serez &eacute;cout&eacute; et conseill&eacute; selon le niveau auquel vous vous situez.</p><p>Les inscriptions ont cours&nbsp; toute l&#39;ann&eacute;e. Horaires &agrave; partir de janvier 2014 : le lundi de 13 &agrave; 16h et le mercredi de 14 &agrave; 17h.</p><ul><li>&nbsp;Abonnement de 10 cours : 140&euro;</li><li>Le paiement par s&eacute;ance est possible : 15&euro;</li><li>La terre sera disponible &agrave; l&#39;atelier et vendue 10&euro; le paquet de 10kgs. Elle sera la propri&eacute;t&eacute; du participant.</li><li>Nous accueillons &eacute;galement les enfants &agrave; partir de 5 ans: 10&euro;</li></ul>','<p>dwfgwfgw</p>','2014-05-28 20:43:11','2014-06-02 20:52:19','atelier-terre'),(7,3,'Atelier Collage','Atelier Collage EN','<p>L&#39;atelier collage est un lieu privil&eacute;gi&eacute; dans lequel les adultes r&eacute;alisent des collages dans la&nbsp;<strong>convivialit&eacute;</strong>&nbsp;et le&nbsp;<strong>plaisir</strong>. Comme l&#39;atelier Terre, c&#39;est une animation de groupe r&eacute;serv&eacute;e &agrave; la&nbsp;<strong>cr&eacute;ation</strong>, &agrave; la&nbsp;<strong>d&eacute;couverte</strong>&nbsp;et au<strong>partage</strong>.</p><p>C&#39;est un art de l&#39;arrangement d&#39;&eacute;l&eacute;ments disparates en papier ou non sur un support. Cette&nbsp;<strong>activit&eacute; extr&ecirc;mement ludique</strong>&nbsp;ne n&eacute;c&eacute;ssite aucun apprentissage et peu de mat&eacute;riel sp&eacute;cifique.</p><p>Venez vous extasier, venez r&ecirc;ver, venez composer..</p><ul><li>L&#39;activit&eacute; se tient une fois semaine, le mercredi matin de 9 &agrave; 12H</li><li>Chaque participant alimente la r&eacute;serve de papier</li><li>Tarif : 10&euro; le cours</li></ul>','<p>L&#39;atelier collage est un lieu privil&eacute;gi&eacute; dans lequel les adultes r&eacute;alisent des collages dans la&nbsp;<strong>convivialit&eacute;</strong>&nbsp;et le&nbsp;<strong>plaisir</strong>. Comme l&#39;atelier Terre, c&#39;est une animation de groupe r&eacute;serv&eacute;e &agrave; la&nbsp;<strong>cr&eacute;ation</strong>, &agrave; la&nbsp;<strong>d&eacute;couverte</strong>&nbsp;et au<strong>partage</strong>.</p><p>C&#39;est un art de l&#39;arrangement d&#39;&eacute;l&eacute;ments disparates en papier ou non sur un support. Cette&nbsp;<strong>activit&eacute; extr&ecirc;mement ludique</strong>&nbsp;ne n&eacute;c&eacute;ssite aucun apprentissage et peu de mat&eacute;riel sp&eacute;cifique.</p><p>Venez vous extasier, venez r&ecirc;ver, venez composer..</p><ul><li>L&#39;activit&eacute; se tient une fois semaine, le mercredi matin de 9 &agrave; 12H</li><li>Chaque participant alimente la r&eacute;serve de papier</li><li>Tarif : 10&euro; le cours</li></ul>','2014-06-15 18:45:41','2014-06-15 18:45:41','atelier-collage'),(8,3,'Atelier de Sand-Play','Atelier de Sand-Play EN','<p>L&#39;atelier de sand-play ou de sable est une&nbsp;<strong>activit&eacute; cr&eacute;ative</strong>&nbsp;qui a lieu &agrave; la demande des participants souhaitant &eacute;lucider une probl&eacute;matique personnelle.</p><p>Il dispose sur une surface limit&eacute;e, des &eacute;l&eacute;ments ( personnages, objets, mati&egrave;res ...) et met en mots sa probl&eacute;matique. Avec l&#39; animatrice, il en &eacute;tudie les composantes et envisage les changements n&eacute;cessaires.</p><ul><li>Paulette DEBEUR: 0495/187608</li></ul>','<p>L&#39;atelier de sand-play ou de sable est une&nbsp;<strong>activit&eacute; cr&eacute;ative</strong>&nbsp;qui a lieu &agrave; la demande des participants souhaitant &eacute;lucider une probl&eacute;matique personnelle.</p><p>Il dispose sur une surface limit&eacute;e, des &eacute;l&eacute;ments ( personnages, objets, mati&egrave;res ...) et met en mots sa probl&eacute;matique. Avec l&#39; animatrice, il en &eacute;tudie les composantes et envisage les changements n&eacute;cessaires.</p><ul><li>Paulette DEBEUR: 0495/187608</li></ul>','2014-06-15 18:46:55','2014-06-15 18:46:55','atelier-de-sand-play'),(9,2,'Analphabétisation','Analphabétisation EN','<p><strong>10% DE LA POPULATION BELGE NE SAIT NI LIRE NI ECRIRE ! Vous avez bien lu ! 10% de la population adulte en Communaut&eacute; Fran&ccedil;aise Wallonie Bruxelles est analphab&egrave;te.</strong></p><p>La d&eacute;finition d&#39;un analphab&egrave;te d&eacute;finie par l&#39;UNESCO en 1958 est la suivante : &quot; Un analphab&egrave;te ou illettr&eacute; est une personne incapable de lire et d&#39;&eacute;crire, en le comprenant, un expos&eacute; bref et simple de faits en rapport avec la vie quotidienne.</p><p>Ces personnes peuvent s&#39;exprimer clairement et avoir des occupations courantes et m&ecirc;me un travail mais elles ne savent ni lire ni &eacute;crire.</p><p>L&#39;illetrisme est d&ucirc; &agrave; un arr&ecirc;t trop pr&eacute;coce de l&#39;apprentissage ou aux difficult&eacute;s cit&eacute;es plus bas.</p><p>Il ne s&#39;agit en aucun cas d&#39;un d&eacute;ficit intellectuel.</p>','<p><strong>10% DE LA POPULATION BELGE NE SAIT NI LIRE NI ECRIRE ! Vous avez bien lu ! 10% de la population adulte en Communaut&eacute; Fran&ccedil;aise Wallonie Bruxelles est analphab&egrave;te.</strong></p><p>La d&eacute;finition d&#39;un analphab&egrave;te d&eacute;finie par l&#39;UNESCO en 1958 est la suivante : &quot; Un analphab&egrave;te ou illettr&eacute; est une personne incapable de lire et d&#39;&eacute;crire, en le comprenant, un expos&eacute; bref et simple de faits en rapport avec la vie quotidienne.</p><p>Ces personnes peuvent s&#39;exprimer clairement et avoir des occupations courantes et m&ecirc;me un travail mais elles ne savent ni lire ni &eacute;crire.</p><p>L&#39;illetrisme est d&ucirc; &agrave; un arr&ecirc;t trop pr&eacute;coce de l&#39;apprentissage ou aux difficult&eacute;s cit&eacute;es plus bas.</p><p>Il ne s&#39;agit en aucun cas d&#39;un d&eacute;ficit intellectuel.</p>','2014-06-15 18:54:52','2014-06-15 19:08:10','analphabetisation');

/*Table structure for table `imagearticles` */

DROP TABLE IF EXISTS `imagearticles`;

CREATE TABLE `imagearticles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `imagearticles` */

insert  into `imagearticles`(`id`,`url`,`alt`) values (5,'png','calendrier.png'),(6,'png','chev.png'),(7,'png','chev.png'),(8,'png','chev.png'),(9,'png','calendrier.png');

/*Table structure for table `imagerealisations` */

DROP TABLE IF EXISTS `imagerealisations`;

CREATE TABLE `imagerealisations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `imagerealisations` */

insert  into `imagerealisations`(`id`,`url`,`alt`) values (1,'jpeg','poterie1.JPG'),(2,'jpeg','poterie2.jpg'),(4,'jpeg','poterie3.jpg'),(5,'jpeg','poterie4.JPG'),(6,'jpeg','poterie1.JPG'),(7,'jpeg','poterie2.jpg'),(8,'jpeg','poterie3.jpg'),(9,'jpeg','poterie4.JPG');

/*Table structure for table `inscri` */

DROP TABLE IF EXISTS `inscri`;

CREATE TABLE `inscri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datenaissance` date DEFAULT NULL,
  `dateIsc` datetime DEFAULT NULL,
  `tel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genre` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pays` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evenementAgenda_id` int(11) NOT NULL,
  `amount` double DEFAULT NULL,
  `statut` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dl_token` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_complete` longtext COLLATE utf8_unicode_ci,
  `numTrans` int(11) DEFAULT NULL,
  `etatprov` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numInscrit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moyenpayement` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp` int(11) DEFAULT NULL,
  `lu` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A5EB8BA8989D9B62` (`slug`),
  UNIQUE KEY `UNIQ_A5EB8BA8DDBB484C` (`numTrans`),
  UNIQUE KEY `UNIQ_A5EB8BA81DD02AC2` (`numInscrit`),
  KEY `IDX_A5EB8BA8C9302461` (`evenementAgenda_id`),
  CONSTRAINT `FK_A5EB8BA8C9302461` FOREIGN KEY (`evenementAgenda_id`) REFERENCES `evenementsagenda` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `inscri` */

insert  into `inscri`(`id`,`datenaissance`,`dateIsc`,`tel`,`mail`,`genre`,`slug`,`adresse`,`ville`,`pays`,`nom`,`evenementAgenda_id`,`amount`,`statut`,`dl_token`,`paypal_complete`,`numTrans`,`etatprov`,`numInscrit`,`moyenpayement`,`cp`,`lu`) values (109,'2009-01-01','2014-06-12 12:18:33','04 222 55 88','hhhhh@fgr.com','M','pat-acheteur','Av. de la Pelouse, 87648672 Mayet','Paris','France','pat acheteur',21,19.9,'Completed','EC-2L5486827B086102S','{\"TOKEN\":\"EC-2L5486827B086102S\",\"SUCCESSPAGEREDIRECTREQUESTED\":\"false\",\"TIMESTAMP\":\"2014-06-12T12:18:31Z\",\"CORRELATIONID\":\"62b28add93239\",\"ACK\":\"Success\",\"VERSION\":\"114\",\"BUILD\":\"11411635\",\"TRANSACTIONID\":\"0RJ35009HG105464B\",\"TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTTYPE\":\"instant\",\"ORDERTIME\":\"2014-06-12T12:18:31Z\",\"AMT\":\"19.90\",\"FEEAMT\":\"0.93\",\"TAXAMT\":\"0.00\",\"CURRENCYCODE\":\"EUR\",\"PAYMENTSTATUS\":\"Completed\",\"PENDINGREASON\":\"None\",\"REASONCODE\":\"None\",\"PROTECTIONELIGIBILITY\":\"Eligible\",\"INSURANCEOPTIONSELECTED\":\"false\",\"SHIPPINGOPTIONISDEFAULT\":\"false\",\"PAYMENTINFO_0_TRANSACTIONID\":\"0RJ35009HG105464B\",\"PAYMENTINFO_0_TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTINFO_0_PAYMENTTYPE\":\"instant\",\"PAYMENTINFO_0_ORDERTIME\":\"2014-06-12T12:18:31Z\",\"PAYMENTINFO_0_AMT\":\"19.90\",\"PAYMENTINFO_0_FEEAMT\":\"0.93\",\"PAYMENTINFO_0_TAXAMT\":\"0.00\",\"PAYMENTINFO_0_CURRENCYCODE\":\"EUR\",\"PAYMENTINFO_0_PAYMENTSTATUS\":\"Completed\",\"PAYMENTINFO_0_PENDINGREASON\":\"None\",\"PAYMENTINFO_0_REASONCODE\":\"None\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\":\"Eligible\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\":\"ItemNotReceivedEligible,UnauthorizedPaymentEligible\",\"PAYMENTINFO_0_SECUREMERCHANTACCOUNTID\":\"8EYBCT8YCC6TQ\",\"PAYMENTINFO_0_ERRORCODE\":\"0\",\"PAYMENTINFO_0_ACK\":\"Success\"}',0,'Alsace','06109','PayPal',NULL,0),(111,'2009-01-01','2014-06-12 12:32:44','04 222 55 88','hhhhh@fgr.com','M','pat-acheteur-1','Av. de la Pelouse, 87648672 Mayet','Paris','France','pat acheteur',21,19.9,'Completed','EC-20T58540HG4402001','{\"TOKEN\":\"EC-20T58540HG4402001\",\"SUCCESSPAGEREDIRECTREQUESTED\":\"false\",\"TIMESTAMP\":\"2014-06-12T12:32:41Z\",\"CORRELATIONID\":\"cbbaf67756eba\",\"ACK\":\"Success\",\"VERSION\":\"114\",\"BUILD\":\"11411635\",\"TRANSACTIONID\":\"6JV598045F9801745\",\"TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTTYPE\":\"instant\",\"ORDERTIME\":\"2014-06-12T12:32:41Z\",\"AMT\":\"19.90\",\"FEEAMT\":\"0.93\",\"TAXAMT\":\"0.00\",\"CURRENCYCODE\":\"EUR\",\"PAYMENTSTATUS\":\"Completed\",\"PENDINGREASON\":\"None\",\"REASONCODE\":\"None\",\"PROTECTIONELIGIBILITY\":\"Ineligible\",\"INSURANCEOPTIONSELECTED\":\"false\",\"SHIPPINGOPTIONISDEFAULT\":\"false\",\"PAYMENTINFO_0_TRANSACTIONID\":\"6JV598045F9801745\",\"PAYMENTINFO_0_TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTINFO_0_PAYMENTTYPE\":\"instant\",\"PAYMENTINFO_0_ORDERTIME\":\"2014-06-12T12:32:41Z\",\"PAYMENTINFO_0_AMT\":\"19.90\",\"PAYMENTINFO_0_FEEAMT\":\"0.93\",\"PAYMENTINFO_0_TAXAMT\":\"0.00\",\"PAYMENTINFO_0_CURRENCYCODE\":\"EUR\",\"PAYMENTINFO_0_PAYMENTSTATUS\":\"Completed\",\"PAYMENTINFO_0_PENDINGREASON\":\"None\",\"PAYMENTINFO_0_REASONCODE\":\"None\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\":\"Ineligible\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\":\"None\",\"PAYMENTINFO_0_SECUREMERCHANTACCOUNTID\":\"8EYBCT8YCC6TQ\",\"PAYMENTINFO_0_ERRORCODE\":\"0\",\"PAYMENTINFO_0_ACK\":\"Success\"}',6,'Alsace','06111','PayPal',NULL,0),(113,'2009-01-01','2014-06-12 12:38:03','04 222 55 88','hhhhh@fgr.com','M','pat-acheteur-2','Av. de la Pelouse, 87648672 Mayet','Paris','France','pat acheteur',21,19.9,'Completed','EC-8UN592104P5741329','{\"TOKEN\":\"EC-8UN592104P5741329\",\"SUCCESSPAGEREDIRECTREQUESTED\":\"false\",\"TIMESTAMP\":\"2014-06-12T12:38:01Z\",\"CORRELATIONID\":\"64a7be573abe8\",\"ACK\":\"Success\",\"VERSION\":\"114\",\"BUILD\":\"11411635\",\"TRANSACTIONID\":\"2AS35806601283444\",\"TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTTYPE\":\"instant\",\"ORDERTIME\":\"2014-06-12T12:38:01Z\",\"AMT\":\"19.90\",\"FEEAMT\":\"0.93\",\"TAXAMT\":\"0.00\",\"CURRENCYCODE\":\"EUR\",\"PAYMENTSTATUS\":\"Completed\",\"PENDINGREASON\":\"None\",\"REASONCODE\":\"None\",\"PROTECTIONELIGIBILITY\":\"Ineligible\",\"INSURANCEOPTIONSELECTED\":\"false\",\"SHIPPINGOPTIONISDEFAULT\":\"false\",\"PAYMENTINFO_0_TRANSACTIONID\":\"2AS35806601283444\",\"PAYMENTINFO_0_TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTINFO_0_PAYMENTTYPE\":\"instant\",\"PAYMENTINFO_0_ORDERTIME\":\"2014-06-12T12:38:01Z\",\"PAYMENTINFO_0_AMT\":\"19.90\",\"PAYMENTINFO_0_FEEAMT\":\"0.93\",\"PAYMENTINFO_0_TAXAMT\":\"0.00\",\"PAYMENTINFO_0_CURRENCYCODE\":\"EUR\",\"PAYMENTINFO_0_PAYMENTSTATUS\":\"Completed\",\"PAYMENTINFO_0_PENDINGREASON\":\"None\",\"PAYMENTINFO_0_REASONCODE\":\"None\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\":\"Ineligible\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\":\"None\",\"PAYMENTINFO_0_SECUREMERCHANTACCOUNTID\":\"8EYBCT8YCC6TQ\",\"PAYMENTINFO_0_ERRORCODE\":\"0\",\"PAYMENTINFO_0_ACK\":\"Success\"}',2,'Alsace','06113','PayPal',NULL,1),(114,'2009-01-01','2014-06-12 12:48:50','04 222 55 88','hhhhh@fgr.com','M','pat-acheteur-3','Av. de la Pelouse, 87648672 Mayet','Paris','France','pat acheteur',22,9.9,'Completed','EC-3G44706437424314B','{\"TOKEN\":\"EC-3G44706437424314B\",\"SUCCESSPAGEREDIRECTREQUESTED\":\"false\",\"TIMESTAMP\":\"2014-06-12T12:48:48Z\",\"CORRELATIONID\":\"365544e639e73\",\"ACK\":\"Success\",\"VERSION\":\"114\",\"BUILD\":\"11411635\",\"TRANSACTIONID\":\"4BP48258P4713051W\",\"TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTTYPE\":\"instant\",\"ORDERTIME\":\"2014-06-12T12:48:48Z\",\"AMT\":\"9.90\",\"FEEAMT\":\"0.59\",\"TAXAMT\":\"0.00\",\"CURRENCYCODE\":\"EUR\",\"PAYMENTSTATUS\":\"Completed\",\"PENDINGREASON\":\"None\",\"REASONCODE\":\"None\",\"PROTECTIONELIGIBILITY\":\"Eligible\",\"INSURANCEOPTIONSELECTED\":\"false\",\"SHIPPINGOPTIONISDEFAULT\":\"false\",\"PAYMENTINFO_0_TRANSACTIONID\":\"4BP48258P4713051W\",\"PAYMENTINFO_0_TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTINFO_0_PAYMENTTYPE\":\"instant\",\"PAYMENTINFO_0_ORDERTIME\":\"2014-06-12T12:48:48Z\",\"PAYMENTINFO_0_AMT\":\"9.90\",\"PAYMENTINFO_0_FEEAMT\":\"0.59\",\"PAYMENTINFO_0_TAXAMT\":\"0.00\",\"PAYMENTINFO_0_CURRENCYCODE\":\"EUR\",\"PAYMENTINFO_0_PAYMENTSTATUS\":\"Completed\",\"PAYMENTINFO_0_PENDINGREASON\":\"None\",\"PAYMENTINFO_0_REASONCODE\":\"None\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\":\"Eligible\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\":\"ItemNotReceivedEligible,UnauthorizedPaymentEligible\",\"PAYMENTINFO_0_SECUREMERCHANTACCOUNTID\":\"8EYBCT8YCC6TQ\",\"PAYMENTINFO_0_ERRORCODE\":\"0\",\"PAYMENTINFO_0_ACK\":\"Success\"}',4,'Alsace','06114','PayPal',NULL,0),(116,'2009-01-01','2014-06-14 05:36:26','04 222 55 88','hhhhh@fgr.com','M','pat-acheteur-4','Av. de la Pelouse, 87648672 Mayet','Paris','France','pat acheteur',24,124.36,'Completed','EC-1A610233PF501473X','{\"TOKEN\":\"EC-1A610233PF501473X\",\"SUCCESSPAGEREDIRECTREQUESTED\":\"false\",\"TIMESTAMP\":\"2014-06-14T05:36:23Z\",\"CORRELATIONID\":\"d3dd66fd32adb\",\"ACK\":\"Success\",\"VERSION\":\"114\",\"BUILD\":\"11411635\",\"TRANSACTIONID\":\"73A878714K916935N\",\"TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTTYPE\":\"instant\",\"ORDERTIME\":\"2014-06-14T05:36:22Z\",\"AMT\":\"124.36\",\"FEEAMT\":\"4.48\",\"TAXAMT\":\"0.00\",\"CURRENCYCODE\":\"EUR\",\"PAYMENTSTATUS\":\"Completed\",\"PENDINGREASON\":\"None\",\"REASONCODE\":\"None\",\"PROTECTIONELIGIBILITY\":\"Eligible\",\"INSURANCEOPTIONSELECTED\":\"false\",\"SHIPPINGOPTIONISDEFAULT\":\"false\",\"PAYMENTINFO_0_TRANSACTIONID\":\"73A878714K916935N\",\"PAYMENTINFO_0_TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTINFO_0_PAYMENTTYPE\":\"instant\",\"PAYMENTINFO_0_ORDERTIME\":\"2014-06-14T05:36:22Z\",\"PAYMENTINFO_0_AMT\":\"124.36\",\"PAYMENTINFO_0_FEEAMT\":\"4.48\",\"PAYMENTINFO_0_TAXAMT\":\"0.00\",\"PAYMENTINFO_0_CURRENCYCODE\":\"EUR\",\"PAYMENTINFO_0_PAYMENTSTATUS\":\"Completed\",\"PAYMENTINFO_0_PENDINGREASON\":\"None\",\"PAYMENTINFO_0_REASONCODE\":\"None\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\":\"Eligible\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\":\"ItemNotReceivedEligible,UnauthorizedPaymentEligible\",\"PAYMENTINFO_0_SECUREMERCHANTACCOUNTID\":\"8EYBCT8YCC6TQ\",\"PAYMENTINFO_0_ERRORCODE\":\"0\",\"PAYMENTINFO_0_ACK\":\"Success\"}',73,'Alsace','06116','PayPal',75002,0),(117,'2014-06-03','2014-06-14 00:00:00','444444444444444','444444444@ffffff.com',NULL,'Accueil',NULL,NULL,NULL,'Accueil',21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(118,NULL,'2014-06-14 17:33:22',NULL,NULL,NULL,'-1',NULL,NULL,NULL,NULL,24,124.36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(119,NULL,'2014-06-14 17:37:31',NULL,NULL,NULL,'-2',NULL,NULL,NULL,NULL,24,124.36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);

/*Table structure for table `realisations` */

DROP TABLE IF EXISTS `realisations`;

CREATE TABLE `realisations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `titreFr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titreEn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `textFr` longtext COLLATE utf8_unicode_ci,
  `textEn` longtext COLLATE utf8_unicode_ci,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `dimension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `vendu` tinyint(1) NOT NULL,
  `realiserpar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_FC5C476D989D9B62` (`slug`),
  UNIQUE KEY `UNIQ_FC5C476D3DA5256D` (`image_id`),
  KEY `IDX_FC5C476DF6BD1646` (`site_id`),
  CONSTRAINT `FK_FC5C476D3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `imagerealisations` (`id`),
  CONSTRAINT `FK_FC5C476DF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `realisations` */

insert  into `realisations`(`id`,`site_id`,`titreFr`,`titreEn`,`textFr`,`textEn`,`slug`,`dimension`,`prix`,`vendu`,`realiserpar`,`image_id`) values (1,3,'Pot émaillé rond','realisation 1 en','<p>dfgdfgqdfg</p>','<p>gfdqfgdqsg</p>','pot-emaille-rond','ø163/H40mm','26.00',0,'Jane Affaire',1),(3,3,'Récipients divers','realisation 2 en','<p>ghwdfgwdf</p>','<p>wdfgwdfgwd</p>','recipients-divers','ø163/H40mm','478.00',1,'Jane Affaire',2),(4,3,'Vase romain','realisation 3 en',NULL,NULL,'vase-romain','ø163/H40mm','145.00',0,'Jane Affaire',4),(5,3,'Objet décoratif','realisation 4 en',NULL,NULL,'objet-decoratif','ø163/H40mm','75.00',1,'Jane Affaire',5),(6,3,'Pot émaillé rond','realisation 5 en',NULL,NULL,'pot-emaille-rond-1','ø163/H40mm','26.00',0,'Jane Affaire',6),(7,3,'Récipients divers','Récipients divers en',NULL,NULL,'recipients-divers-1','ø163/H40mm','478.00',0,'Jane Affaire',7),(8,3,'Vase romain','Vase romain en',NULL,NULL,'vase-romain-1','ø163/H40mm','145.00',0,'Jane Affaire',8),(9,3,'Objet décoratif','Objet décoratif en',NULL,NULL,'objet-decoratif-1','ø163/H40mm','75.00',0,'Jane Affaire',9);

/*Table structure for table `rubriques` */

DROP TABLE IF EXISTS `rubriques`;

CREATE TABLE `rubriques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomFr` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nomEn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descriptionFr` longtext COLLATE utf8_unicode_ci,
  `descriptionEn` longtext COLLATE utf8_unicode_ci,
  `url` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `menusite` tinyint(1) NOT NULL,
  `icone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rubrique_id` int(11) DEFAULT NULL,
  `asouscat` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C0C3D4B6FEBEE52F` (`icone`),
  KEY `IDX_C0C3D4B63BD38833` (`rubrique_id`),
  CONSTRAINT `FK_C0C3D4B63BD38833` FOREIGN KEY (`rubrique_id`) REFERENCES `rubriques` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `rubriques` */

insert  into `rubriques`(`id`,`nomFr`,`nomEn`,`descriptionFr`,`descriptionEn`,`url`,`menusite`,`icone`,`rubrique_id`,`asouscat`) values (6,'Accueil','Accueil EN','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','EN - Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','soleil_sous_site_accueil',1,'fa fa-home',NULL,1),(7,'Nos réalisations','Nos réalisation EN','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','EN - Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','soleil_realisation_accueil',1,'fa fa-picture-o',NULL,1),(8,'Agenda & inscription','Agenda & inscription EN','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','EN - Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','soleil_agenda_accueil',1,'fa fa-calendar-o',NULL,1),(9,'Faire un don','Faire un don EN','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','EN - Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','soleil_don_accueil',1,'fa fa-euro',NULL,0),(10,'Contact','Contact EN','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','EN - Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','soleil_contact_accueil',1,'fa fa-envelope-o',NULL,0),(11,'Données personelles','Article EN','fdgLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','fgdsfg','soleil_config_accueil',0,'fa fa-gear',NULL,0),(14,'Réalisations','Réalisation En','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','soleil_realisation_accueil_admin',0,'ffdd',7,0),(15,'Commandes','Commande En','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','soleil_commande_accueil_admin',0,'vvv',7,0),(16,'PM Accueil','Accueil EN','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','soleil_sous_site_accueil_admin',0,'dddeeccc',6,0),(18,'Formations','Formation En','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','soleil_formation_accueil_admin',0,'xxwws',6,0),(19,'Articles','Article En','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','soleil_article_accueil_admin',0,'yyhhgg',6,0),(20,'Agenda','Agenda EN','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non','soleil_agenda_accueil_admin',0,'fff',8,0),(21,'Inscription','inscription EN','fdgdfg','wdfgdwfg','soleil_agenda_inscription_admin',0,'ffff',8,0);

/*Table structure for table `site_rubrique` */

DROP TABLE IF EXISTS `site_rubrique`;

CREATE TABLE `site_rubrique` (
  `site_id` int(11) NOT NULL,
  `rubrique_id` int(11) NOT NULL,
  PRIMARY KEY (`site_id`,`rubrique_id`),
  KEY `IDX_83E9B6A6F6BD1646` (`site_id`),
  KEY `IDX_83E9B6A63BD38833` (`rubrique_id`),
  CONSTRAINT `FK_83E9B6A63BD38833` FOREIGN KEY (`rubrique_id`) REFERENCES `rubriques` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_83E9B6A6F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `site_rubrique` */

insert  into `site_rubrique`(`site_id`,`rubrique_id`) values (1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11);

/*Table structure for table `sites` */

DROP TABLE IF EXISTS `sites`;

CREATE TABLE `sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domaine` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titreFr` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `titreEn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descFr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descEn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domaine_UNIQUE` (`domaine`),
  UNIQUE KEY `UNIQ_BC00AA635846964A` (`descFr`),
  UNIQUE KEY `UNIQ_BC00AA63676A99C6` (`descEn`),
  UNIQUE KEY `UNIQ_BC00AA63C53D045F` (`image`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sites` */

insert  into `sites`(`id`,`domaine`,`titreFr`,`titreEn`,`descFr`,`descEn`,`image`) values (1,'www.eft.com','EFT','L\'eft EN','Entrez en harmonie','Entrez en harmonie En','eft_avec-le-soleil.jpg'),(2,'www.alpha.com','ANALPHABETISATION','L\'alphabétisation EN','Apprenez à lire et à écrire','Apprenez à lire et à écrire En','analphabetisation_avec-le-soleil.jpg'),(3,'www.ceramique.com','CERAMIQUE','La céramique EN','Augmentez votre créativité','Augmentez votre créativité En','ceramique_avec-le-soleil.jpg'),(4,'www.soleil.com','SOLEIL','Avec le soleil EN','nnnn','nnnn','');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1483A5E992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_1483A5E9A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`username_canonical`,`email`,`email_canonical`,`enabled`,`salt`,`password`,`last_login`,`locked`,`expired`,`expires_at`,`confirmation_token`,`password_requested_at`,`roles`,`credentials_expired`,`credentials_expire_at`) values (1,'user','user','user@hotmail.com','user@hotmail.com',1,'hfuvc8p9cm8kkgkswoowcg4gwwooook','EwPTzGQB1jX0uuNyqZeXu+XnUu80vqsJlR6/3ni2B2n9d+V6TG43pjT0E7fV87utBAFs64M6NK0kSCnrQrEdkQ==','2014-06-15 18:51:29',0,0,NULL,NULL,NULL,'a:1:{i:0;s:10:\"ROLE_ADMIN\";}',0,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
