-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: javatest
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `applicant`
--

DROP TABLE IF EXISTS `applicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gender` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experiance` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  `career_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  KEY `applicant_career_idx` (`career_id`),
  CONSTRAINT `applicant_career` FOREIGN KEY (`career_id`) REFERENCES `career` (`id`),
  CONSTRAINT `applicant_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant`
--

LOCK TABLES `applicant` WRITE;
/*!40000 ALTER TABLE `applicant` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_news`
--

DROP TABLE IF EXISTS `applicant_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicant_news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `applicant_id` int NOT NULL,
  `news_id` int NOT NULL,
  `date` datetime NOT NULL,
  `state` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `applicant_news_newsid_idx` (`news_id`),
  KEY `applicant_news_applicantid_idx` (`applicant_id`),
  CONSTRAINT `applicant_news_applicantid` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`),
  CONSTRAINT `applicant_news_newsid` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_news`
--

LOCK TABLES `applicant_news` WRITE;
/*!40000 ALTER TABLE `applicant_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `career`
--

DROP TABLE IF EXISTS `career`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `career` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career`
--

LOCK TABLES `career` WRITE;
/*!40000 ALTER TABLE `career` DISABLE KEYS */;
INSERT INTO `career` VALUES (1,'An toàn lao động'),(2,'Bán hàng kỹ thuật'),(3,'Bán lẻ / bán sỉ'),(4,'Báo chí / Truyền hình'),(5,'Bảo hiểm'),(6,'Bảo trì / Sữa chữa'),(7,'Bất động sản'),(8,'Biên / Phiên dịch'),(9,'Bưu chính - Viễn thông'),(10,'Chứng khoán / Vàng / Ngoại tệ'),(11,'Cơ khí / Chế tạo / Tự động hóa'),(12,'Công nghệ cao'),(13,'Công nghệ Ô tô'),(14,'Công nghệ thông tin'),(15,'Dầu khí/Hóa chất'),(16,'Dệt may / Da giày'),(18,'Dịch vụ khách hàng'),(21,'Du lịch'),(22,'Dược phẩm / Công nghệ sinh học'),(17,'Địa chất / Khoáng sản'),(19,'Điện / Điện tử / Điện lạnh'),(20,'Điện tử viễn thông'),(23,'Giáo dục / Đào tạo'),(24,'Hàng cao cấp'),(25,'Hàng gia dụng'),(26,'Hàng hải'),(27,'Hàng không'),(28,'Hàng tiêu dùng'),(29,'Hành chính / Văn phòng'),(30,'Hoá học / Sinh học'),(31,'Hoạch định/Dự án'),(32,'In ấn / Xuất bản'),(33,'IT Phần cứng / Mạng'),(34,'IT phần mềm'),(35,'Kế toán / Kiểm toán'),(36,'Khách sạn / Nhà hàng'),(37,'Kiến trúc'),(38,'Kinh doanh / Bán hàng'),(39,'Logistics'),(40,'Luật/Pháp lý'),(41,'Marketing / Truyền thông / Quảng cáo'),(42,'Môi trường / Xử lý chất thải'),(43,'Mỹ phẩm / Trang sức'),(44,'Mỹ thuật / Nghệ thuật / Điện ảnh'),(45,'Ngân hàng / Tài chính'),(46,'Ngành nghề khác'),(47,'NGO / Phi chính phủ / Phi lợi nhuận'),(48,'Nhân sự'),(49,'Nông / Lâm / Ngư nghiệp'),(50,'Phi chính phủ / Phi lợi nhuận'),(51,'Quản lý chất lượng (QA/QC)'),(52,'Quản lý điều hành'),(53,'Sản phẩm công nghiệp'),(54,'Sản xuất'),(56,'Spa / Làm đẹp'),(57,'Tài chính / Đầu tư'),(58,'Thiết kế đồ họa'),(59,'Thiết kế nội thất'),(60,'Thời trang'),(61,'Thư ký / Trợ lý'),(62,'Thực phẩm / Đồ uống'),(63,'Tổ chức sự kiện / Quà tặng'),(64,'Tư vấn'),(65,'Vận tải / Kho vận'),(66,'Xây dựng'),(67,'Xuất nhập khẩu'),(68,'Y tế / Dược');
/*!40000 ALTER TABLE `career` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  `location_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  KEY `employer_location_idx` (`location_id`),
  CONSTRAINT `employer_location` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  CONSTRAINT `employer_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`,`name`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (10,'An Giang'),(11,'Bà Rịa-Vũng Tàu'),(12,'Bắc Giang'),(13,'Bạc Liêu'),(4,'Bắc Ninh'),(14,'Bến Tre'),(3,'Bình Dương'),(15,'Bình Định'),(16,'Bình Phước'),(17,'Bình Thuận'),(18,'Cà Mau'),(19,'Cần Thơ'),(20,'Cao Bằng'),(21,'Cửu Long'),(8,'Đà Nẵng'),(22,'Đắc Lắc'),(23,'Đắc Nông'),(24,'Điện Biên'),(5,'Đồng Nai'),(25,'Đồng Tháp'),(26,'Gia Lai'),(27,'Hà Giang'),(28,'Hà Nam'),(1,'Hà Nội'),(29,'Hà Tĩnh'),(7,'Hải Dương'),(9,'Hải Phòng'),(30,'Hậu Giang'),(2,'Hồ Chí Minh'),(31,'Hoà Bình'),(6,'Hưng Yên'),(32,'Khánh Hoà'),(33,'Kiên Giang'),(34,'Kon Tum'),(35,'Lai Châu'),(36,'Lâm Đồng'),(37,'Lạng Sơn'),(38,'Lào Cai'),(39,'Long An'),(40,'Nam Định'),(41,'Nghệ An'),(42,'Ninh Bình'),(43,'Ninh Thuận'),(64,'Nước Ngoài'),(44,'Phú Thọ'),(45,'Phú Yên'),(46,'Quảng Bình'),(47,'Quảng Nam'),(48,'Quảng Ngãi'),(49,'Quảng Ninh'),(50,'Quảng Trị'),(51,'Sóc Trăng'),(52,'Sơn La'),(53,'Tây Ninh'),(54,'Thái Bình'),(55,'Thái Nguyên'),(56,'Thanh Hoá'),(57,'Thừa Thiên Huế'),(58,'Tiền Giang'),(59,'Trà Vinh'),(60,'Tuyên Quang'),(61,'Vĩnh Long'),(62,'Vĩnh Phúc'),(63,'Yên Bái');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `salary` int DEFAULT NULL,
  `experiance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_working` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `time_start` date NOT NULL,
  `time_end` date NOT NULL,
  `employer_id` int NOT NULL,
  `career_id` int NOT NULL,
  `location_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_location_idx` (`location_id`),
  KEY `news_career_idx` (`career_id`),
  KEY `news_employer_idx` (`employer_id`),
  CONSTRAINT `news_career` FOREIGN KEY (`career_id`) REFERENCES `career` (`id`),
  CONSTRAINT `news_employer` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`id`),
  CONSTRAINT `news_location` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2021-04-13 20:20:14
