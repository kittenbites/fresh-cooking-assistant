-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: freshCookingAssistant
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `favoriteRecipes`
--

DROP TABLE IF EXISTS `favoriteRecipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favoriteRecipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `recipeId` int(11) NOT NULL,
  `name` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favoriteRecipes`
--

LOCK TABLES `favoriteRecipes` WRITE;
/*!40000 ALTER TABLE `favoriteRecipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `favoriteRecipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produce`
--

DROP TABLE IF EXISTS `produce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produce` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nutrition` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `produceImg` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produce`
--

LOCK TABLES `produce` WRITE;
/*!40000 ALTER TABLE `produce` DISABLE KEYS */;
INSERT INTO `produce` VALUES (1,'Acorn Squash','Select acorn squash that are dull and heavy for their size. Avoid squash with soft spots or cracks.','Store acorn squash in a cool, dry area away from extreme temperatures and sunlight. Acorn squash can stay fresh for up to 3 months.','Fat free, saturated fat free, cholesterol free, sodium free and a good source of vitamin C.','/assets/images/acorn-squash.jpg'),(2,'Apples','Choose firm, shiny, smooth-skinned apples with intact stems. Should smell fresh, not musty.\r\n\r','Refrigerate apples in plastic bag away from strong-odored foods. Use within 3 weeks.','Fat free; saturated fat free; sodium free; cholesterol free; high source of dietary fiber.','/assets/images/apples.jpg'),(3,'Apricots','Choose apricots that are plump, firm and uniformly colored.','Store apricots at room temperature until ripe then in the refrigerator in a plastic bag for 3-5 days.','Low fat, saturated fat free, cholesterol free, sodium free, excellent source of vitamin A and vitamin C, good source of potassium and fiber.','/assets/images/apricots.jpg'),(4,'Asparagus','Choose odorless asparagus stalks with dry, tight tips. Avoid limp or wilted stalks.','Refrigerate asparagus for up to four days by wrapping ends of stalks in wet paper towel and placing in plastic bag.','Fat free; saturated fat free; sodium free; cholesterol free; low calorie; good source of vitamin C; high in folate; good source of vitamin A.','/assets/images/apsaragus.jpg'),(5,'Avocados','Choose avocados with firm skin and no soft spots, firm but yielding to gentle pressure when ripe.','Store unripe avocados in paper bag at room temperature. Refrigerate when ripe for 2-3 days.','Sodium free; cholesterol free; low in saturated fat; sugar free.','/assets/images/avocados.jpg'),(6,'Bananas','Choose bananas with slight green on stem and tip. They should be firm, without bruises. Ripens after harvest.','Store unripe bananas at room temperature. Store ripe bananas in refrigerator for up to two weeks; skin may turn black.','Fat free; saturated fat free; sodium free; cholesterol free; good source of fiber; good source of vitamin C; good source of potassium.','/assets/images/bananas.jpg'),(7,'Beets','Choose beets with firm, smooth skins and non-wilted leaves if still attached. Smaller ones are more tender.','Remove leaves, leaving about an inch of the stems. Use leaves as greens- raw or cooked. Store roots in a plastic bag in refrigerator for up to 3 weeks. Wash before cooking.','Fat free, saturated fat free, cholesterol free, low sodium, excellent source of folate.','/assets/images/beets.jpg'),(8,'Bell Peppers','Choose firm, brightly colored peppers with tight skin that are heavy for their size. Avoid dull, shriveled or pitted peppers.','Refrigerate bell peppers in plastic bag for use within 5 days.','Fat free; saturated fat free; low sodium; cholesterol free; low calorie; high in vitamin C.','/assets/images/bell-peppers.jpg'),(9,'Blackberries','Choose blackberries that are shiny and not bruised or leaking.','Refrigerate blackberries for 3-6 days; wash just before using.','Low fat, saturated fat free, cholesterol free, sodium free and an excellent source of vitamin C and fiber.','/assets/images/blackberries.jpg'),(10,'Blueberries','Choose firm, plump, dry blueberries with dusty blue color and uniform in size.','Refrigerate blueberries for 10 days to 14 days.','Low fat; saturated fat free; sodium free; cholesterol free; good source of dietary fiber; good source of vitamin C.','/assets/images/blueberries.jpg'),(11,'Broccoli','Choose odorless broccoli heads with tight, bluish-green florets.','Refrigerate broccoli and use within 3-5 days.','Low fat; saturated fat free; low sodium; cholesterol free; high in vitamin C; high in folate; good source of dietary fiber; good source of potassium.','/assets/images/broccoli.jpg'),(12,'Brussel Sprouts','Choose firm, compact, bright green brussels sprouts heads. Buy on stalk when possible.','Refrigerate brussels sprouts in plastic bag up to 1 week.','Low fat; saturated fat free; very low sodium; cholesterol free; low calorie; good source of dietary fiber; high in vitamin C; good source of folate.','/assets/images/brussel-sprouts.jpg'),(13,'Butter Lettuce','Avoid butter lettuce heads with wilted leaves.','Store washed and dried lettuce in the refrigerator in plastic bag for up to five days. Store living lettuce in its original container and rinse immediately before using.','Fat free, cholesterol free, sodium free, excellent source of vitamin A, good source of vitamin C and folate.','/assets/images/butter-lettuce.jpg'),(14,'Butternut Squash','Choose squash that is heavy for its size.','Store butternut squash in a cool, dark place for up to a month. Once cut, refrigerate unused portion.','Fat free, cholesterol free, sodium free, good source of fiber, potassium and magnesium, excellent source of vitamins A and C.','/assets/images/butternut-squash.jpg'),(15,'Cabbage','Choose cabbage heads with compact leaves that are heavy for their size.','Refrigerate cabbage for up to 7 days.','Fat free; saturated fat free; very low sodium; cholesterol free; low-calorie; high in vitamin C.','/assets/images/cabbage.jpg'),(16,'Cantaloupe','Choose fragrant, symmetrical cantaloupes, heavy for size with no visible bruises and yellow or cream undertone. Stem end should give to gentle pressure.','Store uncut cantaloupes at room temperature for up to 1 week. Refrigerate cut melon in airtight container up to 5 days.','Fat free; saturated fat free; very low sodium; cholesterol free; high in vitamin A; high in vitamin C; good source of folate.','/assets/images/cantaloupe.jpg'),(17,'Carrots','Choose well-shaped, smooth, firm, crisp carrots with deep color and fresh, green tops. Avoid soft, wilted or split carrots.','Refrigerate carrots in plastic bag with tops removed up to 2 weeks.','Fat free; saturated fat free; low sodium; cholesterol free; excellent source of vitamin A; good source of vitamin C; low calorie.','/assets/images/carrots.jpg'),(18,'Cauliflower','Choose cauliflower with compact, creamy white curds and bright green, firmly attached leaves. Avoid brown spots or loose sections that are spread out.','Refrigerate cauliflower in plastic bag up to 5 days.','Fat free; saturated fat free; very low sodium; cholesterol free; low calorie; high in vitamin C; good source of folate.','/assets/images/cauliflower.jpg'),(19,'Celery','Choose straight, rigid celery stalks with fresh leaves. Avoid pithy, woody or limp stalks. Should smell fresh, not musty.','Refrigerate celery in a plastic bag for a week or more.','Fat free; saturated fat free; low sodium; cholesterol free; low calorie; good source of vitamin C; good source of vitamin A.','/assets/images/celery.jpg'),(20,'Cherries','Select firm, red cherries with stems attached. Avoid soft, shriveled or blemished cherries.','Refrigerate cherries for up to 10 days.','Fat free; saturated fat free; sodium free; cholesterol free; good source of vitamin C; good source of potassium.','/assets/images/cherries.jpg'),(21,'Collard Greens','Choose bunches with dark green leaves with no yellowing.','Refrigerate collard greens in a plastic bag for up to 5 days.','Fat free, cholesterol free, very low sodium, low in calories, excellent source of vitamin A, vitamin C and folate; good source of calcium and fiber.','/assets/images/collard-greens.jpg'),(22,'Corn','Choose ears with green husks, fresh silks and tight rows of kernels.','Refrigerate corn with husks on for use as soon as possible or within 1-2 days.','Low fat; saturated fat free; sodium free; cholesterol free; good source of vitamin C.','/assets/images/corn.jpg'),(23,'Cranberries','Choose cranberries that are firm and not shriveled or decayed.','Refrigerate cranberries for up to 2 months or freeze for future use.','Fat free, cholesterol free, sodium free and a good source of vitamin C and fiber.','/assets/images/cranberries.jpg'),(24,'Cucumbers','Choose firm, well shaped cucumbers with dark green color, heavy for size.','Refrigerate cucumbers in plastic bag up to 1 week.','Fat free; saturated fat free; sodium free; cholesterol free; low calorie; good source of vitamin C.','/assets/images/cucumbers.jpg'),(25,'Eggplants','Choose eggplants that are heavy for their size and without cracks or discolorations.','Store eggplants in the refrigerator crisper drawer. Use within 5-7 days.','Fat free, cholesterol free, sodium free, low in calories, good source of dietary fiber.','/assets/images/egplants.jpg'),(26,'Garlic','Choose garlic that is plump, dry and firm. Fresh garlic should be white to off-white.','Garlic should be stored in a cool, dark place, but not in the refrigerator, and can be kept for several weeks. Clay garlic holders can be used as well.','Fat free, saturated fat free, cholesterol free, sodium free.','/assets/images/garlic.jpg'),(27,'Ginger','Choose robust firm roots with a spicy fragrance and smooth skin. Ginger root should not be cracked or withered.','Store ginger root tightly wrapped in a paper towel or plastic wrap (or put into a plastic bag) in the refrigerator for 2–3 weeks.','Ginger root is low in fat, low in sodium, and cholesterol free. Contains vitamin C, magnesium, and potassium.','/assets/images/ginger.jpg'),(28,'Grapefruit','Choose grapefruits with thin, smooth, firm blemish free skins that are heavy for their size.','Store grapefruits at room temperature for 1 week or under refrigeration for 2 to 3 weeks.','Fat free; saturated fat free; sodium free; cholesterol free; high in vitamin A; high in vitamin C.','/assets/images/grapefruit.jpg'),(29,'Grapes','Choose plump, firm grapes that are firmly attached to the stem.','Store grapes in a plastic bag in the refrigerator for up to 1 week.','Fat free; saturated fat free; very low sodium; cholesterol free.','/assets/images/grapes.jpg'),(30,'Green Beans','Choose fresh, well colored beans that snap easily when bent.','Refrigerate green beans in plastic bag, use within 1 week.','Fat free; saturated fat free; sodium free; cholesterol free; low calorie; good source of fiber; good source of vitamin C.','/assets/images/green-beans.jpg'),(31,'Green Onions','Choose stalks with fresh, green tops and slightly white ends.\n\n','Refrigerate green onions in plastic bag for use as soon as possible.','Fat free; saturated fat free; very low sodium; cholesterol free; low-calorie.\n\n','/assets/images/green-onions.jpg'),(32,'Honeydew melon','Choose well shaped honeydew melons that are nearly spherical. Should have a waxy, not fuzzy surface and feel heavy for size.','Store honeydew melons at room temperature. Once cut, store in refrigerator for up to 2 weeks.','Fat free; saturated fat free; very low sodium; cholesterol free; high in vitamin C.\n\n','/assets/images/honeydew-melon.jpg'),(33,'Hubbard Squash','Choose squash that has a smooth, dry, and dull rind and is free of cracks or soft spots. Choose squash that has a deep color and is heavy for its size. Look for a firm, rounded, dry stem.','Store squash in a cool dry place for up to 3 months.','Low fat, cholesterol free, low in sodium, a good source of fiber, an excellent source of vitamins A and C.','/assets/images/hubbard-squash.jpg'),(34,'Iceberg Lettuce','Choose iceberg lettuce heads with fresh, clean outer leaves and compact inner leaves.','Rinse head upon purchase; dry on paper towels. Refrigerate in plastic bag for use within 1 week.','Fat free; saturated fat free; very low sodium; cholesterol free; low-calorie.','/assets/images/iceberg-lettuce.jpg'),(35,'Kale','Fat free, saturated fat free, cholesterol free, sodium free.','Store kale in a plastic bag in the coldest part of the fridge for 3-5 days.','Low fat, saturated fat free, cholesterol free, low sodium, excellent source of vitamin A and vitamin C, good source of calcium and potassium.','/assets/images/kale.jpg'),(36,'Kiwifruit','Choose slightly firm kiwifruits with a rough, fuzzy skin.','Store un-ripened kiwifruits in plastic bags under refrigeration for up to 6 weeks.','Low fat; saturated fat free; sodium free; cholesterol free; good source of fiber; high in vitamin C; good source of potassium; good source of vitamin E.','/assets/images/kikifruit.jpg'),(37,'Leeks','Choose firm, crisp stalks with as much white and light green regions as possible. Avoid leeks with yellow or withered tops.','Refrigerate unwashed leeks in plastic bag for up to two weeks. Rinse before using.','Fat free, cholesterol free, very low sodium, excellent source of vitamin A, good source of vitamin C and folate.','/assets/images/leeks.jpg'),(38,'Lemons','Choose lemons with firm, thin, smooth skin, heavy for size.','Refrigerate lemons for up to 2 weeks.\r\n\r','Fat free; saturated fat free; sodium free; cholesterol free; low calorie; high in vitamin C.','/assets/images/lemons.jpg'),(39,'Lettuce','Choose lettuce with crisp leaves. Avoid brown edges','After purchase, rinse well and dry with paper towels. Refrigerate leaf lettuce in plastic bag up to 1 week.','Fat free; saturated fat free; very low sodium; cholesterol free; low calorie; high in vitamin A; good source of folate.','/assets/images/lettuce.jpg'),(40,'Lima Beans','Choose dried beans or beans canned with less sodium. Select dried beans that are dry, firm, clean, uniform in color and not shriveled.','Store dried beans at room temperature, in a closed container to protect from moisture and pests. Store canned beans at room temperature – use before date on can.','Fat free; saturated fat free; sodium free; cholesterol free; high in dietary fiber; high in folate; good source of potassium.','/assets/images/lima-beans.jpg'),(41,'Limes','Choose limes with smooth, shiny skin, heavy for size.','Refrigerate limes for up to 2 weeks.','Fat free; saturated fat free; sodium free; cholesterol free; low calorie; high in vitamin C.','/assets/images/limes.jpg'),(42,'Mangos','Choose slightly firm mangos with sweet aroma. Avoid sap on skin.','Store mangos at room temperature 1-2 days. Refrigerate peeled, cut mangos.','Low fat; saturated fat free; sodium free; cholesterol free; high in vitamin A; good source of vitamin C.','/assets/images/mangos.jpg'),(43,'Mushrooms','Choose well shaped mushrooms with firm texture. Avoid spots and slime.','Refrigerate mushrooms in original container or paper bag up to 1 week.','Fat free; saturated fat free; very low sodium; cholesterol free; low calorie; high in Riboflavin; good source of niacin; good source of copper; good source of pantothenate.','/assets/images/mushrooms.jpg'),(44,'Nectarines','Choose firm nectarines with smooth skin.','Store unripe nectarines in paper bag until ripe, then store at room temperature for use within 2-3 days.','Low fat; saturated fat free; sodium free; cholesterol free; good source of vitamin C.','/assets/images/nectarine.jpg'),(45,'Okra','Choose brightly colored firm pods.','Store okra in refrigerator for up to 3 days.','Fat free, cholesterol free, very low sodium, low calorie, excellent source of vitamin C, good source of folate, magnesium and fiber.','/assets/images/okra.jpg'),(46,'Onions','Choose onions that are firm and dry with bright, smooth outer skins.','Store whole onions in a cool, dark, well ventilated place for use within 4 weeks. Refrigerate cut onions in a tightly sealed container for use within 2-3 days.\n\n','Fat free; saturated fat free; very low sodium; cholesterol free; high in vitamin C; good source of dietary fiber.','/assets/images/onions.jpg'),(47,'Oranges','Choose oranges with firm, smooth skins, heavy for size.','Store oranges at room temperature for 1-2 days. Refrigerate for 1-2 weeks.','Fat free; saturated fat free; sodium free; cholesterol free; good source of dietary fiber; high in vitamin C.','/assets/images/oranges.jpg'),(48,'Parsnips','Choose parsnips that are firm and dry without pits. Smaller ones may be more flavorful and tender.','Refrigerate parsnips unwashed in an unsealed bag for 3 weeks or more.','Fat free, cholesterol free, very low sodium, good source of vitamin C, folate and fiber.','/assets/images/parsnips.jpg'),(49,'Peaches','Choose peaches with firm, fuzzy skins that yield to gentle pressure when ripe. Avoid blemishes.','Store unripe peaches in paper bag. When ripe, store at room temperature for use within 1-2 days.','Low fat; saturated fat free; sodium free; cholesterol free; good source of vitamin C.','/assets/images/peaches.jpg'),(50,'Pears','Chose firm pears, then “Check the Neck for Ripeness”™ daily by applying gentle pressure to the stem end of the pear with your thumb. When it yields to the pressure, it’s ready to eat.','Store unripened pears in paper bag at room temperature. Refrigerate ripe pears.','Fat free; saturated fat free; sodium free; cholesterol free; excellent source of dietary fiber; good source of vitamin C.','/assets/images/pears.jpg'),(51,'Peas','Choose firm, bright green, medium-sized pods with no signs of decay or wilting.','Refrigerate peas in a perforated plastic bag for 3-5 days. Shell peas immediately before using.','Fat free, cholesterol free, sodium free, excellent source of vitamin C, good source of vitamin A, folate and dietary fiber.','/assets/images/peas.jpg'),(52,'Pineapple','Choose pineapples with dark green leaves, heavy for size. Avoid soft or dark spots and dry-looking leaves.','Eat as soon as possible. Refrigerate cut pineapple for 2-3 days.','Fat free; saturated fat free; very low sodium; cholesterol free; high in vitamin C.','/assets/images/pineapple.jpg'),(53,'Plums','Choose plump plums with smooth skins. Avoid bruises and soft spots.','Store unripe plums in paper bag until ripe. Refrigerate ripe plums.','Fat free; saturated fat free; sodium free; cholesterol free; good source of vitamin C.','/assets/images/plums.jpg'),(54,'Potatoes','All potato varieties should be clean, firm, smooth, dry and uniform in size.','Store potatoes in a cool, dark, well ventilated place for use within 3-5 weeks.','Fat free; saturated fat free; sodium free; cholesterol free; high in vitamin C; good source of potassium.','/assets/images/potatoes.jpg'),(55,'Pumpkin','Select pumpkins that are firm and heavy for their size.','Store pumpkins in a cool, dark place for up to two months.','Fat free, cholesterol free, sodium free, good source of vitamin C, excellent source of vitamin A.','/assets/images/pumpkin.jpg'),(56,'Radishes','Choose smooth, brightly colored, medium sized radishes. Attached tops should be green and fresh looking.','Refrigerate radishes in plastic bag for use within 1 week. Remove tops before storing.','Fat free; saturated fat free; low sodium; cholesterol free; low calorie; high in vitamin C.','/assets/images/radishes.jpg'),(57,'Raspberries','Choose dry, plump, firm raspberries. Avoid wet or moldy berries.','Do not wash raspberries until ready to eat. Refrigerate for use within 1-2 days.','Fat free; saturated fat free; cholesterol free; high in dietary fiber; high in vitamin C.','/assets/images/raspberries.jpg'),(58,'Rhubarb','Choose flat stalks that are not curled or limp. Deep red stalks are sweeter and richer; tenderness is not related to size.','Refrigerate rhubarb in a plastic bag; use within a few days.','Fat free, cholesterol free, sodium free, low in calories.','/assets/images/rhubarb.jpg'),(59,'Romaine Lettuce','Choose closely bunched, fresh-looking leaves. Avoid brown, wilting edges.','Rinse and dry romaine lettuce thoroughly on paper towels. Refrigerate in plastic bag for use within 1 week.','Low fat; saturated fat free; sodium free; cholesterol free; low calorie; high in vitamin A; good source of folate.','/assets/images/romaine-lettuce.jpg'),(60,'Rutabagas','Choose rutabagas that are heavy for their size and free of soft spots or cracks.','Refrigerate rutabagas in a plastic bag for up to 3 weeks.','Fat free, cholesterol free, very low sodium, excellent source of vitamin C.','/assets/images/rutabagas.jpg'),(61,'Snap Peas','Choose peas that are bright green, firm and free from blemishes.','For the sweetest flavor, serve peas as soon after purchase as possible. Store peas in the shell in the crisper section of the refrigerator in a perforated plastic bag. Use within 2 days.','Excellent source of vitamin C and a good source of vitamin K.','/assets/images/snap-peas.jpg'),(62,'Snow Peas','Snow peas should be shiny and flat, with very small peas that are barely visible through the pod.','It\'s best to use snow peas as soon as possible. Store unwashed peas in a perforated bag in the refrigerator for up to 5 days.','Excellent source of vitamin C and a good source of iron and manganese.','/assets/images/snow-peas.jpg'),(63,'Spinach','Choose fresh, crisp, green bunches with no evidence of insect damage.','Loosely wrap spinach in damp paper towel. Refrigerate in plastic bag for use within 3-5 days.','Fat free; saturated fat free; cholesterol free; low calorie; high in dietary fiber; excellent source of fiber; high in vitamin A; high in vitamin C; high in iron, high in folate; good source of magnesium.','/assets/images/spinach.jpg'),(64,'Strawberries','Choose shiny, firm strawberries with a bright red color. Caps should be fresh, green and intact. Avoid shriveled, mushy or leaky berries.','Do not wash strawberries until ready to eat. Store in refrigerator for 1-3 days.','Fat free; saturated fat free; sodium free; cholesterol free; high in vitamin C; high in folate.\n\n','/assets/images/strawberries.jpg'),(65,'Summer Squash','For all squash varieties, choose glossy, small- to medium-sized squash, heavy for size.','Refrigerate summer squash for use within 3-4 days.','Fat free; saturated fat free; sodium free; cholesterol free; low calorie; high in vitamin C.','/assets/images/summer-squash.jpg'),(66,'Sweet Potatoes','Choose firm, small- to medium-sized potatoes with smooth skin. Avoid cracks, soft spots and blemishes.','Store sweet potatoes in a cool, dark place for use within 3-5 weeks.','Fat free; saturated fat free; low sodium; cholesterol free; good source of dietary fiber; high in vitamin A; high in vitamin C; good source of potassium.','/assets/images/sweet-potatoes.jpg'),(67,'Swiss Chard','Select chard with fresh green leaves; avoid those that are yellow or discolored.','Select chard with fresh green leaves; avoid those that are yellow or discolored.','Fat free, cholesterol free, good source of magnesium, excellent source vitamins A and C.','/assets/images/swiss-chard.jpg'),(68,'Tomatillos','Look for dry, hard tomatillos with tightly fitting husks that are dry and free of mold.','Refrigerate tomatillos loose or in an open container in the crisper drawer for 2-3 weeks.','Low fat, saturated fat free, cholesterol free, sodium free, low calorie, a good source of vitamin C.','/assets/images/tomatillos.jpg'),(69,'Tomatoes','Choose tomatoes with bright, shiny skins and firm flesh.','Store at room temperature away from direct sunlight, for use within 1 week after ripe. Tomatoes taste best if not refrigerated; refrigerate only if you can’t use them before they spoil.','Low fat; saturated fat free; very low sodium; cholesterol free; low calorie; high in vitamin A; high in vitamin C; good source of potassium.','/assets/images/tomatoes.jpg'),(70,'Turnips','Select pearly, heavy turnips without soft spots and fresh leaves if still attached. Small to medium ones are sweetest.','Store turnips in the refrigerator in a plastic bag for only a few days since they get bitter with prolonged storage.','Fat free, cholesterol free, low sodium, excellent source of vitamin C.\n\n','/assets/images/turnips.jpg'),(71,'Watermelon','Choose symmetrical watermelons with dried stems and yellowish undersides, heavy for size.','Store whole watermelons at room temperature. Refrigerate cut watermelons in airtight container for use within 5 days.','Fat free; saturated fat free; sodium free; cholesterol free; high in vitamin A; high in vitamin C.','/assets/images/watermelon.jpg'),(72,'Zucchini','Look for zucchini with a slightly prickly, but shinny skin. The skin should be firm and free of cuts and bruises.','Store zucchini in a plastic bag in the refrigerator for 4 to 5 days. Do not wash it until you are ready to use it. Cooked zucchini can be stored in the refrigerator as well, but should be used with in 2 days.','Fat free, saturated fat free, sodium free, cholesterol free, low-calorie, high in vitamin C.','/assets/images/zucchini.jpg');
/*!40000 ALTER TABLE `produce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produceSeasons`
--

DROP TABLE IF EXISTS `produceSeasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produceSeasons` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `produceId` smallint(5) unsigned NOT NULL,
  `seasonId` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produceSeasons`
--

LOCK TABLES `produceSeasons` WRITE;
/*!40000 ALTER TABLE `produceSeasons` DISABLE KEYS */;
INSERT INTO `produceSeasons` VALUES (73,1,3),(74,1,4),(75,2,1),(76,2,2),(77,2,3),(78,2,4),(79,3,1),(80,3,2),(81,4,1),(82,5,1),(83,5,2),(84,5,4),(85,6,1),(86,6,2),(87,6,3),(88,6,4),(89,7,2),(90,7,3),(91,7,4),(92,8,2),(93,8,3),(94,9,2),(95,10,2),(96,11,1),(97,11,3),(98,12,3),(99,12,4),(100,13,1),(101,13,3),(102,14,3),(103,14,4),(104,15,1),(105,15,3),(106,15,4),(107,16,2),(108,17,1),(109,17,2),(110,17,3),(111,17,4),(112,18,3),(113,19,1),(114,19,2),(115,19,3),(116,19,4),(117,20,2),(118,21,1),(119,21,3),(120,21,4),(121,22,2),(122,23,3),(123,24,2),(124,25,2),(125,26,1),(126,26,2),(127,26,3),(128,27,3),(129,28,4),(130,29,3),(131,30,2),(132,30,3),(133,31,1),(134,31,3),(135,31,4),(136,32,2),(137,33,3),(138,33,4),(139,34,1),(140,34,3),(141,35,1),(142,35,3),(143,35,4),(144,36,1),(145,36,3),(146,36,4),(147,37,4),(148,38,1),(149,38,2),(150,38,3),(151,38,4),(152,39,1),(153,39,3),(154,40,2),(155,41,1),(156,41,2),(157,41,3),(158,41,4),(159,42,2),(160,42,3),(161,43,1),(162,43,3),(163,44,2),(164,45,2),(165,46,1),(166,46,3),(167,46,4),(168,47,4),(169,48,3),(170,48,4),(171,49,2),(172,50,3),(173,50,4),(174,51,1),(175,51,3),(176,52,1),(177,52,3),(178,52,4),(179,53,2),(180,54,3),(181,54,4),(182,55,3),(183,55,4),(184,56,1),(185,56,3),(186,57,2),(187,57,3),(188,58,1),(189,59,1),(190,59,3),(191,60,3),(192,60,4),(193,61,1),(194,61,3),(195,62,1),(196,62,3),(197,63,1),(198,63,3),(199,64,1),(200,64,2),(201,65,2),(202,66,3),(203,66,4),(204,67,1),(205,67,3),(206,67,4),(207,68,2),(208,69,2),(209,70,1),(210,70,3),(211,70,4),(212,71,2),(213,72,2);
/*!40000 ALTER TABLE `produceSeasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seasons`
--

DROP TABLE IF EXISTS `seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seasons` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `name` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seasons`
--

LOCK TABLES `seasons` WRITE;
/*!40000 ALTER TABLE `seasons` DISABLE KEYS */;
INSERT INTO `seasons` VALUES (1,'2020-03-20','2020-06-20','Spring'),(2,'2020-06-21','2020-09-21','Summer'),(3,'2019-09-23','2019-12-21','Fall'),(4,'2019-12-22','2020-03-19','Winter');
/*!40000 ALTER TABLE `seasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'OldManjenkins420','2019-12-05 19:55:59'),(2,'APoliteUserName','2019-12-05 19:56:39');
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

-- Dump completed on 2019-12-05 15:01:28
