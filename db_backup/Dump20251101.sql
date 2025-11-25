-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: qrush
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `animals`
--

DROP TABLE IF EXISTS `animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` longtext NOT NULL,
  `option_1` varchar(45) NOT NULL,
  `option_2` varchar(45) NOT NULL,
  `option_3` varchar(45) NOT NULL,
  `option_4` varchar(45) NOT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animals`
--

LOCK TABLES `animals` WRITE;
/*!40000 ALTER TABLE `animals` DISABLE KEYS */;
INSERT INTO `animals` VALUES (1,'Which is the largest mammal on Earth?','Elephant','Blue Whale','Giraffe','Hippopotamus','Blue Whale'),(2,'Which animal is known as the ‘King of the Jungle’?','Tiger','Elephant','Lion','Leopard','Lion'),(3,'Which bird is a universal symbol of peace?','Sparrow','Dove','Crow','Eagle','Dove'),(4,'Which animal lays eggs?','Dog','Cat','Snake','Horse','Snake'),(5,'Which is the fastest land animal?','Cheetah','Horse','Tiger','Leopard','Cheetah'),(6,'Which animal is known for its ability to change color?','Chameleon','Frog','Octopus','Parrot','Chameleon'),(7,'Which bird is the largest in the world?','Ostrich','Eagle','Penguin','Emu','Ostrich'),(8,'Which animal is the only one capable of true flight among mammals?','Bat','Flying Squirrel','Sugar Glider','Colugo','Bat'),(9,'Which animal has the longest trunk?','Giraffe','Elephant','Tapir','Rhino','Elephant'),(10,'Which animal is known for building dams?','Otter','Beaver','Mole','Hedgehog','Beaver');
/*!40000 ALTER TABLE `animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brandname`
--

DROP TABLE IF EXISTS `brandname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brandname` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(45) NOT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brandname`
--

LOCK TABLES `brandname` WRITE;
/*!40000 ALTER TABLE `brandname` DISABLE KEYS */;
INSERT INTO `brandname` VALUES (1,'Rolls-','Royce'),(2,'Dolce &','Gabbana'),(3,'Hennes &','Mauritz'),(4,'Nestlé','KitKat'),(5,'Mercedes-','Benz'),(6,'Coca-','Cola'),(7,'Aston','Martin'),(8,'Mc','Donald’s'),(9,'Tata','Motors'),(10,'Burger','King');
/*!40000 ALTER TABLE `brandname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capital_city`
--

DROP TABLE IF EXISTS `capital_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capital_city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(45) NOT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capital_city`
--

LOCK TABLES `capital_city` WRITE;
/*!40000 ALTER TABLE `capital_city` DISABLE KEYS */;
INSERT INTO `capital_city` VALUES (1,'The capital of France is ','Paris'),(2,'The capital of Japan is ','Tokyo'),(3,'The capital of Canada is ','Ottawa'),(4,'The capital of Australia is ','Canberra'),(5,'The capital of Brazil is ','Brasília'),(6,'The capital of Egypt is ','Cairo'),(7,'The capital of Germany is ','Berlin'),(8,'The capital of Italy is ','Rome'),(9,'The capital of Kenya is ','Nairobi'),(10,'The capital of South Korea is ','Seoul');
/*!40000 ALTER TABLE `capital_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact`
--

DROP TABLE IF EXISTS `fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` longtext NOT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact`
--

LOCK TABLES `fact` WRITE;
/*!40000 ALTER TABLE `fact` DISABLE KEYS */;
INSERT INTO `fact` VALUES (21,'The planet known for its rings is ','Saturn'),(22,'The branch of science that studies fungi is called ','Mycology'),(23,'The first artificial Earth satellite was ','Sputnik'),(24,'The longest river in the world is the ','Nile'),(25,'The largest internal organ in the human body is the ','Liver'),(26,'The theory that describes the origin of the universe is the ____ Theory.','Big Bang'),(27,'The famous physicist who developed the theory of relativity is ','Albert Einstein'),(28,'The first woman to win a Nobel Prize was ','Marie Curie'),(29,'The first human to journey into space was ','Yuri Gagarin'),(30,'The metal that is liquid at room temperature is ','Mercury');
/*!40000 ALTER TABLE `fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_knowledge`
--

DROP TABLE IF EXISTS `general_knowledge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `general_knowledge` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` longtext NOT NULL,
  `option_1` varchar(45) NOT NULL,
  `option_2` varchar(45) NOT NULL,
  `option_3` varchar(45) NOT NULL,
  `option_4` varchar(45) NOT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_knowledge`
--

LOCK TABLES `general_knowledge` WRITE;
/*!40000 ALTER TABLE `general_knowledge` DISABLE KEYS */;
INSERT INTO `general_knowledge` VALUES (1,'Who wrote the play \'Romeo and Juliet\'?','Charles Dickens','William Shakespeare','Leo Tolstoy','Mark Twain','William Shakespeare'),(2,'Which is the fastest land animal?','Cheetah','Lion','Horse','Tiger','Cheetah'),(3,'What is the currency of Japan?','Dollar','Euro','Yen','Rupee','Yen'),(4,'Which planet is known as the Morning Star or Evening Star?','Venus','Mars','Jupiter','Mercury','Venus'),(5,'Who invented the telephone?','Alexander Graham Bell','Thomas Edison','Nikola Tesla','Guglielmo Marconi','Alexander Graham Bell'),(6,'Which famous scientist developed the theory of relativity?','Isaac Newton','Albert Einstein','Galileo Galilei','Marie Curie','Albert Einstein'),(7,'Which element has the chemical symbol \'O\'?','Osmium','Oxygen','Gold','Silver','Oxygen'),(8,'Which sport is known as the \'king of sports\'?','Basketball','Cricket','Football','Tennis','Football'),(9,'What is the capital of France?','Rome','Paris','London','Berlin','Paris'),(10,'Which famous artist painted the Mona Lisa?','Vincent Van Gogh','Leonardo da Vinci','Pablo Picasso','Claude Monet','Leonardo da Vinci');
/*!40000 ALTER TABLE `general_knowledge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geography`
--

DROP TABLE IF EXISTS `geography`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geography` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` longtext NOT NULL,
  `option_1` varchar(45) NOT NULL,
  `option_2` varchar(45) NOT NULL,
  `option_3` varchar(45) NOT NULL,
  `option_4` varchar(45) NOT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geography`
--

LOCK TABLES `geography` WRITE;
/*!40000 ALTER TABLE `geography` DISABLE KEYS */;
INSERT INTO `geography` VALUES (1,'What is the largest continent by area?','Asia','Africa','Europe','Antarctica','Asia'),(2,'Which is the longest river in the world?','Nile','Amazon','Yangtze','Mississippi','Nile'),(3,'Mount Everest is located in which mountain range?','Andes','Rockies','Himalayas','Alps','Himalayas'),(4,'Which is the largest ocean on Earth?','Atlantic','Pacific','Indian','Arctic','Pacific'),(5,'Which country has the largest population?','India','USA','China','Russia','China'),(6,'The Sahara Desert is located on which continent?','Asia','Africa','Australia','South America','Africa'),(7,'Which country is known as the Land of the Rising Sun?','China','Japan','Thailand','South Korea','Japan'),(8,'Which is the smallest country in the world by area?','Monaco','Vatican City','San Marino','Liechtenstein','Vatican City'),(9,'The River Ganges flows primarily through which country?','India','Bangladesh','Nepal','Pakistan','India'),(10,'Which US state is known as the \'Sunshine State\'?','Florida','California','Texas','Arizona','Florida');
/*!40000 ALTER TABLE `geography` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventor`
--

DROP TABLE IF EXISTS `inventor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` longtext NOT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventor`
--

LOCK TABLES `inventor` WRITE;
/*!40000 ALTER TABLE `inventor` DISABLE KEYS */;
INSERT INTO `inventor` VALUES (1,'The telephone was invented by ','Alexander Graham Bell'),(2,'The light bulb was invented by ','Thomas Edison'),(3,'The airplane was invented by ','Wright brothers'),(4,'The first practical steam engine was invented by ','James Watt'),(5,'The printing press was invented by ','Johannes Gutenberg'),(6,'The radio was invented by ','Guglielmo Marconi'),(7,'The television was invented by ','Philo Farnsworth'),(8,'The World Wide Web was invented by ','Tim Berners-Lee'),(9,'The phonograph was invented by ','Thomas Edison'),(10,'The first programmable computer was invented by ','Charles Babbage');
/*!40000 ALTER TABLE `inventor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landmark`
--

DROP TABLE IF EXISTS `landmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landmark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(45) NOT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landmark`
--

LOCK TABLES `landmark` WRITE;
/*!40000 ALTER TABLE `landmark` DISABLE KEYS */;
INSERT INTO `landmark` VALUES (1,'Statue of ','Liberty'),(2,'Great Wall of ','China'),(3,'Eiffel ','Tower'),(4,'Leaning Tower of ','Pisa'),(5,'Christ the ','Redeemer'),(6,'Machu ','Picchu'),(7,'Taj ','Mahal'),(8,'Mount ','Rushmore'),(9,'Sydney ','Opera House'),(10,'Golden Gate ','Bridge');
/*!40000 ALTER TABLE `landmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planets`
--

DROP TABLE IF EXISTS `planets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` longtext NOT NULL,
  `option_1` varchar(45) NOT NULL,
  `option_2` varchar(45) NOT NULL,
  `option_3` varchar(45) NOT NULL,
  `option_4` varchar(45) NOT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planets`
--

LOCK TABLES `planets` WRITE;
/*!40000 ALTER TABLE `planets` DISABLE KEYS */;
INSERT INTO `planets` VALUES (1,'What is the largest planet in our Solar System?','Earth','Mars','Jupiter','Saturn','Jupiter'),(2,'Which planet is known as the Red Planet?','Venus','Mars','Mercury','Neptune','Mars'),(3,'Which planet has the most moons?','Earth','Jupiter','Saturn','Neptune','Saturn'),(4,'Which planet is closest to the Sun?','Venus','Mercury','Earth','Mars','Mercury'),(5,'Which planet is known for its prominent ring system?','Jupiter','Saturn','Uranus','Neptune','Saturn'),(6,'Which planet has the highest mountain in the Solar System?','Earth','Mars','Venus','Jupiter','Mars'),(7,'Which planet is known as the Earth\'s twin?','Mars','Venus','Mercury','Neptune','Venus'),(8,'Which planet has the longest day (rotation period)?','Venus','Mercury','Earth','Mars','Venus'),(9,'Which planet is known for its extreme temperatures, with scorching hot days and freezing cold nights?','Mercury','Venus','Mars','Jupiter','Mercury'),(10,'Which planet has a moon named Titan, which is larger than the planet Mercury?','Jupiter','Saturn','Uranus','Neptune','Saturn');
/*!40000 ALTER TABLE `planets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plants`
--

DROP TABLE IF EXISTS `plants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` longtext NOT NULL,
  `option_1` varchar(45) NOT NULL,
  `option_2` varchar(45) NOT NULL,
  `option_3` varchar(45) NOT NULL,
  `option_4` varchar(45) NOT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plants`
--

LOCK TABLES `plants` WRITE;
/*!40000 ALTER TABLE `plants` DISABLE KEYS */;
INSERT INTO `plants` VALUES (1,'Which part of the plant carries out photosynthesis?','Root','Stem','Leaf','Flower','Leaf'),(2,'What is the process by which plants make their own food?','Respiration','Transpiration','Photosynthesis','Fermentation','Photosynthesis'),(3,'Which part of the plant absorbs water and minerals?','Leaf','Root','Stem','Flower','Root'),(4,'Which gas do plants absorb during photosynthesis?','Oxygen','Nitrogen','Carbon Dioxide','Hydrogen','Carbon Dioxide'),(5,'What is the reproductive organ of a flowering plant?','Leaf','Root','Stem','Flower','Flower'),(6,'Which pigment in plants captures sunlight for photosynthesis?','Carotene','Chlorophyll','Xanthophyll','Melanin','Chlorophyll'),(7,'Which part of the plant transports water from roots to leaves?','Stem','Leaf','Root','Flower','Stem'),(8,'What do we call plants that live for only one season?','Annuals','Perennials','Biennials','Evergreens','Annuals'),(9,'Which plant is known as the ‘king of fruits’?','Banana','Apple','Mango','Orange','Mango'),(10,'Which desert plant can store large amounts of water in its stem?','Cactus','Fern','Bamboo','Lotus','Cactus');
/*!40000 ALTER TABLE `plants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playcount`
--

DROP TABLE IF EXISTS `playcount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playcount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL,
  `playcounts` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playcount`
--

LOCK TABLES `playcount` WRITE;
/*!40000 ALTER TABLE `playcount` DISABLE KEYS */;
INSERT INTO `playcount` VALUES (1,'plants','14'),(2,'animals','6'),(3,'planets','3'),(4,'technology','3'),(5,'science','2'),(6,'geography','5'),(7,'general knowledge','0');
/*!40000 ALTER TABLE `playcount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `science`
--

DROP TABLE IF EXISTS `science`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `science` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` longtext NOT NULL,
  `option_1` varchar(45) NOT NULL,
  `option_2` varchar(45) NOT NULL,
  `option_3` varchar(45) NOT NULL,
  `option_4` varchar(45) NOT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `science`
--

LOCK TABLES `science` WRITE;
/*!40000 ALTER TABLE `science` DISABLE KEYS */;
INSERT INTO `science` VALUES (1,'What is the chemical symbol for water?','H2O','O2','CO2','NaCl','H2O'),(2,'Which planet is known as the Red Planet?','Mars','Venus','Jupiter','Mercury','Mars'),(3,'What is the center of an atom called?','Electron','Proton','Nucleus','Neutron','Nucleus'),(4,'Which gas is essential for humans to breathe?','Carbon Dioxide','Oxygen','Nitrogen','Hydrogen','Oxygen'),(5,'Which organ in the human body pumps blood?','Brain','Heart','Lungs','Kidney','Heart'),(6,'What force keeps us on the ground?','Magnetism','Gravity','Friction','Electricity','Gravity'),(7,'Which vitamin is produced when sunlight falls on the skin?','Vitamin A','Vitamin B','Vitamin C','Vitamin D','Vitamin D'),(8,'What is the boiling point of water at sea level?','100°C','90°C','80°C','120°C','100°C'),(9,'Which gas do plants release during photosynthesis?','Carbon Dioxide','Oxygen','Nitrogen','Methane','Oxygen'),(10,'What type of energy is stored in food?','Kinetic','Thermal','Chemical','Electrical','Chemical');
/*!40000 ALTER TABLE `science` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technology`
--

DROP TABLE IF EXISTS `technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technology` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` longtext NOT NULL,
  `option_1` varchar(45) NOT NULL,
  `option_2` varchar(45) NOT NULL,
  `option_3` varchar(45) NOT NULL,
  `option_4` varchar(45) NOT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology`
--

LOCK TABLES `technology` WRITE;
/*!40000 ALTER TABLE `technology` DISABLE KEYS */;
INSERT INTO `technology` VALUES (1,'Who is known as the father of the computer?','Charles Babbage','Alan Turing','Bill Gates','Steve Jobs','Charles Babbage'),(2,'What does \'HTTP\' stand for?','HyperText Transfer Protocol','HighText Transfer Protocol','HyperText Transmission Program','Hyper Transfer Text Protocol','HyperText Transfer Protocol'),(3,'Which company developed the Android operating system?','Apple','Microsoft','Google','Samsung','Google'),(4,'What is the main function of a computer\'s CPU?','Store data','Perform calculations','Display graphics','Connect to the internet','Perform calculations'),(5,'Which programming language is primarily used for web development?','Python','HTML','C++','Java','HTML'),(6,'What does \'AI\' stand for in technology?','Automated Interface','Artificial Intelligence','Advanced Internet','Algorithmic Input','Artificial Intelligence'),(7,'Which company created the first commercially successful microprocessor?','Intel','IBM','AMD','Nvidia','Intel'),(8,'What is the term for malicious software designed to harm computers?','Adware','Malware','Firmware','Shareware','Malware'),(9,'Which technology is used to make phone calls over the Internet?','VoIP','VPN','IoT','LAN','VoIP'),(10,'What does \'RAM\' stand for in computer memory?','Random Access Memory','Readily Available Memory','Rapid Application Module','Remote Access Memory','Random Access Memory');
/*!40000 ALTER TABLE `technology` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-01 15:20:04
