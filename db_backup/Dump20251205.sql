-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: qrush-mysql-qrush.e.aivencloud.com    Database: qrush
-- ------------------------------------------------------
-- Server version	8.0.35

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '727bb7db-c9d9-11f0-9f45-f61ecd7fc1f7:1-1526';

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
-- Table structure for table `badges`
--

DROP TABLE IF EXISTS `badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `badges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `icon` varchar(45) NOT NULL,
  `rarity` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badges`
--

LOCK TABLES `badges` WRITE;
/*!40000 ALTER TABLE `badges` DISABLE KEYS */;
INSERT INTO `badges` VALUES (1,'First Steps','Complete your first quiz','quiz','?','common'),(2,'Category Explorer','Complete 5 category quizzes','category','?️','uncommon'),(3,'Category Challenger','Complete 10 category quizzes','category','?','rare'),(4,'Image Quiz Explorer','Complete 5 image quizzes','image','?️','uncommon'),(5,'Image Quiz Challenger','Complete all  image quizzes','image','?','rare'),(6,'Finish Quiz Explorer','Complete 5 finish quizzes','finish','✔️','uncommon'),(7,'Temple Escape Explorer','Complete the Temple escape room','escape','?️','uncommon'),(8,'Island Escape Explorer','Complete the Island escape room','escape ','?️ ','uncommon'),(9,'Lab Escape Explorer','Complete the Lab escape room','escape','⚗️','uncommon'),(10,'Escape Room Challenger','Complete all escape rooms','escape','?️','rare'),(11,'Quiz Master','Complete all quizzes','quiz','?','legendary');
/*!40000 ALTER TABLE `badges` ENABLE KEYS */;
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
-- Table structure for table `c_status`
--

DROP TABLE IF EXISTS `c_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `c_status` (
  `id` int NOT NULL,
  `plants` tinyint NOT NULL,
  `animals` tinyint NOT NULL,
  `planets` tinyint NOT NULL,
  `technology` tinyint NOT NULL,
  `science` tinyint NOT NULL,
  `geography` tinyint NOT NULL,
  `generalknowledge` tinyint NOT NULL,
  `travel` tinyint NOT NULL,
  `environment` tinyint NOT NULL,
  `space` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_status`
--

LOCK TABLES `c_status` WRITE;
/*!40000 ALTER TABLE `c_status` DISABLE KEYS */;
INSERT INTO `c_status` VALUES (18,0,0,0,0,0,0,0,0,0,1);
/*!40000 ALTER TABLE `c_status` ENABLE KEYS */;
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
-- Table structure for table `environment`
--

DROP TABLE IF EXISTS `environment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `environment` (
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
-- Dumping data for table `environment`
--

LOCK TABLES `environment` WRITE;
/*!40000 ALTER TABLE `environment` DISABLE KEYS */;
INSERT INTO `environment` VALUES (1,'What is the main cause of global warming?','Deforestation','Greenhouse gases','Ozone layer','Volcanic eruptions','Greenhouse gases'),(2,'Which country is known for having the largest rainforest?','Congo','Brazil','Indonesia','Peru','Brazil'),(3,'What percentage of Earth\'s water is fresh and drinkable?','10%','2.5%','25%','5%','2.5%'),(4,'Which gas is essential for plants during photosynthesis?','Oxygen','Nitrogen','Carbon dioxide','Hydrogen','Carbon dioxide'),(5,'What is the process of planting trees to restore forests called?','Recycling','Reforestation','Cultivation','Deforestation','Reforestation'),(6,'Which layer of the atmosphere protects us from harmful UV rays?','Troposphere','Stratosphere','Ozone layer','Mesosphere','Ozone layer'),(7,'Which of the following is NOT a greenhouse gas?','Carbon dioxide','Methane','Nitrous oxide','Oxygen','Oxygen'),(8,'What is the biggest cause of deforestation?','Urban development','Logging and agriculture','Tourism','Mining','Logging and agriculture'),(9,'Which organization is known for the Earth Hour initiative?','UNICEF','UNESCO','WWF','Greenpeace','WWF'),(10,'What term describes the total amount of greenhouse gases emitted directly or indirectly by human activities?','Green Factor','Carbon Footprint','Emission Index','Pollution Load','Carbon Footprint');
/*!40000 ALTER TABLE `environment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escape_quiz_status`
--

DROP TABLE IF EXISTS `escape_quiz_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escape_quiz_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `temple` tinyint NOT NULL,
  `island` tinyint NOT NULL,
  `lab` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escape_quiz_status`
--

LOCK TABLES `escape_quiz_status` WRITE;
/*!40000 ALTER TABLE `escape_quiz_status` DISABLE KEYS */;
INSERT INTO `escape_quiz_status` VALUES (18,0,0,0);
/*!40000 ALTER TABLE `escape_quiz_status` ENABLE KEYS */;
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
-- Table structure for table `finish_quiz_status`
--

DROP TABLE IF EXISTS `finish_quiz_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finish_quiz_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `landmark` tinyint NOT NULL,
  `brandname` tinyint NOT NULL,
  `capitalcity` tinyint NOT NULL,
  `fact` tinyint NOT NULL,
  `inventor` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finish_quiz_status`
--

LOCK TABLES `finish_quiz_status` WRITE;
/*!40000 ALTER TABLE `finish_quiz_status` DISABLE KEYS */;
INSERT INTO `finish_quiz_status` VALUES (18,0,0,0,0,0);
/*!40000 ALTER TABLE `finish_quiz_status` ENABLE KEYS */;
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
-- Table structure for table `identify_animal`
--

DROP TABLE IF EXISTS `identify_animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identify_animal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` longtext NOT NULL,
  `correctAnswer` varchar(45) NOT NULL,
  `option1` varchar(45) NOT NULL,
  `option2` varchar(45) NOT NULL,
  `option3` varchar(45) NOT NULL,
  `option4` varchar(45) NOT NULL,
  `hint` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identify_animal`
--

LOCK TABLES `identify_animal` WRITE;
/*!40000 ALTER TABLE `identify_animal` DISABLE KEYS */;
INSERT INTO `identify_animal` VALUES (1,'../../public/images/animals/axolotl.jpeg','Axolotl','Olm','Axolotl','Mudpuppy','Hellbender','Mexican salamander that retains larval features throughout life'),(2,'../../public/images/animals/okapi.jpeg','Okapi','Bongo','Zebra','Okapi','Gerenuk','African mammal related to giraffes with zebra-like stripes on legs'),(3,'../../public/images/animals/narwhal.jpeg','Narwhal','Walrus','Beluga','Narwhal','Dolphin','Arctic whale known as the \'unicorn of the sea\''),(4,'../../public/images/animals/aye-aye.jpeg','Aye-Aye','Aye-Aye','Tarsier','Potoo','Loris','Nocturnal lemur with an elongated middle finger'),(5,'../../public/images/animals/mantis-shrimp.jpeg','Mantis Shrimp','Crayfish','Pistol Shrimp','Mantis Shrimp','Slipper Lobster','Marine crustacean with powerful club-like appendages'),(6,'../../public/images/animals/shoebill.jpeg','Shoebill','Pelican','Heron','Shoebill','Hamerkop','Large African bird with shoe-shaped bill'),(7,'../../public/images/animals/platypus.jpeg','Platypus','Echidna','Beaver','Platypus','Otter','Egg-laying mammal with a duck-like bill'),(8,'../../public/images/animals/fossa.jpeg','Fossa','Fossa','Civet','Genet','Mongoose','Madagascar\'s largest carnivorous mammal'),(9,'../../public/images/animals/saiga-antelope.jpeg','Saiga Antelope','Saiga Antelope','Gazelle','Springbok','Tibetan Antelope','Antelope with distinctive oversized, flexible nose'),(10,'../../public/images/animals/tarsier.jpeg','Tarsier','Bushbaby','Tarsier','Tamarin','Marmoset','Small primate with enormous eyes that cannot move');
/*!40000 ALTER TABLE `identify_animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identify_car`
--

DROP TABLE IF EXISTS `identify_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identify_car` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` longtext NOT NULL,
  `correctAnswer` varchar(45) NOT NULL,
  `option1` varchar(45) NOT NULL,
  `option2` varchar(45) NOT NULL,
  `option3` varchar(45) NOT NULL,
  `option4` varchar(45) NOT NULL,
  `hint` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identify_car`
--

LOCK TABLES `identify_car` WRITE;
/*!40000 ALTER TABLE `identify_car` DISABLE KEYS */;
INSERT INTO `identify_car` VALUES (1,'../../public/images/logos/tesla.jpg','Tesla','Mazda','Volvo','Tesla','Toyota','Electric car company founded by Elon Musk'),(2,'../../public/images/logos/Mercedez-Benz.jpg','Mercedes-Benz','Mercedes-Benz','Porsche','Audi','BMW','German brand known for luxury and the three-pointed star'),(3,'../../public/images/logos/mazda.jpeg','Mazda','Mazda','Audi','BMW','Volkswagen','Japanese automaker known for its rotary engines'),(4,'../../public/images/logos/toyota.jpg','Toyota','Hyundai','Toyota','Nissan','Honda','Japanese brand with overlapping ellipses'),(5,'../../public/images/logos/ferrari.jpeg','Ferrari','Ferrari','Maserati','Alfa Romeo','Lamborghini','Italian sports car brand with a prancing horse'),(6,'../../public/images/logos/volkswagen.jpeg','Volkswagen','Bugatti','Volkswagen','Ferrari','Lamborghini','German brand known for the Beetle and Golf'),(7,'../../public/images/logos/audi.jpg','Audi','Skoda','Volkswagen','Porsche','Audi','Four interlocking rings represent this brand'),(8,'../../public/images/logos/hyundai.jpeg','Hyundai','Hyundai','Ferrari','Maserati','Porsche','South Korean brand known for its affordable cars'),(9,'../../public/images/logos/skoda.jpg','Skoda','Chevrolet','Ford','Skoda','Dodge','Czech brand known for its value-for-money cars'),(10,'../../public/images/logos/honda.jpg','Honda','Kia','Honda','Toyota','Hyundai','Japanese brand with an \'H\' symbol');
/*!40000 ALTER TABLE `identify_car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identify_flag`
--

DROP TABLE IF EXISTS `identify_flag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identify_flag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` longtext NOT NULL,
  `correctAnswer` varchar(45) NOT NULL,
  `option1` varchar(45) NOT NULL,
  `option2` varchar(45) NOT NULL,
  `option3` varchar(45) NOT NULL,
  `option4` varchar(45) NOT NULL,
  `hint` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identify_flag`
--

LOCK TABLES `identify_flag` WRITE;
/*!40000 ALTER TABLE `identify_flag` DISABLE KEYS */;
INSERT INTO `identify_flag` VALUES (1,'../../public/images/flags/usa.png','United States','Canada','United States','United Kingdom','Australia','Known as the Stars and Stripes'),(2,'../../public/images/flags/france.png','France','Italy','Belgium','France','Netherlands','Tricolore with blue, white, and red'),(3,'../../public/images/flags/japan.png','Japan','South Korea','Japan','China','Bangladesh','White with a red circle in the center'),(4,'../../public/images/flags/brazil.png','Brazil','Argentina','Portugal','Brazil','Mexico','Green with a yellow diamond and blue circle'),(5,'../../public/images/flags/canada.png','Canada','Peru','Canada','Georgia','Switzerland','Red with a white square and red maple leaf'),(6,'../../public/images/flags/germany.png','Germany','Belgium','Germany','Hungary','Yemen','Black, red, and gold horizontal stripes'),(7,'../../public/images/flags/australia.png','Australia','United Kingdom','Australia','New Zealand','Fiji','Blue with Union Jack and Southern Cross'),(8,'../../public/images/flags/india.png','India','Ireland','India','Ivory Coast','Niger','Saffron, white, and green with Ashoka Chakra'),(9,'../../public/images/flags/south-korea.png','South Korea','Thailand','Malaysia','South Korea','Philippines','White with red and blue Yin-Yang and trigrams'),(10,'../../public/images/flags/south-africa.png','South Africa','Zambia','Kenya','Zimbabwe','South Africa','Six colors with a Y-shaped green band');
/*!40000 ALTER TABLE `identify_flag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identify_instrument`
--

DROP TABLE IF EXISTS `identify_instrument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identify_instrument` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` longtext NOT NULL,
  `correctAnswer` varchar(45) NOT NULL,
  `option1` varchar(45) NOT NULL,
  `option2` varchar(45) NOT NULL,
  `option3` varchar(45) NOT NULL,
  `option4` varchar(45) NOT NULL,
  `hint` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identify_instrument`
--

LOCK TABLES `identify_instrument` WRITE;
/*!40000 ALTER TABLE `identify_instrument` DISABLE KEYS */;
INSERT INTO `identify_instrument` VALUES (1,'../../public/images/instruments/violin.jpeg','Violin','Double Bass','Violin','Cello','Viola','Smallest and highest-pitched string instrument in its family'),(2,'../../public/images/instruments/piano.jpeg','Piano','Harpsichord','Keyboard','Piano','Organ','Keyboard instrument with hammers that strike strings'),(3,'../../public/images/instruments/guitar.jpeg','Guitar','Banjo','Mandolin','Guitar','Ukulele','Fretted string instrument typically with six strings'),(4,'../../public/images/instruments/trumpet.jpeg','Trumpet','Cornet','Trumpet','Trombone','Flugelhorn','Brass instrument with three valves'),(5,'../../public/images/instruments/piccolo.jpeg','Piccolo','Flute','Recorder','Clarinet','Piccolo','Smallest and highest-pitched member of the flute family'),(6,'../../public/images/instruments/bongos.jpeg','Bongos','Timpani','Bongos','Congas','Drum Set','Pair of small drums attached to each other, played with hands'),(7,'../../public/images/instruments/saxophone.jpeg','Saxophone','Bassoon','Clarinet','Saxophone','Oboe','Woodwind instrument made of brass with a single reed'),(8,'../../public/images/instruments/harp.jpeg','Harp','Lyre','Harp','Zither','Dulcimer','String instrument played by plucking with fingers'),(9,'../../public/images/instruments/accordion.jpeg','Accordion','Accordion','Concertina','Harmonium','Melodica','Portable keyboard instrument with bellows'),(10,'../../public/images/instruments/cello.jpeg','Cello','Violin','Double Bass','Cello','Viola','Tenor voice of the string family, played between the knees');
/*!40000 ALTER TABLE `identify_instrument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identify_landmark`
--

DROP TABLE IF EXISTS `identify_landmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identify_landmark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` longtext NOT NULL,
  `correctAnswer` varchar(45) NOT NULL,
  `option1` varchar(45) NOT NULL,
  `option2` varchar(45) NOT NULL,
  `option3` varchar(45) NOT NULL,
  `option4` varchar(45) NOT NULL,
  `hint` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identify_landmark`
--

LOCK TABLES `identify_landmark` WRITE;
/*!40000 ALTER TABLE `identify_landmark` DISABLE KEYS */;
INSERT INTO `identify_landmark` VALUES (1,'../../public/images/landmarks/EiffelTower.jpg','Eiffel Tower','Eiffel Tower','Big Ben','Statue of Liberty','Colosseum','Located in Paris, France'),(2,'../../public/images/landmarks/Statue-of-Liberty.jpg','Statue of Liberty','Christ the Redeemer','Statue of Liberty','Mount Rushmore','The Thinker','Gift from France to the United States'),(3,'../../public/images/landmarks/Great-Wall-of-China.jpg','Great Wall of China','Great Wall of China','Hadrian\'s Wall','Berlin Wall','Western Wall','Longest wall in the world'),(4,'../../public/images/landmarks/Taj-Mahal.jpg','Taj Mahal','Taj Mahal','Hagia Sophia','Saint Basil\'s Cathedral','Notre Dame','White marble mausoleum in India'),(5,'../../public/images/landmarks/Colosseum.jpg','Colosseum','Colosseum','Pantheon','Parthenon','Roman Forum','Ancient amphitheater in Rome'),(6,'../../public/images/landmarks/Pyramids-of-Giza.jpg','Pyramids of Giza','Pyramids of Giza','Stonehenge','Machu Picchu','Petra','Ancient wonders in Egypt'),(7,'../../public/images/landmarks/Sydney-Opera-House.jpg','Sydney Opera House','Sydney Opera House','Guggenheim Museum','Louvre','Burj Al Arab','Famous performing arts center in Australia'),(8,'../../public/images/landmarks/Machu-Picchu.jpg','Machu Picchu','Machu Picchu','Chichen Itza','Angkor Wat','Easter Island','Inca citadel in Peru'),(9,'../../public/images/landmarks/Christ-the-Redeemer.jpg','Christ the Redeemer','Christ the Redeemer','Buddha Dordenma','Spring Temple Buddha','Ushiku Daibutsu','Large statue in Rio de Janeiro'),(10,'../../public/images/landmarks/Petra.jpg','Petra','Petra','Cappadocia','Mesa Verde','Alhambra','Rose-red city carved into rock in Jordan');
/*!40000 ALTER TABLE `identify_landmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identify_plant`
--

DROP TABLE IF EXISTS `identify_plant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identify_plant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` longtext NOT NULL,
  `correctAnswer` varchar(45) NOT NULL,
  `option1` varchar(45) NOT NULL,
  `option2` varchar(45) NOT NULL,
  `option3` varchar(45) NOT NULL,
  `option4` varchar(45) NOT NULL,
  `hint` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identify_plant`
--

LOCK TABLES `identify_plant` WRITE;
/*!40000 ALTER TABLE `identify_plant` DISABLE KEYS */;
INSERT INTO `identify_plant` VALUES (1,'../../public/images/plants/daisy.jpeg','Daisy','Sunflower','Daisy','Tulip','Dandelion','Common garden flower with white petals and a yellow center'),(2,'../../public/images/plants/marigold.jpeg','Marigold','Dandelion','Sunflower','Daisy','Marigold','Bright orange or yellow flower often used in gardens and decorations'),(3,'../../public/images/plants/willow-tree.jpeg','Willow Tree','Pine Tree','Maple Tree','Willow Tree','Oak Tree','Tree with long, drooping branches often found near water'),(4,'../../public/images/plants/venus-flytrap.jpeg','Venus Flytrap','Pitcher Plant','Monkey Cup','Venus Flytrap','Sundew','Carnivorous plant that snaps shut to catch insects'),(5,'../../public/images/plants/hyacinth.jpeg','Hyacinth','Violet','Hyacinth','Lavender','Lilac','Fragrant spring flower with dense clusters of blooms'),(6,'../../public/images/plants/hibiscus.jpeg','Hibiscus','Hibiscus','Iris','Orchid','Lily','Tropical flower with large, colorful petals'),(7,'../../public/images/plants/pampas-grass.jpeg','Pampas Grass','Reed','Pampas Grass','Sugarcane','Bamboo','Fast-growing grass with feathery plumes'),(8,'../../public/images/plants/lavender.jpeg','Lavender','Lilac','Iris','Lavender','Violet','Purple flowers with calming fragrance'),(9,'../../public/images/plants/amanita-muscaria.jpg','Amanita muscaria','Amanita muscaria','Morel','Puffball','Fungus','Iconic red mushroom with white spots'),(10,'../../public/images/plants/plum-blossom.jpg','Plum Blossom','Apple Blossom','Plum Blossom','Cherry Blossom','Peach Blossom','Flower associated with early spring and resilience');
/*!40000 ALTER TABLE `identify_plant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identify_sport`
--

DROP TABLE IF EXISTS `identify_sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identify_sport` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` longtext NOT NULL,
  `correctAnswer` varchar(45) NOT NULL,
  `option1` varchar(45) NOT NULL,
  `option2` varchar(45) NOT NULL,
  `option3` varchar(45) NOT NULL,
  `option4` varchar(45) NOT NULL,
  `hint` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identify_sport`
--

LOCK TABLES `identify_sport` WRITE;
/*!40000 ALTER TABLE `identify_sport` DISABLE KEYS */;
INSERT INTO `identify_sport` VALUES (1,'../../public/images/sports/basketball.jpeg','Basketball','Volleyball','Netball','Basketball','Handball','Played with an orange ball and hoops'),(2,'../../public/images/sports/soccer.jpeg','Soccer','Rugby','Soccer','Hockey','American Football','Most popular sport in the world, played with feet'),(3,'../../public/images/sports/kendo.jpeg','Kendo','Squash','Kendo','Badminton','Table Tennis','Japanese martial art of fencing with bamboo swords'),(4,'../../public/images/sports/water-polo.jpeg','Water Polo','Pool Handball','Aqua Polo','Water Polo','Pool Rugby','Team sport played in a pool with a ball and goals'),(5,'../../public/images/sports/ballet.jpeg','Ballet','Gymnastics','Parkour','Ballet','Circus Arts','A classical dance form with graceful movements'),(6,'../../public/images/sports/mma.jpeg','MMA','Karate','MMA','Wrestling','Boxing','Combat sport that allows a variety of fighting techniques'),(7,'../../public/images/sports/snowboarding.jpeg','Snowboarding','Snowboarding','Ice Skating','Sledding','Skiing','Winter sport using a board to ride down snow-covered slopes'),(8,'../../public/images/sports/polo.jpeg','Polo','Golf','Polo','Croquet','Hockey','Sport played on horseback using mallets to hit a ball'),(9,'../../public/images/sports/archery.jpeg','Archery','Fencing','Shooting','Archery','Darts','Uses a bow to shoot arrows at a target'),(10,'../../public/images/sports/fencing.jpeg','Fencing','Kendo','Boxing','Fencing','Karate','Sword-fighting sport with protective gear');
/*!40000 ALTER TABLE `identify_sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_quiz_status`
--

DROP TABLE IF EXISTS `image_quiz_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_quiz_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `landmarks` tinyint NOT NULL,
  `flags` tinyint NOT NULL,
  `animals` tinyint NOT NULL,
  `plants` tinyint NOT NULL,
  `cars` tinyint NOT NULL,
  `sports` tinyint NOT NULL,
  `instruments` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_quiz_status`
--

LOCK TABLES `image_quiz_status` WRITE;
/*!40000 ALTER TABLE `image_quiz_status` DISABLE KEYS */;
INSERT INTO `image_quiz_status` VALUES (18,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `image_quiz_status` ENABLE KEYS */;
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
-- Table structure for table `island_puzzles`
--

DROP TABLE IF EXISTS `island_puzzles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `island_puzzles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scenario` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `clues` json NOT NULL,
  `answer` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `solution` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hint` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `difficulty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `island_puzzles`
--

LOCK TABLES `island_puzzles` WRITE;
/*!40000 ALTER TABLE `island_puzzles` DISABLE KEYS */;
INSERT INTO `island_puzzles` VALUES (1,'The Compass Stone','A stone compass shows: North → East, East → South, South → West, West → ?. Complete the pattern.','[\"The directions rotate clockwise.\", \"After West comes North again.\"]','north','Clockwise order repeats: N → E → S → W → N.','Think of a full 360° rotation.','Easy','island'),(2,'The Pirate’s Coordinates','A map says: \'Start from X(2,3). Move North by 4 and East by 2.\' What are your new coordinates?','[\"Moving North increases Y; East increases X.\", \"(2+2, 3+4).\"]','4,7','New coordinates = (4,7).','Adjust both X and Y directions correctly.','Medium','island'),(3,'The Mirror Map','A mysterious mirror reflects a map showing \'EAST\' as \'TSAE\'. If \'NORTH\' is reflected, what will it show?','[\"A mirror reverses left and right.\", \"Reverse the letters of \'NORTH\'.\"]','HTRON','\'NORTH\' reversed becomes \'HTRON\'.','Imagine reading it in a mirror.','Medium','island'),(4,'The Ancient Statue','Three eyes glow: red, green, and blue. A riddle says \'Mix them to see the truth\'.','[\"Red + Green + Blue (light) = White.\"]','white','RGB mixing of light = White.','Think of additive color mixing (light, not paint).','Medium','island'),(5,'The Sun Dial Puzzle','At sunrise, the shadow points West. At noon, it disappears. At sunset, it points ?. Complete the sequence.','[\"The sun rises in the East and sets in the West.\", \"Shadow direction is opposite to the Sun.\"]','east','At sunset (Sun in West), shadow points East.','Shadow always points opposite to sunlight.','Medium','island'),(6,'The Coconut Code','Coconut shells are arranged: ??? = 9, ?? = 6, ? = ?. Find the value of one shell.','[\"Each ? adds 3.\", \"? = 3.\"]','3','? + ? + ? = 9 → ? = 3.','Look for equal sharing among symbols.','Easy','island'),(7,'The Treasure Riddle','You dig 4 steps East, 3 South, 4 West, and 3 North. Where are you now relative to the starting point?','[\"East-West cancel out, North-South cancel out.\", \"You return to your starting position.\"]','same place','Total displacement = 0. Back to start.','Add opposite directions together.','Medium','island'),(8,'The Crystal Reflection','A triangle marked A–B–C (clockwise) is seen in a mirror. What is the new vertex order?','[\"A mirror reverses the orientation.\", \"Clockwise becomes counterclockwise.\"]','A–C–B','Reflected triangle reverses order → A–C–B.','Mirrors flip direction of rotation.','Hard','island'),(9,'The Message in the Bottle','The bottle has a note: \'Shift each letter by +2\'. Decode: \'DOG\'.','[\"Shift D→F, O→Q, G→I.\", \"Use simple Caesar cipher.\"]','fqi','\'DOG\' shifted +2 becomes \'FQI\'.','Each letter moves forward in the alphabet.','Medium','island'),(10,'The Shell Sequence','You find shells arranged: 1, 1, 2, 3, 5, ?. The inscription says \'The pattern continues\'.','[\"Each term = sum of previous two.\"]','8','Next number after 5 = 3+5 = 8.','It’s the Fibonacci sequence.','Easy','island');
/*!40000 ALTER TABLE `island_puzzles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_puzzles`
--

DROP TABLE IF EXISTS `lab_puzzles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_puzzles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scenario` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `clues` json NOT NULL,
  `answer` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `solution` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hint` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `difficulty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_puzzles`
--

LOCK TABLES `lab_puzzles` WRITE;
/*!40000 ALTER TABLE `lab_puzzles` DISABLE KEYS */;
INSERT INTO `lab_puzzles` VALUES (1,'The Cryogenic Chamber','A cryo-lock shows the code \'–273\'. Nearby, a note reads: \'At this temperature, motion stops.\' What’s the unlock code word?','[\"–273°C is a special temperature in physics.\", \"It’s when atomic motion nearly ceases.\", \"Scientists call it \'absolute zero\'.\"]','absolute zero','–273°C = 0 Kelvin = Absolute Zero.','Think of the coldest possible temperature.','Medium','lab'),(2,'The Glass Cylinder Riddle','Three test tubes are labeled A, B, and C. A floats, B sinks, and C stays suspended in the middle. The password equals the word describing the density of C compared to the liquid.','[\"Floating → less dense.\", \"Sinking → more dense.\", \"Suspended → equal density.\"]','equal','C’s density equals that of the liquid.','What condition makes an object neither sink nor float?','Medium','lab'),(3,'The Coded Beakers','Four beakers are labeled: H, He, Li, Be. A hidden code says: \'Combine their numbers.\' Another clue says: \'Periodic table holds the key.\'','[\"Atomic numbers: H=1, He=2, Li=3, Be=4.\", \"Maybe the password is the concatenation or sum.\"]','1234','Reading atomic numbers in order: 1-2-3-4.','Don’t add, read them in sequence.','Medium','lab'),(4,'The Broken Microscope','The microscope’s lenses are numbered 10×, 20×, and 40×. The screen reads \'Combine for full power\'. A note says: \'It’s a product, not a sum.\'','[\"Total magnification = eyepiece × objective.\", \"Assume eyepiece is 10×, objective 40×.\"]','400','10 × 40 = 400 total magnification.','Think multiplication of magnifying lenses.','Hard','lab'),(5,'The Laser Alignment Puzzle','You find a laser grid blocking the lab door. A nearby console says: \'Red reflects at 90°, Green passes straight, Blue refracts.\' The control panel shows a pattern: ?????. The passcode is the number of beams that reach the end without changing direction.','[\"Red reflects → changes direction.\", \"Green passes straight → unchanged.\", \"Blue refracts → changes direction.\", \"Only Green lasers go straight through.\"]','2','Pattern: R(×), G(✓), B(×), G(✓), R(×) → Only 2 green beams go straight.','Count only the beams that do not change direction.','Medium','lab'),(6,'The Chemical Weigh-In','Three jars labeled \'Carbon\', \'Oxygen\', and \'CO₂\'. Their labels read 12, 16, and __. The keypad expects the missing number.','[\"CO₂ = 1 Carbon + 2 Oxygen atoms.\", \"Atomic masses: 12 + (16×2).\"]','44','12 + 32 = 44.','Add the atomic masses.','Hard','lab'),(7,'The Time Freeze','The lab clock stopped at \'13:37\'. A sticky note says \'It’s Leet time!\'. The code expects a word.','[\"1337 in \'leet speak\' means a word used by hackers.\", \"It reads as \'leet\' or \'elite\'.\"]','elite','1337 → leet → elite.','Think internet \'leet\' code.','Medium','lab'),(8,'The Chemical Mirror','On a mirror, you see a chemical formula that looks like \'COOH\'. But reflected, it still reads \'HOOC\'. The code is what chemists call this type of structure.','[\"It’s symmetric when reversed.\", \"COOH is a functional group that appears at both ends of some molecules.\"]','carboxylic acid','COOH group → Carboxylic acid.','Think organic chemistry functional groups.','Hard','lab'),(9,'The Lab Equation Lock','The lock shows: (6 × 2) + (8 ÷ 4) – 3 = ? A note says: \'Order matters!\'','[\"Follow PEMDAS: Multiply, Divide, Add, Subtract.\", \"(6×2)=12, (8÷4)=2, so 12+2–3.\"]','11','12+2–3 = 11.','Respect the order of operations.','Medium','lab'),(10,'The AI Control Panel','The console says: \'Truth = 1, False = 0.\' Then shows (1 AND 0) OR 1. You must type the resulting code.','[\"Evaluate logic gates: AND first, then OR.\", \"(1 AND 0) = 0 → (0 OR 1) = 1.\"]','1','Logical result = 1.','Use Boolean logic rules.','Hard','lab');
/*!40000 ALTER TABLE `lab_puzzles` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playcount`
--

LOCK TABLES `playcount` WRITE;
/*!40000 ALTER TABLE `playcount` DISABLE KEYS */;
INSERT INTO `playcount` VALUES (1,'plants','31'),(2,'animals','31'),(3,'planets','26'),(4,'technology','24'),(5,'science','23'),(6,'geography','17'),(7,'generalknowledge','14'),(8,'travel','14'),(9,'environment','7'),(10,'space','9');
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
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `space`
--

DROP TABLE IF EXISTS `space`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `space` (
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
-- Dumping data for table `space`
--

LOCK TABLES `space` WRITE;
/*!40000 ALTER TABLE `space` DISABLE KEYS */;
INSERT INTO `space` VALUES (1,'What is the largest planet in our solar system?','Earth','Saturn','Jupiter','Neptune','Jupiter'),(2,'What is the name of our galaxy?','Andromeda','Milky Way','Sombrero','Whirlpool','Milky Way'),(3,'What is the term for a region in space where gravity is so strong that nothing, not even light, can escape?','Neutron star','Black hole','Quasar','Dark star','Black hole'),(4,'What do we call a rock that enters Earth\'s atmosphere and burns up?','Meteor','Comet','Asteroid','Nebula','Meteor'),(5,'What is the hottest planet in our solar system?','Mercury','Venus','Mars','Jupiter','Venus'),(6,'What galaxy is the closest major one to the Milky Way?','Triangulum Galaxy','Whirlpool Galaxy','Andromeda Galaxy','Cartwheel Galaxy','Andromeda Galaxy'),(7,'What is the term for a star system with two stars orbiting each other?','Twin-star galaxy','Binary star system','Dual nova system','Stellar pair','Binary star system'),(8,'What is the name of the first artificial satellite launched into space?','Voyager 1','Sputnik 1','Apollo 11','Explorer 1','Sputnik 1'),(9,'What is the name of the famous space mission that first landed humans on the Moon?','Apollo 11','Voyager 1','Gemini 3','Sputnik 2','Apollo 11'),(10,'What is a supernova?','A new star forming','An exploding star','A black hole','A comet entering Earth\'s atmosphere','An exploding star');
/*!40000 ALTER TABLE `space` ENABLE KEYS */;
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

--
-- Table structure for table `temple_puzzles`
--

DROP TABLE IF EXISTS `temple_puzzles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temple_puzzles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scenario` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `clues` json NOT NULL,
  `answer` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `solution` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hint` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `difficulty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temple_puzzles`
--

LOCK TABLES `temple_puzzles` WRITE;
/*!40000 ALTER TABLE `temple_puzzles` DISABLE KEYS */;
INSERT INTO `temple_puzzles` VALUES (1,'The Stone Symbols','You find a wall engraved with four glowing symbols: ? ? ? ?. A carving reads, \'Light guides the worthy.\'','[\"The inscription mentions \'light\'.\", \"Which of these symbols represents the source of daylight?\"]','sun','The Sun (?) symbolizes light — the first symbol to press.','It shines in the sky each day.','Easy','temple'),(2,'The Path of Shadows','Three doors stand ahead: Past, Present, and Future. A mural shows the sun casting a shadow behind a figure.','[\"A shadow is a remnant of what has already occurred.\", \"The sun is behind the figure — just like the past.\"]','past','The mural implies the \'Past\' door is correct.','The shadow points backward.','Easy','temple'),(3,'The Number Stones','Three stones read: 1984, 2001, 2020. The fourth stone is blank. The inscription says: \'The wisdom of time grows by 17, 19, 21…\'','[\"The differences are +17 and +19.\", \"Add +21 to the last number.\"]','2041','1984 + 17 = 2001, 2001 + 19 = 2020, 2020 + 21 = 2041.','Continue the pattern of increasing gaps.','Medium','temple'),(4,'The Sacred Equation','Hieroglyphs on the wall: ? = 3, ? = 5, ? = 7. Below it reads: ? + ? × ? = ?','[\"Remember: multiplication before addition.\", \"? + (? × ?)\"]','38','3 + (5 × 7) = 3 + 35 = 38.','Follow standard math order.','Medium','temple'),(5,'The Guardian’s Riddle','A statue speaks: \'I am taken from a mine, locked in a wooden case, never released unless you break me. What am I?\'','[\"Used for writing on papyrus.\", \"Dark in color, fragile.\"]','pencil lead','The answer is pencil lead (graphite).','It’s inside every writing stick.','Medium','temple'),(6,'The Sand Timer','An ancient hourglass drips sand. You notice that when it’s half empty, 5 minutes have passed. How long does it take to fully empty?','[\"Half = 5 minutes.\", \"Full = double the time of half.\"]','10','It takes 10 minutes for all the sand to fall.','Double it.','Easy','temple'),(7,'The Four Statues','Four statues face different directions — North, South, East, West. A clue reads: \'The one who faces the rising sun guards the way.\'','[\"The sun rises in the East.\", \"Follow the guardian of dawn.\"]','east','The statue facing East marks the exit.','Where does the sun rise?','Easy','temple'),(8,'The Sacred Code','You see an engraving: I = 1, V = 5, X = 10, L = 50. The text below says \'XL + IX = ?\'','[\"XL = 40, IX = 9.\", \"40 + 9 = ?\"]','49','In Roman numerals, XLIX = 49.','Convert to numbers first.','Medium','temple'),(9,'The Echo Chamber','You shout your name and hear it echo 3 times, each quieter. The last echo fades after 6 seconds. How long between each echo?','[\"3 echoes, total delay = 6 seconds.\", \"The gap between echoes is equal.\"]','2','6 ÷ 3 = 2 seconds apart.','Divide total time by number of echoes.','Medium','temple'),(10,'The Golden Lock','The final gate has a code panel. Symbols glow: ? (1), ? (2), ? (3). The inscription reads: \'Multiply the first two, add the third, and double the result.\'','[\"(1 × 2) + 3 = ?\", \"Then double your total.\"]','10','(1 × 2) + 3 = 5, then doubled = 10.','Follow the steps in order.','Medium','temple');
/*!40000 ALTER TABLE `temple_puzzles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel`
--

DROP TABLE IF EXISTS `travel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel` (
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
-- Dumping data for table `travel`
--

LOCK TABLES `travel` WRITE;
/*!40000 ALTER TABLE `travel` DISABLE KEYS */;
INSERT INTO `travel` VALUES (1,'Which city is known as \'The City of Love\'?','Venice','Prague','Paris','Rome','Paris'),(2,'Which country has the most natural lakes in the world?','Finland','United States','Canada','Russia','Canada'),(3,'Machu Picchu is located in which country?','Mexico','Brazil','Peru','Chile','Peru'),(4,'Which continent is home to the Sahara Desert?','South America','Asia','Africa','Australia','Africa'),(5,'Which famous landmark can you find in Sydney, Australia?','Eiffel Tower','Sydney Opera House','Statue of Liberty','Big Ben','Sydney Opera House'),(6,'Which country is known for the city of Dubai?','Saudi Arabia','Qatar','United Arab Emirates','Kuwait','United Arab Emirates'),(7,'Which country uses the currency \'Yen\'?','Japan','South Korea','Thailand','China','Japan'),(8,'What is the world’s largest ocean?','Atlantic Ocean','Arctic Ocean','Pacific Ocean','Indian Ocean','Pacific Ocean'),(9,'Which European country is famous for tulips, windmills, and canals?','Sweden','Denmark','Belgium','Netherlands','Netherlands'),(10,'What is the capital city of Iceland?','Helsinki','Oslo','Reykjavik','Copenhagen','Reykjavik');
/*!40000 ALTER TABLE `travel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_badges`
--

DROP TABLE IF EXISTS `user_badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_badges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `badge_id` int NOT NULL,
  `unlocked` tinyint(1) DEFAULT '0',
  `progress` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`badge_id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `badge_id` (`badge_id`),
  CONSTRAINT `user_badges_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_badges_ibfk_2` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_badges`
--

LOCK TABLES `user_badges` WRITE;
/*!40000 ALTER TABLE `user_badges` DISABLE KEYS */;
INSERT INTO `user_badges` VALUES (75,18,1,1,100),(76,18,2,0,20),(77,18,3,0,10),(78,18,4,0,0),(79,18,5,0,0),(80,18,6,0,0),(81,18,7,0,0),(82,18,8,0,0),(83,18,9,0,0),(84,18,10,0,0),(85,18,11,0,4);
/*!40000 ALTER TABLE `user_badges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `quizplayed` int NOT NULL,
  `categoryQuizPlayed` int NOT NULL,
  `imageQuizPlayed` int NOT NULL,
  `finishQuizPlayed` int NOT NULL,
  `escapeQuizPlayed` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (18,'Dummy','Pant','root26','anshku037@gmail.com','$2b$12$QHv37gCFilV.BCG655TRsuAggs9DI0cJoxEAdVVt1PY2Rj3ulq8fi',1,1,0,0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words`
--

DROP TABLE IF EXISTS `words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `words` (
  `id` int NOT NULL AUTO_INCREMENT,
  `word` varchar(100) NOT NULL,
  `meaning` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (1,'ambiguous','open to more than one interpretation; not clear or definite'),(2,'diligent','showing care and conscientiousness in one\'s work or duties'),(3,'ephemeral','lasting for a very short time'),(4,'gregarious','fond of company; sociable'),(5,'lucid','expressed clearly; easy to understand'),(6,'prolific','producing much fruit or foliage or many offspring'),(7,'resilient','able to withstand or recover quickly from difficult conditions'),(8,'verbose','using or expressed in more words than are needed'),(9,'zealous','having or showing zeal; passionate'),(10,'alleviate','make suffering, deficiency, or a problem less severe'),(11,'benevolent','well meaning and kindly'),(12,'candid','truthful and straightforward; frank'),(13,'deference','humble submission and respect'),(14,'eloquent','fluent or persuasive in speaking or writing'),(15,'frugal','sparing or economical with regard to money or food'),(16,'hinder','create difficulties for someone or something'),(17,'integrity','the quality of being honest and having strong moral principles'),(18,'juxtapose','place or deal with close together for contrasting effect'),(19,'kinetic','relating to or resulting from motion'),(20,'lethargic','affected by lethargy; sluggish and apathetic'),(21,'meticulous','showing great attention to detail; very careful and precise'),(22,'nostalgia','a sentimental longing or wistful affection for the past'),(23,'obsolete','no longer produced or used; out of date'),(24,'pragmatic','dealing with things sensibly and realistically'),(25,'quandary','a state of perplexity or uncertainty over what to do'),(26,'redundant','not or no longer needed or useful; superfluous'),(27,'sporadic','occurring at irregular intervals or only in a few places'),(28,'taciturn','reserved or uncommunicative in speech; saying little'),(29,'ubiquitous','present, appearing, or found everywhere'),(30,'venerable','accorded a great deal of respect, especially because of age'),(31,'wary','feeling or showing caution about possible dangers or problems'),(32,'xenophobia','dislike of or prejudice against people from other countries'),(33,'yield','produce or provide a natural, agricultural, or industrial product'),(34,'zeal','great energy or enthusiasm in pursuit of a cause or objective'),(35,'acquiesce','accept something reluctantly but without protest'),(36,'belligerent','hostile and aggressive'),(37,'cognizant','having knowledge or awareness'),(38,'dichotomy','a division or contrast between two things'),(39,'eclectic','deriving ideas, style, or taste from a broad and diverse range'),(40,'facilitate','make an action or process easy or easier'),(41,'garrulous','excessively talkative, especially on trivial matters'),(42,'hypothetical','based on or serving as a hypothesis'),(43,'indigenous','originating or occurring naturally in a particular place'),(44,'jovial','cheerful and friendly'),(45,'kaleidoscope','a constantly changing pattern or sequence of elements'),(46,'languid','displaying or having a disinclination for physical exertion'),(47,'magnanimous','very generous or forgiving, especially toward a rival'),(48,'nonchalant','feeling or appearing casually calm and relaxed'),(49,'ostentatious','characterized by vulgar or pretentious display'),(50,'perfunctory','carried out with a minimum of effort or reflection'),(51,'quintessential','representing the most perfect or typical example'),(52,'rhetorical','expressed in terms intended to persuade or impress'),(53,'sycophant','a person who acts obsequiously toward someone important'),(54,'tranquil','free from disturbance; calm'),(55,'unprecedented','never done or known before'),(56,'vindicate','clear of blame or suspicion'),(57,'whimsical','playfully quaint or fanciful, especially in an appealing way'),(58,'yearn','have an intense feeling of longing for something'),(59,'zest','great enthusiasm and energy'),(60,'adverse','preventing success or development; harmful; unfavorable'),(61,'bolster','support or strengthen; prop up'),(62,'convoluted','extremely complex and difficult to follow'),(63,'dearth','a scarcity or lack of something'),(64,'effervescent','vivacious and enthusiastic; bubbly'),(65,'furtive','attempting to avoid notice or attention'),(66,'gratuitous','uncalled for; lacking good reason; unwarranted'),(67,'haphazard','lacking any obvious principle of organization'),(68,'iconoclast','a person who attacks cherished beliefs or institutions'),(69,'jubilant','feeling or expressing great happiness and triumph'),(70,'knack','an acquired or natural skill at performing a task'),(71,'labyrinth','a complicated irregular network of passages or paths'),(72,'malicious','characterized by malice; intending or intended to do harm'),(73,'negligible','so small or unimportant as to be not worth considering'),(74,'opaque','not able to be seen through; not transparent'),(75,'paradigm','a typical example or pattern of something; a model'),(76,'quell','put an end to a rebellion or other disorder'),(77,'reclusive','avoiding the company of other people; solitary'),(78,'scrutinize','examine or inspect closely and thoroughly'),(79,'tenacious','tending to keep a firm hold of something; persistent'),(80,'undermine','lessen the effectiveness, power, or ability of'),(81,'vulnerable','susceptible to physical or emotional attack or harm'),(82,'wistful','having or showing a feeling of vague or regretful longing'),(83,'xenial','of or concerning hospitality to guests'),(84,'yoke','a wooden crosspiece that is fastened over the necks of two animals'),(85,'zenith','the time at which something is most powerful or successful'),(86,'amicable','characterized by friendliness and absence of discord'),(87,'benevolence','the quality of being well meaning; kindness'),(88,'catalyst','a person or thing that precipitates an event'),(89,'diligence','careful and persistent work or effort'),(90,'enigma','a person or thing that is mysterious or difficult to understand'),(91,'facetious','treating serious issues with deliberately inappropriate humor'),(92,'gratitude','the quality of being thankful; readiness to show appreciation'),(93,'hedonist','a person who believes that pleasure is the most important thing'),(94,'impetuous','acting or done quickly and without thought or care'),(95,'jargon','special words or expressions used by a profession or group'),(96,'kindle','light or set on fire; arouse or inspire an emotion or feeling'),(97,'lucid','expressed clearly; easy to understand'),(98,'malleable','able to be hammered or pressed permanently out of shape'),(99,'nuance','a subtle difference in or shade of meaning, expression, or sound'),(100,'oblivious','not aware of or concerned about what is happening around'),(101,'paradox','a seemingly absurd or self-contradictory statement'),(102,'quixotic','exceedingly idealistic; unrealistic and impractical'),(103,'resolute','admirably purposeful, determined, and unwavering'),(104,'sagacious','having or showing keen mental discernment and good judgment'),(105,'tacit','understood or implied without being stated'),(106,'unanimous','fully in agreement'),(107,'venerate','regard with great respect; revere'),(108,'wane','decrease in vigor, power, or extent; become weaker'),(109,'xeric','characterized by or adapted to a dry habitat'),(110,'yonder','at some distance in the direction indicated; over there'),(111,'zany','amusingly unconventional and idiosyncratic'),(112,'abate','become less intense or widespread'),(113,'belligerence','aggressive or warlike behavior'),(114,'cacophony','a harsh, discordant mixture of sounds'),(115,'delineate','describe or portray something precisely'),(116,'ebullient','cheerful and full of energy'),(117,'facade','the face of a building, especially the principal front'),(118,'gargantuan','enormous'),(119,'hierarchy','a system in which members of an organization are ranked'),(120,'idiosyncrasy','a mode of behavior or way of thought peculiar to an individual'),(121,'jocular','fond of or characterized by joking; humorous or playful'),(122,'kowtow','act in an excessively subservient manner'),(123,'languish','grow weak or feeble; suffer from being forced to remain'),(124,'mendacious','not telling the truth; lying'),(125,'nefarious','wicked or criminal'),(126,'obfuscate','make obscure, unclear, or unintelligible'),(127,'panacea','a solution or remedy for all difficulties or diseases'),(128,'quagmire','a soft boggy area of land that gives way underfoot'),(129,'recalcitrant','having an obstinately uncooperative attitude toward authority'),(130,'sanguine','optimistic or positive, especially in a bad situation'),(131,'tangible','perceptible by touch; clear and definite; real'),(132,'ubiquity','the fact of appearing everywhere or of being very common'),(133,'vacillate','alternate or waver between different opinions or actions'),(134,'whet','sharpen the blade of a tool or weapon; excite or stimulate'),(135,'xenophile','a person who is attracted to foreign peoples, cultures, or customs'),(136,'yield','produce or provide a natural, agricultural, or industrial product'),(137,'zephyr','a soft gentle breeze'),(138,'alacrity','brisk and cheerful readiness'),(139,'bucolic','relating to the pleasant aspects of the countryside and country life'),(140,'candor','the quality of being open and honest in expression; frankness'),(141,'demure','reserved, modest, and shy'),(142,'ecstasy','an overwhelming feeling of great happiness or joyful excitement'),(143,'fickle','changing frequently, especially as regards one\'s loyalties'),(144,'glimmer','shine faintly with a wavering light'),(145,'hapless','unfortunate'),(146,'immaculate','perfectly clean, neat, or tidy'),(147,'jaded','tired, bored, or lacking enthusiasm'),(148,'kudos','praise and honor received for an achievement'),(149,'lurid','unpleasantly bright in color; glowing or shining with an unnatural color'),(150,'myriad','a countless or extremely great number of people or things'),(151,'nihilism','the rejection of all religious and moral principles'),(152,'ominous','giving the impression that something bad or unpleasant is going to happen'),(153,'permeate','spread throughout something; pervade'),(154,'quandary','a state of perplexity or uncertainty over what to do in a difficult situation'),(155,'rancor','bitterness or resentfulness, especially when long-standing'),(156,'serendipity','the occurrence and development of events by chance in a happy way'),(157,'trepidation','a feeling of fear or agitation about something that may happen'),(158,'unassuming','not pretentious or arrogant; modest'),(159,'vortex','a whirling mass of water or air in the form of a whirlpool'),(160,'wry','using or expressing dry, especially mocking, humor'),(161,'xenogenesis','the supposed production of offspring entirely unlike the parent'),(162,'yield','give way to arguments, demands, or pressure'),(163,'zestful','characterized by great enthusiasm and energy'),(164,'aesthetic','concerned with beauty or the appreciation of beauty'),(165,'benevolent','well meaning and kindly'),(166,'cogent','clear, logical, and convincing'),(167,'dubious','hesitating or doubting; not to be relied upon'),(168,'eloquence','fluent or persuasive speaking or writing'),(169,'facet','one side of something many-sided, especially of a cut gem'),(170,'garrulous','excessively talkative, especially on trivial matters'),(171,'hackneyed','lacking significance through having been overused'),(172,'idyll','an extremely happy, peaceful, or picturesque period or situation'),(173,'jovial','cheerful and friendly'),(174,'kismet','destiny; fate'),(175,'labyrinthine','like a labyrinth; irregular and twisting'),(176,'mellifluous','sweet or musical; pleasant to hear'),(177,'nadir','the lowest point in the fortunes of a person or organization'),(178,'obsequious','obedient or attentive to an excessive or servile degree'),(179,'pensive','engaged in, involving, or reflecting deep or serious thought'),(180,'quintessence','the most perfect or typical example of a quality or class'),(181,'resilience','the capacity to recover quickly from difficulties; toughness'),(182,'sycophantic','behaving or done in an obsequious way to gain advantage'),(183,'tranquility','the quality or state of being tranquil; calm'),(184,'unfathomable','incapable of being fully explored or understood'),(185,'vindictive','having or showing a strong or unreasoning desire for revenge'),(186,'wanderlust','a strong desire to travel'),(187,'xenodochial','friendly to strangers'),(188,'yearning','a feeling of intense longing for something'),(189,'zealot','a person who is fanatical and uncompromising in pursuit of their ideals'),(190,'abhor','regard with disgust and hatred'),(191,'benevolence','the quality of being well meaning; kindness'),(192,'cacophony','a harsh, discordant mixture of sounds'),(193,'deleterious','causing harm or damage'),(194,'effervesce','give off bubbles; be vivacious and enthusiastic'),(195,'fallacious','based on a mistaken belief'),(196,'gratify','give pleasure or satisfaction'),(197,'harangue','a lengthy and aggressive speech'),(198,'iconoclastic','characterized by attack on cherished beliefs or institutions'),(199,'juxtaposition','the fact of two things being seen or placed close together'),(200,'knavish','dishonest or unscrupulous'),(201,'languor','the state or feeling, often pleasant, of tiredness or inertia'),(202,'meticulous','showing great attention to detail; very careful and precise'),(203,'nonplussed','surprised and confused so much that they are unsure how to react'),(204,'obstreperous','noisy and difficult to control'),(205,'perfidious','deceitful and untrustworthy'),(206,'quiescent','in a state or period of inactivity or dormancy'),(207,'replete','filled or well-supplied with something'),(208,'sagacity','the quality of being sagacious; keen mental discernment'),(209,'tacit','understood or implied without being stated'),(210,'unassailable','unable to be attacked, questioned, or defeated'),(211,'vacuous','having or showing a lack of thought or intelligence; mindless'),(212,'wanton','deliberate and unprovoked; sexually unrestrained'),(213,'xenial','of or concerning hospitality between host and guest'),(214,'yoke','a wooden crosspiece that is fastened over the necks of two animals'),(215,'zealous','having or showing zeal; passionate'),(216,'abstruse','difficult to understand; obscure'),(217,'bucolic','relating to the pleasant aspects of the countryside and country life'),(218,'capricious','given to sudden and unaccountable changes of mood or behavior'),(219,'dearth','a scarcity or lack of something'),(220,'ebullience','the quality of being cheerful and full of energy; exuberance'),(221,'facile','ignoring the true complexities of an issue; superficial'),(222,'garrulity','excessive talkativeness, especially on trivial matters'),(223,'hedonism','the pursuit of pleasure; sensual self-indulgence'),(224,'idiosyncratic','relating to idiosyncrasy; peculiar or individual'),(225,'jubilation','a feeling of great happiness and triumph'),(226,'kaleidoscopic','having complex patterns of colors; constantly changing'),(227,'laconic','using very few words'),(228,'magnanimity','the fact or condition of being magnanimous; generosity'),(229,'nebulous','in the form of a cloud or haze; hazy; vague or ill-defined'),(230,'oblivion','the state of being unaware or unconscious of what is happening'),(231,'paradigmatic','of or serving as a typical example of something'),(232,'querulous','complaining in a petulant or whining manner'),(233,'rescind','revoke, cancel, or repeal a law, order, or agreement'),(234,'sanguinary','involving or causing much bloodshed'),(235,'tantamount','equivalent in seriousness to; virtually the same as'),(236,'ubiquitous','present, appearing, or found everywhere'),(237,'venerate','regard with great respect; revere'),(238,'wheedle','use flattery or coaxing in order to persuade someone to do something'),(239,'xeric','characterized by or adapted to a dry habitat'),(240,'yearn','have an intense feeling of longing for something'),(241,'zany','amusingly unconventional and idiosyncratic'),(242,'acumen','the ability to make good judgments and quick decisions'),(243,'benevolent','well meaning and kindly'),(244,'cajole','persuade someone to do something by sustained coaxing or flattery'),(245,'delineate','describe or portray something precisely'),(246,'eclectic','deriving ideas, style, or taste from a broad and diverse range'),(247,'fathom','understand a difficult problem or an enigmatic person after thought'),(248,'gargantuan','enormous'),(249,'hackneyed','lacking significance through having been overused'),(250,'idyll','an extremely happy, peaceful, or picturesque period or situation'),(251,'jocular','fond of or characterized by joking; humorous or playful'),(252,'kowtow','act in an excessively subservient manner'),(253,'languish','grow weak or feeble; suffer from being forced to remain'),(254,'mendacity','untruthfulness'),(255,'nefarious','wicked or criminal'),(256,'obfuscate','make obscure, unclear, or unintelligible'),(257,'panacea','a solution or remedy for all difficulties or diseases'),(258,'quagmire','a soft boggy area of land that gives way underfoot'),(259,'recalcitrant','having an obstinately uncooperative attitude toward authority'),(260,'sanguine','optimistic or positive, especially in a bad situation'),(261,'tangible','perceptible by touch; clear and definite; real'),(262,'ubiquity','the fact of appearing everywhere or of being very common'),(263,'vacillate','alternate or waver between different opinions or actions'),(264,'whet','sharpen the blade of a tool or weapon; excite or stimulate'),(265,'xenophile','a person who is attracted to foreign peoples, cultures, or customs'),(266,'yield','produce or provide a natural, agricultural, or industrial product'),(267,'zephyr','a soft gentle breeze'),(268,'alacrity','brisk and cheerful readiness'),(269,'bucolic','relating to the pleasant aspects of the countryside and country life'),(270,'candor','the quality of being open and honest in expression; frankness'),(271,'demure','reserved, modest, and shy'),(272,'ecstasy','an overwhelming feeling of great happiness or joyful excitement'),(273,'fickle','changing frequently, especially as regards one\'s loyalties'),(274,'glimmer','shine faintly with a wavering light'),(275,'hapless','unfortunate'),(276,'immaculate','perfectly clean, neat, or tidy'),(277,'jaded','tired, bored, or lacking enthusiasm'),(278,'kudos','praise and honor received for an achievement'),(279,'lurid','unpleasantly bright in color; glowing or shining with an unnatural color'),(280,'myriad','a countless or extremely great number of people or things'),(281,'nihilism','the rejection of all religious and moral principles'),(282,'ominous','giving the impression that something bad or unpleasant is going to happen'),(283,'permeate','spread throughout something; pervade'),(284,'quandary','a state of perplexity or uncertainty over what to do in a difficult situation'),(285,'rancor','bitterness or resentfulness, especially when long-standing'),(286,'serendipity','the occurrence and development of events by chance in a happy way'),(287,'trepidation','a feeling of fear or agitation about something that may happen'),(288,'unassuming','not pretentious or arrogant; modest'),(289,'vortex','a whirling mass of water or air in the form of a whirlpool'),(290,'wry','using or expressing dry, especially mocking, humor'),(291,'xenogenesis','the supposed production of offspring entirely unlike the parent'),(292,'yield','give way to arguments, demands, or pressure'),(293,'zestful','characterized by great enthusiasm and energy'),(294,'aesthetic','concerned with beauty or the appreciation of beauty'),(295,'benevolent','well meaning and kindly'),(296,'cogent','clear, logical, and convincing'),(297,'dubious','hesitating or doubting; not to be relied upon'),(298,'eloquence','fluent or persuasive speaking or writing'),(299,'facet','one side of something many-sided, especially of a cut gem'),(300,'garrulous','excessively talkative, especially on trivial matters'),(301,'hackneyed','lacking significance through having been overused'),(302,'idyll','an extremely happy, peaceful, or picturesque period or situation'),(303,'jovial','cheerful and friendly'),(304,'kismet','destiny; fate'),(305,'labyrinthine','like a labyrinth; irregular and twisting'),(306,'mellifluous','sweet or musical; pleasant to hear'),(307,'nadir','the lowest point in the fortunes of a person or organization'),(308,'obsequious','obedient or attentive to an excessive or servile degree'),(309,'pensive','engaged in, involving, or reflecting deep or serious thought'),(310,'quintessence','the most perfect or typical example of a quality or class'),(311,'resilience','the capacity to recover quickly from difficulties; toughness'),(312,'sycophantic','behaving or done in an obsequious way to gain advantage'),(313,'tranquility','the quality or state of being tranquil; calm'),(314,'unfathomable','incapable of being fully explored or understood'),(315,'vindictive','having or showing a strong or unreasoning desire for revenge'),(316,'wanderlust','a strong desire to travel'),(317,'xenodochial','friendly to strangers'),(318,'yearning','a feeling of intense longing for something'),(319,'zealot','a person who is fanatical and uncompromising in pursuit of their ideals'),(320,'abhor','regard with disgust and hatred'),(321,'benevolence','the quality of being well meaning; kindness'),(322,'cacophony','a harsh, discordant mixture of sounds'),(323,'deleterious','causing harm or damage'),(324,'effervesce','give off bubbles; be vivacious and enthusiastic'),(325,'fallacious','based on a mistaken belief'),(326,'gratify','give pleasure or satisfaction'),(327,'harangue','a lengthy and aggressive speech'),(328,'iconoclastic','characterized by attack on cherished beliefs or institutions'),(329,'juxtaposition','the fact of two things being seen or placed close together'),(330,'knavish','dishonest or unscrupulous'),(331,'languor','the state or feeling, often pleasant, of tiredness or inertia'),(332,'meticulous','showing great attention to detail; very careful and precise'),(333,'nonplussed','surprised and confused so much that they are unsure how to react'),(334,'obstreperous','noisy and difficult to control'),(335,'perfidious','deceitful and untrustworthy'),(336,'quiescent','in a state or period of inactivity or dormancy'),(337,'replete','filled or well-supplied with something'),(338,'sagacity','the quality of being sagacious; keen mental discernment'),(339,'tacit','understood or implied without being stated'),(340,'unassailable','unable to be attacked, questioned, or defeated'),(341,'vacuous','having or showing a lack of thought or intelligence; mindless'),(342,'wanton','deliberate and unprovoked; sexually unrestrained'),(343,'xenial','of or concerning hospitality between host and guest'),(344,'yoke','a wooden crosspiece that is fastened over the necks of two animals'),(345,'zealous','having or showing zeal; passionate'),(346,'abstruse','difficult to understand; obscure'),(347,'bucolic','relating to the pleasant aspects of the countryside and country life'),(348,'capricious','given to sudden and unaccountable changes of mood or behavior'),(349,'dearth','a scarcity or lack of something'),(350,'ebullience','the quality of being cheerful and full of energy; exuberance'),(351,'facile','ignoring the true complexities of an issue; superficial'),(352,'garrulity','excessive talkativeness, especially on trivial matters'),(353,'hedonism','the pursuit of pleasure; sensual self-indulgence'),(354,'idiosyncratic','relating to idiosyncrasy; peculiar or individual'),(355,'jubilation','a feeling of great happiness and triumph'),(356,'kaleidoscopic','having complex patterns of colors; constantly changing'),(357,'laconic','using very few words'),(358,'magnanimity','the fact or condition of being magnanimous; generosity'),(359,'nebulous','in the form of a cloud or haze; hazy; vague or ill-defined'),(360,'oblivion','the state of being unaware or unconscious of what is happening'),(361,'paradigmatic','of or serving as a typical example of something'),(362,'querulous','complaining in a petulant or whining manner'),(363,'rescind','revoke, cancel, or repeal a law, order, or agreement'),(364,'sanguinary','involving or causing much bloodshed'),(365,'tantamount','equivalent in seriousness to; virtually the same as'),(366,'ubiquitous','present, appearing, or found everywhere');
/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-05 23:11:50
