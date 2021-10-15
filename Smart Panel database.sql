-- MySQL dump 10.19  Distrib 10.3.28-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: greavnpw_test
-- ------------------------------------------------------
-- Server version	10.3.28-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `api_providers`
--

DROP TABLE IF EXISTS `api_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(15,5) DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_user_id_foreign` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_providers`
--

LOCK TABLES `api_providers` WRITE;
/*!40000 ALTER TABLE `api_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_custom_page`
--

DROP TABLE IF EXISTS `general_custom_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_custom_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text DEFAULT NULL,
  `pid` int(1) DEFAULT 1,
  `position` int(1) DEFAULT 0,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_custom_page`
--

LOCK TABLES `general_custom_page` WRITE;
/*!40000 ALTER TABLE `general_custom_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `general_custom_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_file_manager`
--

DROP TABLE IF EXISTS `general_file_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_file_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `file_name` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `file_type` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `file_ext` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `file_size` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `is_image` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=345 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_file_manager`
--

LOCK TABLES `general_file_manager` WRITE;
/*!40000 ALTER TABLE `general_file_manager` DISABLE KEYS */;
INSERT INTO `general_file_manager` (`id`, `ids`, `uid`, `file_name`, `file_type`, `file_ext`, `file_size`, `is_image`, `image_width`, `image_height`, `created`) VALUES (316,'7be3e2d6c942ccaa6b826734a318f45e',38,'b4267941181e78ad4fd349c022064002.png','image/png','png','47.94','1',512,421,'2019-10-25 03:43:15'),(317,'142f6d821c035320fced7dd93927d94d',38,'800b40cfd88a36416c0e0abdbb96a9a5.png','image/png','png','8.57','1',400,200,'2019-10-25 03:55:47'),(318,'512616f18936bf5c93d200d29a5d90e6',38,'f9ad7ea07133ea133ca4141cedef5277.png','image/png','png','8.57','1',400,200,'2019-10-25 03:55:52'),(319,'b000f37e3e9845a4f04bb4430b72683e',38,'c559c0b571b682c00b5bb4709c21d806.png','image/png','png','3.31','1',329,46,'2019-10-25 03:57:36'),(320,'305192acd2195f6f3ac99feb10b0a93c',38,'854db8e14a1164e27c59605ff6164232.png','image/png','png','13.86','1',500,100,'2019-10-25 04:01:09'),(321,'9a3076d5264448624b8c73c2d3cfdf6b',38,'c53ed6340129f432f5f1086c73a0c9b0.png','image/png','png','93.6','1',1873,436,'2019-10-25 04:07:25'),(322,'bdb4f130d6f983fc2de557a2c63cc262',38,'9ad716d4202ce02e5af137121a1ea2af.png','image/png','png','93.6','1',1873,436,'2019-10-25 04:07:29'),(323,'8aa9599f130930e99873cb9431374b78',38,'fc7760b99dd0d21178d9e03919dcdf62.png','image/png','png','5.2','1',500,100,'2019-10-25 04:24:44'),(324,'5030bc07ffa83c7e2cb631b034d271ad',38,'b15ad166f89dfac82e6edc97fc73c93b.png','image/png','png','48.93','1',768,540,'2019-10-25 04:25:17'),(325,'b92efa482b7f3373752c2a1aa485a878',38,'ec5f63c12959b38197b644992a006b69.png','image/png','png','7.99','1',500,100,'2019-10-25 04:27:06'),(326,'67ba0f4f75796e410eb1c5206e281fa0',49,'534e154d2f0910045db061fc8660b6da.png','image/png','png','4.49','1',54,49,'2019-11-09 13:33:35'),(327,'89bb4088fa5e32d44fb763011aa6ac22',49,'491e436e124c4310a37cbfe723fbd91c.png','image/png','png','5.3','1',167,52,'2019-11-09 13:33:45'),(328,'7844a6fa6e673cda319a0ebdc4eda0b4',49,'cbca1f079a56352c7feddb144c8a7c59.png','image/png','png','5.43','1',167,52,'2019-11-09 13:33:54'),(329,'98c52fd1992c4301490deed02613589e',49,'8a5838e5e488d8e7494e43fee760b0ca.png','image/png','png','5.3','1',167,52,'2019-11-09 13:34:00'),(330,'3b24d8b53f602d670a902116a82c4ab0',49,'39ff409acd9037f153f312e720114852.png','image/png','png','35.13','1',500,500,'2020-01-19 10:27:52'),(331,'5f8b3bacd5e33fbf59b4bfee4024df3f',49,'b712f301819aeac333889ae94d23024e.png','image/png','png','7.7','1',350,65,'2020-01-19 10:29:09'),(332,'f400f19e3c02d20f7bf0bd197fd3d03f',49,'a44d38c158ffa973f22e96ae7093cb3c.png','image/png','png','7.7','1',350,65,'2020-01-19 10:29:16'),(333,'701b4575362e87a5640f54828408b552',49,'79bdcf42dedc1530dcb00a6d15b0e699.png','image/png','png','138.67','1',1920,307,'2020-01-22 11:03:51'),(334,'7319f787795acac361441788c444826f',49,'afac33c61f2d56d980758e350613864a.png','image/png','png','253.27','1',3264,522,'2020-01-22 11:04:00'),(335,'02554da9f0a3083adbe290d4800baf50',49,'5ba0e482f04299b2fdb22095ebcda084.png','image/png','png','138.67','1',1920,307,'2020-01-22 11:04:07'),(336,'1b245abab9e3202b4255cd4c5c48887a',49,'daec04fad60ddd58d5f3797061d2c8ba.png','image/png','png','160.49','1',1920,307,'2020-01-22 11:06:29'),(337,'2a0492cfaa33a398837c4efaf5bd1318',49,'00ec2a6ce776c11aa0acf805b8e581e3.png','image/png','png','297.66','1',3264,522,'2020-03-27 07:45:37'),(338,'62d9c6703a9eb9551b0c27dcc9e37f62',49,'6414d0976ea96bfa0a379dbc528c5056.png','image/png','png','3.58','1',200,200,'2020-03-27 07:47:36'),(339,'5db6919e802cbe4669661ee3800d181f',49,'14e55bcb96b585d1a0f47f7fbf39efd2.png','image/png','png','32.22','1',500,500,'2020-05-31 20:11:51'),(340,'0dcfe39d4dc872755e0cfd572cda8828',49,'817f2406a8c2e96bd8da07c4a56cddd5.png','image/png','png','136.03','1',1920,438,'2020-05-31 20:12:45'),(341,'66eab5424cbfbb018b54eff17ad4b19d',49,'34b7107054535f138042bb3e32d1ade4.png','image/png','png','137.45','1',1920,438,'2020-05-31 20:12:49'),(342,'2f20d4b4fef8570b697bafda9a32d9c5',49,'4ac96c18138cb6a62f8f74d30b33e3a8.png','image/png','png','136.03','1',1920,438,'2020-05-31 20:13:11'),(343,'96b0ed1d1d2b9e8a42fd0a143f54051a',49,'ad347a580e5dc6de144763a1a2ad666f.png','image/png','png','136.03','1',1920,438,'2020-05-31 20:15:11'),(344,'69501f0f6b14dd261624830d845facfe',49,'ab7e75f8940ba5adb45658e37ec75738.png','image/png','png','48.64','1',1280,333,'2021-04-18 01:57:27');
/*!40000 ALTER TABLE `general_file_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_lang`
--

DROP TABLE IF EXISTS `general_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` varchar(100) DEFAULT NULL,
  `lang_code` varchar(10) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=604 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_lang`
--

LOCK TABLES `general_lang` WRITE;
/*!40000 ALTER TABLE `general_lang` DISABLE KEYS */;
INSERT INTO `general_lang` (`id`, `ids`, `lang_code`, `slug`, `value`) VALUES (1,'ba7f3a95619fbf222f8819663edac02f','en','Statistics','Statistics'),(2,'384388a0c2d121fefc74f678d5777ab1','en','Services','Services'),(3,'f30e5a24e43fccdb374f484b26939076','en','Order','Order'),(4,'8dc6bc8c72350be9c050b3663125dbce','en','order_logs','Order Logs'),(5,'44397306c1f28441d3b1f146cd77d5cc','en','New_order','New Order'),(6,'9092efaed55acd3983ecbe2558daa994','en','API','API'),(7,'b9cc9143fdf27336faa381fcd803a2ad','en','user_manager','User manager'),(8,'942734cd508457e7088524fc63d24291','en','user_activity_logs','User Activity Logs'),(9,'1da0edbadecf698617994de3cd99c91a','en','banned_ip_address_list','Banned IP Address List'),(10,'12d38ed7621c3191bd26d9fc7fe57f43','en','system_settings','System Settings'),(11,'65dee36ac6f2326f94c429492ffeb15b','en','API_providers','API Providers'),(12,'c7e6770240973c0f912be2ce475c4283','en','Language','Language'),(13,'5a459cc73f489de417e02c8e3494dd92','en','Documentation','Documentation'),(14,'c587a9d16e4317ab7db5bfd952b30451','en','Support','Support'),(15,'bc12131a9d5ae49bfdae8535cba057d2','en','Profile','Profile'),(16,'309dbb07232e103ab11835402a7cc1a0','en','Admin_account','Admin account'),(17,'e472f460649d194699d8fda8ec9db516','en','Add_funds','Add funds'),(18,'beeffeb3ff4aea4b6bb8dea2e3577457','en','Add_money','Add money'),(19,'8fa40a16ae0535ab3bf95582cee0b061','en','Hi','Hi'),(20,'a0abed164a214f9997aa3ab2bfd063df','en','Enter_license','Enter license'),(21,'6d9578ae1b9ae4bca6f9281b0d261b0b','en','Quick_links','Quick Links'),(22,'9778776628eef57c7efd0881feb05ddb','en','terms__conditions','Terms & Conditions'),(23,'36100c1de1d9f69962296bab1ff8fa09','en','Home','Home'),(24,'028856efdc2ef7e4402488ccdf04217a','en','Copyright','Copyright © 2020'),(25,'109dbdbd4775f0087991759e14170a58','en','add_new','Add new'),(26,'c4ffad329ce538cc9770f3f1a6f3fee6','en','Lists','Lists'),(27,'40c12e87f83127746375ca41c2b2a494','en','No_','No.'),(28,'7c40169f4a72fc219ea4b67cb4653e65','en','Created','Created'),(29,'b2efb73e263360d0ce2e2994c8969606','en','Updated','Updated'),(30,'a207af48413328cc0a72616c7680a685','en','Status','Status'),(31,'09856389d37fe24c848ffb97eb8e0749','en','Action','Action'),(32,'31d87163c0d3ec85004eb1ce5a17d863','en','Description','Description'),(33,'39a69ffef4e8ca63af62990df2c4bb09','en','Edit','Edit'),(34,'a1fc7aca08029eaad0a524c127313f80','en','Delete','Delete'),(35,'eb4858485dacc829a496540f281f275e','en','Active','Active'),(36,'f7ec4b7736d163a138f85a53948c91b4','en','Deactive','Deactive'),(37,'31e61013ec45b2bd71d468d7e244adc4','en','Yes','Yes'),(38,'fbcb436b313ffa98d3b8677ff1662f1f','en','No','No'),(39,'70b7e88780b0f9bb283872a607d9c838','en','Email','E-mail'),(40,'cdf01a122685ed5d42b125588cad98bb','en','Timezone','Time zone'),(41,'672387fd88cecf91e6dd756e7384b315','en','Password','Password'),(42,'2c17a3857449df4fa6370cfe8ebfe608','en','Confirm_password','Confirm Password'),(43,'86bd049a203db51a0b59e73e3d87ceb7','en','Save','Save'),(44,'35442814628b17c8d4febda25f574136','en','look_like_there_are_no_results_in_here','Look like there are no results in here!'),(45,'ac06f2a969cecb1b9092a426f7baf08d','en','Subject','Subject'),(46,'9fdb9986dd5155e93777c178e85e88c9','en','Content','Content'),(47,'b7b59adcd294456dc7ab56981ae141e0','en','Message','Message'),(48,'0881f7f21f50a217a6fa748cb81930ae','en','Submit','Submit'),(49,'7d9f52841b97661faabe59beffa89365','en','Cancel','Cancel'),(50,'4acc7a45ff5bcec18f22611e103c5112','en','Password_is_required','Password is required'),(51,'d051c51c6bc8c92475edf0cda0a8f7d4','en','email_is_required','Email is required'),(52,'8541a2c9de10659f9d47e7a70220f60a','en','invalid_email_format','Invalid email format'),(53,'233858d6c38d48816f33f9c21faf5b1e','en','Password_must_be_at_least_6_characters_long','Password must be at least 6 characters long'),(54,'ade350fcb0c65613c915ae130cb5547f','en','Password_does_not_match_the_confirm_password','Password does not match the confirm password'),(55,'3bb154fb5f4bc4df2cfca2b54fad101a','en','There_was_an_error_processing_your_request_Please_try_again_later','There was an error processing your request. Please try again later                                                                                                                        '),(56,'5b8eb72fd60c55edab6bcef05a4fdf78','en','Update_successfully','Update successfully'),(57,'95cfd820fdb1ccf7cba010896de5d87f','en','Deleted_successfully','Deleted successfully'),(58,'3000f58788a1dccdaee8ac2bceb8218f','en','the_item_does_not_exist_please_try_again','The item does not exist. Please try again'),(59,'0e8d1ce66c47a173e880874ea0e75c03','en','Are_you_sure_you_want_to_delete_this_item','Are you sure you want to delete this item?'),(60,'45401219759bbb336200241e33fcfbba','en','Are_you_sure_you_want_to_delete_all_items','Are you sure you want to delete all items?'),(61,'1a6169d66ce21408114dec48091d8ea9','en','please_choose_at_least_one_item','Please choose at least one item'),(62,'51cc463662c8906c54eda5ab770caa29','en','Search_for_','Search for...'),(63,'de67ce1968c6efb9d354283ca18e6eaf','en','Sign_out','Sign out'),(64,'d9571b63cf1d6c6eac47dc12e855938d','en','Sign_Up','Sign Up'),(65,'849365512da2bcdab12e6094aac88d89','en','Login','Login'),(66,'7eb5741bce2aa33dea9e335b446d9672','en','note','Note:'),(67,'437934e44eca4de98cb7c1f541056384','en','Facebook','Facebook'),(68,'8a0d30f4f983e38ededb98bb57ff7847','en','Instagram','Instagram'),(69,'7b440149483ec3c4f424fa7108773271','en','Pinterest','Pinterest'),(70,'a67f2b68433737c94744ac7e297031c6','en','Twitter','Twitter'),(71,'01f8d00a1446af2f863726d1125f0a0a','en','Paypal','Paypal'),(72,'7ec37dc674eaf0ed58a6475a2f3b4d7f','en','2Checkout','2Checkout'),(73,'db24aafc374b79a4e581bf34ba7b8a40','en','Stripe','Stripe'),(74,'c5a93268fa8b66354a2c55a6d7ee20b5','en','users','Users'),(75,'979c0f95b8d9692d6245bac1883b0c19','en','admin','Admin'),(76,'ec200cd9fef6ad7828021c1b7e5913bf','en','regular_user','Regular User'),(77,'8be39a66d18c271ed54c50a607832c94','en','Funds','Funds'),(78,'5fdbae5aa2e1da60e6b6c5d15a81fddb','en','User_profile','User profile'),(79,'4a08f18cbe5f1d0ed19a445bbf363386','en','send_mail','Send Mail'),(80,'2f3f716cabc3f22fad3e3a6edf949b84','en','Edit_user','Edit user'),(81,'e55dc33ebe9bd2e0525b48ba8394a5bf','en','basic_information','Basic Information'),(82,'ae0afb7ea6719c5de0781740f57e9264','en','first_name','First name'),(83,'eb87dd87a4de0877c5c0dc6557ecbf92','en','last_name','Last name'),(84,'d4228b9b142550fdff1fac2fac286995','en','account_type','Account type'),(85,'4341731f841c53962d056908c5af243c','en','note_if_you_dont_want_to_change_password_then_leave_these_password_fields_empty','Note: If you don\'t want to change password then leave these password fields empty!                                                                                                                        '),(86,'88cbb17d8c3e39ea589115c6c98f8775','en','more_informations','More Informations'),(87,'80e6dc1a76c2231753657c33fae70db4','en','whatsapp_number','WhatsApp Number'),(88,'80fa8e808b47fbb5c6dfa9d1782d3861','en','Website','Website'),(89,'e8704131c20be4c60a45a638c3e87613','en','Phone','Phone'),(90,'3b8fb3a6477b13c89045c13c96e22faa','en','Skype_id','Skype ID'),(91,'7075928ebe7f4ea8a6bb78469fc7be14','en','Address','Address'),(92,'b814c45fe2cf2b1801936475fa43ba6f','en','note_if_you_dont_want_add_more_information_then_leave_these_informations_fields_empty','Note: If you don\'t want add more information then leave these informations fields empty!                                                                                                                        '),(93,'4321c0dada849618a3f977b1a08c906f','en','To','To'),(94,'009dc761151b7f92f26ef1f9352a3fc2','en','please_fill_in_the_required_fields','Please fill in the required fields'),(95,'1c83162a8c8befbbba3d7ad13b24db44','en','An_account_for_the_specified_email_address_already_exists_Try_another_email_address','An account for the specified email address already exists. Try another email address                                                                                                                        '),(96,'5f2b2260735e3a626589d578b441f875','en','subject_is_required','Subject is required'),(97,'c476355e22599f419a5afc2c7512067b','en','message_is_required','Message is required'),(98,'2bb017aaa87d11185870591ee0949c7e','en','description_is_required','Description is required'),(99,'4d1f0496f80fc59ea6ee7a8f426d87e8','en','your_email_has_been_successfully_sent_to_user','Your email has been successfully sent to user'),(100,'931ed18b709d88dc03f2d78ace2c3929','en','the_account_does_not_exists','The account does not exists'),(101,'f7a88980406532d1716a08cd296bb918','en','the_input_value_was_not_a_correct_number','The input value was not a correct number'),(102,'f6e21dacc5e4edc6eccca4c722f28ba8','en','can_not_delete_administrator_account','Can not delete Administrator account'),(103,'273456148c36fd71dfcd0ea318633495','en','custom_rate','Custom rate(%)'),(104,'c3e83c718426cf0140e59d535e519b23','en','history_ip','history_ip'),(105,'fe2f3c5da1d8859865f078037aeefdee','en','view_user','View User'),(106,'891e880c7aae2ed68999e026afda3c1c','en','Back_to_Admin','Back to Admin'),(107,'d2eb4d9f21fcc264b4c6f873ae0876fb','en','Settings','Settings'),(108,'d68d293508b1e57396a32b498b9e811b','en','general_settings','General Settings'),(109,'f08d8a3a751e72a831787d5ba6efccae','en','website_setting','WebSite Setting'),(110,'244b5000de463cf530ac43e78a3a2f4a','en','Logo','Website Logo'),(111,'fa35e4aa91c1497c7a49cb9d0139d60b','en','terms__policy_page','Terms & Policy page'),(112,'7662db23883d376888493f36646d91c4','en','default_setting','Default Setting'),(113,'62e93c7e78ffb9fb0b3692eec702cdb4','en','Other','Other'),(114,'d6b0f67b05c9b729087b7256a4ea5976','en','email_setting','Email Setting'),(115,'37f948e39bfdbd4ddd1e010d785575b3','en','email_template','Email Template'),(116,'5bd09eeb6fe4a2680e48e30b18cb3010','en','integrations','Integrations'),(117,'2d7a9d3fc334fa1f5bd243856cb7ce44','en','Payment','Payment'),(118,'f81655cc228ced7ea0c4188eeda872e5','en','Maintenance_mode','Maintenance mode'),(119,'754dad95860c369562b1804b88c0619d','en','link_to_access_the_maintenance_mode','Make sure you remmeber this link to get access Maintenance mode before you activate:                                                                                                                        '),(120,'92309ad30335832da024d3394c645919','en','website_name','Website name'),(121,'1236f6a737f936fdef7f66196bba8481','en','website_description','Website description'),(122,'7e684babc327fd2566846d76a9cd84be','en','website_keywords','Website keywords'),(123,'185ca2c9efa5ad8b22ec38491029763b','en','website_title','Website title'),(124,'c01aa77e13938535d83f3f6656f220e8','en','website_logo','Website Logo'),(125,'74f5110d2675a55d15d4660cc74ca8e1','en','website_favicon','Website favicon'),(126,'1363622ee64e5b70248188f00b0f44de','en','website_logo_white','Website logo (white)'),(127,'091bcfdcba021978543b392d3c1637a2','en','terms__policy','Terms & Policy'),(128,'376ffdddb8c579cbcf56c094311afb0e','en','content_of_terms','Content of Terms'),(129,'d2a72c5848dfe2401c371cbba0254cd7','en','content_of_policy','Content of Policy'),(130,'710505405d40e2628284b89f486b2b67','en','other_settings','Other settings'),(131,'467961bd501d225533548005548784fc','en','enable_https','Enable HTTPS'),(132,'ebf47a869c17d33b72db3b36435cd3a1','en','emded_code','Emded Code'),(133,'8a2432c188910cfc85186f83e2c8a3ad','en','social_media_links','Social Media links'),(134,'935772d01a7fdb6d1f3856b3aad63554','en','note_please_make_sure_the_ssl_certificate_has_the_active_status_in_your_hosting_before__you_activate','Note: Please make sure the SSL certificate has the \'Active\' status in your hosting before  you activate.                                                                                                                        '),(135,'5802251d61d5a8ebc324c8c2374ba840','en','note_only_supports_javascript_code','Note: Only supports Javascript code '),(136,'cb9e0ec668e25909e25d772da458cbf5','en','contact_informations','Contact Informations'),(137,'f7b81ab20f89a823d432aec60da4dfbc','en','working_hour','Working Hour'),(138,'d1b86e1e4f84d6b8c12c1356f684fa68','en','Tel','Tel'),(139,'dc7638dd5a097f811cd47bd102314632','en','email_notifications','Email notifications'),(140,'007b9c5e01cc2a89209e3145c7b1d672','en','new_user_welcome_email','New User Welcome Email'),(141,'68e7fe40ec1809ca3021fdc368aac75f','en','new_user_notification_email','New User Notification Email'),(142,'38a3240210e5e13dfce1db7439c703ad','en','receive_notification_when_a_new_user_registers_to_the_site','(Receive notification when a new user registers to the site)'),(143,'1bd5b623f34557d828c7bc85073c158e','en','payment_notification_email','Payment Notification Email'),(144,'8e54343db746cb9f88073c6db54a12a9','en','send_notification_when_a_new_user_add_funds_successfully_to_user_balance','(Send notification when a new user add funds successfully to user balance)                                                                                                                        '),(145,'8622e58fb5e5878ccc2afbc07df34c39','en','ticket_notification_email','Ticket Notification Email'),(146,'640fad810b7a2ca8f0b5b9a936e3997b','en','send_notification_to_user_when_admin_reply_to_a_ticket','(Send notification to user when Admin reply to a ticket)'),(147,'15c3e6816067fd3368165f6ccff535c7','en','order_notification_email','Order Notification Email'),(148,'6fb9c80c99f4c66f5a3169fc54fc5eae','en','receive_notification_when_a_user_place_order_successfully','(Receive notification when a user place order successfully)'),(149,'6fd4ff34dcc702e19f49b6f6ec9825f9','en','From','From'),(150,'8caf21fb9eec49fbf21dd7db268a9950','en','your_name','Your name'),(151,'1b6a7eb7465e021959c3ea9b5489519f','en','email_protocol','Email protocol'),(152,'c74ea048bf7812fdcb88f168a765b9ec','en','php_mail_function','PHP mail function'),(153,'d3294a5786cab3cddc3763a8d76126f5','en','recommended','(Recommended)'),(154,'1c2d756031cb09a0b7e169a621bf9c1c','en','sometime_email_is_going_into__recipients_spam_folders_if_php_mail_function_is_enabled','Sometime, email is going into  recipients\' spam folders if PHP mail function is enabled                                                                                                                        '),(155,'1425ffdd04888c469501613fdf700f0c','en','SMTP','SMTP'),(156,'29dab5d4f3eb44986eae22bf97ac967e','en','smtp_server','SMTP Server'),(157,'9cb491be850057d7659b97c72980f791','en','smtp_port','SMTP Port'),(158,'5243e23bd9b63f35192f10d444187849','en','smtp_encryption','SMTP Encryption'),(159,'d0384010a4b70f1e58eba70ef42135e9','en','smtp_username','SMTP Username'),(160,'4322b671fbabf2e1a538bc8cb1662732','en','smtp_password','SMTP Password'),(161,'1813ed15a40eebb6c0a80774554ddea8','en','password_recovery','Password Recovery'),(162,'502902fe4663f438bfa7d58e7e422b22','en','you_can_use_following_template_tags_within_the_message_template','You can use following template tags within the message template:                                                                                                                        '),(163,'1e06c8f24e058c058a6355559d351a1b','en','displays_the_users_first_name','displays the user\'s first name'),(164,'1207d152d6a10af5a20f9a0f8be5c2e6','en','displays_the_users_last_name','displays the user\'s last name'),(165,'cd8bef223b1b0af7bd33f71e3a518683','en','displays_the_users_email','displays the user\'s email'),(166,'6c07e7f86237be8a3426dce58a4a8e84','en','displays_the_users_timezone','displays the user\'s timezone'),(167,'be91ef1d47d16f4b61a0dd67b617de5e','en','displays_recovery_password_link','displays recovery password link'),(168,'506e569b73ef3f68684f232677308feb','en','payment_integration','Payment Integration'),(169,'ebaec8161b0a4b7580ddad0b2e4ecec5','en','currency_setting','Currency Setting'),(170,'8410258d350e9fc8bed7166638c886cb','en','currency_code','Currency Code'),(171,'431263403cc5071358e7c8667e2fa7a9','en','thousand_separator','Thousand Separator'),(172,'0a2089f0c060f1301cfc3b4cb028bfeb','en','decimal_separator','Decimal Separator'),(173,'2165cad3f1599e064ac5c5047d8cc046','en','Dot','Dot'),(174,'3d4c26b8bf7c7f4e83aa5b100e45b553','en','Comma','Comma'),(175,'2932b5fe946a437d737dc21c51515f17','en','Space','Space'),(176,'2a779362d1a19768dc7d4a75684cf0a0','en','auto_currency_converter','Auto Currency converter'),(177,'4992893da1f916797ad3c1a0999dcd32','en','applying_when_you_fetch_sync_all_services_from_smm_providers','(Applying when you fetch, sync all services from SMM providers)'),(178,'71518c2a2d4ca3e95b7f7eb586b851e7','en','1_original_currency','1 Original currency'),(179,'857c1b8afeeb6aa169c7f5a4088778b1','en','new_currency','New Currency'),(180,'2120f70eedbb968d3026762c007165a7','en','if_you_dont_want_to_change_currency_rate_then_leave_this_currency_rate_field_to_1','If you don\'t want to change Currency rate then leave this currency rate field to 1                                                                                                                        '),(181,'407fef844d32d5f54094f48fa25d801a','en','the_paypal_payments_only_supports_these_currencies','The PayPal Payments only supports these currencies:'),(182,'efdcb88d488a1456bfa99fcc1bdda2af','en','currency_symbol','Currency Symbol'),(183,'d50d440e347b48f94a44a00cc63a2096','en','transaction_limits','Transaction Limits'),(184,'7fcb0cc5cf7de06b4ab75b0a9dd67338','en','currency_decimal_places','Currency decimal places'),(185,'0121370a86b5b71a1d9a3a5f860109f5','en','minimum_amount','Minimum Amount'),(186,'f8d3d5909a6603d94669fc076be4aca6','en','Environment','Environment'),(187,'990d29a5980c3a3d78efc48c1e948a48','en','Live','Live'),(188,'4c00688e22e9cb00bb4ef3b47f8e7aea','en','transaction_fee','Transaction fee'),(189,'c5abbcf3e0e06ee693d38031439b3963','en','sandbox_test','Sandbox (test)'),(190,'c94323b8567d13e0a5aaf3223dfeffa8','en','paypal_client_id','Paypal Client ID'),(191,'972b8616697ec1b8d099849e5bd972ac','en','paypal_client_secret','Paypal Client Secret'),(192,'3d18cdd43401d3cbb2e79d20da7dc45d','en','publishable_key','Publishable Key'),(193,'42d56d8aebdcc4ff376410fa9c866056','en','secret_key','Secret Key'),(194,'12abb8353ee833a0de1f6e191f5009c8','en','private_key','Private Key'),(195,'42324eaa530841c323c38d9a2ec49c75','en','2checkout_account_number_sellerid','2Checkout account number (sellerId)'),(196,'7c18ee4aef4d3787124a730f66c1e782','en','auto_clear_ticket_lists','Auto clear ticket lists'),(197,'10dad6e71298e4cd6686d60e9973cebd','en','default_tickets_log','Default Tickets log'),(198,'108504680a0097dee53198122b9cb376','en','clear_ticket_lists_after_x_days_without_any_response_from_user','Clear Ticket lists (after X days) without any response from user                                                                                                                        '),(199,'37ce898403b6af4422c2ef64cfa60f29','en','default_service','Default Service'),(200,'913defbf986aacc5dc415887a166d1f1','en','default_min_order','Default Min Order'),(201,'9616c152de38e186e9089d10d8e42fc9','en','default_max_order','Default Max Order'),(202,'e0c168a6cd9c9f256fb679d7036145d1','en','default_price_per_1000','Default Price per 1000'),(203,'1510513d0dd644280df1cdbcabac7f5b','en','dripfeed_option','Drip-feed option'),(204,'7bd08790aabbfcdb111b66fb06164d0a','en','note_please_make_sure_the_dripfeed_feature_has_the_active_status_in_api_provider_before_you_activate','Note: Please make sure the Drip-feed feature has the \'Active\' status in API provider before you activate.                                                                                                                        '),(205,'db96a46419ceee74e80a9701f9b946b1','en','default_runs','Default Runs'),(206,'e98b91b39fe5b1e7d81bdb6e5bdb1094','en','default_interval_in_minutes','Default Interval (in minutes)'),(207,'39c8fcc8f81bce4d5df1f142d7d9f438','en','explication_of_the_service_symbol','Explication of the service symbol'),(208,'f03560bdeda79a00a32b0add012444be','en','Pagination','Pagination'),(209,'82b63623c50170755d4e8870062651c7','en','limit_the_maximum_number_of_rows_per_page','Limit the Maximum Number of Rows per Page'),(210,'8cdfc088758cd8541c9c2a4609fb4d1a','en','price_percentage_increase','Price percentage increase'),(211,'5c61f3cc589c3b41b87bf13a7a07b119','en','use_for_sync_and_bulk_add_services','Use for sync and Bulk add services'),(212,'216cf92a8edc3fc5e4a7dd9f42b093f7','en','displays_the_service_lists_without_login_or_register','Displays the service lists without login or register'),(213,'f98a08e49de21aaefe9ba01b09517b45','en','displays_api_tab_in_header','Displays API tab in header'),(214,'88ae95599fd58bf7bd8f8b284c460637','en','displays_required_skypeid_field_in_signup_page','Displays required SkypeID field in signup page'),(215,'593243615ff3996123ee471a4e815ea2','en','displays_google_recapcha','Displays Google reCAPTCHA'),(216,'7d497e89c5e1437d3b6464a4d29d7f35','en','google_recaptcha_site_key','Google reCAPTCHA site key'),(217,'91900991d158a8265e3fb61bc40d8f69','en','google_recaptcha_serect_key','Google reCAPTCHA serect key'),(218,'c024e3edbf2be54cae4fc60e59113cac','en','please_verify_recaptcha','Please verify reCAPTCHA'),(219,'ab67923cd28d0750a01017a86f69b1d4','en','email_verification_for_new_customer_accounts','Email verification for new customer accounts'),(220,'798f89dba59fc0cd5f06b1f7155d6503','en','email_verification_for_new_customer_accounts_preventing_spam_account','Email verification for new customer accounts (Preventing Spam Account)                                                                                                                        '),(221,'f797b7a2c257835f21f455b8c8fd6bb4','en','default_timezone','Default Timezone'),(222,'596272dfe31d320f1ff64ef5f9f86d74','en','set_the_default_timezone_at_register_page','Set the default timezone at Register page'),(223,'b8323481d63fb040acd5bbf2a653becc','en','notification_popup_at_home_page','Notification popup at home page'),(224,'2134690023324ddb347624016a4d5757','en','disable_home_page_langding_page','Disable Home page (Langding page)'),(225,'80bc73af0aae4c7b37158b065af5afb1','en','Default_Homepage','Default Homepage'),(226,'74d68035a68d8e83ba1718b1365c56ee','en','language_code','Language code'),(227,'fd8098ac3c5b1a127cf619d3163430f6','en','choose_a_language_code','Choose a language code'),(228,'969dcc19b7dccd67f2877a0fadc5dde1','en','Default','Default'),(229,'a25b16bd578644d38d2e91d663fb6dfb','en','Location','Location'),(230,'1668eea7989b11edf83284cbff27d609','en','Key','Key'),(231,'905a09c9eaf9bf653f41858b6121cf94','en','Value','Value'),(232,'71b070a6a6cd542717716b7f15fbe1d2','en','Name','Name'),(233,'483ad0435f02a336eff1dfa66ea3a97b','en','Code','Code'),(234,'5511d98dc2811d3d610131eb8f3058ee','en','Icon','Icon'),(235,'aa180332cb17fc0108574535619b78ec','en','choose_your_country','Choose your country'),(236,'7f406b768b72096038d1b9b4540afc80','en','translation_editor','Translation editor'),(237,'46a8c331ab3b9412da34e8e3de62a976','en','language_code_does_not_exists','Language Code does not exists'),(238,'3a1efc9fefecbfc59a93e30a4ce0384c','en','language_code_already_exists','Language code already exists'),(239,'5ed6f4b8a8478bec836e12375dcac44f','en','Transaction_logs','Transaction logs'),(240,'8509b7f05776a1f8c9e04bbdb7ac6977','en','User','User'),(241,'6781f72d6bf3cd14d6c45798cee20d9e','en','Transaction_ID','Transaction ID'),(242,'49a527b281ca028190584a1c2057c6f2','en','Payment_method','Payment method'),(243,'1ae533202c04f6be2bf9e181bc1f8593','en','Amount_includes_fee','Amount (includes fee)'),(244,'e7bb1fd332e1f08071ffe8b0bf4fffdf','en','Amount_paid_includes_fee','Amount Paid (includes fee)'),(245,'a8bec73a63ea305dd7a5e6e5b9285a8f','en','Paid','Paid'),(246,'1cc33e1c4f5b99a0ed61caba6d05d7ac','en','waiting_for_buyer_funds','Waiting for buyer funds...'),(247,'7aba6ea2b0969b1fb418328f0ed4c0b7','en','cancelled_timed_out','Cancelled/Timed Out'),(248,'2e1b50fe1078e78576caf979e77895b9','en','Tickets','Tickets'),(249,'ed74f336a8538556391422bd442d72bb','en','mark_as_new','Mark as New'),(250,'b939c27cdf0c672138023ab7f6e2ce3d','en','mark_as_pending','Mark as Pending'),(251,'a19bbfbcd9f4132d337f868fdb2f11ca','en','mark_as_closed','Mark as Closed'),(252,'1a9ea08483a72358cdc2a4331a8a33e8','en','add_new_ticket','Add New Ticket'),(253,'8672d12513110f8e10ef94b7d4dbf31e','en','Ticket_no','Ticket #'),(254,'6d4064e2aa9767a05de77cdcf061d4ac','en','submit_as_closed','Submit as Closed'),(255,'bc7e138fb645fae2974959fbac6058ea','en','submit_as_pending','Submit as Pending'),(256,'cf9c337ce713bf32583df1a4683ed072','en','submit_as_new','Submit as New'),(257,'9246b369cb4f6d81e4ec2085bb4fc33b','en','New','New'),(258,'beddb2e434581aa66669065cd5a526c2','en','Pending','Pending'),(259,'1b61a8705ef7e3655b86f13e3a916c12','en','Closed','Closed'),(260,'2ced14ce9c1a276f42ded79e774712a6','en','ticket_created_successfully','Ticket created successfully'),(261,'783370d748c681c8dae97d72f9546382','en','Cancellation','Cancellation'),(262,'f77bf6e165c1978619595fe9e28e5d01','en','Speed_Up','Speed Up'),(263,'271adb60f148818b55329c13ea50cee4','en','Refill','Refill'),(264,'0cdb2ca5c269032d992baaede76cbfde','en','Unread','Unread'),(265,'91e209078c779f811ebcd6e319365529','en','Request','Request'),(266,'2e61ebaa726d22bfe1d1bbf238929d6d','en','enter_the_transaction_id','Enter the Transaction ID'),(267,'9bb9db8dfc7bf4f1daf88d5e3cf93bd9','en','for_multiple_orders_please_separate_them_using_comma_example_123451234512345','For multiple orders, please separate them using comma. (example: 12345,12345,12345)                                                                                                                        '),(268,'233509a58a332f2779772bb3368fd372','en','order_id_field_is_required','Order ID field is required'),(269,'39b1a727abff5980ba2380c0abc4fafe','en','please_choose_a_request','Please choose a request'),(270,'2db79bde41c75a086f0c48f253b06490','en','transaction_id_field_is_required','Transaction ID field is required'),(271,'6610c1f0e4f0ddd5dd31f343d1164cf0','en','please_choose_a_payment_type','Please choose a payment type'),(272,'9b128755ef0badab544d191808ef0663','en','FAQs','FAQs'),(273,'620e44e76c41d2a63063d6124fb0e232','en','Question','Question'),(274,'bd57027bbfaca1e100c43c06ef8f623e','en','Answer','Answer'),(275,'f1e083d62f322a20ed303f9c0f31562c','en','Default_sorting_number','Default Sorting number'),(276,'9f900b9a242470e1a5c076281d27641d','en','Sorting','Sort'),(277,'2417a431b79327a2db65b7a60b4fe182','en','Edit_FAQ','Edit FAQ'),(278,'c2bce12a9fb50998483793015d4012ee','en','question_is_required','Question is required'),(279,'1dceed6dc41e5f1a4a6bd5de9709c00c','en','answer_is_required','Answer is required'),(280,'ac557bac7143974ae96ea3454094f2af','en','sort_number_must_to_be_greater_than_zero','Sort number must to be greater than zero'),(281,'762d3bb82ee08e6d78a14430fcab6fcb','en','api_documentation','API Documentation'),(282,'d32efbb7a310325486de6ab6ad4ece4d','en','note_please_read_the_api_intructions_carefully_its_your_solo_responsability_what_you_add_by_our_api','Note: Please read the API intructions carefully. Its your solo responsability what you add by our API.                                                                                                                        '),(283,'682d333e4e4f456722d7b11e9aca7c75','en','response_format','Response format'),(284,'b4eb0833bfd76add0d2e4cd3dd960005','en','http_method','HTTP Method'),(285,'562ad982c39b2fff7f7d198b68504eb2','en','api_key','API Key'),(286,'35b7aa6db62a5471c788f13f72cf61cf','en','download_php_code_examples','Download PHP Code Examples'),(287,'1854d6c35f3d88db75b1e0c5b9f0c02b','en','place_new_order','Place new Order'),(288,'bb56d6d91dad90397a7a6de7fbb604a2','en','example_response','Example response:'),(289,'89efaa5206b5ac11a65ab65e45c1a71d','en','status_order','Status Order'),(290,'30ba1c3f4f7440cbe7dd7eb5e58f2557','en','parameter','Parameter'),(291,'3f6c3fc4c1fe708374151e0fe8c684f7','en','multiple_orders_status','Multiple orders status'),(292,'d58aebe51c7fd16a4c76f1ffd6c29400','en','services_lists','Services Lists'),(293,'6e1958f9bd623c317a777012c256941d','en','Balance','Balance'),(294,'4e72d1d3dffc3e252055b37a9b897c54','en','your_api_key','Your API key'),(295,'450fc8a15dd51b4877ddd82653524eb0','en','service_id','Service ID'),(296,'44318bdf759d0831abe7b8ad11fef698','en','link_to_page','Link to page'),(297,'36166255c1fe29bc1997df2f32d6565c','en','needed_quantity','Needed quantity'),(298,'a0c731ce6ad0d1246372f3b72156b8c3','en','order_id','Order ID'),(299,'05df2f7667b6065ea96f1a94180f51b6','en','order_ids_separated_by_comma_array_data','Order IDs separated by comma (array data)'),(300,'822dd491c62ea5dac6b9c03d6c598827','en','api_is_disable_for_this_user_or_user_not_found_contact_the_support','API is Disable for this user or User Not Found! Contact the Support                                                                                                                        '),(301,'4cd7632cea532655aec4d8f8fbff58d4','en','this_action_is_invalid','This action is Invalid'),(302,'298bbbb981b79f1dddef387f93dc43a4','en','there_are_missing_required_parameters_please_check_your_api_manual','There are missing required parameters. Please check your API Manual                                                                                                                        '),(303,'7f432d3b5958979e9e977ee182a8df5f','en','invalid_link','Invalid Link'),(304,'6c6d6f7e98b2c2565e65b50c86e0f085','en','service_id_does_not_exists','Service ID does not exists'),(305,'1ea153e6ebf37ad0847b0f6704464359','en','quantity_must_to_be_greater_than_or_equal_to_minimum_amount','Quantity must to be greater than or equal to minimum amount'),(306,'c546bdaa7b0ca4457eed06857d6f59e9','en','quantity_must_to_be_less_than_or_equal_to_maximum_amount','Quantity must to be less than or equal to maximum amount'),(307,'93bff97781a663b6bfae22b9cefb2271','en','not_enough_funds_on_balance','Not enough funds on balance'),(308,'8646211542d96259f07c59a45849f02a','en','order_id_is_required_parameter_please_check_your_api_manual','Order ID is required parameter. Please check your API Manual'),(309,'29521b1c6d130a24b09311ecf69404f5','en','incorrect_order_id','Incorrect order ID'),(310,'170b341413a484f9b84d468b7840b3e6','en','edit_service','Edit Service'),(311,'fb41922c4984ed9a7d287b09d46de3fd','en','package_name','Package Name'),(312,'b0cacca9d88a20fd10e927f957a9b48f','en','choose_a_category','Choose a category'),(313,'e12311833d7de3219412cd8cb52168d0','en','maximum_amount','Maximum Amount'),(314,'f1d0e774acf87ad955264ae766e311a8','en','Price','Price'),(315,'eb76ae2808579dd74edcc5f72763d415','en','rate_per_1000','Rate per 1000'),(316,'5b055a5eec8df907a2232595fa54a4e0','en','min__max_order','Min / Max order'),(317,'6494f46950f8069555d1fa4852951be7','en','name_is_required','Name is required'),(318,'dbd7adbd9854243688ac695a5bb877fe','en','category_is_required','Category is required'),(319,'1cc41ab13c67727d61e0b03ec1933a7e','en','min_order_is_required','Min order is required'),(320,'11f92d6e4401f1d13d7b8eb681d46b2c','en','max_order_is_required','Max order is required'),(321,'27ae1919bda4c3fb13ae1879e0cc14a0','en','max_order_must_to_be_greater_than_min_order','Max order must to be greater than Min order'),(322,'6017f170cf848a396fac47d4d739248c','en','price_invalid','Price invalid'),(323,'ce461ca3c9324f01c2673cb348eda03e','en','currency_decimal_places_must_to_be_equal_than_2','Currency decimal places must to be equal than 2'),(324,'bd3e65379bc83d203e0935a853b46971','en','Details','Details'),(325,'b688a7e7fe9d70cfb8afb177020900b7','en','__good_seller','Good Seller'),(326,'98471cc3e9512b817081f352eace683d','en','__speed_level','Speed Level'),(327,'d823a866df5d26b2fb90f16ddc1d44b5','en','__hot_service','Hot service'),(328,'f93fbab4808b1412993e8828e8911b8a','en','__best_service','Best Service'),(329,'7b1d9bcee5528c9b389ef7410b81f668','en','__drip_feed','Drip Feed'),(330,'860a1b4cb705d50a1b02b26043a64ac7','en','__cancel_button','Cancel Button'),(331,'5e2ee749fd33c34e7846888b4277203b','en','custom_comments','Custom comments'),(332,'2be98b03b21e1fad289f617e15600b77','en','custom_comments_package','Custom comments package'),(333,'c88d8a90aabc0b70f5c4920b58ae600e','en','mentions_with_hashtags','Mentions with hashtags'),(334,'cdd9790b55b017461956c13d6549180a','en','mentions_custom_list','Mentions custom list'),(335,'3cc7b6b2caac8d134a51da6bd55d02a4','en','mentions_hashtag','Mentions hashtag'),(336,'722dd7fc4cd6dc304fe19859826de937','en','mentions_user_followers','Mentions user_followers'),(337,'89090c88577aabb486a498d7e0ac74a4','en','mentions_media_likers','Mentions_media_likers'),(338,'0086f7f881fe5e4e88befd34becfb5bb','en','package','Package'),(339,'ebda6e10acd3c0d4352726e4ef9550b5','en','comment_likes','Comment likes'),(340,'81e5d3dadf2f5943e9e773d3a173ad7b','en','all_deactivated_services','All deactivated Services'),(341,'4f3aeb88893ad1a8157755332afa995f','en','failed_to_delete_there_are_no_deactivate_service_now','Failed to delete. There are no deactivate service now!'),(342,'8ca4278ba12bfb7ba19cb2c12dc2eba4','en','Category','Category'),(343,'d10bea8a3e14ac80893ed359c9a1e62e','en','edit_category','Edit Category'),(344,'4633e3cba7933b7cfeccde1fe7232fa3','en','all_deactivated_categories','All deactivated Categories'),(345,'8f642ed36af9097c65314375697c9f0e','en','failed_to_delete_there_are_no_deactivate_category_now','Failed to delete. There are no deactivate Category now!'),(346,'f034c11592ceba1ebf6188426d51821b','en','single_order','Single Order'),(347,'f8a46ab1f213d194bacaa6afd2d8579b','en','mass_order','Mass Order'),(348,'3e247753a083d4ba18c4c90b19133159','en','order_service','Order Service'),(349,'5e0a517a1d1e85e999cc1ecd303d4b4a','en','choose_a_service','Choose a service'),(350,'59cc4359f172ecd640199bf00e4764df','en','Link','Link'),(351,'639ade095631bba620357391fc7f8f2f','en','Quantity','Quantity'),(352,'97f83634a6584017a5ac7ae648d01a7b','en','yes_i_have_confirmed_the_order','Yes, i have confirmed the order!'),(353,'5d772c5a8b9192440be6098bed5c39ca','en','total_charge','Total Charge:'),(354,'2d8345088e5197f7886eb8eb24c4d465','en','order_resume','Order Resume'),(355,'9706355fdacc3aec9f9a01e8233b88f0','en','service_name','Service name'),(356,'e8679b2db4b21a7c3d5ec04f8a3bb8e1','en','price_per_1000','Price per 1000'),(357,'d9c2577334ec19b02d8d99809565255f','en','place_order','Place order'),(358,'3e8a8520141d6999c8325d4d26e67bb2','en','one_order_per_line_in_format','One order per line in format'),(359,'662c3295dd49f1a6aa75b18eb12c03f9','en','here_you_can_place_your_orders_easy_please_make_sure_you_check_all_the_prices_and_delivery_times_before_you_place_a_order_after_a_order_submited_it_cannot_be_canceled','Here you can place your orders easy! Please make sure you check all the prices and delivery times before you place a order! After a order submited it cannot be canceled.                                                                                                                        '),(360,'ff482a30110bbeb4c8c5fe9d53746dc0','en','failed','Failed!'),(361,'b6599357ed1c12111b152e7e02ef9e1b','en','there_was_some_issues_with_your_mass_order','There was some issues with your mass order:'),(362,'9a6fc1f70aa382e05e283d33263dc999','en','order_content','Order content'),(363,'7cd5401793e33b18765107267368a11f','en','error_message','Error Message'),(364,'aacae4bf7f2229d91cadd1f842a12928','en','order_basic_details','Order Basic Details'),(365,'8a7b6a31f23b2ef1cf7a2665fb28faab','en','sort_by','Sort by'),(366,'bbb0ee0175d0791a018b4fca55303c3d','en','All','All'),(367,'8839e74ccc168fea823478c6243c3390','en','Completed','Completed'),(368,'3bd1d98526c3b6ace83b692abe8396a0','en','Processing','Processing'),(369,'260082a0be46623c12805bb3b1b552ef','en','In_progress','In progress'),(370,'af4ec3b8c2c1085a2789ef8873fd05f6','en','Partial','Partial'),(371,'22796a4b9cd2c4c38983684b50b57da6','en','Canceled','Canceled'),(372,'f521ab8823ca712d05624762d7c41726','en','Refunded','Refunded'),(373,'a998718aaee9de42804775e280808c1f','en','Edit_Order','Edit Order'),(374,'38f58427aa40732aa2b39f7702749e87','en','Start_counter','Start counter'),(375,'17470eccd5c10490f01ce3fb03ae4a05','en','Remains','Remains'),(376,'f37b41849578eecb9dca36a01b8465c0','en','Amount','Amount'),(377,'bb0db0174226a567f330b34cb42f3aa5','en','Service','Service'),(378,'5e06fd25be83181275564403a53d9fb8','en','service_does_not_exists','Service does not exists'),(379,'1961edb6298d1c65c7160858589bdc30','en','order_amount_exceeds_available_funds','Order amount exceeds available funds!'),(380,'cdeb30fcc3904add1964468d087cfe0a','en','order_amount_exceeds_available_the_min_max','Order amount exceeds available minimum or maximum!'),(381,'704dee00a34d11b7df43c659264c9d0c','en','please_choose_a_category','Please choose a category'),(382,'44a44c226f4492cfead81aa89c70f0b0','en','please_choose_a_service','Please choose a service'),(383,'27ba4e3f64f124686e1540953eae2b74','en','category_does_not_exists','Category does not exists'),(384,'01be0afc98167839e80b877ddf645d0b','en','quantity_is_required','Quantity is required'),(385,'2b64fcf1df943479eb2a0f152e0c26de','en','you_must_confirm_to_the_conditions_before_place_order','You must confirm to the conditions before place order'),(386,'dac80c18923b7d41047ae447da4acc6a','en','place_order_successfully','Place Order successfully'),(387,'e4facbe801066c248f592828c784b62c','en','field_cannot_be_blank','Field cannot be blank'),(388,'17f73c6ed39a2aa2b211cd1aa4037518','en','you_do_not_have_enough_funds_to_place_order','You do not have enough funds to Place order'),(389,'fd22d81de0adb33da43a46283db800b0','en','invalid_format_place_order','Invalid format place order'),(390,'ba36673e7c470090822b4d39ad273c37','en','link_is_required','Link is required'),(391,'5e03ba5f1f6324bfb2bc8442338cd0b2','en','start_counter_is_a_number_format','Start counter is a number format'),(392,'8cf85e5f10e9f9ca206d42d53b1368c0','en','remains_is_a_number_format','Remains is a number format'),(393,'8b83756dbbb25077ecfafb26b17b78c9','en','dripfeed','Drip-feed '),(394,'5a48922d5a610c819d8811cd4a0a9e6d','en','what_is_dripfeed','What is Drip-feed?'),(395,'81cd001e70d3a8e968ffd4fa90b3957b','en','Runs','Runs'),(396,'4ccda45d7dc842387d203b7aa8e9050c','en','interval_in_minutes','Interval (in minutes)'),(397,'7f7a1157462e434e20ad23f962e46c54','en','interval','Interval'),(398,'af9e218fbfd995f11e3b210a7443512c','en','total_quantity','Total Quantity'),(399,'2881a34a8591dea62c5dfe0c3d8ad5f2','en','runs_is_required','Runs is required'),(400,'f7aabad2a714f9921b7e8be5a0dfb7b6','en','interval_time_is_required','Interval time is required'),(401,'9c6043921c0db474eacb5c0f3704a1b0','en','interval_time_must_to_be_less_than_or_equal_to_60_minutes','Interval time must to be less than or equal to 60 minutes'),(402,'9ac6a98efd741732271d379dfb3e571f','en','drip_feed_desc','<p><strong>Drip-Feed</strong> is a service that we are offering so you would be able to put the same order multiple times automatically.</p>\r\n                        <p>Example: let\'s say you want to get 1000 likes on your Instagram Post but you want to get 100 likes each 30 minutes, you will put:</p>\r\n                        <ul>\r\n                          <li>Link: Your Post Link</li>\r\n                          <li>Quantity: 100 </li>\r\n                          <li>Runs: 10</li>\r\n                          <li>Interval: 30</li>\r\n                        </ul>\r\n                        <p>\r\n                          <strong>Note:</strong> Never order more quantity than the maximum which is written on the service name (Quantity x Runs), Example if the service\'s max is 4000, you don’t put Quantity: 500 and Run: 10, because total quantity will be 500x10 = 5000 which is bigger than the service max (4000). Also never put the Interval below the actual start time (some services need 60 minutes to start, don’t put Interval less than the service start time or it will cause a fail in your order).\r\n                        </p>                                                                                                                        '),(403,'38d2e87994a7aa50cded89a69dd10d28','en','Comments','Comments'),(404,'0e73d3f3c9b9735992b13c2bad827210','en','Usernames','Usernames'),(405,'1b33ed40f0732dd7b2268de6b277a49d','en','Hashtag','Hashtag'),(406,'052237ee1a22d410e31c786acbcc2ebb','en','Media_Url','Media Url'),(407,'2201ec1935a18f70f82a787a2fc737be','en','hashtags_format_hashtag','Hashtags (Format: #hashtag)'),(408,'0052c6c5962bf18df14aebb62217220e','en','hashtag_field_is_required','Hashtag field is required'),(409,'3a4622929c65d89a6d5b57cf18471032','en','username_field_is_required','Username field is required'),(410,'2c3ac8698ddeee404071eaa8568f126a','en','comments_field_is_required','Comments field is required'),(411,'31eff3e250248c1ad952373c1e2a359b','en','min_cannot_be_higher_than_max','Min cannot be higher than Max'),(412,'a066f5b3cbc705a501055d4d4a2776af','en','incorrect_delay','Incorrect delay'),(413,'d592ba8bafeab822e343c9a38291e044','en','min','min'),(414,'7bb46430566403f867fbe01e97e64e65','en','max','max'),(415,'c7713fa0ddde5b66826a62f68f83a558','en','minimum_1_post','minimum 1 post'),(416,'1e0b2aa0b960ee81efdf9c77bbc5cd15','en','new_posts_future_posts_must_to_be_greater_than_or__equal_to_1','New Posts (Future posts) must to be greater than or  equal to 1'),(417,'a3b5faf5414ff403cc9b72deafe781fc','en','Subscriptions','Subscriptions'),(418,'e8ad3f834472c2d8ecb6fd265f413ad6','en','No_delay','No delay'),(419,'48e977fa3c013d2fbc97aa4687b6f215','en','minutes','minutes'),(420,'d8b85f150472914ef2f4a802c20be39e','en','Posts','Posts'),(421,'aad7231211f57f3ddf0d86d86f30c0f2','en','New_posts','New posts'),(422,'0b24c654998c9b6b65b413c7eefda246','en','Actived_Posts','Actived Posts'),(423,'b3a89531827e179c0974bf1e34a4d7a9','en','Username','Username'),(424,'95fc2e48f71cb33f6991ac8fecf07eff','en','Expiry','Expiry'),(425,'6c59b93c8bd433bc5c5f6ee56ff37c48','en','Delay','Delay'),(426,'aada763ba4a8beb797b935c39529cf58','en','Paused','Paused'),(427,'90231848f95d390959298c0b8625d83c','en','Expired','Expiry field is required'),(428,'98ec68051c0108e145f5f0f07f9b9b6f','en','total_users','Total Users'),(429,'beea2b31cb1a93888ab5f4861400b18e','en','your_balance','Your Balance'),(430,'124ab14ad7b974ce2b655f9edda8ef70','en','total_orders','Total Orders'),(431,'1e98f2e24242837a4ab92744bc9285c0','en','total_tickets','Total Tickets'),(432,'ca422929db2c91533bf6c4647da29428','en','total_transactions','Total Transactions'),(433,'dee8d564a8522da01bd71a8585125d25','en','recent_orders','Recent Orders'),(434,'506c863d408060d5891a3a514726daf4','en','recent_tickets','Recent Tickets'),(435,'4fb5afb31b5baad8b7ed1654aa24ff44','en','total_amount_recieved','Total Amount Recieved'),(436,'680d3dae945cd982bf50e2a53fbaae4d','en','total_amount_spent','Total Amount Spent'),(437,'54604e321607df35db32544e3e9f2af5','en','Your_account','Your account'),(438,'d1628fd094ea2e02d2fb8aac38223794','en','Generate_new','Generate new'),(439,'822cae810116625d33c8db0d0125d043','en','manual_payment','Manual Payment'),(440,'4cd07d31458d24445e5de9740d72c173','en','you_can_deposit_funds_with_paypal_they_will_be_automaticly_added_into_your_account','You can deposit funds with %s® they will be automaticly added into your account!                                                                                                                        '),(441,'9af53fcf1c033b44a044c50db9ec3cbb','en','amount_usd','Amount (%s)'),(442,'21f5b52d5cba5264546a5e25304e736c','en','yes_i_understand_after_the_funds_added_i_will_not_ask_fraudulent_dispute_or_chargeback','Yes, I understand after the funds added i will not ask fraudulent dispute or charge-back!                                                                                                                        '),(443,'873e5d349bc434ad22def3bbbe846142','en','this_payment_gateway_is_not_already_active_at_the_present','This Payment Gateway is not already active at the present!'),(444,'2ebf2edf0c680793c513f8181ae3c222','en','Pay','Pay'),(445,'3daa3aec1a1a23b1f6e6c8858797b691','en','you_can_make_a_manual_payment_to_cover_an_outstanding_balance_you_can_use_any_payment_method_in_your_billing_account_for_manual_once_done_open_a_ticket_and_contact_with_administrator','You can make a manual payment to cover an outstanding balance. Once time, open a ticket and contact with Administrator.                                                                                                                        '),(446,'2c0b1b7d4eb8e4c242b3617cfc5bb6e1','en','amount_is_required','Amount is required'),(447,'50ac8140782ab0343bb6727f1647f5d7','en','amount_must_be_greater_than_zero','Amount must be greater than zero'),(448,'1b1e852b2b93e1dc5b120a0be93435f7','en','minimum_amount_is','Minimum Amount is'),(449,'e99d7e7db3abc9649d0b0ffa1dbc6219','en','you_must_confirm_to_the_conditions_before_paying','You must confirm to the conditions before paying'),(450,'760af3c9952ee6b94f0b86da2211e2bb','en','processing_','Processing ....!'),(451,'8f4d7d1b79fe38ea8ca84ce9bc981443','en','payment_sucessfully','Payment sucessfully!'),(452,'0df5d34c2b0f8883714ec6ff3b8e0986','en','your_payment_has_been_processed_here_are_the_details_of_this_transaction_for_your_reference','Your payment has been processed. Here are the details of this transaction for your reference:                                                                                                                        '),(453,'7bd42ae00e55a0e39889009ab52ed288','en','payment_unsucessfully','Payment unsucessfully!'),(454,'d09fb880ed769fd9546a6887a992a7a2','en','sorry_your_payment_failed_no_charges_were_made','Sorry, your payment failed. No charges were made'),(455,'5038f6e3deb5183ba2c0c691df977140','en','2checkout_creditdebit_card_payment','2Checkout Credit/Debit card Payment'),(456,'bf692c48e197a6a2b3f2817e3669cf80','en','stripe_creditdebit_card_payment','Stripe Credit/Debit card Payment'),(457,'af37d99c588b37b160cf840c19e55c13','en','user_information','User information'),(458,'1af4c2fb1f86a060d880640e645db9c2','en','card_number','CARD NUMBER'),(459,'e46e25293bb4c6d7b18c82256f6bbc9c','en','expiry_date','EXPIRY DATE'),(460,'00b3fb5262d57c808538736d1f91b4ff','en','there_is_no_any_payment_gateway_at_the_present','There is no any payment gateway at the present!'),(461,'07e6b33e9c60853be0e3cd2c8e16f7d1','en','payment_gateway','Payment Gateway'),(462,'d19475f75ef113e6cf19dded12945669','en','empty','Empty'),(463,'a06e951a54226f099f7bff54c908419a','en','transaction_id_was_sent_to_your_email','(Transaction ID was sent to your email)'),(464,'32f7acc1039687eb3ce87b704ec2c210','en','total_amount_XX_includes_fee','Total Amount (%s) (Includes fee):'),(465,'b8c78ba11ead60192b2e3e06d6571b10','en','currency_rate','Currency Rate'),(466,'a5792605ba123090f89efc372a3a3e21','en','please_do_not_refresh_this_page','Please do not refresh this page...'),(467,'560f18d355f870bb319a422b139acab8','en','resellers_1_destination_for_smm_services','Resellers\' #1 Destination for SMM Services'),(468,'010367cc98a03b9cf82207b5767f0b92','en','save_time_managing_your_social_account_in_one_panel_where_people_buy_smm_services_such_as_facebook_ads_management_instagram_youtube_twitter_soundcloud_website_ads_and_many_more','Save time managing your social account in one panel. Where people buy SMM services such as Facebook ads management, Instagram, YouTube, Twitter, Soundcloud, Website ads and many more!                                                                                                                        '),(469,'dab01bd2a53541bc3512ba39a13ce867','en','get_start_now','Get start now!'),(470,'6f55e3b5d6e045bc1fdbc164d3bd9ac8','en','best_smm_marketing_services','Best SMM Marketing Services!'),(471,'b22137e1f6ee85775c303c4749a28801','en','best_smm_marketing_services_desc','We provide the cheapest SMM Reseller Panel services amongst our competitors. If you’re looking for a super-easy way to offer additional marketing services to your existing and new clients, look no further! our site offers that and more ! <br><br>You can resell our services in any site or Link your site through API and start resell our services directly start building stronger relationships, and helping you make a great profit at the same time. We do the work so you can focus on what you do best! As you grow, your profit grows without having to hire more people. This allows you to expand your business without all the expense and headaches usually associated with growing bigger!                                                                                                                        '),(472,'dce28af8edc072199c24e1db0991dd6b','en','What_we_offer','What we offer!'),(473,'ae41364702bec041b09b64755c254edb','en','you_can_resell_our_services_and_grow_your_profit_easily_resellers_are_important_part_of_smm_panel','You can resell our services and grow your profit easily, Resellers are important part of SMM PANEL                                                                                                                        '),(474,'e03bc36f5d64cfbdfb84e619afba7af4','en','technical_support_for_all_our_services_247_to_help_you','Technical support for all our services 24/7 to help you'),(475,'a82c8fa3b40ef87f654510a44e7e71cf','en','get_the_best_high_quality_services_and_in_less_time_here','Get the best high quality services and in less time here'),(476,'97c495161a8e16a362e9f55b0b4cb6f1','en','services_are_updated_daily_in_order_to_be_further_improved_and_to_provide_you_with_best_experience','Services are updated daily In order to be further improved and to provide you with best experience                                                                                                                        '),(477,'a928564ea2f339f3e9f87b79e1b44401','en','we_have_api_support_for_panel_owners_so_you_can_resell_our_services_easily','We have API Support For panel owners so you can resell our services easily                                                                                                                        '),(478,'be4d4780d05528d71d4f25979d8b72ce','en','we_have_a_popular_methods_as_paypal_and_many_more_can_be_enabled_upon_request','We have a Popular methods as PayPal and many more can be enabled upon request                                                                                                                        '),(479,'04f9f239d929c7339ad487c09a77cab3','en','Resellers','Resellers'),(480,'e36726de690f0537b5165e1bf79bfba1','en','secure_payments','Secure Payments'),(481,'e8128349df0c98dce47115ad527220ae','en','Supports','Supports'),(482,'50f06562754b6d85260b208862142336','en','Updates','Updates'),(483,'4b2f1edf0eea7da7fa98b73acf1c7ed8','en','api_support','Api support'),(484,'e4bd8432552b925d13e6938355db4be9','en','high_quality_services','High quality services'),(485,'9cf29c6460b91a3cfd2437145e7dacda','en','ready_to_start_with_us','READY TO START WITH US?'),(486,'9a74ed5aa8314ccdcb927f24a3335cdd','en','Terms__Privacy_Policy','Terms & Privacy Policy'),(487,'3eaab28397884d2ab69a01bd28dd90ab','en','Terms','Terms'),(488,'51c264d778e7aa3528e6d7945e720135','en','Privacy_Policy','Privacy Policy'),(489,'a4b5348564753306cddc4d35ee70aaf5','en','Notification','Notification!'),(490,'430ea8ebcd3870f8299c5400e297042c','en','Close','Close'),(491,'203fd2ceebe97b586ebb10682ead1017','en','register_and_try_for_free_we_give_you_1_to_get_started','Register and try for FREE. We give you € 1 to get started!'),(492,'9e244f8f6c062a39a253f262be2620f0','en','login_to_your_account','Login to your account'),(493,'50293de3a4fad96b32075de88a8b2151','en','only_letters_and_white_space_allowed','Only letters and white space allowed'),(494,'30a275ed2782b5a0bc396e56932f523d','en','remember_me','Remember me'),(495,'4ef91d258792d0fd5deaa32347841e3d','en','forgot_password','Forgot password'),(496,'0b7de023e2390438255620e9b8fbe88d','en','dont_have_account_yet','Don\'t have account yet?'),(497,'ee19bbab057531f094287f06e40b5e6c','en','enter_your_registration_email_address_to_receive_password_reset_instructions','Enter your registration email address to receive password reset instructions.                                                                                                                        '),(498,'d2cb459957327348060dd3c5f5de168a','en','new_password','New Password'),(499,'e1fbe72c2f22e1add4e0b1e57b460580','en','register_now','Register Now'),(500,'a48254abdcd202d829821b1315560178','en','create_new_account','Create new account'),(501,'cbf6599bd29aefb743f1936528382ba0','en','i_agree_the','I agree the'),(502,'74cb18415a73803b85976f14f0242a14','en','already_have_account','Already have account?'),(503,'daa9bb7146d0e71d78ee82927bf75343','en','oops_you_must_agree_with_the_terms_of_services_or_privacy_policy','Oops! You must agree with the Terms of Services or Privacy Policy                                                                                                                        '),(504,'f531bc13384643d30fa0bf393fb84935','en','welcome_you_have_signed_up_successfully','Welcome! you have signed up successfully.'),(505,'4ec5a3e71bfad8a873e84aabaa72d00d','en','your_account_has_not_been_activated','Your account has not been activated'),(506,'434b6ee274b6e2e18220e260cadd72e7','en','Login_successfully','Login successfully'),(507,'5a2ed1f2fa90771d256bd43036de7566','en','email_address_and_password_that_you_entered_doesnt_match_any_account_please_check_your_account_again','Email address and password that You entered doesn\'t match any account. Please check your account again                                                                                                                        '),(508,'fa7ba37309de8792d40bd877adfbee82','en','we_have_send_you_a_link_to_reset_password_and_get_back_into_your_account_please_check_your_email','We have send you a link to reset password and get back into your account. Please check your email                                                                                                                        '),(509,'ea0c1067d24880f2fde52e1cb8b7b513','en','your_password_has_been_successfully_changed','Your password has been successfully changed'),(510,'1b0d72ce5e856e1a62a72add782a09b3','en','thank_you_for_signing_up_please_check_your_email_to_complete_the_account_verification_process','Thank you for signing up! Please check your email to complete the Account Verification Process                                                                                                                        '),(511,'6c06fb6152c7cd723232ebdced624802','en','congratulations_your_registration_is_now_complete','Congratulations! Your Registration is Now Complete'),(512,'0b0419edc9b2053c1f1f31104bb1d6ee','en','congratulations_desc','Welcome to our service! We\'re happy to have you as a part of our community. Your account has been successfully created. You can access your account by clicking on the button below.                                                                                                                        '),(513,'d81909c28cedc38166ab1b714cd31f7e','en','api_providers_list','API Providers List'),(514,'ca048b5f81a81aa8a8c78b58cbefb9cc','en','update_api','Update API'),(515,'71465bfa1143c484af1b86b251de6305','en','update_balance','Update Balance'),(516,'a379ccf9866b688557c29f9e6712f051','en','Type','Type'),(517,'fac1b4fbbcd6d5813f15c534ce3f55e7','en','Manual','Manual'),(518,'79c900075b7157c15bf5df8a8bd0472f','en','edit_api','Edit API'),(519,'fd38d6108f7e4782e6fff31177a91556','en','api_url','API Url'),(520,'ed82e3d05541582aea4078767fa4bb53','en','list_of_api_services','List of API Services'),(521,'1f13e93e5fa2f07c2b394c5ddb83e382','en','choose_a_api_provider','Choose a API Provider'),(522,'59e229c376f1cb12cc49bff640a4fd21','en','add_service','Add service'),(523,'7981d445dc05f201feb75c34e982dfec','en','services_list_via_api','Services list via API'),(524,'d9668309871ebfd4fa5a9c0ac6c42152','en','api_provider_does_not_exists','API Provider does not exists.'),(525,'3f901b31ad07c697031637d9d91a176c','en','api_url_is_required','API URL is required'),(526,'4e5de2e3e8edb46719633cacb15d1ad8','en','api_key_is_required','API KEY is required'),(527,'4ac7d54de73d63b49a657b6eddc58d37','en','sorry_the_service_id_already_exists','Sorry! The Service ID already exists'),(528,'b662552c52764e35308deaa1869a58de','en','add_new_service_via_api','Add New Service via API'),(529,'cabb3a7fa57c6a8fa8e928e4c4f5fb97','en','api_orderid','API OrderID'),(530,'5e1544d953bb83b942647ccec33e013c','en','API_Response','API Response'),(531,'214ee7b48c539c040cad4a0533ae0c5f','en','bulk_add_all_services','Bulk Add All Services'),(532,'b2e5a1be4ab89f19dd489e574b59b977','en','api_provider_name','API Provider Name'),(533,'53eb206c266ff70bef6c9ffc35bad151','en','api_provider','API Provider'),(534,'98e080a7c6bc2c734b442ec32549b164','en','api_service_id','API ServiceID'),(535,'3c81232da4cb3b4a0a782c997cc3b2bd','en','price_percentage_increase_auto_rounding_to_2_decimal_places','Price percentage increase (Auto rounding to 2 decimal places)'),(536,'f684712f607fbea394b3372825d51677','en','bulk_add_limit','Bulk add limit'),(537,'e890938b162421a996128acb42aa2b97','en','note_when_you_use_this_feature_the_system_will_bulk_add_services_categories_from_api_provider_and_set_price_percentage_increase','Note: When you use this feature, the system will bulk add services, categories from API provider and set price percentage increase                                                                                                                        '),(538,'1bad0a98d1fabc821add90f8f9273805','en','price_percentage_increase_in_invalid_format','Price Percentage increase in invalid format'),(539,'97a2c32ed45c7d6eecf4e67b26c01180','en','bulk_add_limit_in_invalid_format','Bulk add limit in invalid format'),(540,'14bdf12b81a8b7fd6cf2e42c78efe409','en','note_this_script_supports_most_of_all_api_providers_like_justanotherpanelcom_followizcom_etc_so_it_doesnt_support_another_api_provider_which_have_different_api_parameters','Note: This script supports most of all API Providers like: justanotherpanel.com, followiz.com etc. So it doesn\'t support another API provider which have different API Parameters                                                                                                                        '),(541,'4bbe2a47b162606926f88b450581c4bc','en','sync_services','Sync Services'),(542,'7a139da3192f26c7d0c8bc68eacdec25','en','Disabled','Disabled'),(543,'e3d97a3192a86ffc07693073b1edda44','en','synchronization_results','Synchronization results'),(544,'7e7dd7829ca022f7060164e3f5244ca4','en','synchronous_request','Synchronous request'),(545,'62fae3c25f67eb2b492bd50ce4d940a8','en','current_service','Current Services'),(546,'f16632fdc3bac890fd7f776e2f5d015e','en','current_service_sync_all_the_current_services','Current Service: Sync all the current services'),(547,'228f1609d5413e8716e49d034e3d86ec','en','all_auto_add_new_service_if_the_service_doesnt_exists','All: Auto add new service if the service doesn\'t exists'),(548,'1972c5caf4dec3806ede1566c24228e9','en','add_update_service','Add/Update service'),(549,'d154d7fded03ef8e855ec919a16b07e3','en','service_lists_are_empty_unable_to_sync_services','Service lists are empty. Unable to sync services!'),(550,'aa00b479feac0ac5b51d7403ab597451','en','there_seems_to_be_an_issue_connecting_to_api_provider_please_check_api_key_and_token_again','There seems to be an issue connecting to API provider. Please check API key and Token again!                                                                                                                        '),(551,'68bd54552af0ced3b6fe08d58e0e0af6','en','price_invalid_format','Price invalid format'),(552,'9d8820288a1e80def61befb9b36075c9','en','auto_rounding_to_X_decimal_places','(Auto rounding to %s decimal places)'),(553,'614f32d8a4b261b1841149a0c4c93f58','en','enable_sync_the_price_min_max_of_current_services','Enable sync the price, min, max of current services'),(554,'30a6fb373d4c8ab602e78599fddc8153','en','auto_convert_to_new_currency_with_currency_rate_like_in','Auto convert to new currency with currency rate like in '),(555,'f0ee838fb6cc86ac3dfdbc15ce60f5f9','en','currency_setting_page','Currency Setting page'),(556,'8a8ba587ae89463dde37632a321609d5','en','auto_sync_services_setting','Auto Sync Services Setting'),(557,'519e99c5eff615a0a49dd00f6ca13de6','en','login_to_maintenace_mode','Login to Maintenace Mode'),(558,'3cdd49a2eb87d9f502efb8335f24a419','en','use_admin_account','(Use Admin account)'),(559,'c45cc4cef4ca60dd1648d55305fb11aa','en','the_website_is_in_maintenance_mode','The website is in maintenance mode'),(560,'d3824ddd7567b6189fe6402b86134146','en','were_undergoing_a_bit_of_scheduled_maintenance_sorry_for_the_inconvenience_well_be_backup_and_running_as_fast_as_possible','We\'re undergoing a bit of scheduled maintenance. Sorry for the inconvenience. We\'ll be backup and running as fast as possible!                                                                                                                        '),(561,'86e5d69ae86917e34c2a5cb36a9661eb','en','displays_news__announcement_feature','Displays News & Announcement feature'),(562,'583fa94b18e36e46909df77585e664ef','en','news__announcement','News & Announcement'),(563,'541dbf3e43ea049cf8d941365c0523a5','en','New_services','New services'),(564,'a433fe3f422f1c2ff2c147db18e0822f','en','Updated_services','Updated service'),(565,'8214734f89ffb98ee03e0ff8154635bd','en','Announcement','Announcement'),(566,'270eb6772a2153708134a2286628aa62','en','Disabled_services','Disabled services'),(567,'c86140ed0d47ddb363f8283a77d35568','en','View','View'),(568,'7b0524a901914e453e3d5b978ac46318','en','edit_news_announcement','Edit News/Announcement'),(569,'925f8992be20ea9fa03377fb02c03530','en','Start','Start'),(570,'d610d1beafd8b991352cf33ff3796ce8','en','whats_new_on_smartpanel','What\'s new on JIOSMMPANEL'),(571,'88c89ecd4302e37889be9946a948616b','en','invalid_news_type','Invalid news type!'),(572,'1c2e8839f9fa1b46401636fb29c3f8ab','en','start_field_is_required','Start field is required'),(573,'f46ca3912d740069ac9c503ee97b9542','en','Description_field_is_required','Description field is required'),(574,'ff3371a340c1bd3896a0a6f2c00c5b37','en','expiry_field_is_required','Expiry field is required'),(575,'8ef1b8a2811fc00ea1e65142a56d611c','en','Modules','Modules'),(576,'24bd560bdde217587d12ff38689bb46a','en','Purchased','Purchased'),(577,'db94f30a8df728b364de2ce942a6be5a','en','Buy_now','Buy Now'),(578,'3fdc59ad759fec0c63c7dd7b6f3aa3bf','en','Upgrade_version','Upgrade to version '),(579,'2ddd488a7474e2e1462c2c1f01038596','en','Clear_all','Clear all'),(580,'063d50ba63eb50cf362ef2f079da3f1d','en','Role','Role'),(581,'117c340ef534eb3f835d4f2af711933a','en','IP_Address','IP_Address'),(582,'a62a3ccf51bb1f7d306dac19314376d1','en','Date_Time','DateTime'),(583,'e0a50c3ff512d66a2499a258ee135017','en','Check_in','Check in'),(584,'d86b9cbb695b1bf8664fe8297903d7b3','en','Check_out','Check out'),(585,'8743ce46d834b7ad50e5f511be1a5987','en','Banned_By','Banned By'),(586,'d382517dd808f4beaf6bd3fd1b53eda9','en','paytm_merchant_key','Paytm Merchant Key'),(587,'ad096efb4cc0dcc6bae8c02f0e1d823b','en','Paytm_mid_merchant_id','Paytm MID (Merchant ID)'),(588,'5d5484f14ffe5ee2ffd855cf4c514d20','en','Paytm_Integration','Paytm Integration'),(589,'a48d47a95fd8413740419f2a0e582b14','en','paytm_confirmation','Paytm confirmation'),(590,'dfedc0cf8bda9b0a643e25f2daa2dc8c','en','the_system_will_convert_automatically_from_INR_to_USD_and_add_funds_to_your_blance_when_payment_is_made','The system will convert automatically from INR to USD and add funds to your blance when payment is made                                                                                                                        '),(591,'93000d8c77902de980be44c5cf60e7f1','en','get_your_social_accounts_followers_and_likes_at_one_place_instantly','Get Your Social Account\'s Followers And Likes At One Place, Instantly                                                                                                                        '),(592,'8b7c36496ad5e705f7d7d96593f8e61d','en','what_people_say_about_us','What People Say About Us'),(593,'07d4eb22f50636744282e5740111544c','en','our_service_has_an_extensive_customer_roster_built_on_years_worth_of_trust_read_what_our_buyers_think_about_our_range_of_service','Our service has an extensive customer roster built on years’ worth of trust. Read what our buyers think about our range of service.                                                                                                                        '),(594,'635768b0a837f7fdc2c2ae0d0612501a','en','client_one','John Smith'),(595,'5effb50d190b18db996a399c4a601374','en','client_one_jobname','Youtuber'),(596,'b0bb66d432981f03e80a680a270f9ae5','en','client_one_comment','After trying several websites who claim to have \'fast delivery\', I\'m glad I finally found this service. They literally started delivering 5 seconds after my payment!                                                                                                                        '),(597,'0686fad594bb1da4128a48dd5f8a2f51','en','client_two','Keith Irvine'),(598,'599fc051f41c0ae42ff23d4fc250a0c1','en','client_two_jobname','Instagram Model'),(599,'76f71a30c151540cafb78e5ef40e099b','en','client_two_comment','I cannot stress enough how happy I am with the service that I received. Thanks to all of you, my Instagram account is surging with activity! You’ve not only earned yourself a loyal customer, but a friend for life.                                                                                                                        '),(600,'6620cf4dd5b7fcff3788aef3b5a6d340','en','client_three','Sara-Jade Bevis'),(601,'1459a75c6193e37bb87ca25b88209490','en','client_three_jobname','Bloger'),(602,'3a24496b47cd3d4a741702eaf01be3a3','en','client_three_comment','Wow! This is amazing, i have been purchasing Instagram Likes for over a year and never got a delay! ? did a great job always                                                                                                                        '),(603,'76bc795cae6aa479c54a92073333e708','en','we_have_several_services_that_you_can_opt_for_backed_by_our_comprehensive_guarantee_click_the_button_below_to_find_out_more','We have several services that you can opt for backed by our comprehensive guarantee – click the button below to find out more.                                                                                                                        ');
/*!40000 ALTER TABLE `general_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_lang_list`
--

DROP TABLE IF EXISTS `general_lang_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_lang_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` varchar(225) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `country_code` varchar(225) DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_lang_list`
--

LOCK TABLES `general_lang_list` WRITE;
/*!40000 ALTER TABLE `general_lang_list` DISABLE KEYS */;
INSERT INTO `general_lang_list` (`id`, `ids`, `code`, `country_code`, `is_default`, `status`, `created`) VALUES (1,'55e710cdbbc175e95d2605539533d15e','en','GB',1,1,'2019-10-24 18:43:15');
/*!40000 ALTER TABLE `general_lang_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_news`
--

DROP TABLE IF EXISTS `general_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_user_id_foreign` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_news`
--

LOCK TABLES `general_news` WRITE;
/*!40000 ALTER TABLE `general_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `general_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_options`
--

DROP TABLE IF EXISTS `general_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_options`
--

LOCK TABLES `general_options` WRITE;
/*!40000 ALTER TABLE `general_options` DISABLE KEYS */;
INSERT INTO `general_options` (`id`, `name`, `value`) VALUES (67,'enable_https','0'),(68,'enable_disable_homepage','0'),(69,'website_desc','CHEAPESTSMMSCRIPT V4.0 - #1 SMM Reseller Panel - Best SMM Panel for Resellers. Also well known for TOP SMM Panel and Cheap SMM Panel for all kind of Social Media Marketing Services. SMM Panel for Facebook, Instagram, YouTube and more services!              '),(70,'website_keywords','smm panel, SmartPanel, smm reseller panel, smm provider panel, reseller panel, instagram panel, resellerpanel, smmpanels store,social media reseller panel, smmpanel, panelsmm, smm, panel, socialmedia, instagram reseller panel, cheapestsmmscript,cheapestsmmscript.online, smm script , smart panel script                                                                                                                                                       '),(71,'website_title','CHEAPEST SMM SCRIPT - GET YOUR SMM SCRIPT AT CHEAP PRICE'),(72,'website_favicon','https://test.greatsmmpanel.in/assets/uploads/user2e01e17467891f7c933dbaa00e1459d23db3fe4f/ab7e75f8940ba5adb45658e37ec75738.png'),(73,'website_logo','https://test.greatsmmpanel.in/assets/uploads/user2e01e17467891f7c933dbaa00e1459d23db3fe4f/ab7e75f8940ba5adb45658e37ec75738.png'),(74,'website_logo_white','https://test.greatsmmpanel.in/assets/uploads/user2e01e17467891f7c933dbaa00e1459d23db3fe4f/ab7e75f8940ba5adb45658e37ec75738.png'),(75,'enable_service_list_no_login','1'),(76,'notification_popup_content',''),(168,'paypal_payment_transaction_min',''),(77,'enable_api_tab','1'),(78,'contact_tel','+91 7654318692'),(79,'contact_email','krd28568@gmail.com'),(80,'contact_work_hour','We Work 24/7 To Help You'),(81,'social_facebook_link','https://cheapestsmmscript.online'),(82,'social_twitter_link','https://cheapestsmmscript.online'),(83,'social_instagram_link','https://cheapestsmmscript.online'),(84,'social_pinterest_link','https://cheapestsmmscript.online'),(85,'social_tumblr_link','https://cheapestsmmscript.online'),(86,'social_youtube_link','https://cheapestsmmscript.online'),(87,'embed_javascript',''),(88,'enable_notification_popup','0'),(89,'enable_goolge_recapcha','0'),(90,'currency_decimal_separator','dot'),(91,'currency_thousand_separator','comma'),(92,'currency_symbol','$'),(93,'enable_news_announcement','1'),(94,'is_active_paypal','1'),(95,'is_active_stripe','1'),(96,'is_active_2checkout','1'),(97,'is_active_manual','1'),(98,'is_maintenance_mode','0'),(99,'website_name','CHEAPEST SMM SCRIPT - GET YOUR SMM SCRIPT AT CHEAP PRICE'),(100,'payment_transaction_min','1'),(101,'payment_environment','sandbox'),(102,'paypal_chagre_fee','0'),(103,'paypal_client_id','Afb-9f1Uq-_xzhPfQCObzmW_Wj0oOzloiKDeVkbheUGY1sm-uHTXc-N1WYOguytc-Te9CRF0x8Xi3oNI'),(104,'paypal_client_secret','EGyfukYqpG4W0V8tRjrKdxLtmzaawgcb_n_hqCtzXhdl50EKgtSm-7UwHTiCnCR7cYOfGI6HKkJj3pU3'),(105,'stripe_chagre_fee','4'),(106,'stripe_publishable_key','FGFRGRT'),(107,'stripe_secret_key','FGTRGHBR'),(108,'twocheckout_chagre_fee','4'),(109,'2checkout_publishable_key','FBXTFBGH'),(110,'2checkout_private_key','TFXR'),(111,'2checkout_seller_id','TGXT'),(112,'enable_explication_service_symbol','1'),(113,'default_limit_per_page','30'),(114,'currency_decimal','2'),(115,'terms_content',''),(116,'policy_content',''),(117,'currency_code','USD'),(118,'default_price_percentage_increase','25'),(119,'auto_rounding_x_decimal_places','1'),(120,'is_auto_currency_convert','1'),(121,'new_currecry_rate','75'),(122,'is_verification_new_account','0'),(123,'is_welcome_email','1'),(124,'is_new_user_email','0'),(125,'is_payment_notice_email','1'),(126,'is_ticket_notice_email','1'),(127,'is_order_notice_email','0'),(128,'email_from','admin@cheapestsmmscript.online'),(129,'email_name','CHEAPEST SMM SCRIPT '),(130,'email_protocol_type','php_mail'),(131,'smtp_server',''),(132,'smtp_port',''),(133,'smtp_encryption','ssl'),(134,'smtp_username',''),(135,'smtp_password',''),(136,'enable_signup_skype_field','1'),(137,'enable_drip_feed','1'),(138,'verification_email_subject','{{website_name}} - Please validate your account'),(139,'verification_email_content','<p><strong>Welcome to {{website_name}}! </strong></p><p>Hello <strong>{{user_firstname}}</strong>!</p><p> Thank you for joining! We&#39;re glad to have you as community member, and we&#39;re stocked for you to start exploring our service.  If you don&#39;t verify your address, you won&#39;t be able to create a User Account.</p><p>  All you need to do is activate your account by click this link: <br>  {{activation_link}} </p><p>Thanks and Best Regards!</p>'),(140,'email_welcome_email_subject','{{website_name}} - Getting Started with Our Service!'),(141,'email_welcome_email_content','<p><strong>Welcome to {{website_name}}! </strong></p><p>Hello <strong>{{user_firstname}}</strong>!</p><p>Congratulations! <br>You have successfully signed up for our service - {{website_name}} with follow data</p><ul><li>Firstname: {{user_firstname}}</li><li>Lastname: {{user_lastname}}</li><li>Email: {{user_email}}</li><li>Timezone: {{user_timezone}}</li></ul><p>We want to exceed your expectations, so please do not hesitate to reach out at any time if you have any questions or concerns. We look to working with you.</p><p>Best Regards,</p>'),(142,'email_new_registration_subject','{{website_name}} - New Registration'),(143,'email_new_registration_content','<p>Hi Admin!</p><p>Someone signed up in <strong>{{website_name}}</strong> with follow data</p><ul><li>Firstname {{user_firstname}}</li><li>Lastname: {{user_lastname}}</li><li>Email: {{user_email}}</li><li>Timezone: {{user_timezone}}</li></ul> '),(144,'email_password_recovery_subject','{{website_name}} - Password Recovery'),(145,'email_password_recovery_content','<p>Hi<strong> {{user_firstname}}! </strong></p><p>Somebody (hopefully you) requested a new password for your account. </p><p>No changes have been made to your account yet. <br>You can reset your password by click this link: <br>{{recovery_password_link}}</p><p>If you did not request a password reset, no further action is required. </p><p>Thanks and Best Regards!</p>                '),(146,'email_payment_notice_subject','{{website_name}} -  Thank You! Deposit Payment Received'),(147,'email_payment_notice_content','<p>Hi<strong> {{user_firstname}}! </strong></p><p>We&#39;ve just received your final remittance and would like to thank you. We appreciate your diligence in adding funds to your balance in our service.</p><p>It has been a pleasure doing business with you. We wish you the best of luck.</p><p>Thanks and Best Regards!</p>'),(148,'is_active_paytm','1'),(149,'paytm_payment_environment','TEST'),(150,'paytm_chagre_fee','0'),(151,'paytm_currency_rate_to_usd','76.5'),(152,'paytm_merchant_id','TGHB T'),(153,'paytm_merchant_key','RTHGTDRSHHHHHH'),(154,'default_home_page','pergo'),(155,'default_timezone','UTC'),(156,'is_clear_ticket','1'),(157,'default_clear_ticket_days','10'),(158,'default_min_order','10'),(159,'default_max_order','10000000'),(160,'default_price_per_1k','0.10'),(161,'default_drip_feed_runs','10'),(162,'default_drip_feed_interval','10'),(163,'google_capcha_site_key',''),(164,'google_capcha_secret_key',''),(165,'paytm_payment_transaction_min',''),(167,'defaut_auto_sync_service_setting','{\"price_percentage_increase\":12,\"sync_request\":0,\"new_currency_rate\":1,\"is_enable_sync_price\":1,\"is_convert_to_new_currency\":0}'),(166,'get_features_option','');
/*!40000 ALTER TABLE `general_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_purchase`
--

DROP TABLE IF EXISTS `general_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text DEFAULT NULL,
  `pid` text DEFAULT NULL,
  `purchase_code` text DEFAULT NULL,
  `version` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_purchase`
--

LOCK TABLES `general_purchase` WRITE;
/*!40000 ALTER TABLE `general_purchase` DISABLE KEYS */;
INSERT INTO `general_purchase` (`id`, `ids`, `pid`, `purchase_code`, `version`) VALUES (1,'8068ec7f79145fe55dea67dd63b012c3','23595718','71436a6b-df37-4f73-8ae6-c26f70ec8093','3.1'),(2,'39a8705f9096329973af792c9790d134','20190607','50b6a726-3553-a723-92ac-96925c2be206','1.1');
/*!40000 ALTER TABLE `general_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_sessions`
--

DROP TABLE IF EXISTS `general_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_sessions`
--

LOCK TABLES `general_sessions` WRITE;
/*!40000 ALTER TABLE `general_sessions` DISABLE KEYS */;
INSERT INTO `general_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9a45f9fb7612211f839201cef62b0f45644d4d9b','47.29.100.137',1618691608,'__ci_last_regenerate|i:1618691300;langCurrent|O:8:\"stdClass\":7:{s:2:\"id\";s:1:\"1\";s:3:\"ids\";s:32:\"55e710cdbbc175e95d2605539533d15e\";s:4:\"code\";s:2:\"en\";s:12:\"country_code\";s:2:\"GB\";s:10:\"is_default\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-10-24 18:43:15\";}uid|i:152;user_current_info|a:5:{s:4:\"role\";s:4:\"user\";s:5:\"email\";s:30:\"admin@cheapestsmmscript.online\";s:10:\"first_name\";s:12:\"CHEAPEST SMM\";s:9:\"last_name\";s:6:\"SCRIPT\";s:8:\"timezone\";s:12:\"Asia/Kolkata\";}'),('166326b6ffdc43df914e416731740766599b0b37','47.29.100.137',1618691733,'__ci_last_regenerate|i:1618690756;langCurrent|O:8:\"stdClass\":7:{s:2:\"id\";s:1:\"1\";s:3:\"ids\";s:32:\"55e710cdbbc175e95d2605539533d15e\";s:4:\"code\";s:2:\"en\";s:12:\"country_code\";s:2:\"GB\";s:10:\"is_default\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-10-24 18:43:15\";}uid|s:3:\"152\";user_current_info|a:5:{s:4:\"role\";s:5:\"admin\";s:5:\"email\";s:30:\"admin@cheapestsmmscript.online\";s:10:\"first_name\";s:12:\"CHEAPEST SMM\";s:9:\"last_name\";s:6:\"SCRIPT\";s:8:\"timezone\";s:12:\"Asia/Kolkata\";}');
/*!40000 ALTER TABLE `general_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_transaction_logs`
--

DROP TABLE IF EXISTS `general_transaction_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_transaction_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `transaction_id` text DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_transaction_logs`
--

LOCK TABLES `general_transaction_logs` WRITE;
/*!40000 ALTER TABLE `general_transaction_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `general_transaction_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_users`
--

DROP TABLE IF EXISTS `general_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `login_type` text DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `timezone` text DEFAULT NULL,
  `more_information` text DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `balance` decimal(15,4) DEFAULT 0.0000,
  `custom_rate` int(11) NOT NULL DEFAULT 0,
  `api_key` varchar(191) DEFAULT NULL,
  `spent` varchar(225) DEFAULT NULL,
  `activation_key` text DEFAULT NULL,
  `reset_key` text DEFAULT NULL,
  `history_ip` text DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_users`
--

LOCK TABLES `general_users` WRITE;
/*!40000 ALTER TABLE `general_users` DISABLE KEYS */;
INSERT INTO `general_users` (`id`, `ids`, `role`, `login_type`, `first_name`, `last_name`, `email`, `password`, `timezone`, `more_information`, `settings`, `desc`, `balance`, `custom_rate`, `api_key`, `spent`, `activation_key`, `reset_key`, `history_ip`, `status`, `changed`, `created`) VALUES (152,'806becf0062a2fa0ba20545e33ac329b','admin',NULL,'CHEAPEST SMM','SCRIPT','admin@cheapestsmmscript.online','e00b6fd899c6524eabcd96a1fab73a63','Asia/Kolkata','{\"skype_id\":\"123456789\"}',NULL,NULL,0.0000,0,'ACEi4JSTIfNq4PPEmnXtl5Jez7q6rrIS',NULL,'b239ff586900674cfda64613cd07a4d3','30efb7d057db7c6aff86f0e8d4d05420','162.158.191.159',1,'2021-04-18 02:03:17','2021-04-18 02:03:17');
/*!40000 ALTER TABLE `general_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ids` text CHARACTER SET utf8 DEFAULT NULL,
  `type` enum('direct','api') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'direct',
  `cate_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `api_provider_id` int(11) DEFAULT NULL,
  `api_service_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_order_id` int(11) DEFAULT 0,
  `uid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usernames` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashtags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashtag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_posts` int(11) DEFAULT NULL,
  `sub_min` int(11) DEFAULT NULL,
  `sub_max` int(11) DEFAULT NULL,
  `sub_delay` int(11) DEFAULT NULL,
  `sub_expiry` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_response_orders` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_response_posts` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_status` enum('Active','Paused','Completed','Expired','Canceled') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(15,4) DEFAULT NULL,
  `status` enum('completed','processing','inprogress','pending','partial','refunded','canceled') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `start_counter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `remains` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `is_drip_feed` int(1) DEFAULT 0,
  `runs` int(11) DEFAULT 0,
  `interval` int(2) DEFAULT 0,
  `dripfeed_quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `original_price` decimal(15,4) DEFAULT NULL,
  `min` int(50) DEFAULT NULL,
  `max` int(50) DEFAULT NULL,
  `add_type` enum('manual','api') DEFAULT 'manual',
  `type` varchar(100) DEFAULT 'default',
  `api_service_id` varchar(200) DEFAULT NULL,
  `api_provider_id` int(11) DEFAULT NULL,
  `dripfeed` int(1) DEFAULT 0,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_messages`
--

DROP TABLE IF EXISTS `ticket_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_messages_user_id_foreign` (`uid`),
  KEY `ticket_messages_ticket_id_foreign` (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_messages`
--

LOCK TABLES `ticket_messages` WRITE;
/*!40000 ALTER TABLE `ticket_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('new','pending','closed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_user_id_foreign` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'greavnpw_test'
--

--
-- Dumping routines for database 'greavnpw_test'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-17 16:36:04
