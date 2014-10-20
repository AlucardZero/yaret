DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS eventnames;
CREATE TABLE eventnames (
  name VARCHAR(64) NOT NULL,
  id INTEGER UNSIGNED NOT NULL,
  lang VARCHAR(8),
  PRIMARY KEY (id, lang),
  INDEX (id)
  ) DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS zones;
CREATE TABLE zones (
  name VARCHAR(32) NOT NULL,
  id INTEGER UNSIGNED NOT NULL,
  lang VARCHAR(8),
  PRIMARY KEY (id, lang),
  INDEX (id)
  ) DEFAULT CHARSET=utf8;
INSERT INTO zones (id, name, lang) VALUES
(282584906,"The Dendrome","en_US"),
(790513416,"Ashora","en_US"),
(798793247,"Steppes of Infinity","en_US"),
(956914599,"Morban","en_US"),
(1300766935,"Kingsward","en_US"),
(1446819710,"Ardent Domain","en_US"),
(1213399942,"Eastern Holdings","en_US"),
(1967477725,"City Core","en_US"),
(1494372221,"Seratos","en_US"),
(1770829751,"Cape Jule","en_US"),
(479431687,"Kingdom of Pelladane","en_US"),
(1992854106,"Ember Isle","en_US"),
(26,"Stillmoor","en_US"),
(22,"Iron Pine Peak","en_US"),
(6,"Shimmersand","en_US"),
(336995470,"Droughtlands","en_US"),
(24,"Moonshade Highlands","en_US"),
(20,"Scarwood Reach","en_US"),
(26580443,"Scarlet Gorge","en_US"),
(27,"Gloamwood","en_US"),
(1481781477,"Stonefield","en_US"),
(19,"Freemarch","en_US"),
(12,"Silverwood","en_US"),
(282584906,"Le Rhizome","fr_FR"),
(790513416,"Ashora","fr_FR"),
(798793247,"Steppes de l'Infini","fr_FR"),
(956914599,"Morban","fr_FR"),
(1300766935,"Protectorat du Roi","fr_FR"),
(1446819710,"Contrée Ardente","fr_FR"),
(1213399942,"Fiefs de l'Orient","fr_FR"),
(1967477725,"Cœur de la Cité","fr_FR"),
(1494372221,"Serratos","fr_FR"),
(1770829751,"Cap Yule","fr_FR"),
(479431687,"Royaume de Pelladane","fr_FR"),
(1992854106,"Île de Braise","fr_FR"),
(26,"Mornelande","fr_FR"),
(22,"Pic du Pin de fer","fr_FR"),
(6,"Sable-chatoyant","fr_FR"),
(336995470,"Plaines Arides","fr_FR"),
(24,"Hautes-Terres d'Ombrelune","fr_FR"),
(20,"Étendue de Bois Meurtris","fr_FR"),
(26580443,"Gorges Écarlates","fr_FR"),
(27,"Bois du Crépuscule","fr_FR"),
(1481781477,"Champ de Pierre","fr_FR"),
(19,"Libremarche","fr_FR"),
(12,"Bois d'Argent","fr_FR"),
(282584906,"Das Dendrom","de_DE"),
(790513416,"Ashora","de_DE"),
(798793247,"Steppen der Unendlichkeit","de_DE"),
(956914599,"Morban","de_DE"),
(1300766935,"Königszirkel","de_DE"),
(1446819710,"Eiferer-Reich","de_DE"),
(1213399942,"Östliche Besitztümer","de_DE"),
(1967477725,"Stadtkern","de_DE"),
(1494372221,"Seratos","de_DE"),
(1770829751,"Kap Jul","de_DE"),
(479431687,"Königreich Pelladane","de_DE"),
(1992854106,"Glutinsel","de_DE"),
(26,"Stillmoor","de_DE"),
(22,"Eisenkieferngipfel","de_DE"),
(6,"Schimmersand","de_DE"),
(336995470,"Ödlande","de_DE"),
(24,"Mondschattenberge","de_DE"),
(20,"Wundwaldregion","de_DE"),
(26580443,"Scharlachrote Schlucht","de_DE"),
(27,"Dämmerwald","de_DE"),
(1481781477,"Steinfeld","de_DE"),
(19,"Freimark","de_DE"),
(12,"Silberwald","de_DE");
DROP TABLE IF EXISTS shards;
CREATE TABLE shards (
  dc VARCHAR(8) NOT NULL,
  id INTEGER UNSIGNED NOT NULL PRIMARY KEY,
  name VARCHAR(16) NOT NULL,
  pvp BOOLEAN DEFAULT FALSE,
  lang VARCHAR(8)
  ) DEFAULT CHARSET=utf8;
INSERT INTO shards (dc, id, name, pvp, lang) VALUES
  ("eu", 2702, "Bloodiron", true, "en_GB"),
  ("eu", 2714, "Brisesol", false, "fr_FR"),
  ("eu", 2711, "Brutwacht", false, "de_DE"),
  ("eu", 2721, "Gelidra", false, "en_GB"),
  ("eu", 2741, "Typhiria", false, "en_GB"),
  ("eu", 2722, "Zaviel", false, "en_GB"),
  ("na", 1704, "Deepwood", false, "en_US"),
  ("na", 1707, "Faeblight", false, "en_US"),
  ("na", 1702, "Greybriar", false, "en_US"),
  ("na", 1721, "Hailol", false, "en_US"),
  ("na", 1708, "Laethys", false, "en_US"),
  ("na", 1701, "Seastone", true, "en_US"),
  ("na", 1706, "Wolfsbane", false, "en_US");
CREATE TABLE events (
  shardid INTEGER UNSIGNED NOT NULL,
  zoneid INTEGER UNSIGNED NOT NULL,
  eventid INTEGER UNSIGNED NOT NULL,
  starttime INTEGER UNSIGNED NOT NULL,
  endtime INTEGER UNSIGNED DEFAULT 0,
  PRIMARY KEY (shardid, zoneid, eventid, starttime),
  FOREIGN KEY (shardid) REFERENCES shards(id),
  FOREIGN KEY (zoneid) REFERENCES zones(id),
  FOREIGN KEY (eventid) REFERENCES eventnames(id)
  ) DEFAULT CHARSET=utf8;
INSERT INTO eventnames (id, name, lang) VALUES
(159,"Aggressive Colonization", "en_US"),
(154,"Bloodfire Behemoth", "en_US"),
(12,"Golden Embers", "en_US"),
(27,"Hammer and Flame", "en_US"),
(24,"Infernal Awakening", "en_US"),
(152,"Parade Day!", "en_US"),
(156,"Power of Nightmares", "en_US"),
(5,"The Blight", "en_US"),
(155,"The Bloodfire Army", "en_US"),
(127,"The Exuvia of Khargroth", "en_US"),
(129,"There Arose Such A Clatter", "en_US"),
(157,"Unnatural Speciation", "en_US"),
(11,"Visions of Future Past", "en_US"),
(22,"Waves of Madness", "en_US"),
(112,"Fragment of Kaaz'Ra", "en_US"),
(125,"Boiling Ambition", "en_US"),
(1,"Champions of the Firestorm", "en_US"),
(113,"Critical Mass", "en_US"),
(87,"Dreams of Blood and Bone", "en_US"),
(38,"Fortress Defense: Phase One", "en_US"),
(43,"Fortress Defense: Phase Three", "en_US"),
(99,"Fortress Defense: Phase Two", "en_US"),
(119,"Hunt: Arboreal Menace", "en_US"),
(122,"Hunt: Fear From Freedom", "en_US"),
(120,"Hunt: Melting Point", "en_US"),
(123,"Hunt: Pay No Mind", "en_US"),
(109,"Hunt: Portents of Terror", "en_US"),
(111,"Hunt: Scuttled Dreams", "en_US"),
(118,"Inner Maelstrom", "en_US"),
(67,"Party Crashers", "en_US"),
(57,"Return Of The Fallen", "en_US"),
(126,"Rude Awakening", "en_US"),
(75,"Shattered Earth", "en_US"),
(110,"Swarm of the Century", "en_US"),
(116,"The Awakening", "en_US"),
(56,"The Craft of Conflict", "en_US"),
(121,"The Macabre Feast", "en_US"),
(128,"The Rising Depths", "en_US"),
(6,"The Silver Army", "en_US"),
(115,"Thorns Everywhere", "en_US"),
(124,"Under the Table", "en_US"),
(133,"Unstable Ashora", "en_US"),
(142,"Unstable Dendrome", "en_US"),
(135,"Unstable Steppes of Infinity", "en_US"),
(114,"Virtue of Vehemence", "en_US"),
(117,"Why So Sad?", "en_US"),
(95,"Rotten March", "en_US"),
(19,"Sudden Swarm", "en_US"),
(65,"Terror Above", "en_US"),
(137,"Unstable Kingsward", "en_US"),
(140,"Unstable Morban", "en_US"),
(17,"Feeding Frenzy", "en_US"),
(70,"Lady in the Lake", "en_US"),
(145,"Unstable Ardent Domain", "en_US"),
(107,"March Of The Legion", "en_US"),
(31,"Secrets of the Deep", "en_US"),
(90,"Strange Tidings", "en_US"),
(144,"Unstable Eastern Holdings", "en_US"),
(148,"Unstable Seratos", "en_US"),
(62,"On the Hunt", "en_US"),
(7,"Entangled", "en_US"),
(136,"Unstable City Core", "en_US"),
(74,"Deathly Tendrils", "en_US"),
(18,"Fires of Rebirth", "en_US"),
(68,"In Golden's Grasp", "en_US"),
(26,"Island Storm", "en_US"),
(101,"Ithkus' Rise", "en_US"),
(71,"The Seed of Change", "en_US"),
(72,"Operation: Landfall", "en_US"),
(79,"Take It All Back!", "en_US"),
(35,"The Battle of Cape Jule", "en_US"),
(3,"The Jewel of Brevane", "en_US"),
(132,"Unstable Cape Jule", "en_US"),
(149,"Unstable Kingdom of Pelladane", "en_US"),
(130,"Unstable Ember Isle", "en_US"),
(4,"An Eye for an Eye", "en_US"),
(78,"Dreaded Knight", "en_US"),
(60,"Flesh Monstrosity", "en_US"),
(41,"Forest King", "en_US"),
(13,"From the Pit", "en_US"),
(40,"Prince of Earth", "en_US"),
(23,"Raising Kain", "en_US"),
(21,"Sand Worship", "en_US"),
(37,"Scourge of the Sands", "en_US"),
(64,"Serpent Storm", "en_US"),
(15,"Skirmish in the Moor", "en_US"),
(30,"Skirmish in the Sands", "en_US"),
(9,"Storm Rising", "en_US"),
(61,"Unlikely Alliances", "en_US"),
(131,"Unstable Shimmersand", "en_US"),
(139,"Unstable Stillmoor", "en_US"),
(94,"Wind and Wings", "en_US"),
(80,"Witch of the West", "en_US"),
(58,"Army of the Wind", "en_US"),
(34,"Chilled to the Bone", "en_US"),
(2,"Frostbitten Spirits", "en_US"),
(49,"Mountain Flood", "en_US"),
(44,"Planar Chill", "en_US"),
(42,"Skirmish in the Peak", "en_US"),
(84,"Stone Cold Invaders", "en_US"),
(93,"The Sky Beasts", "en_US"),
(77,"The Snow Pack", "en_US"),
(14,"Desert Wind", "en_US"),
(51,"Fiery Hoofsteps", "en_US"),
(82,"March of the Stone Army", "en_US"),
(76,"Saving Lantern Hook", "en_US"),
(53,"Sting of the Sand", "en_US"),
(73,"Terror of the Sky", "en_US"),
(100,"The Burning Dragonian", "en_US"),
(150,"Unstable Droughtlands", "en_US"),
(33,"Life of a Bog Mother", "en_US"),
(46,"Live and Let Die", "en_US"),
(36,"Runebound Technology", "en_US"),
(32,"Run To The Hills", "en_US"),
(91,"The Bogspawn of Gorodon", "en_US"),
(52,"Where the Death Fae Go", "en_US"),
(160,"Champions of Hammerknell", "en_US"),
(158,"Hooves and Horns", "en_US"),
(153,"Unstable Moonshade Highlands", "en_US"),
(55,"Double Danger", "en_US"),
(102,"Explosive Life", "en_US"),
(97,"Hard Knocks", "en_US"),
(8,"The Witching Hour", "en_US"),
(143,"Unstable Iron Pine Peak", "en_US"),
(134,"Unstable Scarwood Reach", "en_US"),
(54,"Winged Horror", "en_US"),
(108,"A Royal Raid", "en_US"),
(29,"Fires of Suffering", "en_US"),
(10,"Greed in the Gorge", "en_US"),
(28,"Shambling Hordes", "en_US"),
(25,"Systematic Deconstruction", "en_US"),
(16,"The Bone Dance", "en_US"),
(47,"The Crucible", "en_US"),
(146,"Unstable Scarlet Gorge", "en_US"),
(69,"Descending Night", "en_US"),
(103,"Experiments in Stonefield", "en_US"),
(66,"Field Of Screams", "en_US"),
(48,"Forged in Rage", "en_US"),
(92,"From the Deeps", "en_US"),
(39,"Sticks and Stones", "en_US"),
(98,"The Purging of Gloamwood Pines", "en_US"),
(105,"The Stone Titan", "en_US"),
(50,"The Wild Plague", "en_US"),
(81,"Undead Burden", "en_US"),
(147,"Unstable Gloamwood", "en_US"),
(138,"Unstable Stonefield", "en_US"),
(85,"Arboreal Assault", "en_US"),
(96,"Battle for Freemarch", "en_US"),
(59,"Battle of the Woodlands", "en_US"),
(89,"Crusade Against House Aelfwar", "en_US"),
(106,"Fall Of The Hammer", "en_US"),
(63,"Gathering of Souls", "en_US"),
(86,"March of the Gedlo", "en_US"),
(88,"The Crushing Deep", "en_US"),
(20,"The Ebb of the Tidelord", "en_US"),
(83,"The Embers of Silverwood", "en_US"),
(104,"The Forest Fire", "en_US"),
(45,"The Hand of Death", "en_US"),
(141,"Unstable Freemarch", "en_US"),
(151,"Unstable Silverwood", "en_US"),
(159,"Colonisation agressive", "fr_FR"),
(154,"Béhémoth feu-sanglant", "fr_FR"),
(12,"Braises dorées", "fr_FR"),
(27,"Marteau et flamme", "fr_FR"),
(24,"Éveil infernal", "fr_FR"),
(152,"Jour de la Parade !", "fr_FR"),
(156,"Puissance des cauchemars", "fr_FR"),
(5,"Le Fléau", "fr_FR"),
(155,"L'Armée feu-sanglant", "fr_FR"),
(127,"L'Exuvie de Khargroth", "fr_FR"),
(129,"Un grand fracas se fit alors entendre", "fr_FR"),
(157,"Spéciation surnaturelle", "fr_FR"),
(11,"Visions du futur révolu", "fr_FR"),
(22,"Vagues de folie", "fr_FR"),
(112,"L'Archange de Kaaz'Ra", "fr_FR"),
(125,"Ambition bouillonnante", "fr_FR"),
(1,"Champions de la Tempête de feu", "fr_FR"),
(113,"Masse critique", "fr_FR"),
(87,"Rêves de sang et d'os", "fr_FR"),
(38,"Défense de la forteresse : Phase 1", "fr_FR"),
(43,"Défense de la forteresse : Phase 3", "fr_FR"),
(99,"Défense de la forteresse : Phase 2", "fr_FR"),
(119,"Chasse : Menace arboricole", "fr_FR"),
(122,"Chasse : La peur de la liberté", "fr_FR"),
(120,"Chasse : Point de fusion", "fr_FR"),
(123,"Chasse : Fermer les yeux", "fr_FR"),
(109,"Chasse : Présages de la terreur", "fr_FR"),
(111,"Chasse : Des rêves en éclats", "fr_FR"),
(118,"Le maelström intérieur", "fr_FR"),
(67,"Trouble-fêtes", "fr_FR"),
(57,"Le retour des déchus", "fr_FR"),
(126,"Réveil difficile", "fr_FR"),
(75,"Terre fracassée", "fr_FR"),
(110,"L'essaim du siècle", "fr_FR"),
(116,"L'Éveil", "fr_FR"),
(56,"l'Art du Conflit", "fr_FR"),
(121,"Le festin macabre", "fr_FR"),
(128,"Le Soulèvement des profondeurs", "fr_FR"),
(6,"L'Armée d'airain", "fr_FR"),
(115,"Des épines partout", "fr_FR"),
(124,"Sous la table", "fr_FR"),
(133,"Ashora instable", "fr_FR"),
(142,"Rhizome instable", "fr_FR"),
(135,"Steppes de l'Infini instables", "fr_FR"),
(114,"Vertueuse véhémence", "fr_FR"),
(117,"Pourquoi cet air triste ?", "fr_FR"),
(95,"Marche pourrie", "fr_FR"),
(19,"Essaim soudain", "fr_FR"),
(65,"Terreur dans le ciel", "fr_FR"),
(137,"Protectorat du Roi instable", "fr_FR"),
(140,"Morban instable", "fr_FR"),
(17,"Boulimie frénétique", "fr_FR"),
(70,"Dame du lac", "fr_FR"),
(145,"Contrée Ardente instable", "fr_FR"),
(107,"La marche de la Légion", "fr_FR"),
(31,"Secrets des profondeurs", "fr_FR"),
(90,"Étranges nouvelles", "fr_FR"),
(144,"Fiefs de l'Orient instables", "fr_FR"),
(148,"Serratos instable", "fr_FR"),
(62,"En chasse", "fr_FR"),
(7,"Enchevêtré", "fr_FR"),
(136,"Cœur de la Cité instable", "fr_FR"),
(74,"Vrilles mortelles", "fr_FR"),
(18,"Flammes de la renaissance ", "fr_FR"),
(68,"Dans la poigne d'Or", "fr_FR"),
(26,"Orage insulaire", "fr_FR"),
(101,"L'ascension d'Ithkus", "fr_FR"),
(71,"La graine de la prophétie", "fr_FR"),
(72,"Opération : Débarquement", "fr_FR"),
(79,"Reprenez tout !", "fr_FR"),
(35,"La bataille de Cap Yule", "fr_FR"),
(3,"Le Joyau de Tynandra", "fr_FR"),
(132,"Cap Yule instable", "fr_FR"),
(149,"Royaume instable de Pelladane", "fr_FR"),
(130,"Île de Braise instable", "fr_FR"),
(4,"Œil pour œil...", "fr_FR"),
(78,"Chevalier de terreur", "fr_FR"),
(60,"Monstruosité de chair", "fr_FR"),
(41,"Roi de la forêt", "fr_FR"),
(13,"De la Fosse", "fr_FR"),
(40,"Prince de la Terre", "fr_FR"),
(23,"L'élévation de Kain", "fr_FR"),
(21,"Vénérer le sable", "fr_FR"),
(37,"Fléau des sables", "fr_FR"),
(64,"Le serpent de la Tempête", "fr_FR"),
(15,"Escarmouche à Mornelande", "fr_FR"),
(30,"Escarmouche des sables", "fr_FR"),
(9,"La Tempête gronde", "fr_FR"),
(61,"Alliances improbables", "fr_FR"),
(131,"Sable-chatoyant instable", "fr_FR"),
(139,"Mornelande instable", "fr_FR"),
(94,"Le vent et les ailes", "fr_FR"),
(80,"Sorcière de l'Ouest", "fr_FR"),
(58,"L'Armée du Vent", "fr_FR"),
(34,"Glacé jusqu'aux os", "fr_FR"),
(2,"Esprits gelés", "fr_FR"),
(49,"Raz-de-marée dans la montagne", "fr_FR"),
(44,"Frisson planaire", "fr_FR"),
(42,"Escarmouche au Pic du Pin de Fer", "fr_FR"),
(84,"Des envahisseurs glacés", "fr_FR"),
(93,"Les Bêtes du ciel", "fr_FR"),
(77,"La Meute des neiges", "fr_FR"),
(14,"Le Vent du désert", "fr_FR"),
(51,"Sabotage du plan centaure", "fr_FR"),
(82,"La marche de l'Armée de pierre", "fr_FR"),
(76,"Sauver Saillant de Lanterne", "fr_FR"),
(53,"Le dard du sable", "fr_FR"),
(73,"La Terreur du ciel", "fr_FR"),
(100,"Draconien enflammé", "fr_FR"),
(150,"Plaines Arides instables", "fr_FR"),
(33,"La vie d'une Mère des marais", "fr_FR"),
(46,"Vivre et laisser mourir", "fr_FR"),
(36,"Technologie runique", "fr_FR"),
(32,"Fuir vers les collines", "fr_FR"),
(91,"Les marécageux de Gorodon", "fr_FR"),
(52,"Là où vont les fées de la Mort", "fr_FR"),
(160,"Les Champions de Glasmarteau", "fr_FR"),
(158,"Des sabots et des cornes", "fr_FR"),
(153,"Hautes-Terres d'Ombrelune instables", "fr_FR"),
(55,"Double danger", "fr_FR"),
(102,"Vie explosive", "fr_FR"),
(97,"Coups durs", "fr_FR"),
(8,"L'heure de la sorcière", "fr_FR"),
(143,"Pic du Pin de fer instable", "fr_FR"),
(134,"Étendue de Bois Meurtris instable", "fr_FR"),
(54,"Horreur ailée", "fr_FR"),
(108,"Un raid royal", "fr_FR"),
(29,"Feux de la souffrance", "fr_FR"),
(10,"Cupidité dans les Gorges", "fr_FR"),
(28,"Hordes peu vivaces", "fr_FR"),
(25,"Déconstruction systématique", "fr_FR"),
(16,"La danse des os", "fr_FR"),
(47,"Le Creuset", "fr_FR"),
(146,"Gorges Écarlates instables", "fr_FR"),
(69,"Tombée de la nuit", "fr_FR"),
(103,"Expériences dans le Champ de Pierre", "fr_FR"),
(66,"Champ de hurlements", "fr_FR"),
(48,"Forgé dans la fureur", "fr_FR"),
(92,"Dans les Profondeurs", "fr_FR"),
(39,"Bâtons et pierres", "fr_FR"),
(98,"La purification des Pins du Bois du Crépuscule", "fr_FR"),
(105,"Le Titan de pierre", "fr_FR"),
(50,"Le fléau sauvage", "fr_FR"),
(81,"Fardeau mort-vivant", "fr_FR"),
(147,"Bois du Crépuscule instable", "fr_FR"),
(138,"Champ de pierre instable", "fr_FR"),
(85,"Attaque arboricole", "fr_FR"),
(96,"La bataille de Libremarche", "fr_FR"),
(59,"La bataille des bois", "fr_FR"),
(89,"Croisade contre la Maison Aelfwar", "fr_FR"),
(106,"La chute du Marteau", "fr_FR"),
(63,"Rassemblement d’âmes", "fr_FR"),
(86,"La marche des Gedlo", "fr_FR"),
(88,"Les Profondeurs écrasantes", "fr_FR"),
(20,"Le flux des Seigneurs des Marées", "fr_FR"),
(83,"Les braises de Bois d'Argent", "fr_FR"),
(104,"Le Feu de forêt", "fr_FR"),
(45,"La Main de la Mort", "fr_FR"),
(141,"Libremarche instable", "fr_FR"),
(151,"Bois d'Argent instable", "fr_FR"),
(159,"Aggressive Kolonisierung", "de_DE"),
(154,"Blutfeuer-Ungetüm", "de_DE"),
(12,"Güldenglut", "de_DE"),
(27,"Hammer und Flamme", "de_DE"),
(24,"Höllisches Erwachen", "de_DE"),
(152,"Paradetag!", "de_DE"),
(156,"Macht der Albträume", "de_DE"),
(5,"Der Fluch", "de_DE"),
(155,"Die Blutfeuer-Armee", "de_DE"),
(127,"Exuvie von Khargroth", "de_DE"),
(129,"Da erklang solch ein Rumpeln", "de_DE"),
(157,"Unnatürliche Artenbildung", "de_DE"),
(11,"Visionen einer vergangenen Zukunft", "de_DE"),
(22,"Wogen des Wahnsinns", "de_DE"),
(112,"Fragment von Kaaz'Ra", "de_DE"),
(125,"Brodelnder Ehrgeiz", "de_DE"),
(1,"Champions des Feuersturms", "de_DE"),
(113,"Kritische Masse", "de_DE"),
(87,"Träume aus Blut und Gebeinen", "de_DE"),
(38,"Festungsverteidigung: Phase Eins", "de_DE"),
(43,"Festungsverteidigung: Phase Drei", "de_DE"),
(99,"Festungsverteidigung: Phase Zwei", "de_DE"),
(119,"Jagd: Bedrohung der Bäume", "de_DE"),
(122,"Jagd: Furcht vor der Freiheit", "de_DE"),
(120,"Jagd: Schmelzpunkt", "de_DE"),
(123,"Jagd: Geistesabwesend", "de_DE"),
(109,"Jagd: Omen des Schreckens", "de_DE"),
(111,"Jagd: Krabbelträume", "de_DE"),
(118,"Innerer Mahlstrom", "de_DE"),
(67,"Ungeladene Gäste", "de_DE"),
(57,"Rückkehr der Gefallenen", "de_DE"),
(126,"Böses Erwachen", "de_DE"),
(75,"Erschütterte Erde", "de_DE"),
(110,"Schwarm des Jahrhunderts", "de_DE"),
(116,"Das Erwachen", "de_DE"),
(56,"Das Handwerk des Krieges", "de_DE"),
(121,"Makabres Festmahl", "de_DE"),
(128,"Die steigenden Tiefen", "de_DE"),
(6,"Die Silberne Armee", "de_DE"),
(115,"Überall Dornen", "de_DE"),
(124,"Unterm Tisch", "de_DE"),
(133,"Instabil: Ashora", "de_DE"),
(142,"Instabil: Dendrom", "de_DE"),
(135,"Instabil: Steppen der Unendlichkeit", "de_DE"),
(114,"Tugend des Nachdrucks", "de_DE"),
(117,"Warum so traurig?", "de_DE"),
(95,"Marsch der Verrotteten", "de_DE"),
(19,"Plötzlicher Schwarm", "de_DE"),
(65,"Schrecken von oben", "de_DE"),
(137,"Instabil: Königszirkel", "de_DE"),
(140,"Instabil: Morban", "de_DE"),
(17,"Fressrausch", "de_DE"),
(70,"Lady im See", "de_DE"),
(145,"Instabil: Eiferer-Reich", "de_DE"),
(107,"Marsch der Legion", "de_DE"),
(31,"Geheimnisse der Tiefe", "de_DE"),
(90,"Sonderbare Botschaft", "de_DE"),
(144,"Instabil: Östliche Besitztümer", "de_DE"),
(148,"Instabil: Seratos", "de_DE"),
(62,"Auf der Jagd", "de_DE"),
(7,"Verstrickt", "de_DE"),
(136,"Instabil: Stadtkern", "de_DE"),
(74,"Todesranken", "de_DE"),
(18,"Feuer der Wiedergeburt", "de_DE"),
(68,"Im Griff des Goldes", "de_DE"),
(26,"Inselsturm", "de_DE"),
(101,"Ithkus' Aufstieg", "de_DE"),
(71,"Die Saat der Veränderung", "de_DE"),
(72,"Operation: Land in Sicht", "de_DE"),
(79,"Nehmt das alles zurück!", "de_DE"),
(35,"Die Schlacht von Kap Jul", "de_DE"),
(3,"Das Juwel von Brevane", "de_DE"),
(132,"Instabil: Kap Jul", "de_DE"),
(149,"Instabiles Königreich Pelladane", "de_DE"),
(130,"Instabil: Glutinsel", "de_DE"),
(4,"Auge um Auge", "de_DE"),
(78,"Gefürchteter Ritter", "de_DE"),
(60,"Fleischungetüm", "de_DE"),
(41,"Waldkönig", "de_DE"),
(13,"Aus der Grube", "de_DE"),
(40,"Prinz der Erde", "de_DE"),
(23,"Kain erhebt sich", "de_DE"),
(21,"Sand-Verehrung", "de_DE"),
(37,"Geißel des Sandes", "de_DE"),
(64,"Schlangen-Sturm", "de_DE"),
(15,"Scharmützel im Moor", "de_DE"),
(30,"Scharmützel im Sand", "de_DE"),
(9,"Ein Sturm zieht auf", "de_DE"),
(61,"Unwahrscheinliche Bündnisse", "de_DE"),
(131,"Instabil: Schimmersand", "de_DE"),
(139,"Instabil: Stillmoor", "de_DE"),
(94,"Wind und Flügel", "de_DE"),
(80,"Hexe des Westens", "de_DE"),
(58,"Armee des Windes", "de_DE"),
(34,"Kalt bis auf die Knochen", "de_DE"),
(2,"Eiseskalte Geister", "de_DE"),
(49,"Gebirgsflut", "de_DE"),
(44,"Ebenenfrost", "de_DE"),
(42,"Scharmützel auf den Gipfeln", "de_DE"),
(84,"Steinkalte Eindringlinge", "de_DE"),
(93,"Die Himmelsbestien", "de_DE"),
(77,"Die Schneemeute", "de_DE"),
(14,"Wüstenwind", "de_DE"),
(51,"Feuriges Hufeklappern", "de_DE"),
(82,"Der Marsch der Steinarmee", "de_DE"),
(76,"Die Rettung von Laternenhaken", "de_DE"),
(53,"Der Stich des Sandes", "de_DE"),
(73,"Himmelsschrecken", "de_DE"),
(100,"Der Brennende Dragoner", "de_DE"),
(150,"Instabil: Ödlande", "de_DE"),
(33,"Das Leben einer Sumpfmutter", "de_DE"),
(46,"Leben und sterben lassen", "de_DE"),
(36,"Runengebundene Technologie", "de_DE"),
(32,"Gefahr im Gebirge", "de_DE"),
(91,"Die Sumpfbrut von Gorodon", "de_DE"),
(52,"Der Weg der Todesfeen", "de_DE"),
(160,"Champions von Hammerhall", "de_DE"),
(158,"Hufe und Hörner", "de_DE"),
(153,"Instabil: Mondschattenberge", "de_DE"),
(55,"Doppelte Gefahr", "de_DE"),
(102,"Explosives Leben", "de_DE"),
(97,"Harte Schläge", "de_DE"),
(8,"Die Hexenstunde", "de_DE"),
(143,"Instabil: Eisenkieferngipfel", "de_DE"),
(134,"Instabil: Wundwaldregion", "de_DE"),
(54,"Geflügelter Schrecken", "de_DE"),
(108,"Royaler Raubzug", "de_DE"),
(29,"Feuer des Leidens", "de_DE"),
(10,"Gier erfüllt die Schlucht", "de_DE"),
(28,"Schlurferhorden", "de_DE"),
(25,"Systematische Zerstörung", "de_DE"),
(16,"Tanz der Knochen", "de_DE"),
(47,"Die Feuerprobe", "de_DE"),
(146,"Instabil: Scharlachrote Schlucht", "de_DE"),
(69,"Herabsinkende Nacht", "de_DE"),
(103,"Experimente in Steinfeld", "de_DE"),
(66,"Das Feld der Schreie", "de_DE"),
(48,"Geschmiedet im Zorn", "de_DE"),
(92,"Aus den Tiefen", "de_DE"),
(39,"Stöcke und Steine", "de_DE"),
(98,"Die Läuterung von Dämmerscheid", "de_DE"),
(105,"Der Steintitan", "de_DE"),
(50,"Die ungebärdige Seuche", "de_DE"),
(81,"Untoten-Bürde", "de_DE"),
(147,"Instabil: Dämmerwald", "de_DE"),
(138,"Instabil: Steinfeld", "de_DE"),
(85,"Überfall der Bäume", "de_DE"),
(96,"Kampf um Freimark", "de_DE"),
(59,"Schlacht der Waldlande", "de_DE"),
(89,"Kreuzzug gegen das Haus Aelfwar", "de_DE"),
(106,"Der Fall des Hammers", "de_DE"),
(63,"Seelensammlung", "de_DE"),
(86,"Der Marsch der Gedlo", "de_DE"),
(88,"Die erdrückende Tiefe", "de_DE"),
(20,"Die Ebbe des Flutenfürsten", "de_DE"),
(83,"Die Glut von Silberwald", "de_DE"),
(104,"Der Waldbrand", "de_DE"),
(45,"Die Hand des Todes", "de_DE"),
(141,"Instabil: Freimark", "de_DE"),
(151,"Instabil: Silberwald", "de_DE"),
(161,"Night Terrors", "en_US"),
(161,"Terreurs nocturnes", "fr_FR");
