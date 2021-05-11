-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: javadb
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
-- Dumping data for table `applicant`
--

LOCK TABLES `applicant` WRITE;
/*!40000 ALTER TABLE `applicant` DISABLE KEYS */;
INSERT INTO `applicant` VALUES (1,'Nữ','Hoc tap va lam viec tai Thanh pho Ho Chi Minh','Dai hoc',14,'Claire'),(2,'Nữ','Khong','Cap 3',13,'john.nguyen'),(3,'Nữ','Doc sach, xem phim','Cao dang',18,'min.tran'),(4,'Nữ','Nghe nhac','Dai hoc',17,'phi.phuong.anh'),(5,'Nam','Lam viec va sinh song tai TPHCM','Dai hoc',14,'nguyenlinh'),(6,'Nam','Duoc pham','Thac Si',22,'tran.minh'),(7,'Nữ','Trinh do thac si tai My','Thac si chuyen vien tu van',18,'phuonganh.ngoc'),(8,'Nữ','Study at America','Cu nhan',14,'xuannguyen');
/*!40000 ALTER TABLE `applicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `applicant_news`
--

LOCK TABLES `applicant_news` WRITE;
/*!40000 ALTER TABLE `applicant_news` DISABLE KEYS */;
INSERT INTO `applicant_news` VALUES (1,1,3,'2021-05-11 17:22:16',NULL),(2,1,1,'2021-05-11 17:22:21',NULL),(3,1,2,'2021-05-11 17:26:12',NULL),(4,1,4,'2021-05-11 17:35:52',NULL),(5,1,7,'2021-05-11 22:08:08',NULL),(6,3,8,'2021-05-11 23:06:19',NULL),(7,3,13,'2021-05-11 23:06:29',NULL),(8,8,15,'2021-05-11 23:35:53',NULL);
/*!40000 ALTER TABLE `applicant_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `career`
--

LOCK TABLES `career` WRITE;
/*!40000 ALTER TABLE `career` DISABLE KEYS */;
INSERT INTO `career` VALUES (1,'An toàn lao động'),(2,'Bán hàng kỹ thuật'),(3,'Bán lẻ / bán sỉ'),(4,'Báo chí / Truyền hình'),(5,'Bảo hiểm'),(6,'Bảo trì / Sữa chữa'),(7,'Bất động sản'),(8,'Biên / Phiên dịch'),(9,'Bưu chính - Viễn thông'),(10,'Chứng khoán / Vàng / Ngoại tệ'),(11,'Cơ khí / Chế tạo / Tự động hóa'),(12,'Công nghệ cao'),(13,'Công nghệ Ô tô'),(14,'Công nghệ thông tin'),(15,'Dầu khí/Hóa chất'),(16,'Dệt may / Da giày'),(18,'Dịch vụ khách hàng'),(21,'Du lịch'),(22,'Dược phẩm / Công nghệ sinh học'),(17,'Địa chất / Khoáng sản'),(19,'Điện / Điện tử / Điện lạnh'),(20,'Điện tử viễn thông'),(23,'Giáo dục / Đào tạo'),(24,'Hàng cao cấp'),(25,'Hàng gia dụng'),(26,'Hàng hải'),(27,'Hàng không'),(28,'Hàng tiêu dùng'),(29,'Hành chính / Văn phòng'),(30,'Hoá học / Sinh học'),(31,'Hoạch định/Dự án'),(32,'In ấn / Xuất bản'),(33,'IT Phần cứng / Mạng'),(34,'IT phần mềm'),(35,'Kế toán / Kiểm toán'),(36,'Khách sạn / Nhà hàng'),(37,'Kiến trúc'),(38,'Kinh doanh / Bán hàng'),(39,'Logistics'),(40,'Luật/Pháp lý'),(41,'Marketing / Truyền thông / Quảng cáo'),(42,'Môi trường / Xử lý chất thải'),(43,'Mỹ phẩm / Trang sức'),(44,'Mỹ thuật / Nghệ thuật / Điện ảnh'),(45,'Ngân hàng / Tài chính'),(46,'Ngành nghề khác'),(47,'NGO / Phi chính phủ / Phi lợi nhuận'),(48,'Nhân sự'),(49,'Nông / Lâm / Ngư nghiệp'),(50,'Phi chính phủ / Phi lợi nhuận'),(51,'Quản lý chất lượng (QA/QC)'),(52,'Quản lý điều hành'),(53,'Sản phẩm công nghiệp'),(54,'Sản xuất'),(56,'Spa / Làm đẹp'),(57,'Tài chính / Đầu tư'),(58,'Thiết kế đồ họa'),(59,'Thiết kế nội thất'),(60,'Thời trang'),(61,'Thư ký / Trợ lý'),(62,'Thực phẩm / Đồ uống'),(63,'Tổ chức sự kiện / Quà tặng'),(64,'Tư vấn'),(65,'Vận tải / Kho vận'),(66,'Xây dựng'),(67,'Xuất nhập khẩu'),(68,'Y tế / Dược');
/*!40000 ALTER TABLE `career` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` VALUES (2,'Cong ty xuat nhap khau my pham Kelvin',5,'Kelvin.nguyen'),(3,'San xuat phu kien may tinh',3,'ethan123'),(4,'Claire',2,'Claire99'),(5,'The Color Club International Company Ltd. is a high-end creative graphic multimedia studio, specialized in visual communication. ',1,'kiettieu'),(6,'Cong ty Asia cung cap hang hoa si le',14,'Asia.vn'),(7,'Cong ty san xuat duoc pham va phan phoi cho cac dai ly tai cac tinh thanh va thanh pho lon',32,'zenyum'),(8,'San xuat cong nghe',2,'namtran'),(9,'Tuyen dung lap trinh vien',2,'alice');
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (10,'An Giang'),(11,'Bà Rịa-Vũng Tàu'),(12,'Bắc Giang'),(13,'Bạc Liêu'),(4,'Bắc Ninh'),(14,'Bến Tre'),(3,'Bình Dương'),(15,'Bình Định'),(16,'Bình Phước'),(17,'Bình Thuận'),(18,'Cà Mau'),(19,'Cần Thơ'),(20,'Cao Bằng'),(21,'Cửu Long'),(8,'Đà Nẵng'),(22,'Đắc Lắc'),(23,'Đắc Nông'),(24,'Điện Biên'),(5,'Đồng Nai'),(25,'Đồng Tháp'),(26,'Gia Lai'),(27,'Hà Giang'),(28,'Hà Nam'),(1,'Hà Nội'),(29,'Hà Tĩnh'),(7,'Hải Dương'),(9,'Hải Phòng'),(30,'Hậu Giang'),(2,'Hồ Chí Minh'),(31,'Hoà Bình'),(6,'Hưng Yên'),(32,'Khánh Hoà'),(33,'Kiên Giang'),(34,'Kon Tum'),(35,'Lai Châu'),(36,'Lâm Đồng'),(37,'Lạng Sơn'),(38,'Lào Cai'),(39,'Long An'),(40,'Nam Định'),(41,'Nghệ An'),(42,'Ninh Bình'),(43,'Ninh Thuận'),(64,'Nước Ngoài'),(44,'Phú Thọ'),(45,'Phú Yên'),(46,'Quảng Bình'),(47,'Quảng Nam'),(48,'Quảng Ngãi'),(49,'Quảng Ninh'),(50,'Quảng Trị'),(51,'Sóc Trăng'),(52,'Sơn La'),(53,'Tây Ninh'),(54,'Thái Bình'),(55,'Thái Nguyên'),(56,'Thanh Hoá'),(57,'Thừa Thiên Huế'),(58,'Tiền Giang'),(59,'Trà Vinh'),(60,'Tuyên Quang'),(61,'Vĩnh Long'),(62,'Vĩnh Phúc'),(63,'Yên Bái');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Cong nghe thong tin','2000USD','5 months','Developer','Cong nghe thong tin','2021-05-02','2021-05-20',4,14,8),(2,'Ban tra sua','100USD','1 month','Ban hang','Ban hang','2021-04-25','2021-05-17',4,3,2),(3,'Ban tra sua','100USD','1 month','Ban hang','Ban hang','2021-04-25','2021-05-17',4,3,2),(4,'Experienced leader and finance professional','3500USD','2 years','Member','Member','2021-05-09','2021-05-21',4,20,19),(5,' Treatment Planning Doctor','5000USD','5 years','Doctor','Doctor in the team','2021-01-04','2021-05-09',7,22,17),(6,'CHC - Medical Affairs Manager','2500USD','3 years','Manager in a team','Ensure a Medical Plan is written and implemented for each of the marketed brands','2021-05-03','2021-05-12',7,22,12),(7,'Medical Advisor','4200USD','5 years','Associate','To respond to all external scientific and medical queries from physicians, regulatory authorities and public alike in an accurate.','2021-05-03','2021-05-12',7,22,12),(8,'Financial Analyst Supervisor','900USD','4 months','Fresher','In charge of the Groupâs funding needs and arrange funding sources in a timely manner','2021-02-13','2021-05-17',6,3,45),(9,'Compliance Analyst - Financial Intelligence Unit','1500USD','7 months','Applicants','Reviews high risk account documentation and collaborates with internal partners to ensure information is accurate','2021-05-16','2021-05-27',7,24,26),(10,'Customer Service Specialist','1000USD','3 months','Applicant','Binance is a client-facing business, and Customer Service is extremely important for us.','2021-05-02','2021-05-29',2,18,29),(11,'Customer Service Manager','1500USD','1 year','Manager','Binance is a client-facing business, and Customer Service is extremely important for us.','2021-05-02','2021-05-29',2,18,1),(12,'Customer Service [Internship]','800 USD','6 months','Manager','Contribute to an overall exceptional experience from check-in through check-out.','2021-03-19','2021-05-17',2,18,9),(13,'Customer Service Applicant','500USD','2 months','Applicant','Support Customer Care staff and Customer Care Supervisor in paper works.','2021-02-07','2021-05-17',5,18,10),(14,'System Analyst Support','1000USD','3 months','Coder','Lap trinh cac thiet bi dien tu','2021-04-27','2021-05-16',8,14,2),(15,'Game Design Intern','2000 USD','1 year','Coder','Game Design Intern Job Description: As a member of the Game Design team of Gear Inc. in Vietnam','2021-04-27','2021-05-16',8,14,1),(16,'Fullstack Developer','1500 USD','2 years','Developer','We are looking for a senior level full stack developer with a strong product mindset who loves developing products from DB to clients.','2021-05-02','2021-05-17',8,14,31),(17,'Junior/Senior FE Developer','1700 USD','1 year','Developer','Coder','2021-05-02','2021-05-10',8,14,2),(18,'Developer Fullstack','2000 USD','3 years','Developer','We are looking for a qualified junior/senior FE Developer with a growth mindset and practical skills, wanting to advance their career by VietNam','2021-02-25','2021-05-12',9,14,5),(19,'Developer Frontend','1500 USD','2 years','Developer','Information Technology & Services  Computer Software  Internet','2021-02-25','2021-05-12',9,14,5);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('alice','$2a$10$lKNUZqJlHBHq6zTUJbRnLufyUJ61Ryr/uHgZPSlOvKYZc4eM4P2f2','alice@gmail.com','Alice Information Technology','ROLE_EMPLOYER'),('Asia.vn','$2a$10$BZWmFMCXKzQos2yXoEwHj.cOyDuOJ65sqJotMRR1F9cXtB1WmJ2C2','asia@gmail.com','Cong ty Asia Ban si le','ROLE_EMPLOYER'),('Claire','$2a$10$Z8WfYThOqNSeccJ0cxqaQeqGt5xZ1VF00aLZ0kMno4pNETLjIPgoO','saccarozo.29@gmail.com','William Claire','ROLE_APPLICANT'),('Claire99','$2a$10$QFjG2ByU0FPk38IS6fvzL.vfuIgHLmXdNLXj7Y3tERMq0TlbCtYcC','claire@gmail.com','Cong ty Cong nghe Phan mem Ki thuat','ROLE_EMPLOYER'),('ethan123','$2a$10$UnkDAyXdh0jxcVhPgnjOFeuuVR5WL1LYFCSqrzXQL3l1/T5n9n2aa','ethan123@gmail.com','Cong ty san xuat phu kien may tinh','ROLE_EMPLOYER'),('john.nguyen','$2a$10$O1yYcIRaJbi2kdzbKQoqbOqxO41gXSz.wxS/7R9UDG.Lg9DrQTOS2','johnnguyen@gmail.com','Nguyen Join','ROLE_APPLICANT'),('Kelvin.nguyen','$2a$10$bTzTQx/wzJStgaRjeTU0Vuu9RizF11IVhnGqH7cN0E9P5I2lB9UhS','kelvin.mypham@gmail.com','Cong ty My pham Kelvin','ROLE_EMPLOYER'),('kiettieu','$2a$10$vrBa3pKCeXPAB.6cjhac0OMRhYgUpxkbzW4IqpokHQlOqanx.KdvS','kiettieu@gmail.com','Race Jungle','ROLE_EMPLOYER'),('min.tran','$2a$10$IAE7fF4xKveQHC/4IhWM1uzU7ZhtcHyEkgAUerO969xlhdIritI3.','mintran@gmail.com','Tran Thi Min','ROLE_APPLICANT'),('namtran','$2a$10$c4bInUVpjRMdI2KRQbKIeeGzzwJHWv4a1P1CVrY/xSzxZf2nWCdB.','namtran@gmail.com','Cong nghe FPT','ROLE_EMPLOYER'),('nguyenlinh','$2a$10$24YTcdgWJ7XFLfc/gm379u44hcmhY3ckXk4oj8gWwHHMgiQpYjKr2','nguyenlinh@gmail.com','Nguyen Van Linh','ROLE_APPLICANT'),('phi.phuong.anh','$2a$10$hhe3ejo3KT8kD2t03tGsP.6HiUnN7tSwuqayKasXnJhVqkxV4ZMdW','phiphuonganh@gmail.com','Phi Phuong Anh','ROLE_APPLICANT'),('phuonganh.ngoc','$2a$10$.xq7.QV3y49OBGyRUkie.uJgL05SQ5.7zvCjnJDheTEtgUm6AnXy6','phuonganh@gmail.com','Nguyen Ngoc Phuong Anh','ROLE_APPLICANT'),('tran.minh','$2a$10$sd0deWtSkKs8nF1V.3tPV.hl66MFGBMqJxHYbKI04btXvF4UXikxC','tranminh@gmail.com','Tran Phu Minh','ROLE_APPLICANT'),('xuannguyen','$2a$10$ikKvcPi7QHJvkOH.HBGHde5uZgSxB51b571cGcL0umSVCxuEIMTC.','hoangxuan@gmail.com','Nguyen Hoang Xuan','ROLE_APPLICANT'),('zenyum','$2a$10$iC7Afwd7Fe7LbfUjY7VBJuNYOtQvaOmh2tNKAHVit4AxR3KIO/Mf2','zenyum@gmail.com','Cong ty duoc pham Zenyum Viet Nam','ROLE_EMPLOYER');
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

-- Dump completed on 2021-05-11 23:53:00
