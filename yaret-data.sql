-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: ret
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Dumping data for table `eventnames`
--

LOCK TABLES `eventnames` WRITE;
/*!40000 ALTER TABLE `eventnames` DISABLE KEYS */;
INSERT INTO `eventnames` VALUES 
('Champions des Feuersturms',1,'de_DE',7200),
('Champions of the Firestorm',1,'en_US',7200),
('Champions de la Tempête de feu',1,'fr_FR',7200),
('Eiseskalte Geister',2,'de_DE',7200),
('Frostbitten Spirits',2,'en_US',7200),
('Esprits gelés',2,'fr_FR',7200),
('Das Juwel von Brevane',3,'de_DE',7200),
('The Jewel of Brevane',3,'en_US',7200),
('Le Joyau de Tynandra',3,'fr_FR',7200),
('Auge um Auge',4,'de_DE',7200),
('An Eye for an Eye',4,'en_US',7200),
('Œil pour œil...',4,'fr_FR',7200),
('Der Fluch',5,'de_DE',6840),
('The Blight',5,'en_US',6840),
('Le Fléau',5,'fr_FR',6840),
('Die Silberne Armee',6,'de_DE',7200),
('The Silver Army',6,'en_US',7200),
('L\'Armée d\'airain',6,'fr_FR',7200),
('Verstrickt',7,'de_DE',7200),
('Entangled',7,'en_US',7200),
('Enchevêtré',7,'fr_FR',7200),
('Die Hexenstunde',8,'de_DE',7200),
('The Witching Hour',8,'en_US',7200),
('L\'heure de la sorcière',8,'fr_FR',7200),
('Ein Sturm zieht auf',9,'de_DE',7200),
('Storm Rising',9,'en_US',7200),
('La Tempête gronde',9,'fr_FR',7200),
('Gier erfüllt die Schlucht',10,'de_DE',2700),
('Greed in the Gorge',10,'en_US',2700),
('Cupidité dans les Gorges',10,'fr_FR',2700),
('Visionen einer vergangenen Zukunft',11,'de_DE',7200),
('Visions of Future Past',11,'en_US',7200),
('Visions du futur révolu',11,'fr_FR',7200),
('Güldenglut',12,'de_DE',7200),
('Golden Embers',12,'en_US',7200),
('Braises dorées',12,'fr_FR',7200),
('Aus der Grube',13,'de_DE',7200),
('From the Pit',13,'en_US',7200),
('De la Fosse',13,'fr_FR',7200),
('Wüstenwind',14,'de_DE',7200),
('Desert Wind',14,'en_US',7200),
('Le Vent du désert',14,'fr_FR',7200),
('Scharmützel im Moor',15,'de_DE',1800),
('Skirmish in the Moor',15,'en_US',1800),
('Escarmouche à Mornelande',15,'fr_FR',1800),
('Tanz der Knochen',16,'de_DE',7200),
('The Bone Dance',16,'en_US',7200),
('La danse des os',16,'fr_FR',7200),
('Fressrausch',17,'de_DE',7200),
('Feeding Frenzy',17,'en_US',7200),
('Boulimie frénétique',17,'fr_FR',7200),
('Feuer der Wiedergeburt',18,'de_DE',7200),
('Fires of Rebirth',18,'en_US',7200),
('Flammes de la renaissance ',18,'fr_FR',7200),
('Plötzlicher Schwarm',19,'de_DE',7200),
('Sudden Swarm',19,'en_US',7200),
('Essaim soudain',19,'fr_FR',7200),
('Die Ebbe des Flutenfürsten',20,'de_DE',7200),
('The Ebb of the Tidelord',20,'en_US',7200),
('Le flux des Seigneurs des Marées',20,'fr_FR',7200),
('Sand-Verehrung',21,'de_DE',7200),
('Sand Worship',21,'en_US',7200),
('Vénérer le sable',21,'fr_FR',7200),
('Wogen des Wahnsinns',22,'de_DE',7200),
('Waves of Madness',22,'en_US',7200),
('Vagues de folie',22,'fr_FR',7200),
('Kain erhebt sich',23,'de_DE',7200),
('Raising Kain',23,'en_US',7200),
('L\'élévation de Kain',23,'fr_FR',7200),
('Höllisches Erwachen',24,'de_DE',7200),
('Infernal Awakening',24,'en_US',7200),
('Éveil infernal',24,'fr_FR',7200),
('Systematische Zerstörung',25,'de_DE',7200),
('Systematic Deconstruction',25,'en_US',7200),
('Déconstruction systématique',25,'fr_FR',7200),
('Inselsturm',26,'de_DE',7200),
('Island Storm',26,'en_US',7200),
('Orage insulaire',26,'fr_FR',7200),
('Hammer und Flamme',27,'de_DE',7200),
('Hammer and Flame',27,'en_US',7200),
('Marteau et flamme',27,'fr_FR',7200),
('Schlurferhorden',28,'de_DE',7200),
('Shambling Hordes',28,'en_US',7200),
('Hordes peu vivaces',28,'fr_FR',7200),
('Feuer des Leidens',29,'de_DE',7200),
('Fires of Suffering',29,'en_US',7200),
('Feux de la souffrance',29,'fr_FR',7200),
('Scharmützel im Sand',30,'de_DE',1800),
('Skirmish in the Sands',30,'en_US',1800),
('Escarmouche des sables',30,'fr_FR',1800),
('Geheimnisse der Tiefe',31,'de_DE',7200),
('Secrets of the Deep',31,'en_US',7200),
('Secrets des profondeurs',31,'fr_FR',7200),
('Gefahr im Gebirge',32,'de_DE',7200),
('Run to the Hills',32,'en_US',7200),
('Fuir vers les collines',32,'fr_FR',7200),
('Das Leben einer Sumpfmutter',33,'de_DE',7200),
('Life of a Bog Mother',33,'en_US',7200),
('La vie d\'une Mère des marais',33,'fr_FR',7200),
('Kalt bis auf die Knochen',34,'de_DE',7200),
('Chilled to the Bone',34,'en_US',7200),
('Glacé jusqu\'aux os',34,'fr_FR',7200),
('Die Schlacht von Kap Jul',35,'de_DE',7200),
('The Battle of Cape Jule',35,'en_US',7200),
('La bataille de Cap Yule',35,'fr_FR',7200),
('Runengebundene Technologie',36,'de_DE',7200),
('Runebound Technology',36,'en_US',7200),
('Technologie runique',36,'fr_FR',7200),
('Geißel des Sandes',37,'de_DE',7200),
('Scourge of the Sands',37,'en_US',7200),
('Fléau des sables',37,'fr_FR',7200),
('Festungsverteidigung: Phase Eins',38,'de_DE',7200),
('Fortress Defense: Phase One',38,'en_US',7200),
('Défense de la forteresse : Phase 1',38,'fr_FR',7200),
('Stöcke und Steine',39,'de_DE',7200),
('Sticks and Stones',39,'en_US',7200),
('Bâtons et pierres',39,'fr_FR',7200),
('Prinz der Erde',40,'de_DE',7200),
('Prince of Earth',40,'en_US',7200),
('Prince de la Terre',40,'fr_FR',7200),
('Waldkönig',41,'de_DE',7200),
('Forest King',41,'en_US',7200),
('Roi de la forêt',41,'fr_FR',7200),
('Scharmützel auf den Gipfeln',42,'de_DE',1800),
('Skirmish in the Peak',42,'en_US',1800),
('Escarmouche au Pic du Pin de Fer',42,'fr_FR',1800),
('Festungsverteidigung: Phase Drei',43,'de_DE',7200),
('Fortress Defense: Phase Three',43,'en_US',7200),
('Défense de la forteresse : Phase 3',43,'fr_FR',7200),
('Ebenenfrost',44,'de_DE',7200),
('Planar Chill',44,'en_US',7200),
('Frisson planaire',44,'fr_FR',7200),
('Die Hand des Todes',45,'de_DE',7200),
('The Hand of Death',45,'en_US',7200),
('La Main de la Mort',45,'fr_FR',7200),
('Leben und sterben lassen',46,'de_DE',7200),
('Live and Let Die',46,'en_US',7200),
('Vivre et laisser mourir',46,'fr_FR',7200),
('Die Feuerprobe',47,'de_DE',7200),
('The Crucible',47,'en_US',7200),
('Le Creuset',47,'fr_FR',7200),
('Geschmiedet im Zorn',48,'de_DE',7200),
('Forged in Rage',48,'en_US',7200),
('Forgé dans la fureur',48,'fr_FR',7200),
('Gebirgsflut',49,'de_DE',7200),
('Mountain Flood',49,'en_US',7200),
('Raz-de-marée dans la montagne',49,'fr_FR',7200),
('Die ungebärdige Seuche',50,'de_DE',7200),
('The Wild Plague',50,'en_US',7200),
('Le fléau sauvage',50,'fr_FR',7200),
('Feuriges Hufeklappern',51,'de_DE',7200),
('Fiery Hoofsteps',51,'en_US',7200),
('Sabotage du plan centaure',51,'fr_FR',7200),
('Der Weg der Todesfeen',52,'de_DE',7200),
('Where the Death Fae Go',52,'en_US',7200),
('Là où vont les fées de la Mort',52,'fr_FR',7200),
('Der Stich des Sandes',53,'de_DE',7200),
('Sting of the Sand',53,'en_US',7200),
('Le dard du sable',53,'fr_FR',7200),
('Geflügelter Schrecken',54,'de_DE',7200),
('Winged Horror',54,'en_US',7200),
('Horreur ailée',54,'fr_FR',7200),
('Doppelte Gefahr',55,'de_DE',7200),
('Double Danger',55,'en_US',7200),
('Double danger',55,'fr_FR',7200),
('Das Handwerk des Krieges',56,'de_DE',7200),
('The Craft of Conflict',56,'en_US',7200),
('L\'Art du Conflit',56,'fr_FR',7200),
('Rückkehr der Gefallenen',57,'de_DE',7200),
('Return Of The Fallen',57,'en_US',7200),
('Le retour des déchus',57,'fr_FR',7200),
('Armee des Windes',58,'de_DE',7200),
('Army of the Wind',58,'en_US',7200),
('L\'Armée du Vent',58,'fr_FR',7200),
('Schlacht der Waldlande',59,'de_DE',7200),
('Battle of the Woodlands',59,'en_US',7200),
('La bataille des bois',59,'fr_FR',7200),
('Fleischungetüm',60,'de_DE',7200),
('Flesh Monstrosity',60,'en_US',7200),
('Monstruosité de chair',60,'fr_FR',7200),
('Unwahrscheinliche Bündnisse',61,'de_DE',7200),
('Unlikely Alliances',61,'en_US',7200),
('Alliances improbables',61,'fr_FR',7200),
('Auf der Jagd',62,'de_DE',7200),
('On the Hunt',62,'en_US',7200),
('En chasse',62,'fr_FR',7200),
('Seelensammlung',63,'de_DE',7200),
('Gathering of Souls',63,'en_US',7200),
('Rassemblement d’âmes',63,'fr_FR',7200),
('Schlangen-Sturm',64,'de_DE',7200),
('Serpent Storm',64,'en_US',7200),
('Le serpent de la Tempête',64,'fr_FR',7200),
('Schrecken von oben',65,'de_DE',7200),
('Terror Above',65,'en_US',7200),
('Terreur dans le ciel',65,'fr_FR',7200),
('Das Feld der Schreie',66,'de_DE',7200),
('Field Of Screams',66,'en_US',7200),
('Champ de hurlements',66,'fr_FR',7200),
('Ungeladene Gäste',67,'de_DE',7200),
('Party Crashers',67,'en_US',7200),
('Trouble-fêtes',67,'fr_FR',7200),
('Im Griff des Goldes',68,'de_DE',7200),
('In Golden\'s Grasp',68,'en_US',7200),
('Dans la poigne d\'Or',68,'fr_FR',7200),
('Herabsinkende Nacht',69,'de_DE',7200),
('Descending Night',69,'en_US',7200),
('Tombée de la nuit',69,'fr_FR',7200),
('Lady im See',70,'de_DE',7200),
('Lady in the Lake',70,'en_US',7200),
('Dame du lac',70,'fr_FR',7200),
('Die Saat der Veränderung',71,'de_DE',7200),
('The Seed of Change',71,'en_US',7200),
('La graine de la prophétie',71,'fr_FR',7200),
('Operation: Land in Sicht',72,'de_DE',7200),
('Operation: Landfall',72,'en_US',7200),
('Opération : Débarquement',72,'fr_FR',7200),
('Himmelsschrecken',73,'de_DE',7200),
('Terror of the Sky',73,'en_US',7200),
('La Terreur du ciel',73,'fr_FR',7200),
('Todesranken',74,'de_DE',7200),
('Deathly Tendrils',74,'en_US',7200),
('Vrilles mortelles',74,'fr_FR',7200),
('Erschütterte Erde',75,'de_DE',7200),
('Shattered Earth',75,'en_US',7200),
('Terre fracassée',75,'fr_FR',7200),
('Die Rettung von Laternenhaken',76,'de_DE',7200),
('Saving Lantern Hook',76,'en_US',7200),
('Sauver Saillant de Lanterne',76,'fr_FR',7200),
('Die Schneemeute',77,'de_DE',7200),
('The Snow Pack',77,'en_US',7200),
('La Meute des neiges',77,'fr_FR',7200),
('Gefürchteter Ritter',78,'de_DE',7200),
('Dreaded Knight',78,'en_US',7200),
('Chevalier de terreur',78,'fr_FR',7200),
('Nehmt das alles zurück!',79,'de_DE',7200),
('Take It All Back!',79,'en_US',7200),
('Reprenez tout !',79,'fr_FR',7200),
('Hexe des Westens',80,'de_DE',7200),
('Witch of the West',80,'en_US',7200),
('Sorcière de l\'Ouest',80,'fr_FR',7200),
('Untoten-Bürde',81,'de_DE',7200),
('Undead Burden',81,'en_US',7200),
('Fardeau mort-vivant',81,'fr_FR',7200),
('Der Marsch der Steinarmee',82,'de_DE',7200),
('March of the Stone Army',82,'en_US',7200),
('La marche de l\'Armée de pierre',82,'fr_FR',7200),
('Die Glut von Silberwald',83,'de_DE',7200),
('The Embers of Silverwood',83,'en_US',7200),
('Les braises de Bois d\'Argent',83,'fr_FR',7200),
('Steinkalte Eindringlinge',84,'de_DE',7200),
('Stone Cold Invaders',84,'en_US',7200),
('Des envahisseurs glacés',84,'fr_FR',7200),
('Überfall der Bäume',85,'de_DE',7200),
('Arboreal Assault',85,'en_US',7200),
('Attaque arboricole',85,'fr_FR',7200),
('Der Marsch der Gedlo',86,'de_DE',7200),
('March of the Gedlo',86,'en_US',7200),
('La marche des Gedlo',86,'fr_FR',7200),
('Träume aus Blut und Gebeinen',87,'de_DE',7200),
('Dreams of Blood and Bone',87,'en_US',7200),
('Rêves de sang et d\'os',87,'fr_FR',7200),
('Die erdrückende Tiefe',88,'de_DE',7200),
('The Crushing Deep',88,'en_US',7200),
('Les Profondeurs écrasantes',88,'fr_FR',7200),
('Kreuzzug gegen das Haus Aelfwar',89,'de_DE',7200),
('Crusade Against House Aelfwar',89,'en_US',7200),
('Croisade contre la Maison Aelfwar',89,'fr_FR',7200),
('Sonderbare Botschaft',90,'de_DE',7200),
('Strange Tidings',90,'en_US',7200),
('Étranges nouvelles',90,'fr_FR',7200),
('Die Sumpfbrut von Gorodon',91,'de_DE',7200),
('The Bogspawn of Gorodon',91,'en_US',7200),
('Les marécageux de Gorodon',91,'fr_FR',7200),
('Aus den Tiefen',92,'de_DE',7200),
('From the Deeps',92,'en_US',7200),
('Dans les Profondeurs',92,'fr_FR',7200),
('Die Himmelsbestien',93,'de_DE',7200),
('The Sky Beasts',93,'en_US',7200),
('Les Bêtes du ciel',93,'fr_FR',7200),
('Wind und Flügel',94,'de_DE',7200),
('Wind and Wings',94,'en_US',7200),
('Le vent et les ailes',94,'fr_FR',7200),
('Marsch der Verrotteten',95,'de_DE',7200),
('Rotten March',95,'en_US',7200),
('Marche pourrie',95,'fr_FR',7200),
('Kampf um Freimark',96,'de_DE',7200),
('Battle for Freemarch',96,'en_US',7200),
('La bataille de Libremarche',96,'fr_FR',7200),
('Harte Schläge',97,'de_DE',7200),
('Hard Knocks',97,'en_US',7200),
('Coups durs',97,'fr_FR',7200),
('Die Läuterung von Dämmerscheid',98,'de_DE',7200),
('The Purging of Gloamwood Pines',98,'en_US',7200),
('La purification des Pins du Bois du Crépuscule',98,'fr_FR',7200),
('Festungsverteidigung: Phase Zwei',99,'de_DE',7200),
('Fortress Defense: Phase Two',99,'en_US',7200),
('Défense de la forteresse : Phase 2',99,'fr_FR',7200),
('Der Brennende Dragoner',100,'de_DE',7200),
('The Burning Dragonian',100,'en_US',7200),
('Draconien enflammé',100,'fr_FR',7200),
('Ithkus\' Aufstieg',101,'de_DE',7200),
('Ithkus\' Rise',101,'en_US',7200),
('L\'ascension d\'Ithkus',101,'fr_FR',7200),
('Explosives Leben',102,'de_DE',7200),
('Explosive Life',102,'en_US',7200),
('Vie explosive',102,'fr_FR',7200),
('Experimente in Steinfeld',103,'de_DE',7200),
('Experiments in Stonefield',103,'en_US',7200),
('Expériences dans le Champ de Pierre',103,'fr_FR',7200),
('Der Waldbrand',104,'de_DE',7200),
('The Forest Fire',104,'en_US',7200),
('Le Feu de forêt',104,'fr_FR',7200),
('Der Steintitan',105,'de_DE',7200),
('The Stone Titan',105,'en_US',7200),
('Le Titan de pierre',105,'fr_FR',7200),
('Der Fall des Hammers',106,'de_DE',7200),
('Fall of the Hammer',106,'en_US',7200),
('La chute du Marteau',106,'fr_FR',7200),
('Marsch der Legion',107,'de_DE',7200),
('March Of The Legion',107,'en_US',7200),
('La marche de la Légion',107,'fr_FR',7200),
('Royaler Raubzug',108,'de_DE',7200),
('A Royal Raid',108,'en_US',7200),
('Un raid royal',108,'fr_FR',7200),
('Jagd: Omen des Schreckens',109,'de_DE',7200),
('Hunt: Portents of Terror',109,'en_US',7200),
('Chasse : Présages de la terreur',109,'fr_FR',7200),
('Schwarm des Jahrhunderts',110,'de_DE',7200),
('Swarm of the Century',110,'en_US',7200),
('L\'essaim du siècle',110,'fr_FR',7200),
('Jagd: Krabbelträume',111,'de_DE',7200),
('Hunt: Scuttled Dreams',111,'en_US',7200),
('Chasse : Des rêves en éclats',111,'fr_FR',7200),
('Fragment von Kaaz\'Ra',112,'de_DE',7200),
('Fragment of Kaaz\'Ra',112,'en_US',7200),
('L\'Archange de Kaaz\'Ra',112,'fr_FR',7200),
('Kritische Masse',113,'de_DE',7200),
('Critical Mass',113,'en_US',7200),
('Masse critique',113,'fr_FR',7200),
('Tugend des Nachdrucks',114,'de_DE',7200),
('Virtue of Vehemence',114,'en_US',7200),
('Vertueuse véhémence',114,'fr_FR',7200),
('Überall Dornen',115,'de_DE',7200),
('Thorns Everywhere',115,'en_US',7200),
('Des épines partout',115,'fr_FR',7200),
('Das Erwachen',116,'de_DE',7200),
('The Awakening',116,'en_US',7200),
('L\'Éveil',116,'fr_FR',7200),
('Warum so traurig?',117,'de_DE',7200),
('Why So Sad?',117,'en_US',7200),
('Pourquoi cet air triste ?',117,'fr_FR',7200),
('Innerer Mahlstrom',118,'de_DE',7200),
('Inner Maelstrom',118,'en_US',7200),
('Le maelström intérieur',118,'fr_FR',7200),
('Jagd: Bedrohung der Bäume',119,'de_DE',7200),
('Hunt: Arboreal Menace',119,'en_US',7200),
('Chasse : Menace arboricole',119,'fr_FR',7200),
('Jagd: Schmelzpunkt',120,'de_DE',7200),
('Hunt: Melting Point',120,'en_US',7200),
('Chasse : Point de fusion',120,'fr_FR',7200),
('Makabres Festmahl',121,'de_DE',7200),
('The Macabre Feast',121,'en_US',7200),
('Le festin macabre',121,'fr_FR',7200),
('Jagd: Furcht vor der Freiheit',122,'de_DE',7200),
('Hunt: Fear From Freedom',122,'en_US',7200),
('Chasse : La peur de la liberté',122,'fr_FR',7200),
('Jagd: Geistesabwesend',123,'de_DE',7200),
('Hunt: Pay No Mind',123,'en_US',7200),
('Chasse : Fermer les yeux',123,'fr_FR',7200),
('Unterm Tisch',124,'de_DE',7200),
('Under the Table',124,'en_US',7200),
('Sous la table',124,'fr_FR',7200),
('Brodelnder Ehrgeiz',125,'de_DE',7200),
('Boiling Ambition',125,'en_US',7200),
('Ambition bouillonnante',125,'fr_FR',7200),
('Böses Erwachen',126,'de_DE',7200),
('Rude Awakening',126,'en_US',7200),
('Réveil difficile',126,'fr_FR',7200),
('Exuvie von Khargroth',127,'de_DE',7200),
('The Exuvia of Khargroth',127,'en_US',7200),
('L\'Exuvie de Khargroth',127,'fr_FR',7200),
('Die steigenden Tiefen',128,'de_DE',7200),
('The Rising Depths',128,'en_US',7200),
('Le Soulèvement des profondeurs',128,'fr_FR',7200),
('Da erklang solch ein Rumpeln',129,'de_DE',7200),
('There Arose Such A Clatter',129,'en_US',7200),
('Un grand fracas se fit alors entendre',129,'fr_FR',7200),
('Instabil: Glutinsel',130,'de_DE',1800),
('Unstable Ember Isle',130,'en_US',1800),
('Île de Braise instable',130,'fr_FR',1800),
('Instabil: Schimmersand',131,'de_DE',1800),
('Unstable Shimmersand',131,'en_US',1800),
('Sable-chatoyant instable',131,'fr_FR',1800),
('Instabil: Kap Jul',132,'de_DE',1800),
('Unstable Cape Jule',132,'en_US',1800),
('Cap Yule instable',132,'fr_FR',1800),
('Instabil: Ashora',133,'de_DE',1800),
('Unstable Ashora',133,'en_US',1800),
('Ashora instable',133,'fr_FR',1800),
('Instabil: Wundwaldregion',134,'de_DE',1800),
('Unstable Scarwood Reach',134,'en_US',1800),
('Étendue de Bois Meurtris instable',134,'fr_FR',1800),
('Instabil: Steppen der Unendlichkeit',135,'de_DE',1800),
('Unstable Steppes of Infinity',135,'en_US',1800),
('Steppes de l\'Infini instables',135,'fr_FR',1800),
('Instabil: Stadtkern',136,'de_DE',1800),
('Unstable City Core',136,'en_US',1800),
('Cœur de la Cité instable',136,'fr_FR',1800),
('Instabil: Königszirkel',137,'de_DE',1800),
('Unstable Kingsward',137,'en_US',1800),
('Protectorat du Roi instable',137,'fr_FR',1800),
('Instabil: Steinfeld',138,'de_DE',1800),
('Unstable Stonefield',138,'en_US',1800),
('Champ de Pierre instable',138,'fr_FR',1800),
('Instabil: Stillmoor',139,'de_DE',1800),
('Unstable Stillmoor',139,'en_US',1800),
('Mornelande instable',139,'fr_FR',1800),
('Instabil: Morban',140,'de_DE',1800),
('Unstable Morban',140,'en_US',1800),
('Morban instable',140,'fr_FR',1800),
('Instabil: Freimark',141,'de_DE',1800),
('Unstable Freemarch',141,'en_US',1800),
('Libremarche instable',141,'fr_FR',1800),
('Instabil: Dendrom',142,'de_DE',1800),
('Unstable Dendrome',142,'en_US',1800),
('Rhizome instable',142,'fr_FR',1800),
('Instabil: Eisenkieferngipfel',143,'de_DE',1800),
('Unstable Iron Pine Peak',143,'en_US',1800),
('Pic du Pin de fer instable',143,'fr_FR',1800),
('Instabil: Östliche Besitztümer',144,'de_DE',1800),
('Unstable Eastern Holdings',144,'en_US',1800),
('Fiefs de l\'Orient instables',144,'fr_FR',1800),
('Instabil: Eiferer-Reich',145,'de_DE',1800),
('Unstable Ardent Domain',145,'en_US',1800),
('Contrée Ardente instable',145,'fr_FR',1800),
('Instabil: Scharlachrote Schlucht',146,'de_DE',1800),
('Unstable Scarlet Gorge',146,'en_US',1800),
('Gorges Écarlates instables',146,'fr_FR',1800),
('Instabil: Dämmerwald',147,'de_DE',1800),
('Unstable Gloamwood',147,'en_US',1800),
('Bois du Crépuscule instable',147,'fr_FR',1800),
('Instabil: Seratos',148,'de_DE',1800),
('Unstable Seratos',148,'en_US',1800),
('Serratos instable',148,'fr_FR',1800),
('Instabiles Königreich Pelladane',149,'de_DE',1800),
('Unstable Kingdom of Pelladane',149,'en_US',1800),
('Royaume instable de Pelladane',149,'fr_FR',1800),
('Instabil: Ödlande',150,'de_DE',1800),
('Unstable Droughtlands',150,'en_US',1800),
('Plaines Arides instables',150,'fr_FR',1800),
('Instabil: Silberwald',151,'de_DE',1800),
('Unstable Silverwood',151,'en_US',1800),
('Bois d\'Argent instable',151,'fr_FR',1800),
('Paradetag!',152,'de_DE',1800),
('Parade Day!',152,'en_US',1800),
('Jour de la Parade !',152,'fr_FR',1800),
('Instabil: Mondschattenberge',153,'de_DE',1800),
('Unstable Moonshade Highlands',153,'en_US',1800),
('Hautes-Terres d\'Ombrelune instables',153,'fr_FR',1800),
('Blutfeuer-Ungetüm',154,'de_DE',7200),
('Bloodfire Behemoth',154,'en_US',7200),
('Béhémoth feu-sanglant',154,'fr_FR',7200),
('Die Blutfeuer-Armee',155,'de_DE',7200),
('The Bloodfire Army',155,'en_US',7200),
('L\'Armée feu-sanglant',155,'fr_FR',7200),
('Macht der Albträume',156,'de_DE',7200),
('Power of Nightmares',156,'en_US',7200),
('Puissance des cauchemars',156,'fr_FR',7200),
('Unnatürliche Artenbildung',157,'de_DE',7200),
('Unnatural Speciation',157,'en_US',7200),
('Spéciation surnaturelle',157,'fr_FR',7200),
('Hufe und Hörner',158,'de_DE',7200),
('Hooves and Horns',158,'en_US',7200),
('Des sabots et des cornes',158,'fr_FR',7200),
('Aggressive Kolonisierung',159,'de_DE',7200),
('Aggressive Colonization',159,'en_US',7200),
('Colonisation agressive',159,'fr_FR',7200),
('Champions von Hammerhall',160,'de_DE',7200),
('Champions of Hammerknell',160,'en_US',7200),
('Les Champions de Glasmarteau',160,'fr_FR',7200),
('Nachtschrecken',161,'de_DE',7200),
('Night Terrors',161,'en_US',7200),
('Terreurs nocturnes',161,'fr_FR',7200),
('Festung der Brutmutter',162,'de_DE',2700),
('Fortress of the Broodmother',162,'en_US',2700),
('Forteresse de la Matriarche',162,'fr_FR',2700),
('Heulender Zorn',163,'de_DE',7200),
('Howling Fury',163,'en_US',7200),
('Fureur mugissante',163,'fr_FR',7200),
('Ranken der Erneuerung',164,'de_DE',7200),
('Tendrils of Renewal',164,'en_US',7200),
('Vrilles du renouveau',164,'fr_FR',7200),
('Brustwehr der Fülle',165,'de_DE',2700),
('Parapet of Plenty',165,'en_US',2700),
('Parapet de l\'Abondance',165,'fr_FR',2700),
('Bollwerk der Knochen',166,'de_DE',2700),
('Bulwark of Bones',166,'en_US',2700),
('Rempart d\'os',166,'fr_FR',2700),
('Flammenwelle',167,'de_DE',1800),
('Flame Wave',167,'en_US',1800),
('Vague de flammes',167,'fr_FR',1800),
('Erdrückende Kraft',168,'de_DE',7200),
('Crushing Force',168,'en_US',7200),
('Force écrasante',168,'fr_FR',7200),
('Terror aus den Tiefen',169,'de_DE',7200),
('Terror From the Depths',169,'en_US',7200),
('Terreur des profondeurs',169,'fr_FR',7200),
('Lager der Legion',170,'de_DE',2700),
('Encampment of the Legion',170,'en_US',2700),
('Campement de la Légion',170,'fr_FR',2700),
('Hörner der Verdammnis',171,'de_DE',7200),
('Horns of Doom',171,'en_US',7200),
('Les cors de la destruction',171,'fr_FR',7200),
('Bataillon der Flamme',172,'de_DE',7200),
('Battalion of Flame',172,'en_US',7200),
('Bataillon de la Flamme',172,'fr_FR',7200),
('Azurfestigkeit',173,'de_DE',2700),
('Azure Fastness',173,'en_US',2700),
('Vivacité azur',173,'fr_FR',2700),
('Geschmolzene Festung',174,'de_DE',2700),
('Molten Keep',174,'en_US',2700),
('Donjon en fusion',174,'fr_FR',2700),
('Schloss des Korsaren',175,'de_DE',2700),
('Corsair\'s Castle',175,'en_US',2700),
('Château du corsaire',175,'fr_FR',2700),
('Kristalline Schanze',176,'de_DE',2700),
('Crystalline Redoubt',176,'en_US',2700),
('Redoute cristalline',176,'fr_FR',2700),
('Aquium-Zitadelle',177,'de_DE',2700),
('Aquium Citadel',177,'en_US',2700),
('Citadelle d\'Aquium',177,'fr_FR',2700),
('Aphogglach',178,'de_DE',7200),
('Aphogglach',178,'en_US',7200),
('Aphogglach',178,'fr_FR',7200),
('Leviathan',179,'de_DE',3600),
('Leviathan',179,'en_US',3600),
('Léviathan',179,'fr_FR',3600),
('Der Gefräßige Verschlinger',180,'de_DE',7200),
('The Ravenous Devourer',180,'en_US',7200),
('Le Dévoreur vorace',180,'fr_FR',7200),
('Dunkelheit aus der Tiefe',181,'de_DE',7200),
('Darkness from the Depths',181,'en_US',7200),
('Ténèbres des Profondeurs',181,'fr_FR',7200),
('Sankt Carwin Mathos',182,'de_DE',7200),
('Saint Carwin Mathos',182,'en_US',7200),
('Die Wiedergeburt der Legion',183,'de_DE',7200),
('Rebirth of the Legion',183,'en_US',7200),
('Renaissance de la Légion',183,'fr_FR',7200),
('Feuersturm',184,'de_DE',7200),
('Fire Storm',184,'en_US',7200),
('Tempête de feu',184,'fr_FR',7200),
('Irdener Angriff',185,'de_DE',7200),
('Earthen Assault',185,'en_US',7200),
('Assaut de Terre',185,'fr_FR',7200),
('Die Welle der Zerstörung',186,'de_DE',7200),
('Tide of Destruction',186,'en_US',7200),
('Marée de la destruction',186,'fr_FR',7200),
('Feen-Julfestgeschenke: Silberwald',187,'de_DE',1800),
('Fae Yule Gifts: Silverwood',187,'en_US',1800),
('Cadeaux de la Fête de l\'hiver : Bois d\'Argent',187,'fr_FR',1800),
('Feen-Julfestgeschenke: Ashora',188,'de_DE',1800),
('Fae Yule Gifts: Ashora',188,'en_US',1800),
('Cadeaux de la Fête de l\'hiver : Ashora',188,'fr_FR',1800),
('Feen-Julfestgeschenke: Wundwaldregion',189,'de_DE',1800),
('Fae Yule Gifts: Scarwood Reach',189,'en_US',1800),
('Cadeaux de la Fête de l\'hiver : Étendue de Bois Meurtris',189,'fr_FR',1800),
('Feen-Julfestgeschenke: Königreich Pelladane',190,'de_DE',1800),
('Fae Yule Gifts: Kingdom of Pelladane',190,'en_US',1800),
('Cadeaux de la Fête de l\'hiver : Royaume de Pelladane',190,'fr_FR',1800),
('Feen-Julfestgeschenke: Kap Jul',191,'de_DE',1800),
('Fae Yule Gifts: Cape Jule',191,'en_US',1800),
('Cadeaux de la Fête de l\'hiver : Cap Yule',191,'fr_FR',1800),
('Feen-Julfestgeschenke: Freimark',192,'de_DE',1800),
('Fae Yule Gifts: Freemarch',192,'en_US',1800),
('Cadeaux de la Fête de l\'hiver : Libremarche',192,'fr_FR',1800),
('Ein Schwarm Krallen',193,'de_DE',7200),
('Swarm of Talons',193,'en_US',7200),
('Des serres par centaines',193,'fr_FR',7200),
('Kosmische Leere',194,'de_DE',7200),
('Cosmic Void',194,'en_US',7200),
('Vide cosmique',194,'fr_FR',7200),
('Zyklonischer Konflikt',196,'de_DE',7200),
('Cyclonic Conflict',196,'en_US',7200),
('Conflit cyclonique',196,'fr_FR',7200),
('Plattenverschiebung',197,'de_DE',7200),
('Tectonic Drift',197,'en_US',7200),
('Dérive tectonique',197,'fr_FR',7200),
('Kauterisierte Kalamität',198,'de_DE',7200),
('Cauterized Calamity',198,'en_US',7200),
('Calamité et cautérisation',198,'fr_FR',7200),
('Grausiger Gartenbau',199,'de_DE',7200),
('Horrific Horticulture',199,'en_US',7200),
('Horticulture terrifiante',199,'fr_FR',7200),
('Kometeneis',200,'de_DE',7200),
('Cometary Ice',200,'en_US',7200),
('Glace cométaire',200,'fr_FR',7200),
('Xarths Schädel Knacken',201,'de_DE',2100),
('Cracking Xarth\'s Skull',201,'en_US',2100),
('Fracasser le Crâne de Xarth',201,'fr_FR',2100);
/*!40000 ALTER TABLE `eventnames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `maps`
--

LOCK TABLES `maps` WRITE;
/*!40000 ALTER TABLE `maps` DISABLE KEYS */;
INSERT INTO `maps` VALUES 
('Mathosia',1,'de_DE'),
('Mathosia',1,'en_US'),
('Mathosia',1,'fr_FR'),
('Brevane/Dämmerland',2,'de_DE'),
('Brevane/Dusken',2,'en_US'),
('Tynandra/Brunante',2,'fr_FR'),
('Ebene des Wasser',3,'de_DE'),
('Plane of Water',3,'en_US'),
('Plan de l\'Eau',3,'fr_FR'),
('Himmlische Lande',4,'de_DE'),
('Celestial Lands',4,'en_US'),
('Terres Célestes',4,'fr_FR');
/*!40000 ALTER TABLE `maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `shards`
--

LOCK TABLES `shards` WRITE;
/*!40000 ALTER TABLE `shards` DISABLE KEYS */;
INSERT INTO `shards` VALUES 
('na',1701,'Seastone',1,'en_US'),
('na',1702,'Greybriar',0,'en_US'),
('na',1704,'Deepwood',0,'en_US'),
('na',1706,'Wolfsbane',0,'en_US'),
('na',1707,'Faeblight',0,'en_US'),
('na',1708,'Laethys',0,'en_US'),
('na',1721,'Hailol',0,'en_US'),
('eu',2702,'Bloodiron',1,'en_GB'),
('eu',2711,'Brutwacht',0,'de_DE'),
('eu',2714,'Brisesol',0,'fr_FR'),
('eu',2721,'Gelidra',0,'en_GB'),
('eu',2722,'Zaviel',0,'en_GB'),
('eu',2741,'Typhiria',0,'en_GB');
/*!40000 ALTER TABLE `shards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `zones`
--

LOCK TABLES `zones` WRITE;
/*!40000 ALTER TABLE `zones` DISABLE KEYS */;
INSERT INTO `zones` VALUES 
('Schimmersand',6,'de_DE',1),
('Shimmersand',6,'en_US',1),
('Sable-chatoyant',6,'fr_FR',1),
('Silberwald',12,'de_DE',1),
('Silverwood',12,'en_US',1),
('Bois d\'Argent',12,'fr_FR',1),
('Freimark',19,'de_DE',1),
('Freemarch',19,'en_US',1),
('Libremarche',19,'fr_FR',1),
('Wundwaldregion',20,'de_DE',1),
('Scarwood Reach',20,'en_US',1),
('Étendue de Bois Meurtris',20,'fr_FR',1),
('Eisenkieferngipfel',22,'de_DE',1),
('Iron Pine Peak',22,'en_US',1),
('Pic du Pin de fer',22,'fr_FR',1),
('Mondschattenberge',24,'de_DE',1),
('Moonshade Highlands',24,'en_US',1),
('Hautes-Terres d\'Ombrelune',24,'fr_FR',1),
('Stillmoor',26,'de_DE',1),
('Stillmoor',26,'en_US',1),
('Mornelande',26,'fr_FR',1),
('Dämmerwald',27,'de_DE',1),
('Gloamwood',27,'en_US',1),
('Bois du Crépuscule',27,'fr_FR',1),
('Ebenenberührte Wildnis',28,'de_DE',3),
('Planetouched Wilds',28,'en_US',3),
('Étendues marquées par les Plans',28,'fr_FR',3),
('Goboro-Riff',301,'de_DE',3),
('Goboro Reef',301,'en_US',3),
('Récif de Goboro',301,'fr_FR',3),
('Draumheim',302,'de_DE',3),
('Draumheim',302,'en_US',3),
('Draumheim',302,'fr_FR',3),
('Tarken-Gletscher',303,'de_DE',3),
('Tarken Glacier',303,'en_US',3),
('Glacier de Tarken',303,'fr_FR',3),
('Scharlachrote Schlucht',26580443,'de_DE',1),
('Scarlet Gorge',26580443,'en_US',1),
('Gorges Écarlates',26580443,'fr_FR',1),
('Das Dendrom',282584906,'de_DE',2),
('The Dendrome',282584906,'en_US',2),
('Le Rhizome',282584906,'fr_FR',2),
('Ödlande',336995470,'de_DE',1),
('Droughtlands',336995470,'en_US',1),
('Plaines Arides',336995470,'fr_FR',1),
('Tyrannenthron',426135797,'de_DE',3),
('Tyrant\'s Throne',426135797,'en_US',3),
('Trône du Tyran',426135797,'fr_FR',3),
('Königreich Pelladane',479431687,'de_DE',2),
('Kingdom of Pelladane',479431687,'en_US',2),
('Royaume de Pelladane',479431687,'fr_FR',2),
('Gedlonianisches Ödland',788055204,'de_DE',4),
('Gedlo Badlands',788055204,'en_US',4),
('Maleterres de Gedlo',788055204,'fr_FR',4),
('Ashora',790513416,'de_DE',2),
('Ashora',790513416,'en_US',2),
('Ashora',790513416,'fr_FR',2),
('Steppen der Unendlichkeit',798793247,'de_DE',2),
('Steppes of Infinity',798793247,'en_US',2),
('Steppes de l\'Infini',798793247,'fr_FR',2),
('Morban',956914599,'de_DE',2),
('Morban',956914599,'en_US',2),
('Morban',956914599,'fr_FR',2),
('Xarth-Sumpf',1208799201,'de_DE',4),
('Xarth Mire',1208799201,'en_US',4),
('Bourbier de Xarth',1208799201,'fr_FR',4),
('Östliche Besitztümer',1213399942,'de_DE',2),
('Eastern Holdings',1213399942,'en_US',2),
('Fiefs de l\'Orient',1213399942,'fr_FR',2),
('Königszirkel',1300766935,'de_DE',2),
('Kingsward',1300766935,'en_US',2),
('Protectorat du Roi',1300766935,'fr_FR',2),
('Eiferer-Reich',1446819710,'de_DE',2),
('Ardent Domain',1446819710,'en_US',2),
('Contrée Ardente',1446819710,'fr_FR',2),
('Steinfeld',1481781477,'de_DE',1),
('Stonefield',1481781477,'en_US',1),
('Champ de Pierre',1481781477,'fr_FR',1),
('Seratos',1494372221,'de_DE',2),
('Seratos',1494372221,'en_US',2),
('Serratos',1494372221,'fr_FR',2),
('Kap Jul',1770829751,'de_DE',2),
('Cape Jule',1770829751,'en_US',2),
('Cap Yule',1770829751,'fr_FR',2),
('Stadtkern',1967477725,'de_DE',2),
('City Core',1967477725,'en_US',2),
('Cœur de la Cité',1967477725,'fr_FR',2),
('Glutinsel',1992854106,'de_DE',1),
('Ember Isle',1992854106,'en_US',1),
('Île de Braise',1992854106,'fr_FR',1),
('Aschenfall',2007770238,'de_DE',4),
('Ashenfell',2007770238,'en_US',4),
('Chutecendres',2007770238,'fr_FR',4),
('Skatherran-Wald',2066418614,'de_DE',4),
('Scatherran Forest',2066418614,'en_US',4),
('Forêt des Bourreaux',2066418614,'fr_FR',4);
/*!40000 ALTER TABLE `zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-08 19:36:13
