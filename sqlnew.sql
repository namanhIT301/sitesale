CREATE DATABASE  IF NOT EXISTS `sitesale` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sitesale`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: sitesale
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `app_category`
--

DROP TABLE IF EXISTS `app_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_sub` tinyint(1) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) NOT NULL,
  `sub_category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `app_category_sub_category_id_7b7f6a7f_fk_app_category_id` (`sub_category_id`),
  CONSTRAINT `app_category_sub_category_id_7b7f6a7f_fk_app_category_id` FOREIGN KEY (`sub_category_id`) REFERENCES `app_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_category`
--

LOCK TABLES `app_category` WRITE;
/*!40000 ALTER TABLE `app_category` DISABLE KEYS */;
INSERT INTO `app_category` VALUES (1,0,'Food','food',NULL),(2,0,'Mobile','mobile',NULL),(3,0,'Stuffed animals','stuffed',NULL);
/*!40000 ALTER TABLE `app_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_contactmessage`
--

DROP TABLE IF EXISTS `app_contactmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_contactmessage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_contactmessage`
--

LOCK TABLES `app_contactmessage` WRITE;
/*!40000 ALTER TABLE `app_contactmessage` DISABLE KEYS */;
INSERT INTO `app_contactmessage` VALUES (37,'zz','ZZ@GMAIL.COMz','zz','2024-07-21 07:50:59.286423'),(38,'Toila','Ai@gmail.com','zzz','2024-08-04 09:28:06.269209'),(39,'Toila','Ai@gmail.com','zzz','2024-08-04 09:28:09.953418');
/*!40000 ALTER TABLE `app_contactmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_news`
--

DROP TABLE IF EXISTS `app_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_news` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `author` varchar(255) NOT NULL,
  `published_date` datetime(6) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `is_trending` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_news`
--

LOCK TABLES `app_news` WRITE;
/*!40000 ALTER TABLE `app_news` DISABLE KEYS */;
INSERT INTO `app_news` VALUES (1,'The Benefits of a Good Night\'s Sleep','Enhanced Cognitive Function: Quality sleep improves memory, concentration, and problem-solving skills. It helps consolidate memories and supports learning and cognitive performance.\r\n\r\nEmotional Stability: Adequate sleep helps regulate emotions and mood. It reduces irritability and stress, contributing to overall emotional well-being.\r\n\r\nPhysical Health: Good sleep supports immune function, helping the body fight off infections. It also aids in physical recovery and repair, reducing the risk of chronic diseases.\r\n\r\nImproved Heart Health: Quality sleep contributes to better cardiovascular health by helping to regulate blood pressure and reducing the risk of heart disease.\r\n\r\nWeight Management: Proper sleep helps regulate hormones related to hunger and appetite, which can prevent weight gain and promote a healthy metabolism.\r\n\r\nIncreased Energy and Productivity: A restful sleep enhances energy levels and overall productivity, making it easier to stay focused and perform daily tasks efficiently.\r\n\r\nBetter Mood and Mental Health: Consistent, good-quality sleep can reduce symptoms of anxiety and depression, contributing to better mental health and a more positive outlook on life.','Admin','2024-07-20 11:06:27.955389','news_images/sleep.gif',1),(2,'7 Surprising Health Benefits of Yoga','Improved Flexibility: Regular yoga practice enhances flexibility by stretching and lengthening the muscles. This increased flexibility can help prevent injuries and improve overall physical performance.\r\n\r\nEnhanced Strength: Yoga strengthens various muscle groups, including the core, arms, legs, and back. Many yoga poses require holding the body in challenging positions, which builds muscular strength.\r\n\r\nBetter Posture: Yoga promotes body awareness and alignment, which helps improve posture. Good posture reduces strain on the spine and muscles, leading to less discomfort and a reduced risk of back pain.\r\n\r\nReduced Stress and Anxiety: The combination of deep breathing, meditation, and physical movement in yoga helps lower stress levels and reduce anxiety. It activates the parasympathetic nervous system, which promotes relaxation and mental calm.\r\n\r\nEnhanced Mental Clarity and Focus: Yoga practice improves concentration and mental clarity by teaching mindfulness and present-moment awareness. This can lead to better decision-making and increased productivity.\r\n\r\nImproved Sleep Quality: Regular yoga can help improve sleep quality by promoting relaxation and reducing insomnia. The calming effects of yoga can help ease the mind and prepare the body for restful sleep.\r\n\r\nBetter Digestive Health: Certain yoga poses can stimulate the digestive organs and improve digestion. Gentle movements and stretching help increase blood flow to the digestive system, aiding in the efficient processing of food and elimination of waste.','Admin','2024-07-20 11:31:24.077513','news_images/yoga.jpg',1),(3,'The Impact of Cat Ownership on Human Health','According to l’Officiel magazine, today, owning a cat has significant meaning for many people as it positively impacts human health in various ways.\r\n\r\n1. Cats can heal and soothe the human soul\r\nThe purring sound of a cat is an appealing characteristic. Most importantly, this sound indicates that the cat is feeling comfortable. More specifically, a cat’s purring can help owners reduce stress and relax their minds. Additionally, this purring can calm the nerves and may lower stress hormones like cortisol or reduce blood pressure.\r\n\r\nMoreover, a cat\'s purring has a positive effect on memory. Thus, it may help combat memory loss and cognitive decline. The frequency of a cat\'s purring corresponds to the vibration and electrical frequencies used in treating fractures, pain, or injuries.\r\n\r\n2. Cats are ideal companions for people living alone\r\nToday, many people are negatively affected by loneliness. Cats are ideal companions to help combat feelings of isolation. The presence of cats provides individuals living alone with a sense of care and affection. Additionally, interacting with cats can reduce feelings of isolation and increase overall happiness.\r\n\r\n3. Owning a cat may help reduce heart disease\r\nSurprisingly, cats can even contribute to the treatment of heart disease. Cuddling and playing with a cat can regulate heart rate and lower cholesterol levels. Scientific studies have shown that cat owners generally have a lower risk of heart disease and heart attacks compared to non-cat owners.\r\n\r\n4. Owning a cute cat can improve sleep quality\r\nThe presence of a gentle, soothing animal like a cat can alleviate symptoms of sleep disorders. The purring sound of a cat has a calming effect and promotes natural sleep formation. The comforting feeling of a cat snuggling into your chest and purring softly can help you fall asleep faster and enjoy deeper sleep.\r\n\r\n5. Cats can help boost the immune system\r\nAlthough cat fur can cause allergies in some people, it can also help strengthen the immune system. Cat fur, saliva, and other germs help train the human immune system, making it better able to fight off pathogens and allergens.','Admin','2024-07-20 12:07:09.928763','news_images/cat.jpg',0),(4,'Câu chuyện về Teddy - những chú gấu bông đầu tiên','Stuffed bears, or Teddy Bears—a name that feels very familiar. However, few people know that \"Teddy Bear\" originates from a former U.S. President, Theodore Roosevelt, who was nicknamed \"Teddy\" bear. The reason for this nickname was that President Roosevelt was an energetic man, loved nature, and had a passion for hunting. The story of the Teddy Bear is linked to a hunting trip of President Roosevelt.\r\n\r\nOn November 14, 1902, Andrew Longino, the Governor of Mississippi, invited President Roosevelt to go bear hunting outside Onward. The hunting trip lasted for 10 days, so there was ample time for Roosevelt to track and kill a bear. However, after the hunt, everyone in the group had a bear as their trophy, except Theodore Roosevelt.','Admin','2024-07-20 12:55:25.165056','news_images/teddy.jpg',1),(5,'The story of the apple','The apple is one of the fruits with a rich nutritional profile and is also one of the most popular fruits in the world. Apples are grown and consumed in nearly every country, and they are included in a variety of dishes and beverages. The English have an old proverb: \"An apple a day keeps the doctor away,\" which roughly translates to \"eating an apple every day keeps you free from illness,\" highlighting the significance of apples in daily life. Moreover, in symbolic terms, the apple is a prominent and meaningful image with distinctive significance.','Admin','2024-07-20 14:45:27.787760','news_images/Red_Apple.jpg',1);
/*!40000 ALTER TABLE `app_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_order`
--

DROP TABLE IF EXISTS `app_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_order` datetime(6) NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `customer_id` int DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_order_customer_id_7c27c407_fk_auth_user_id` (`customer_id`),
  CONSTRAINT `app_order_customer_id_7c27c407_fk_auth_user_id` FOREIGN KEY (`customer_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_order`
--

LOCK TABLES `app_order` WRITE;
/*!40000 ALTER TABLE `app_order` DISABLE KEYS */;
INSERT INTO `app_order` VALUES (1,'2024-07-12 15:24:39.760978',0,1,NULL),(2,'2024-07-14 09:53:50.022456',0,2,NULL),(3,'2024-07-14 12:04:02.036929',1,3,NULL);
/*!40000 ALTER TABLE `app_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_orderitem`
--

DROP TABLE IF EXISTS `app_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_orderitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `date_added` datetime(6) NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_orderitem_order_id_41257a1b_fk_app_order_id` (`order_id`),
  KEY `app_orderitem_product_id_5f40ddb0_fk_app_product_id` (`product_id`),
  CONSTRAINT `app_orderitem_order_id_41257a1b_fk_app_order_id` FOREIGN KEY (`order_id`) REFERENCES `app_order` (`id`),
  CONSTRAINT `app_orderitem_product_id_5f40ddb0_fk_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `app_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_orderitem`
--

LOCK TABLES `app_orderitem` WRITE;
/*!40000 ALTER TABLE `app_orderitem` DISABLE KEYS */;
INSERT INTO `app_orderitem` VALUES (16,4,'2024-07-14 14:42:36.528748',1,3),(17,4,'2024-07-14 14:42:37.544434',1,2),(18,3,'2024-07-14 14:42:38.296799',1,1),(19,1,'2024-07-14 14:54:05.400391',1,5),(20,1,'2024-08-04 09:24:07.141103',1,7);
/*!40000 ALTER TABLE `app_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_product`
--

DROP TABLE IF EXISTS `app_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `price` double NOT NULL,
  `digital` tinyint(1) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `detail` longtext,
  `is_hot` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_product`
--

LOCK TABLES `app_product` WRITE;
/*!40000 ALTER TABLE `app_product` DISABLE KEYS */;
INSERT INTO `app_product` VALUES (1,'Banana',10,1,'banana_iZy2kdJ.jpg','The banana, scientifically known as Musa spp., is a tropical fruit beloved for its sweet flavor and creamy texture. It grows on large herbaceous plants that belong to the genus Musa, part of the Musaceae family. Bananas are typically elongated and curved, with a soft, edible peel that ranges from green when unripe to yellow or even brown when ripe, depending on the variety.\r\n\r\nBananas are native to tropical regions of Southeast Asia, but they are now cultivated in many tropical and subtropical areas around the world. They are rich in vitamins, minerals, and dietary fiber, making them a popular and nutritious fruit choice. Bananas are versatile in culinary use, enjoyed fresh, added to smoothies, baked into bread and desserts, or even fried in some cuisines.\r\n\r\nIn addition to their culinary appeal, bananas have cultural significance in various societies, often symbolizing fertility, prosperity, and even hospitality in some cultures.',0),(2,'Apple',2,1,'apple_eb9eZl9.jpg','Apple, also known as pomme (from French: pomme), is an edible fruit from the apple tree (Malus domestica). Apples are grown worldwide and are the most widely cultivated species in the genus Malus. The apple tree originates from Central Asia, where its wild ancestor, the Tien Shan wild apple, still exists today. They have been cultivated for thousands of years in Asia and Europe and were introduced to North America by European colonists. Apples hold religious and mythological significance in many cultures, including those of Northern Europe, Greece, and European Christianity.',1),(3,'Samsung Note 20 Ultra',20,1,'samsung_note_20_ultra.jpg','The 2K+ Dynamic AMOLED 2X edge-to-edge display is perfectly designed and features a modern look. The edge-to-edge design with maximum corner curving builds on the characteristics of previous generations, while the Dynamic AMOLED 2X technology provides accurate cinematic color reproduction, offering you a true-to-life movie experience right on your smartphone. Additionally, by minimizing harmful blue light, Dynamic AMOLED 2X helps reduce eye strain, optimizing the user\'s experience. The screen’s flaws are minimized to the greatest extent possible, resulting in the highest display ratio, surpassing that of smartphones with notch or waterdrop designs that are now common on the market. The device also features durable Corning Gorilla Glass Victus on the front, which is robust and highly resistant to scratches. The front still houses a 10 MP selfie camera positioned centrally, but if you look closely, you\'ll notice that the size of the camera cutout has been minimized and is smaller compared to the previous version.',0),(4,'Stuffed Capybara',20,0,'capybrasttuff_7fRlvgw.png','Capybara stuffed animal is the perfect choice for you and your family. Made from soft fabric and featuring an adorable design inspired by this unique animal species, this product is not just a children\'s toy but also an essential part of any family space. For those who appreciate cuteness and warmth, the Capybara plush brings joy and relaxation to all ages',0),(5,'Iphone 15',300,1,'Iphone15_rWJAYVM.png','Experience innovation at its finest with the sleek and powerful iPhone 15. Featuring cutting-edge technology, stunning design, and unparalleled performance, it redefines what a smartphone can be. Discover a new era of connectivity and creativity with the iPhone 15.',1),(6,'Stuffed Cat',5,0,'catstuff_zEeVvs4.jpg','A stuffed cat, or stuffed toy cat, is a soft toy made to resemble a cat. It is typically filled with cotton or other soft materials and often used as a comforting or decorative item. These toys come in various sizes and designs, appealing to both children and collectors for their cuddly nature and often lifelike appearance.',0),(7,'Xiaomi Redmi Note 13',100,1,'redmi_note_13.jpg','The AMOLED display is particularly noteworthy for its ability to reduce blue light, which helps to soothe the eyes when using the phone in the evening. This is truly an important feature for protecting one\'s eyesight.\r\n\r\nI am impressed with the large screen size of this Redmi phone, which is up to 6.67 inches. It creates a spacious display area, making all activities from entertainment to work more comfortable. Playing games, watching movies, or even working with applications like Google Sheets becomes easier.',0);
/*!40000 ALTER TABLE `app_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_product_category`
--

DROP TABLE IF EXISTS `app_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_product_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_product_category_product_id_category_id_73528da5_uniq` (`product_id`,`category_id`),
  KEY `app_product_category_category_id_369a9753_fk_app_category_id` (`category_id`),
  CONSTRAINT `app_product_category_category_id_369a9753_fk_app_category_id` FOREIGN KEY (`category_id`) REFERENCES `app_category` (`id`),
  CONSTRAINT `app_product_category_product_id_c059d7b6_fk_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `app_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_product_category`
--

LOCK TABLES `app_product_category` WRITE;
/*!40000 ALTER TABLE `app_product_category` DISABLE KEYS */;
INSERT INTO `app_product_category` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,2),(6,6,3),(7,7,2);
/*!40000 ALTER TABLE `app_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_shippingaddress`
--

DROP TABLE IF EXISTS `app_shippingaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_shippingaddress` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `date_added` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_shippingaddress_order_id_220f1517_fk_app_order_id` (`order_id`),
  KEY `app_shippingaddress_customer_id_24c9534f_fk_auth_user_id` (`customer_id`),
  CONSTRAINT `app_shippingaddress_customer_id_24c9534f_fk_auth_user_id` FOREIGN KEY (`customer_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `app_shippingaddress_order_id_220f1517_fk_app_order_id` FOREIGN KEY (`order_id`) REFERENCES `app_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_shippingaddress`
--

LOCK TABLES `app_shippingaddress` WRITE;
/*!40000 ALTER TABLE `app_shippingaddress` DISABLE KEYS */;
INSERT INTO `app_shippingaddress` VALUES (31,'zz','zz','123','0123453',1,NULL,'2024-07-21 09:06:06.354343');
/*!40000 ALTER TABLE `app_shippingaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_usertoken`
--

DROP TABLE IF EXISTS `app_usertoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_usertoken` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `refresh_token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `app_usertoken_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_usertoken`
--

LOCK TABLES `app_usertoken` WRITE;
/*!40000 ALTER TABLE `app_usertoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_usertoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add product',7,'add_product'),(26,'Can change product',7,'change_product'),(27,'Can delete product',7,'delete_product'),(28,'Can view product',7,'view_product'),(29,'Can add order',8,'add_order'),(30,'Can change order',8,'change_order'),(31,'Can delete order',8,'delete_order'),(32,'Can view order',8,'view_order'),(33,'Can add order item',9,'add_orderitem'),(34,'Can change order item',9,'change_orderitem'),(35,'Can delete order item',9,'delete_orderitem'),(36,'Can view order item',9,'view_orderitem'),(37,'Can add shipping address',10,'add_shippingaddress'),(38,'Can change shipping address',10,'change_shippingaddress'),(39,'Can delete shipping address',10,'delete_shippingaddress'),(40,'Can view shipping address',10,'view_shippingaddress'),(41,'Can add category',11,'add_category'),(42,'Can change category',11,'change_category'),(43,'Can delete category',11,'delete_category'),(44,'Can view category',11,'view_category'),(45,'Can add contact message',12,'add_contactmessage'),(46,'Can change contact message',12,'change_contactmessage'),(47,'Can delete contact message',12,'delete_contactmessage'),(48,'Can view contact message',12,'view_contactmessage'),(49,'Can add order success',13,'add_ordersuccess'),(50,'Can change order success',13,'change_ordersuccess'),(51,'Can delete order success',13,'delete_ordersuccess'),(52,'Can view order success',13,'view_ordersuccess'),(53,'Can add order detail',14,'add_orderdetail'),(54,'Can change order detail',14,'change_orderdetail'),(55,'Can delete order detail',14,'delete_orderdetail'),(56,'Can view order detail',14,'view_orderdetail'),(57,'Can add create user form',15,'add_createuserform'),(58,'Can change create user form',15,'change_createuserform'),(59,'Can delete create user form',15,'delete_createuserform'),(60,'Can view create user form',15,'view_createuserform'),(61,'Can add news',16,'add_news'),(62,'Can change news',16,'change_news'),(63,'Can delete news',16,'delete_news'),(64,'Can view news',16,'view_news'),(65,'Can add comment',17,'add_comment'),(66,'Can change comment',17,'change_comment'),(67,'Can delete comment',17,'delete_comment'),(68,'Can view comment',17,'view_comment'),(69,'Can add user',18,'add_customuser'),(70,'Can change user',18,'change_customuser'),(71,'Can delete user',18,'delete_customuser'),(72,'Can view user',18,'view_customuser'),(73,'Can add Token',19,'add_token'),(74,'Can change Token',19,'change_token'),(75,'Can delete Token',19,'delete_token'),(76,'Can view Token',19,'view_token'),(77,'Can add Token',20,'add_tokenproxy'),(78,'Can change Token',20,'change_tokenproxy'),(79,'Can delete Token',20,'delete_tokenproxy'),(80,'Can view Token',20,'view_tokenproxy'),(81,'Can add user',21,'add_user'),(82,'Can change user',21,'change_user'),(83,'Can delete user',21,'delete_user'),(84,'Can view user',21,'view_user'),(85,'Can add blacklisted token',22,'add_blacklistedtoken'),(86,'Can change blacklisted token',22,'change_blacklistedtoken'),(87,'Can delete blacklisted token',22,'delete_blacklistedtoken'),(88,'Can view blacklisted token',22,'view_blacklistedtoken'),(89,'Can add outstanding token',23,'add_outstandingtoken'),(90,'Can change outstanding token',23,'change_outstandingtoken'),(91,'Can delete outstanding token',23,'delete_outstandingtoken'),(92,'Can view outstanding token',23,'view_outstandingtoken'),(93,'Can add jwt token',24,'add_jwttoken'),(94,'Can change jwt token',24,'change_jwttoken'),(95,'Can delete jwt token',24,'delete_jwttoken'),(96,'Can view jwt token',24,'view_jwttoken'),(97,'Can add user token',25,'add_usertoken'),(98,'Can change user token',25,'change_usertoken'),(99,'Can delete user token',25,'delete_usertoken'),(100,'Can view user token',25,'view_usertoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$XiGlh4DL0Lw7Er7hrIkC5M$teC+cvYKYEhqDJobwxBo7DvgZfxQXec5odwHoWGRQLM=','2024-08-03 11:40:22.412884',1,'admin','','','namanhzz@gmail.com',1,1,'2024-07-12 15:21:51.000000'),(2,'pbkdf2_sha256$720000$hliFQbsEkwl1KmY1Qkr2dP$Odr/MMhk0vdzREU98LudzM7lzcoe0gGotTlDtmG2Be8=','2024-07-14 09:53:50.000000',0,'user1','','','user@example.com',0,1,'2024-07-14 09:53:28.000000'),(3,'pbkdf2_sha256$720000$OwYaqDgFA4bTsk4aQScRY3$dpQaJGytJb3OSDg0S9KChI2xAEpqqGFqDir0vud+lz0=','2024-07-14 12:04:02.024975',0,'user2','','','',0,1,'2024-07-14 12:03:38.047006'),(4,'pbkdf2_sha256$720000$AoEvr6qMP6CqpMv3NnKl3C$Kq2qC52wjkUffArh5hCxWy4r9BWwp154H8eIT2cHErQ=',NULL,0,'admin1','','','admin@example.com',0,1,'2024-07-30 14:04:06.043045');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-07-12 15:24:31.929002','1','Food',1,'[{\"added\": {}}]',11,1),(2,'2024-07-12 15:24:34.170888','1','Banana',1,'[{\"added\": {}}]',7,1),(3,'2024-07-12 15:24:53.147967','1','Banana',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(4,'2024-07-12 15:55:15.989217','1','Banana',2,'[{\"changed\": {\"fields\": [\"Detail\"]}}]',7,1),(5,'2024-07-13 10:32:35.496400','2','Apple',1,'[{\"added\": {}}]',7,1),(6,'2024-07-13 10:32:38.958929','2','Apple',2,'[]',7,1),(7,'2024-07-13 10:32:49.550165','2','Apple',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(8,'2024-07-13 10:56:51.567506','1','Banana',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(9,'2024-07-13 10:56:56.972191','1','Banana',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(10,'2024-07-13 10:59:28.273697','1','Banana',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(11,'2024-07-13 10:59:34.763760','1','Banana',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(12,'2024-07-13 11:08:16.280891','2','Apple',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(13,'2024-07-13 11:08:19.777638','1','Banana',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(14,'2024-07-13 11:38:13.794059','1','NGUYỄN GÌ ĐÓ',2,'[]',12,1),(15,'2024-07-13 11:44:47.828951','4','z',2,'[]',12,1),(16,'2024-07-13 12:45:46.696637','2','Apple',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(17,'2024-07-13 12:45:57.519794','1','Banana',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(18,'2024-07-13 15:00:52.209158','2','Mobile',1,'[{\"added\": {}}]',11,1),(19,'2024-07-13 15:00:55.670867','1','Food',2,'[]',11,1),(20,'2024-07-13 15:02:23.877077','3','Samsung Note 20 Ultra',1,'[{\"added\": {}}]',7,1),(21,'2024-07-13 15:05:07.812068','2','Apple',2,'[{\"changed\": {\"fields\": [\"Detail\"]}}]',7,1),(22,'2024-07-13 15:08:23.478881','2','Mobile',2,'[]',11,1),(23,'2024-07-14 06:39:07.335590','2','Mobile',2,'[]',11,1),(24,'2024-07-14 06:39:53.386899','3','Stuffed animals',1,'[{\"added\": {}}]',11,1),(25,'2024-07-14 06:42:32.221363','4','Capybara',1,'[{\"added\": {}}]',7,1),(26,'2024-07-14 06:42:46.835040','4','Capybara',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(27,'2024-07-14 06:44:13.189618','4','Capybara',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(28,'2024-07-14 06:44:24.164023','4','Capybara',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(29,'2024-07-14 06:48:05.524186','5','Iphone 15',1,'[{\"added\": {}}]',7,1),(30,'2024-07-14 07:00:21.021587','4','Capybara',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(31,'2024-07-14 07:00:26.019074','4','Capybara',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(32,'2024-07-14 07:02:01.465684','6','Stuffed Cat',1,'[{\"added\": {}}]',7,1),(33,'2024-07-14 07:02:22.757197','4','Stuffed Capybara',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(34,'2024-07-14 07:09:19.519999','3','Samsung Note 20 Ultra',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(35,'2024-07-14 07:09:25.369762','3','Samsung Note 20 Ultra',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(36,'2024-07-14 07:27:35.406425','1','Banana',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(37,'2024-07-14 07:27:40.663728','1','Banana',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(38,'2024-07-14 07:27:46.657765','2','Apple',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(39,'2024-07-14 07:27:58.354767','1','Banana',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(40,'2024-07-14 07:28:08.206226','1','Banana',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(41,'2024-07-14 07:28:13.323657','2','Apple',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(42,'2024-07-14 08:35:48.629553','10','OrderItem object (10)',2,'[]',9,1),(43,'2024-07-14 08:57:41.975124','2','Apple',2,'[{\"changed\": {\"fields\": [\"Detail\"]}}]',7,1),(44,'2024-07-14 08:58:21.232123','1','Banana',2,'[{\"changed\": {\"fields\": [\"Detail\"]}}]',7,1),(45,'2024-07-14 09:53:28.517553','2','user1',1,'[{\"added\": {}}]',4,1),(46,'2024-07-14 10:31:16.915972','16','zz',2,'[]',12,1),(47,'2024-07-14 10:31:26.204842','16','zz',3,'',12,1),(48,'2024-07-14 10:31:26.208876','15','zz',3,'',12,1),(49,'2024-07-14 10:31:26.210882','14','zz',3,'',12,1),(50,'2024-07-14 10:31:26.213456','13','admin',3,'',12,1),(51,'2024-07-14 10:31:26.217019','12','admin',3,'',12,1),(52,'2024-07-14 10:31:26.219460','11','admin',3,'',12,1),(53,'2024-07-14 10:31:26.222477','10','admin',3,'',12,1),(54,'2024-07-14 10:31:26.226009','9','admin',3,'',12,1),(55,'2024-07-14 10:31:26.229306','8','admin',3,'',12,1),(56,'2024-07-14 10:31:26.232336','7','admin',3,'',12,1),(57,'2024-07-14 10:31:26.234845','6','admin',3,'',12,1),(58,'2024-07-14 10:31:26.236876','5','admin',3,'',12,1),(59,'2024-07-14 10:31:26.240834','4','z',3,'',12,1),(60,'2024-07-14 10:31:26.242318','3','z',3,'',12,1),(61,'2024-07-14 10:31:26.245752','2','NGUYỄN GÌ ĐÓ',3,'',12,1),(62,'2024-07-14 10:31:26.249373','1','NGUYỄN GÌ ĐÓ',3,'',12,1),(63,'2024-07-14 12:01:51.986962','11','OrderItem object (11)',2,'[]',9,1),(64,'2024-07-14 12:01:53.482442','10','OrderItem object (10)',2,'[]',9,1),(65,'2024-07-14 12:01:54.715022','9','OrderItem object (9)',2,'[]',9,1),(66,'2024-07-14 12:01:56.112921','8','OrderItem object (8)',2,'[]',9,1),(67,'2024-07-14 12:02:42.707348','10','OrderItem object (10)',2,'[]',9,1),(68,'2024-07-14 12:02:43.642036','8','OrderItem object (8)',2,'[]',9,1),(69,'2024-07-14 12:03:38.410564','3','user2',1,'[{\"added\": {}}]',4,1),(70,'2024-07-14 12:04:39.130914','14','OrderItem object (14)',2,'[]',9,1),(71,'2024-07-14 12:04:40.403802','13','OrderItem object (13)',2,'[]',9,1),(72,'2024-07-14 12:04:41.891572','12','OrderItem object (12)',2,'[]',9,1),(73,'2024-07-14 12:04:43.154166','11','OrderItem object (11)',2,'[]',9,1),(74,'2024-07-14 12:04:44.603179','13','OrderItem object (13)',2,'[]',9,1),(75,'2024-07-14 12:09:08.457530','1','zz',2,'[]',10,1),(76,'2024-07-14 12:13:04.387964','1','zz',3,'',10,1),(77,'2024-07-14 12:13:17.169290','6','',3,'',10,1),(78,'2024-07-14 12:13:17.172337','5','',3,'',10,1),(79,'2024-07-14 12:13:17.175350','4','',3,'',10,1),(80,'2024-07-14 12:13:17.177373','3','',3,'',10,1),(81,'2024-07-14 12:13:17.180995','2','',3,'',10,1),(82,'2024-07-14 12:17:10.659940','8','zz',3,'',10,1),(83,'2024-07-14 12:17:10.663761','7','',3,'',10,1),(84,'2024-07-14 12:17:26.419056','10','',3,'',10,1),(85,'2024-07-14 12:17:26.422112','9','',3,'',10,1),(86,'2024-07-14 12:18:36.137839','11','',3,'',10,1),(87,'2024-07-14 12:23:36.538923','15','zzzzzzzzzzA',3,'',10,1),(88,'2024-07-14 12:23:36.542553','14','zzzzzzz',3,'',10,1),(89,'2024-07-14 12:23:36.545325','13','zzzzzzz',3,'',10,1),(90,'2024-07-14 12:23:36.548330','12','zz',3,'',10,1),(91,'2024-07-14 12:45:26.462356','22','ABCD',3,'',10,1),(92,'2024-07-14 12:45:26.465814','21','ABC',3,'',10,1),(93,'2024-07-14 12:45:26.469554','20','ABC',3,'',10,1),(94,'2024-07-14 12:45:26.471558','19','ACCZC',3,'',10,1),(95,'2024-07-14 12:45:26.474392','18','ABCD',3,'',10,1),(96,'2024-07-14 12:45:26.477825','17','ABC',3,'',10,1),(97,'2024-07-14 12:45:26.480610','16','zzzzzzzzzzA',3,'',10,1),(98,'2024-07-14 12:47:08.430697','27','NGUYỄN GÌ ĐÓz',3,'',12,1),(99,'2024-07-14 12:47:08.434516','26','The Anh',3,'',12,1),(100,'2024-07-14 12:47:08.437481','25','Zen Valley Dalat',3,'',12,1),(101,'2024-07-14 12:47:08.440229','24','NGUYỄN GÌ ĐÓ',3,'',12,1),(102,'2024-07-14 12:47:08.443169','23','NGUYỄN GÌ ĐÓ',3,'',12,1),(103,'2024-07-14 12:47:08.446101','22','admin',3,'',12,1),(104,'2024-07-14 12:47:08.449184','21','admin',3,'',12,1),(105,'2024-07-14 12:47:08.452296','20','admin',3,'',12,1),(106,'2024-07-14 12:47:08.454998','19','Zen Valley Dalat',3,'',12,1),(107,'2024-07-14 12:47:08.457849','18','Zen Valley Dalat',3,'',12,1),(108,'2024-07-14 12:47:08.460656','17','z',3,'',12,1),(109,'2024-07-14 12:57:16.798258','14','OrderItem object (14)',2,'[]',9,1),(110,'2024-07-14 12:57:18.805363','11','OrderItem object (11)',2,'[]',9,1),(111,'2024-07-14 13:02:01.919932','5','Iphone 15',2,'[]',7,1),(112,'2024-07-14 13:05:46.038980','36','NGUYỄN GÌ ĐÓz',3,'',12,1),(113,'2024-07-14 13:05:46.042992','35','NGUYỄN GÌ ĐÓz',3,'',12,1),(114,'2024-07-14 13:05:46.046475','34','NGUYỄN GÌ ĐÓz',3,'',12,1),(115,'2024-07-14 13:05:46.048496','33','NGUYỄN GÌ ĐÓz',3,'',12,1),(116,'2024-07-14 13:05:46.051868','32','NGUYỄN GÌ ĐÓz',3,'',12,1),(117,'2024-07-14 13:05:46.054503','31','NGUYỄN GÌ ĐÓz',3,'',12,1),(118,'2024-07-14 13:05:46.059312','30','NGUYỄN GÌ ĐÓz',3,'',12,1),(119,'2024-07-14 13:05:46.061729','29','Zen Valley Dalat',3,'',12,1),(120,'2024-07-14 13:05:46.064860','28','adminz',3,'',12,1),(121,'2024-07-14 13:15:23.087950','14','OrderItem object (14)',2,'[]',9,1),(122,'2024-07-14 13:15:39.920065','14','OrderItem object (14)',2,'[]',9,1),(123,'2024-07-14 13:15:41.967771','15','OrderItem object (15)',2,'[]',9,1),(124,'2024-07-14 13:35:23.343904','1','1',2,'[{\"changed\": {\"fields\": [\"Transaction id\"]}}]',8,1),(125,'2024-07-14 13:47:57.962078','15','OrderItem object (15)',2,'[]',9,1),(126,'2024-07-14 14:22:46.557748','29','ABC',3,'',10,1),(127,'2024-07-14 14:22:46.561479','28','ABC',3,'',10,1),(128,'2024-07-14 14:22:46.564665','27','ABC',3,'',10,1),(129,'2024-07-14 14:22:46.566846','26','ABC',3,'',10,1),(130,'2024-07-14 14:22:46.570097','25','ABC',3,'',10,1),(131,'2024-07-14 14:22:46.573191','24','ABC',3,'',10,1),(132,'2024-07-14 14:22:46.576253','23','ABC',3,'',10,1),(133,'2024-07-14 14:37:23.872596','2','2',2,'[]',8,1),(134,'2024-07-14 14:42:30.429015','15','OrderItem object (15)',3,'',9,1),(135,'2024-07-14 14:42:30.432748','14','OrderItem object (14)',3,'',9,1),(136,'2024-07-14 14:42:30.434806','13','OrderItem object (13)',3,'',9,1),(137,'2024-07-14 14:42:30.437877','12','OrderItem object (12)',3,'',9,1),(138,'2024-07-14 14:42:30.441334','11','OrderItem object (11)',3,'',9,1),(139,'2024-07-14 14:42:30.443354','10','OrderItem object (10)',3,'',9,1),(140,'2024-07-14 14:42:30.447070','9','OrderItem object (9)',3,'',9,1),(141,'2024-07-14 14:42:30.450005','8','OrderItem object (8)',3,'',9,1),(142,'2024-07-14 14:43:10.551876','1','admin',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(143,'2024-07-14 14:57:17.470028','2','Mobile',2,'[]',11,1),(144,'2024-07-16 10:09:33.472264','19','OrderItem object (19)',2,'[]',9,1),(145,'2024-07-19 13:44:05.106557','19','OrderItem object (19)',2,'[]',9,1),(146,'2024-07-19 14:07:51.440209','5','Iphone 15',2,'[{\"changed\": {\"fields\": [\"Is hot\"]}}]',7,1),(147,'2024-07-19 14:07:53.626825','6','Stuffed Cat',2,'[]',7,1),(148,'2024-07-19 14:07:56.066932','3','Samsung Note 20 Ultra',2,'[]',7,1),(149,'2024-07-19 14:07:58.107772','2','Apple',2,'[{\"changed\": {\"fields\": [\"Is hot\"]}}]',7,1),(150,'2024-07-20 11:06:27.957394','1','zz',1,'[{\"added\": {}}]',16,1),(151,'2024-07-20 11:31:24.079519','2','OLALA',1,'[{\"added\": {}}]',16,1),(152,'2024-07-20 11:56:10.268786','2','OLALA',2,'[]',16,1),(153,'2024-07-20 12:07:09.929884','3','zz',1,'[{\"added\": {}}]',16,1),(154,'2024-07-20 12:45:40.833042','3','zz',2,'[]',16,1),(155,'2024-07-20 12:53:23.347846','2','OLALA',2,'[{\"changed\": {\"fields\": [\"Day\", \"Month\"]}}]',16,1),(156,'2024-07-20 12:53:29.561782','2','OLALA',2,'[]',16,1),(157,'2024-07-20 12:53:31.681570','1','zz',2,'[]',16,1),(158,'2024-07-20 12:53:36.391567','3','zz',2,'[{\"changed\": {\"fields\": [\"Day\", \"Month\"]}}]',16,1),(159,'2024-07-20 12:55:25.166541','4','zz',1,'[{\"added\": {}}]',16,1),(160,'2024-07-20 12:55:56.576939','2','OLALA',2,'[]',16,1),(161,'2024-07-20 13:03:47.984986','2','OLALA',2,'[{\"changed\": {\"fields\": [\"Is trending\"]}}]',16,1),(162,'2024-07-20 13:04:06.011379','2','OLALA',2,'[]',16,1),(163,'2024-07-20 13:04:08.040112','4','zz',2,'[{\"changed\": {\"fields\": [\"Is trending\"]}}]',16,1),(164,'2024-07-20 13:15:34.240525','2','OLALA',2,'[]',16,1),(165,'2024-07-20 13:17:45.760205','4','zz',2,'[]',16,1),(166,'2024-07-20 13:21:11.553294','2','OLALA',2,'[]',16,1),(167,'2024-07-20 13:24:07.730279','4','zz',2,'[]',16,1),(168,'2024-07-20 13:31:01.976224','1','zz',2,'[{\"changed\": {\"fields\": [\"Is trending\"]}}]',16,1),(169,'2024-07-20 14:33:28.288162','2','OLALA',2,'[]',16,1),(170,'2024-07-20 14:37:25.768960','2','OLALA',2,'[]',16,1),(171,'2024-07-20 14:37:49.479588','2','OLALA',2,'[{\"changed\": {\"fields\": [\"Excerpt\"]}}]',16,1),(172,'2024-07-20 14:45:27.789782','5','G',1,'[{\"added\": {}}]',16,1),(173,'2024-07-20 14:54:39.414888','2','OLALA',2,'[]',16,1),(174,'2024-07-20 14:54:41.959377','3','zz',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',16,1),(175,'2024-07-20 14:54:44.870658','5','G',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',16,1),(176,'2024-07-20 14:54:48.102816','4','zz',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',16,1),(177,'2024-07-20 14:54:50.111502','3','zz',2,'[]',16,1),(178,'2024-07-20 14:54:51.959443','4','zz',2,'[]',16,1),(179,'2024-07-20 14:54:54.223145','1','zz',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',16,1),(180,'2024-07-20 14:54:56.166306','2','OLALA',2,'[]',16,1),(181,'2024-07-21 07:50:59.287445','37','zz',1,'[{\"added\": {}}]',12,1),(182,'2024-07-21 08:39:56.473372','4','zz',2,'[]',16,1),(183,'2024-07-21 08:42:01.552720','30','ABCD',1,'[{\"added\": {}}]',10,1),(184,'2024-07-21 08:42:35.833075','37','zz',2,'[]',12,1),(185,'2024-07-21 08:42:40.830701','37','zz',2,'[]',12,1),(186,'2024-07-21 08:43:08.104784','37','zz',2,'[]',12,1),(187,'2024-07-21 09:05:57.895198','30','ABCD',3,'',10,1),(188,'2024-07-21 09:17:05.251545','3','Samsung Note 20 Ultra',2,'[]',7,1),(189,'2024-07-21 09:17:33.367397','3','Stuffed animals',2,'[]',11,1),(190,'2024-07-21 09:32:56.346391','6','Stuffed Cat',2,'[]',7,1),(191,'2024-07-21 09:38:52.390936','3','Stuffed animals',2,'[]',11,1),(192,'2024-07-21 09:41:50.138709','6','Stuffed Cat',2,'[]',7,1),(193,'2024-07-21 09:43:39.183958','5','G',2,'[]',16,1),(194,'2024-07-21 09:43:55.616047','1','1',2,'[]',8,1),(195,'2024-07-21 09:52:22.767875','3','3',2,'[{\"changed\": {\"fields\": [\"Complete\"]}}]',8,1),(196,'2024-07-21 09:55:14.336409','3','Stuffed animals',2,'[]',11,1),(197,'2024-07-21 09:55:17.463301','3','Stuffed animals',2,'[]',11,1),(198,'2024-07-21 13:05:35.530662','5','The story of the apple',2,'[{\"changed\": {\"fields\": [\"Title\", \"Content\", \"Image\"]}}]',16,1),(199,'2024-07-21 13:06:48.050905','5','The story of the apple',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(200,'2024-07-21 13:09:38.430722','4','Câu chuyện về Teddy - những chú gấu bông đầu tiên',2,'[{\"changed\": {\"fields\": [\"Title\", \"Content\", \"Image\"]}}]',16,1),(201,'2024-07-21 13:09:51.701565','5','The story of the apple',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',16,1),(202,'2024-07-21 13:10:18.065707','4','Câu chuyện về Teddy - những chú gấu bông đầu tiên',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(203,'2024-07-21 13:12:17.736701','3','The Impact of Cat Ownership on Human Health',2,'[{\"changed\": {\"fields\": [\"Title\", \"Content\"]}}]',16,1),(204,'2024-07-21 13:12:27.724911','3','The Impact of Cat Ownership on Human Health',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(205,'2024-07-21 13:12:49.297249','3','The Impact of Cat Ownership on Human Health',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(206,'2024-07-21 13:13:52.901346','2','7 Surprising Health Benefits of Yoga',2,'[{\"changed\": {\"fields\": [\"Title\", \"Content\"]}}]',16,1),(207,'2024-07-21 13:14:14.336079','2','7 Surprising Health Benefits of Yoga',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(208,'2024-07-21 13:16:25.958917','1','The Benefits of a Good Night\'s Sleep',2,'[{\"changed\": {\"fields\": [\"Title\", \"Content\"]}}]',16,1),(209,'2024-07-21 13:16:51.491311','1','The Benefits of a Good Night\'s Sleep',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(210,'2024-07-21 13:18:38.637176','6','zz',1,'[{\"added\": {}}]',16,1),(211,'2024-07-21 13:18:45.550217','6','zz',3,'',16,1),(212,'2024-07-21 13:25:47.784166','2','user1',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(213,'2024-07-21 13:25:54.753701','2','user1',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(214,'2024-07-21 13:26:04.145891','2','user1',2,'[]',4,1),(215,'2024-07-21 13:30:08.248413','7','Xiaomi Redmi Note 13',1,'[{\"added\": {}}]',7,1),(216,'2024-07-21 13:30:46.864297','3','Samsung Note 20 Ultra',2,'[{\"changed\": {\"fields\": [\"Detail\"]}}]',7,1),(217,'2024-07-21 13:31:40.068581','5','The story of the apple',2,'[{\"changed\": {\"fields\": [\"Author\"]}}]',16,1),(218,'2024-07-21 13:31:43.629269','4','Câu chuyện về Teddy - những chú gấu bông đầu tiên',2,'[{\"changed\": {\"fields\": [\"Author\"]}}]',16,1),(219,'2024-07-21 13:31:47.629349','3','The Impact of Cat Ownership on Human Health',2,'[{\"changed\": {\"fields\": [\"Author\"]}}]',16,1),(220,'2024-07-21 13:31:51.508513','2','7 Surprising Health Benefits of Yoga',2,'[{\"changed\": {\"fields\": [\"Author\"]}}]',16,1),(221,'2024-07-21 13:31:53.707541','1','The Benefits of a Good Night\'s Sleep',2,'[]',16,1),(222,'2024-07-21 13:32:31.884406','5','The story of the apple',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(223,'2024-07-30 08:57:01.217361','1','fbce379e01e55f964771ac65e9b5f05af9cb253f',2,'[]',20,1),(224,'2024-07-30 08:57:03.381492','1','fbce379e01e55f964771ac65e9b5f05af9cb253f',3,'',20,1),(225,'2024-07-30 09:01:51.328383','1','9d69678ae38cab7fe0c5b64b905f80ffa2478d2c',3,'',20,1),(226,'2024-08-04 10:06:18.066356','40','John Doe',3,'',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (21,'account','user'),(1,'admin','logentry'),(11,'app','category'),(17,'app','comment'),(12,'app','contactmessage'),(15,'app','createuserform'),(18,'app','customuser'),(24,'app','jwttoken'),(16,'app','news'),(8,'app','order'),(14,'app','orderdetail'),(9,'app','orderitem'),(13,'app','ordersuccess'),(7,'app','product'),(10,'app','shippingaddress'),(25,'app','usertoken'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(19,'authtoken','token'),(20,'authtoken','tokenproxy'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(22,'token_blacklist','blacklistedtoken'),(23,'token_blacklist','outstandingtoken');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-07-12 15:21:12.245456'),(2,'auth','0001_initial','2024-07-12 15:21:12.891707'),(3,'admin','0001_initial','2024-07-12 15:21:13.104666'),(4,'admin','0002_logentry_remove_auto_add','2024-07-12 15:21:13.125613'),(5,'admin','0003_logentry_add_action_flag_choices','2024-07-12 15:21:13.132901'),(6,'app','0001_initial','2024-07-12 15:21:13.629083'),(7,'app','0002_product_image_shippingaddress_date_added_and_more','2024-07-12 15:21:13.744942'),(8,'app','0003_alter_shippingaddress_customer_alter_order_customer_and_more','2024-07-12 15:21:14.074383'),(9,'app','0004_category','2024-07-12 15:21:14.174856'),(10,'app','0005_alter_category_sub_category','2024-07-12 15:21:14.180191'),(11,'app','0006_alter_category_sub_category','2024-07-12 15:21:14.183779'),(12,'app','0007_product_category','2024-07-12 15:21:14.355991'),(13,'contenttypes','0002_remove_content_type_name','2024-07-12 15:21:14.439677'),(14,'auth','0002_alter_permission_name_max_length','2024-07-12 15:21:14.507813'),(15,'auth','0003_alter_user_email_max_length','2024-07-12 15:21:14.532550'),(16,'auth','0004_alter_user_username_opts','2024-07-12 15:21:14.538535'),(17,'auth','0005_alter_user_last_login_null','2024-07-12 15:21:14.604593'),(18,'auth','0006_require_contenttypes_0002','2024-07-12 15:21:14.608217'),(19,'auth','0007_alter_validators_add_error_messages','2024-07-12 15:21:14.615141'),(20,'auth','0008_alter_user_username_max_length','2024-07-12 15:21:14.682912'),(21,'auth','0009_alter_user_last_name_max_length','2024-07-12 15:21:14.758536'),(22,'auth','0010_alter_group_name_max_length','2024-07-12 15:21:14.779164'),(23,'auth','0011_update_proxy_permissions','2024-07-12 15:21:14.787498'),(24,'auth','0012_alter_user_first_name_max_length','2024-07-12 15:21:14.865865'),(25,'sessions','0001_initial','2024-07-12 15:21:14.909880'),(26,'app','0008_product_detail','2024-07-12 15:54:45.061332'),(27,'app','0009_contactmessage','2024-07-13 11:32:03.198623'),(28,'app','0010_alter_shippingaddress_customer_and_more','2024-07-14 07:05:34.216108'),(29,'app','0011_alter_shippingaddress_address_and_more','2024-07-14 07:23:42.875043'),(30,'app','0012_alter_shippingaddress_address_and_more','2024-07-14 07:30:19.310122'),(31,'app','0013_ordersuccess','2024-07-14 08:32:20.257745'),(32,'app','0014_alter_order_complete','2024-07-14 08:38:56.880468'),(33,'app','0015_delete_ordersuccess','2024-07-14 08:50:14.139814'),(34,'app','0016_alter_product_category','2024-07-14 13:15:10.556695'),(35,'app','0017_orderdetail','2024-07-14 13:52:09.074279'),(36,'app','0018_delete_orderdetail','2024-07-14 14:21:38.304653'),(37,'app','0019_order_product_order_quantity','2024-07-14 14:25:53.978097'),(38,'app','0020_remove_order_product_remove_order_quantity_and_more','2024-07-14 14:29:45.557427'),(39,'app','0021_order_product_order_quantity_delete_createuserform','2024-07-14 14:32:29.259051'),(40,'app','0022_remove_order_product_remove_order_quantity','2024-07-14 14:33:33.597328'),(41,'app','0023_remove_order_transaction_id','2024-07-14 14:37:16.365058'),(42,'app','0024_order_product_order_quantity','2024-07-14 14:49:26.820613'),(43,'app','0025_remove_order_product_remove_order_quantity_and_more','2024-07-14 14:52:24.060706'),(44,'app','0026_alter_orderitem_order','2024-07-14 14:53:13.840700'),(45,'app','0027_order_transaction_id','2024-07-16 10:31:13.850844'),(46,'app','0028_remove_order_transaction_id','2024-07-17 14:42:44.502088'),(47,'app','0029_product_is_hot','2024-07-19 13:48:15.180818'),(48,'app','0030_news','2024-07-20 11:00:39.785353'),(49,'app','0031_news_image','2024-07-20 11:06:11.959402'),(50,'app','0032_alter_news_image_alter_news_published_date','2024-07-20 11:41:23.226495'),(51,'app','0033_alter_news_author_alter_news_published_date_and_more','2024-07-20 11:55:41.427255'),(52,'app','0034_news_day_news_month','2024-07-20 12:50:17.981293'),(53,'app','0035_remove_news_day_remove_news_month','2024-07-20 12:56:15.515762'),(54,'app','0036_news_is_trending','2024-07-20 12:58:59.052852'),(55,'app','0037_news_excerpt','2024-07-20 14:37:20.229133'),(56,'app','0038_remove_news_excerpt','2024-07-20 14:38:38.785238'),(57,'app','0039_comment','2024-07-21 07:29:41.292934'),(58,'app','0040_rename_content_comment_comment_and_more','2024-07-21 07:35:57.310996'),(59,'app','0041_comment_created_at_alter_comment_name','2024-07-21 07:49:00.252389'),(60,'app','0042_delete_comment','2024-07-21 08:35:59.536967'),(61,'app','0043_order_transaction_id','2024-07-21 09:30:49.097704'),(62,'authtoken','0001_initial','2024-07-29 08:36:01.893573'),(63,'authtoken','0002_auto_20160226_1747','2024-07-29 08:36:01.915738'),(64,'authtoken','0003_tokenproxy','2024-07-29 08:36:01.919343'),(65,'authtoken','0004_alter_tokenproxy_options','2024-07-29 08:36:01.924021'),(66,'token_blacklist','0001_initial','2024-07-30 08:38:40.089930'),(67,'token_blacklist','0002_outstandingtoken_jti_hex','2024-07-30 08:38:40.114760'),(68,'token_blacklist','0003_auto_20171017_2007','2024-07-30 08:38:40.126669'),(69,'token_blacklist','0004_auto_20171017_2013','2024-07-30 08:38:40.215296'),(70,'token_blacklist','0005_remove_outstandingtoken_jti','2024-07-30 08:38:40.276278'),(71,'token_blacklist','0006_auto_20171017_2113','2024-07-30 08:38:40.298930'),(72,'token_blacklist','0007_auto_20171017_2214','2024-07-30 08:38:40.568562'),(73,'token_blacklist','0008_migrate_to_bigautofield','2024-07-30 08:38:40.832533'),(74,'token_blacklist','0010_fix_migrate_to_bigautofield','2024-07-30 08:38:40.841524'),(75,'token_blacklist','0011_linearizes_history','2024-07-30 08:38:40.845554'),(76,'token_blacklist','0012_alter_outstandingtoken_user','2024-07-30 08:38:40.853892'),(77,'app','0002_delete_jwttoken','2024-07-31 15:12:30.339195'),(78,'app','0003_remove_usertoken_created_at_remove_usertoken_token_and_more','2024-07-31 15:28:06.932220'),(79,'app','0004_auto_20240731_2227','2024-07-31 15:28:16.216488'),(80,'app','0005_alter_usertoken_access_token','2024-07-31 15:45:48.606325');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0arop4p8wxz4kd4rij2ive3hancb8u9y','e30:1sZqEb:IXKM0v7RI_7rQmj_VHmVWlAk0Mf3z1vLSERdYzW_dGU','2024-08-16 11:14:09.646017'),('168me0cri46os67b442blapc806ok5fr','e30:1sZA8Z:80wstrwXlriAHQUgLiqjESw4-hC_qjvSnQh6YOsksT8','2024-08-14 14:17:07.574137'),('3o01ah9pzd98dowu32n8uamj6b05jzzj','e30:1sZAVj:z20hB-pcIGEBzc4dZhPy0MjdEMd0sebD0BHx8dq_ubU','2024-08-14 14:41:03.886303'),('47jciwrf9w5at1yzkfinjuedjl4v7du7','e30:1sZBX9:YH4Pbwj7dWX-1iYsfuoe7muYyOkoZKHCkxksxFl_8RI','2024-08-14 15:46:35.715255'),('4g2bigdohtxfwurvkv26ppqgf6btsgav','e30:1sZ9pT:B1EnvgLAq1uLu8IQeOGjDIHY3Dj0aHtTN4AEFCf7dDs','2024-08-14 13:57:23.205325'),('72nat3voirj9sot15m2kdz5b0125g4uh','e30:1sZA0F:-sDbZuAROMW_usVukFmFxz2pATf3NGG8xaOEU6f3130','2024-08-14 14:08:31.969470'),('8b5l7uzfxa2fkwbat5g1z76da40rjk6x','.eJxVjMsOwiAQRf-FtSGAw6Mu3fcbyMBMpWogKe3K-O_apAvd3nPOfYmI21ri1nmJM4mL0OL0uyXMD647oDvWW5O51XWZk9wVedAux0b8vB7u30HBXr61YWeN9QAEzNl6cpQIvUYiC-BTYJOVSjw5FQDOLmsKPKikNUx5CE68P-4-OAY:1saD7W:yMvfV15hl4JWlUFRe_YDorZSSOxQY0qWDjD2TsXQ38U','2024-08-17 11:40:22.415735'),('ahw8lkuwo8rck2kqjsh8e1vray57r35o','e30:1sZRjy:smz8jWf6tbMAkhrsVqa7YbjOnC4gbCXB1UP8_gsFvko','2024-08-15 09:04:54.109777'),('if2t1ba5qqrso6c99z1mdyaj7p23w2yn','e30:1sZADR:cX6MIpNPqOgmo8AOmq1u0zBxThZASWMCjJp2GtiybUs','2024-08-14 14:22:09.270222'),('juzl75v0an4knuxx0vu6cu88f33mthgd','e30:1sZSZv:2qqnV3whsSP_a6Be4rVoaq_Si-QCnfOSAcI-KXj5sKY','2024-08-15 09:58:35.118703'),('l24lx8bfiugyul3twv18wr02k9olbtc9','e30:1sZRIq:f9M6jX5yqkqVJugBkCFlPnEaM0TEPiC2ZPBMb8EQXew','2024-08-15 08:36:52.195023'),('m222337qv6c60uttmjxi7hsib95th185','e30:1sZAGc:F7FRdTGsrV9CeEcDlJ4WNHpnMWQ89vFZ8_eQkNdbi6A','2024-08-14 14:25:26.665884'),('maxz0qjg0lpj4q0sfgka2r1w1hizwmx6','e30:1sZAE3:7NDTXzRd_Exy0xY_skppXezNnEn09THw8duDg9Fslok','2024-08-14 14:22:47.055716'),('n6c4xz79zc5x75flxrxdytbtjypxhjfn','e30:1sZRVO:WCXve2VzubK38b5SKIEevB-KExcmC8t1lEf_KGnNuZ4','2024-08-15 08:49:50.968331'),('qknhivlsf31ns1h2ddobo2r86jkx8fjs','e30:1sZBWc:Acpx7q5iiZA00FQu9kiw8026kChGh4sSzSHlrJwOgaI','2024-08-14 15:46:02.769791'),('rvu1a2f49a4zx6tq733pr8k2dalgdouv','e30:1sZSZF:ar2oRWGcnRKh7Hc3fCldcwJ27QErMUArfhfYwfsH5EQ','2024-08-15 09:57:53.958285'),('u9dz434pto4cpaeqbo6gvvkm1dubl0mk','.eJxVjMsOwiAQRf-FtSGAw6Mu3fcbyMBMpWogKe3K-O_apAvd3nPOfYmI21ri1nmJM4mL0OL0uyXMD647oDvWW5O51XWZk9wVedAux0b8vB7u30HBXr61YWeN9QAEzNl6cpQIvUYiC-BTYJOVSjw5FQDOLmsKPKikNUx5CE68P-4-OAY:1sYLnd:aiXp37GVR9xw0xe38hxhVVHCJWpaut0aMTR-syASqSo','2024-08-12 08:32:09.984386'),('uhyn4tnou6471ba40morn7l6k5jalh42','e30:1sZRBf:elfU5PVGxbTVP27XEtXV5xj1RQMrI8PrIzN-bxHDKcU','2024-08-15 08:29:27.390409'),('wfaucse0ykwki90cw7kop1fdz3ffn366','.eJxVjMsOwiAQRf-FtSGAw6Mu3fcbyMBMpWogKe3K-O_apAvd3nPOfYmI21ri1nmJM4mL0OL0uyXMD647oDvWW5O51XWZk9wVedAux0b8vB7u30HBXr61YWeN9QAEzNl6cpQIvUYiC-BTYJOVSjw5FQDOLmsKPKikNUx5CE68P-4-OAY:1sYLwG:5Wvff9hHojN_J44WHn6wBsQKYLPsF2h-P8F-deChmxk','2024-08-12 08:41:04.007789'),('xwz3ahz9c59qpqpfd4z7nbcpszastptr','e30:1sZS0i:cS0y-zeIgc8edqQLHqWOI_9YFfNul-btxirMo9Z2MjM','2024-08-15 09:22:12.546028'),('z0dl69u7ctyq48c52ofs2xie63ojw9h4','e30:1sZWnt:P5Fip3mYAL2gnAR4poFiiWxPoHql0WUyCfA1z-HiSio','2024-08-15 14:29:17.909753'),('zrjrjqcinx7932e2d94xnh4ffv5atic7','e30:1sZR1q:4pYOXOQ_ZCZMuJJ0KN-9CKd3jdt8-i8FEZ_rQeYlQ8k','2024-08-15 08:19:18.829852');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

DROP TABLE IF EXISTS `token_blacklist_blacklistedtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

LOCK TABLES `token_blacklist_blacklistedtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

DROP TABLE IF EXISTS `token_blacklist_outstandingtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` int DEFAULT NULL,
  `jti` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  KEY `token_blacklist_outs_user_id_83bc629a_fk_auth_user` (`user_id`),
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

LOCK TABLES `token_blacklist_outstandingtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_outstandingtoken` VALUES (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjQxNjY0MywiaWF0IjoxNzIyMzMwMjQzLCJqdGkiOiIyYjM3NmU5Njg2NTM0YmZiODg0ZjNmZjYzZmVjZTZlNSIsInVzZXJfaWQiOjF9.2zEMhvfFgOVZGdA_FL48q5Q1ZKHOgRm7duFh23EQTRg','2024-07-30 09:04:03.808327','2024-07-31 09:04:03.000000',1,'2b376e9686534bfb884f3ff63fece6e5'),(2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjQxNjY2MCwiaWF0IjoxNzIyMzMwMjYwLCJqdGkiOiIxYTkyNzFhODI2OTI0OGJiYTAzMDk1YTk5YThhMzJkNiIsInVzZXJfaWQiOjF9.evfFMoy7AFWVxuqhCc3YaAVDkHs8vfRHkeJY-gRCskc','2024-07-30 09:04:20.885936','2024-07-31 09:04:20.000000',1,'1a9271a8269248bba03095a99a8a32d6'),(3,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjQxNjY5MSwiaWF0IjoxNzIyMzMwMjkxLCJqdGkiOiI0MjZmZDllNTY4ZWM0ZGMxYTg0ZjYyZWI1Y2ZiMzVjMSIsInVzZXJfaWQiOjF9.EVCoSmNi8xd0o-0N6NiAEsF4PYkW4_dRkqMev6ekpa0','2024-07-30 09:04:51.219481','2024-07-31 09:04:51.000000',1,'426fd9e568ec4dc1a84f62eb5cfb35c1'),(4,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjUxOTY5OCwiaWF0IjoxNzIyNDMzMjk4LCJqdGkiOiJhNzhkYzdkODk2MGI0ODc4YjRmNTU4YzM2MGNhYjNiMCIsInVzZXJfaWQiOjF9.LGb2D7maab2eBLFIT04lGWspZb65EFpk3bFZRaRuoNE','2024-07-31 13:41:38.342932','2024-08-01 13:41:38.000000',1,'a78dc7d8960b4878b4f558c360cab3b0'),(5,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjUyMDY0MywiaWF0IjoxNzIyNDM0MjQzLCJqdGkiOiJmNzQwZjhjOTZhNzY0MGNmYWFmOGI0Zjg4ZTI3ZjNmNCIsInVzZXJfaWQiOjF9.K_CiI0fOChyXL1ttp29HO6A8mXiBt6O5l-68DNViBQo','2024-07-31 13:57:23.215708','2024-08-01 13:57:23.000000',1,'f740f8c96a7640cfaaf8b4f88e27f3f4'),(6,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjUyMTMxMSwiaWF0IjoxNzIyNDM0OTExLCJqdGkiOiJhNzIzNDE5ZmUzOGQ0OGQ2YjBhYTY3MmM4NTlhNmJhZSIsInVzZXJfaWQiOjF9.ds2X3oyhNmpIlZF77FjHPSlS3CYdDXw5rxVEYcWxdpY','2024-07-31 14:08:31.981289','2024-08-01 14:08:31.000000',1,'a723419fe38d48d6b0aa672c859a6bae'),(7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjUyMTgyNywiaWF0IjoxNzIyNDM1NDI3LCJqdGkiOiI1YzYwZjExY2VhNzI0MTc3YjllYTNkYTcwZmQ0OTJmMCIsInVzZXJfaWQiOjF9.6sUuDjoMmRuyWL77MydeX68VVPBuhQcCkTWp9vOdW5g','2024-07-31 14:17:07.583794','2024-08-01 14:17:07.000000',1,'5c60f11cea724177b9ea3da70fd492f0'),(8,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjUyMjEyOSwiaWF0IjoxNzIyNDM1NzI5LCJqdGkiOiI5NjdkMmRjODI4ZGI0MWZhOTBiNTg3MTUyNDEzZWJjMiIsInVzZXJfaWQiOjF9.WGWZRF958fzNgxNaCOh_2V0ZhslmhDb1P5_xmEGhf-w','2024-07-31 14:22:09.281151','2024-08-01 14:22:09.000000',1,'967d2dc828db41fa90b587152413ebc2'),(9,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjUyMjE2NywiaWF0IjoxNzIyNDM1NzY3LCJqdGkiOiIyYzRlYWVlY2I5YTI0M2Q5OTFjNjE5MTY3MjcxMTg0NCIsInVzZXJfaWQiOjF9.bP8DGDIK2nz7tf2JuQDb9rZIJAzVCwz_ZZmgVaIBrSE','2024-07-31 14:22:47.064823','2024-08-01 14:22:47.000000',1,'2c4eaeecb9a243d991c6191672711844'),(10,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjUyMjMyNiwiaWF0IjoxNzIyNDM1OTI2LCJqdGkiOiIzNTEwOGZkYzE3Njc0NDZkOTcxY2Y0OWFlNzlkMDJmYSIsInVzZXJfaWQiOjF9.rkc52nKGzXjUHRxc1RmcYIeAvXLv_2xwIBhHa7AE0E8','2024-07-31 14:25:26.676341','2024-08-01 14:25:26.000000',1,'35108fdc1767446d971cf49ae79d02fa'),(11,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjUyMzI2MywiaWF0IjoxNzIyNDM2ODYzLCJqdGkiOiIwNjNjNmY1NTJlNTE0Y2I4YTZkYWJmN2VlMDJiNWFiNyIsInVzZXJfaWQiOjF9.5jlO68YsfJhGOov3r9wH4VXrsEN4FrYVCwzful9AUD0','2024-07-31 14:41:03.893830','2024-08-01 14:41:03.000000',1,'063c6f552e514cb8a6dabf7ee02b5ab7'),(12,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjUyNzE2MiwiaWF0IjoxNzIyNDQwNzYyLCJqdGkiOiIxMTQ2YTAwN2YzMTI0ODNjYmNlMTI4M2FmN2ZkYTMwYiIsInVzZXJfaWQiOjF9.rpdPkw79h2WFosdGwH5S6UFchVFb2pDmzETirFWmEQg','2024-07-31 15:46:02.780462','2024-08-01 15:46:02.000000',1,'1146a007f312483cbce1283af7fda30b'),(13,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjUyNzE5NSwiaWF0IjoxNzIyNDQwNzk1LCJqdGkiOiJkMGFhMzY4ZmQ2YjA0NzcyYjBjNzY4MGMwY2VjNjJlMCIsInVzZXJfaWQiOjF9.2eXnCXSFF8ZG6_NfuSsUGvWLjSf_t_kQk8YyAi3MYN8','2024-07-31 15:46:35.725334','2024-08-01 15:46:35.000000',1,'d0aa368fd6b04772b0c7680c0cec62e0'),(14,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU4Njc1OCwiaWF0IjoxNzIyNTAwMzU4LCJqdGkiOiIxM2E3Yjc0ZDc2Y2E0Y2JmYTZlZWUwYTlkZGYxYzNkYyIsInVzZXJfaWQiOjF9.zJNqdB8ARI4vV5LjVBOlqMc8ZxN8aM55_uYcfZijewI','2024-08-01 08:19:18.842422','2024-08-02 08:19:18.000000',1,'13a7b74d76ca4cbfa6eee0a9ddf1c3dc'),(15,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU4NzM2NywiaWF0IjoxNzIyNTAwOTY3LCJqdGkiOiI5YTM3YTNmNTM0ZjM0MzJhODRkYmEwMzQ1YjhmZDY2MiIsInVzZXJfaWQiOjF9.u2mKq2NocLlEH1ALLXKuTObQiVPL-UJXSRWehG3mLOY','2024-08-01 08:29:27.397327','2024-08-02 08:29:27.000000',1,'9a37a3f534f3432a84dba0345b8fd662'),(16,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU4NzgxMiwiaWF0IjoxNzIyNTAxNDEyLCJqdGkiOiIzYjZmNjgzOGRmNzk0ZWE1OGM3ZDY0YWZlOGZjZGIxYyIsInVzZXJfaWQiOjF9.TrmED8vEkLzPfV2cY46pZBCJpM1bOwV-pz2PGvAqT74','2024-08-01 08:36:52.205627','2024-08-02 08:36:52.000000',1,'3b6f6838df794ea58c7d64afe8fcdb1c'),(17,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU4ODU5MCwiaWF0IjoxNzIyNTAyMTkwLCJqdGkiOiIxMzQzYTM5YWZkZTY0NzRjYWUzZmNmMzU1MWRkOGU1MCIsInVzZXJfaWQiOjF9.oqtk7niH6hU44qn7LCoj2b200lgTBgXQjBte7D8PJzk','2024-08-01 08:49:50.979174','2024-08-02 08:49:50.000000',1,'1343a39afde6474cae3fcf3551dd8e50'),(18,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU4OTQ5NCwiaWF0IjoxNzIyNTAzMDk0LCJqdGkiOiJlYzE4MThmYTg4Yjg0MDlhOTg1NjZiYzBhN2FlMTFiZiIsInVzZXJfaWQiOjF9.zD__eqFpFgW2ZCYHQ5UiN1EFfZv7bRNtK7wr2FmHcYg','2024-08-01 09:04:54.117378','2024-08-02 09:04:54.000000',1,'ec1818fa88b8409a98566bc0a7ae11bf'),(19,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU5MDUzMiwiaWF0IjoxNzIyNTA0MTMyLCJqdGkiOiI2YTcwNzlmNTU2NWY0ZTI1OGY2ZDEwNDZkMWZlNDk5MSIsInVzZXJfaWQiOjF9.uD-eIB7mGWG2fIcBE6FhxTUUMIeUUrO5WDOMWLLmeoY','2024-08-01 09:22:12.552499','2024-08-02 09:22:12.000000',1,'6a7079f5565f4e258f6d1046d1fe4991'),(20,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU5MjY3MywiaWF0IjoxNzIyNTA2MjczLCJqdGkiOiI0ZDI3Mjg1MzRmYjQ0YzIyOTcwZjQwN2Q5N2MyNzliZCIsInVzZXJfaWQiOjF9.BIn6Jis-_frXZK6vrG9w5g3_ILsxlRRYVfIkWhV90tY','2024-08-01 09:57:53.969132','2024-08-02 09:57:53.000000',1,'4d2728534fb44c22970f407d97c279bd'),(21,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU5MjcxNSwiaWF0IjoxNzIyNTA2MzE1LCJqdGkiOiI2ZjU5YTQ5ZWJhOTM0NjM1ODA3MzllZDAxMGU1YjNlNiIsInVzZXJfaWQiOjF9.H3YPFUSsfKicy0EDU_nlsFBlumExQTZ4Vdi963LDt8M','2024-08-01 09:58:35.127536','2024-08-02 09:58:35.000000',1,'6f59a49eba93463580739ed010e5b3e6'),(22,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU5Mjc0NiwiaWF0IjoxNzIyNTA2MzQ2LCJqdGkiOiJjYWVmNTIxMzdhODc0MzY5OTMyNWU4OWNlZWNkM2FjZiIsInVzZXJfaWQiOjF9.LXTLoKqA9FPp45mc8sn-qQRN4K3zz7PITP0gSsgynDM','2024-08-01 09:59:06.915488','2024-08-02 09:59:06.000000',1,'caef52137a8743699325e89ceecd3acf'),(23,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU5MjgwNiwiaWF0IjoxNzIyNTA2NDA2LCJqdGkiOiIxYWM2M2FkNWM4NmI0NjRiOTk5MDQ0YjQwY2YxOGM1MiIsInVzZXJfaWQiOjF9.U4iFljLORD5clR3-wmwjZtyOQmq9LxKt8xdnSbhq4ks','2024-08-01 10:00:06.795329','2024-08-02 10:00:06.000000',1,'1ac63ad5c86b464b999044b40cf18c52'),(24,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU5MjgwOCwiaWF0IjoxNzIyNTA2NDA4LCJqdGkiOiIwMmUwZjk2ZTI0YjU0NmNkYjVjZWEyNTBlMGVhZDUyZCIsInVzZXJfaWQiOjF9.Rf7o2E1NdLHLT2NLoy69NBghbl2he77zp7di8YkaCAg','2024-08-01 10:00:08.457789','2024-08-02 10:00:08.000000',1,'02e0f96e24b546cdb5cea250e0ead52d'),(25,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU5MzIxMiwiaWF0IjoxNzIyNTA2ODEyLCJqdGkiOiJmOWNhOWVkZGExYmQ0Mzc4YWZiMjZlMmMwYzdkOTE3OCIsInVzZXJfaWQiOjF9.SrGGrN5n2N2B8mWNhsntjPuqNC6spbDVf06jdfLAeVQ','2024-08-01 10:06:52.571707','2024-08-02 10:06:52.000000',1,'f9ca9edda1bd4378afb26e2c0c7d9178'),(26,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU5MzM4OCwiaWF0IjoxNzIyNTA2OTg4LCJqdGkiOiJjMGIzYTcxZTUwYjE0OTBjYWFlZjM5ZmJhY2EzYzY4NiIsInVzZXJfaWQiOjF9.64SCKtB4Doz0ZzpJDpBbuylZCLYHHuw9q3w2useyars','2024-08-01 10:09:48.505063','2024-08-02 10:09:48.000000',1,'c0b3a71e50b1490caaef39fbaca3c686'),(27,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjU5MzYxMCwiaWF0IjoxNzIyNTA3MjEwLCJqdGkiOiI3ZDBmMjViOTQ4YjI0MTdiOGM0MjRlMmQyZjk2MDUwZiIsInVzZXJfaWQiOjF9.LwaFSisGF6r8G4nCzxZDa7ML6hbvIh5n7_4GZoi0LyM','2024-08-01 10:13:30.876785','2024-08-02 10:13:30.000000',1,'7d0f25b948b2417b8c424e2d2f96050f'),(28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjYwNzAzNiwiaWF0IjoxNzIyNTIwNjM2LCJqdGkiOiJjMmU2MTI5NzBkMDI0Y2RhOTFiYjAxNDMzYmE1NmQ5MCIsInVzZXJfaWQiOjF9.BT5iYiq_0jG7qUlDA-bm2yMnycCzlQAt-FjjYOaHtH4','2024-08-01 13:57:16.500913','2024-08-02 13:57:16.000000',1,'c2e612970d024cda91bb01433ba56d90'),(29,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjYwODk1NywiaWF0IjoxNzIyNTIyNTU3LCJqdGkiOiJlOGNkNWIwYTBiOGY0YmE3OWRiZDJlY2RjNjRjNzBkYyIsInVzZXJfaWQiOjF9.qLGCYplRstE6mPx4byamMHpHmsEefZGMhvQhXdf-2bg','2024-08-01 14:29:17.918708','2024-08-02 14:29:17.000000',1,'e8cd5b0a0b8f4ba79dbd2ecdc64c70dc'),(30,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjY4MzY0OSwiaWF0IjoxNzIyNTk3MjQ5LCJqdGkiOiI5Y2I0MDI3N2M0NjA0YTMwYmI1MmY3ZDYyNmY3OGJkMyIsInVzZXJfaWQiOjF9.iuLvrtZ9yGWYmk0x-EJ8fWQC9UBWrANXd6yYdmzg0YM','2024-08-02 11:14:09.656254','2024-08-03 11:14:09.000000',1,'9cb40277c4604a30bb52f7d626f78bd3'),(31,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjY4NzAyMywiaWF0IjoxNzIyNjAwNjIzLCJqdGkiOiI4OGU0N2M3MjhmYjk0MjI5YWYyM2Q4MmE5ZjQyN2ZlMiIsInVzZXJfaWQiOjF9.A2IR3fml6z9AaBdEG_bj73xZds2_bod224ifXKzWzuw','2024-08-02 12:10:23.885996','2024-08-03 12:10:23.000000',1,'88e47c728fb94229af23d82a9f427fe2'),(32,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjc3Mzg2MywiaWF0IjoxNzIyNjg3NDYzLCJqdGkiOiJkYzg3NWZhYzllNWQ0ZWU4OTNkOGE1YzYyMWY4NzI1MiIsInVzZXJfaWQiOjF9.lqECKa2o0wG4K15R-0F1XS7ChNxVmdz4Gmy8QUG4iQ4','2024-08-03 12:17:43.574498','2024-08-04 12:17:43.000000',1,'dc875fac9e5d4ee893d8a5c621f87252'),(33,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg0ODQ4MCwiaWF0IjoxNzIyNzYyMDgwLCJqdGkiOiIwZmRlZTA3NGZiYzA0M2U0YmZiNzE0ZTFlYmM0ZTViNyIsInVzZXJfaWQiOjF9.K5BN8pcEU7em7RdiMUCgMAqi4nP9S2RPO84Afs-cim0','2024-08-04 09:01:20.161198','2024-08-05 09:01:20.000000',1,'0fdee074fbc043e4bfb714e1ebc4e5b7'),(34,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg0ODgzNSwiaWF0IjoxNzIyNzYyNDM1LCJqdGkiOiI4NjgzNThkOWRlYzc0NDA3YjgwODM3M2FlMTBkN2Y5YiIsInVzZXJfaWQiOjF9.Y5zwg-ALgRthLzsji9VFZZaRjEzkpSh6s2sQQn4tQ2E','2024-08-04 09:07:15.190641','2024-08-05 09:07:15.000000',1,'868358d9dec74407b808373ae10d7f9b'),(35,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg1MDQ3OCwiaWF0IjoxNzIyNzY0MDc4LCJqdGkiOiJjOWI5MTMyZGUwNWI0ZTUxOWEzZmQ4ZjdjZTE0ZDVlMCIsInVzZXJfaWQiOjF9.fnu1ZSZ5GCaP2A81ntqk1MiSJWoboCwImnHgNOkmZA4','2024-08-04 09:34:38.914076','2024-08-05 09:34:38.000000',1,'c9b9132de05b4e519a3fd8f7ce14d5e0'),(36,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg1MTIxMCwiaWF0IjoxNzIyNzY0ODEwLCJqdGkiOiIxNjg4MDBjNTMyZTA0N2I2YjE2ZjgxY2E3OTFhMDhiNSIsInVzZXJfaWQiOjF9.K7L1AckJslZ9Ybd2O5umQ_FNYSLHc7ET3yn6RMbLqS8','2024-08-04 09:46:50.820627','2024-08-05 09:46:50.000000',1,'168800c532e047b6b16f81ca791a08b5'),(37,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg1MTMyNiwiaWF0IjoxNzIyNzY0OTI2LCJqdGkiOiIxZDg2Yzg3ODdmNGI0NWQ0YTgxN2EzMTM3NmI0N2Q0NiIsInVzZXJfaWQiOjF9.dJgEDcBXOxU4iED-Hh8ckL8Ne7LW7v5sk7w82QWSrpE','2024-08-04 09:48:46.125076','2024-08-05 09:48:46.000000',1,'1d86c8787f4b45d4a817a31376b47d46'),(38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg1MTU5NCwiaWF0IjoxNzIyNzY1MTk0LCJqdGkiOiJkN2FlNWQwZDgyMTk0YTA3OWVjMzI1N2MwNDVhMTU1OSIsInVzZXJfaWQiOjF9.i0lPfNjZMGdjycb0RcR7JnuzG9yCA6hev22lwHqp2Y8','2024-08-04 09:53:14.077261','2024-08-05 09:53:14.000000',1,'d7ae5d0d82194a079ec3257c045a1559'),(39,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg1MTU5NCwiaWF0IjoxNzIyNzY1MTk0LCJqdGkiOiJjYTcxOWJlNzgwOGI0MWFjODNlOGZhMzMyZjRiMjQwNyIsInVzZXJfaWQiOjF9.GZ62ND07NXdrmbDHp0wfQ4_KSzz8YYAxfxB8m2OkjOs','2024-08-04 09:53:14.620128','2024-08-05 09:53:14.000000',1,'ca719be7808b41ac83e8fa332f4b2407'),(40,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg1MTYwOCwiaWF0IjoxNzIyNzY1MjA4LCJqdGkiOiJmN2UyN2E0NGYzODE0ODVmYWQzYzRhNjc2MWEwNDc2MiIsInVzZXJfaWQiOjF9.Y8SmGBZkmlfkBEJhCTNgM3Je6ooir3lRapCI85gu7LQ','2024-08-04 09:53:28.980492','2024-08-05 09:53:28.000000',1,'f7e27a44f381485fad3c4a6761a04762'),(41,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg1MTc2NSwiaWF0IjoxNzIyNzY1MzY1LCJqdGkiOiI1YmEyYjVjZTk5ODU0ZDQ3YjIwNTEwZTdjMDcxODRkNSIsInVzZXJfaWQiOjF9.Qdp1HGEMag_wKf4b5f1Nygyojs64G7xlOF-N2o1VceU','2024-08-04 09:56:05.138832','2024-08-05 09:56:05.000000',1,'5ba2b5ce99854d47b20510e7c07184d5'),(42,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg1MTg0NSwiaWF0IjoxNzIyNzY1NDQ1LCJqdGkiOiI4ZTBlZWQ2ZTE3ZjY0NWYzOThlNDI3NTk2MjljOGVjNiIsInVzZXJfaWQiOjF9.1bQ4DmEKukcby4XTtkuvAc5o7mg71xWVtGvdxVRB92k','2024-08-04 09:57:25.254490','2024-08-05 09:57:25.000000',1,'8e0eed6e17f645f398e42759629c8ec6'),(43,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg1MjA2MywiaWF0IjoxNzIyNzY1NjYzLCJqdGkiOiI5MWE3OThjYTM4OTg0ZjA4OTM3ODhiOTFjN2RmNTdlMCIsInVzZXJfaWQiOjF9.yZUvPtVmgUvLxVmknI5qTevbcvp1aPUMNo_coUUr_3Y','2024-08-04 10:01:03.182497','2024-08-05 10:01:03.000000',1,'91a798ca38984f0893788b91c7df57e0'),(44,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg1MjczMiwiaWF0IjoxNzIyNzY2MzMyLCJqdGkiOiIyNDg0MjViN2EzOWE0MGMwYTAzNDM3NDNiZWVkYzExNiIsInVzZXJfaWQiOjF9.7SmSwOql5XL6DP_VjDNUyLUk6UiyBWHHdk-koR4za7U','2024-08-04 10:12:12.427424','2024-08-05 10:12:12.000000',1,'248425b7a39a40c0a0343743beedc116'),(45,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg1MjkyNCwiaWF0IjoxNzIyNzY2NTI0LCJqdGkiOiI1YzgxNjMzYzYzYmU0MjAzYTY4NWRkNDY5OTQ4ZDk1ZCIsInVzZXJfaWQiOjF9.Np0H1bD3XXG3FM5F9Wb70YUb3jYHHtBAnM3VpuewO30','2024-08-04 10:15:24.650640','2024-08-05 10:15:24.000000',1,'5c81633c63be4203a685dd469948d95d'),(46,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg1Mjk4MiwiaWF0IjoxNzIyNzY2NTgyLCJqdGkiOiI2ZmMwM2I2MjlhNzM0MDMyYjViZGQ3ZmZhZWE1OWJiYyIsInVzZXJfaWQiOjF9.wFNpasmbIKX3BrTu9ucpQ1DGTGlx8xWmEcvYPirQbRU','2024-08-04 10:16:22.253272','2024-08-05 10:16:22.000000',1,'6fc03b629a734032b5bdd7ffaea59bbc'),(47,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg1MzA1MiwiaWF0IjoxNzIyNzY2NjUyLCJqdGkiOiJjOWRlOTE3MzdkN2Y0OWU2ODkyNjQ2ZjU5ZGI2N2IwZCIsInVzZXJfaWQiOjF9.a_BiVOPM1ifE6c24T9K66l8jYN9yRPGAKy8SG9QmI00','2024-08-04 10:17:32.394501','2024-08-05 10:17:32.000000',1,'c9de91737d7f49e6892646f59db67b0d'),(48,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg1MzA4NCwiaWF0IjoxNzIyNzY2Njg0LCJqdGkiOiI1YjkwYWJkZmNiNzI0NzIxYTI5ODM5ZjA5NjdhOWUzOSIsInVzZXJfaWQiOjF9.fdXg96ZWJ4roNRWHGw1kGI2dqwOI_5C01jf4pq6nVtw','2024-08-04 10:18:04.037599','2024-08-05 10:18:04.000000',1,'5b90abdfcb724721a29839f0967a9e39'),(49,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg1MzI4NCwiaWF0IjoxNzIyNzY2ODg0LCJqdGkiOiI0NzBkMGQ2NzgwMzY0MGRhOGYyMTEzMDc5NmM1OGZmMSIsInVzZXJfaWQiOjF9.K1bJ6y15NVbZVEgAYMmF59j2nDeFIiVrNE47vp44axU','2024-08-04 10:21:24.853182','2024-08-05 10:21:24.000000',1,'470d0d67803640da8f21130796c58ff1'),(50,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMjg1MzczMCwiaWF0IjoxNzIyNzY3MzMwLCJqdGkiOiI4NjEzODBjYzVmOWI0MTI0OWZlOGJiODMwNGViMjA2MyIsInVzZXJfaWQiOjF9.bILmQDkkCUnY8h1Ys6tREkHSVHha0P3sHcfLjtwvMFo','2024-08-04 10:28:50.838011','2024-08-05 10:28:50.000000',1,'861380cc5f9b41249fe8bb8304eb2063');
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-04 17:37:35
