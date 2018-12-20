-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 20, 2018 at 10:09 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameworld`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Category_Id` int(11) NOT NULL,
  `Category_Name` text NOT NULL,
  `Category_Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Category_Id`, `Category_Name`, `Category_Image`) VALUES
(1, 'Blizzard', 'C:\\laragon\\www\\Game world\\GameShop_AndyDriessen\\background_image\\BlizzLogo.png'),
(2, 'Nintendo_Switch', 'C:\\laragon\\www\\Game world\\GameShop_AndyDriessen\\background_image\\NintendoSwitchLogo.png'),
(3, 'Steam', 'C:\\laragon\\www\\Game world\\GameShop_AndyDriessen\\background_image\\steam-logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `game_world`
--

CREATE TABLE `game_world` (
  `Game_ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `picture` text NOT NULL,
  `releas_date` int(11) NOT NULL,
  `Category_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_world`
--

INSERT INTO `game_world` (`Game_ID`, `Name`, `description`, `price`, `picture`, `releas_date`, `Category_Id`) VALUES
(1, 'World of Warcraft', 'is een massively multiplayer online role-playing game (MMORPG).Het is het vierde spel dat zich afspeelt in de fantasiewereld Warcraft. World of Warcraft vindt plaats binnen de wereld van Azeroth, ongeveer vier jaar na de gebeurtenissen van Warcraft III: The Frozen Throne. ', 44.99, 'background_image\\WOW_DataBase.jpg', 2001, 1),
(2, 'Diablo III', 'Diablo III is an action role-playing game that takes place throughout the dark fantasy world of Sanctuary. \r\nYou play a hero who engages in fast-paced combat that tests your reflexes and rewards tactical decisions. As you slay hordes of monsters and challenging bosses, you grow in experience and ability, learning new skills and acquiring items of incredible power.', 19.99, 'background_image\\Diablo_3_DataBase.jpg', 2012, 1),
(3, 'StarCraft II', 'StarCraft II is een real-time strategy computerspel. Het spel bevat de drie rassen uit het oorspronkelijke spel: de Protoss, de Terran en de Zerg. Blizzard heeft aangekondigd dat dit de enige rassen in het spel zullen zijn.', 39.99, 'background_image\\Starcraft_2_DataBase.png', 2002, 1),
(4, 'Hearthstone', 'Collect powerful cards and create mighty decks. Summon minions and sling spells to seize control of an ever-shifting battlefield. Wield masterful strategies and defeat all players who dare challenge you.', 0, 'background_image\\HearthStone_DataBase.png', 2002, 1),
(5, 'Heroes of the storm', 'Heroes of the Storm is a multiplayer online battle arena video game developed and published by Blizzard Entertainment for Microsoft Windows and macOS,The game features heroes from Blizzard\'s franchises including Warcraft, Diablo, StarCraft, The Lost Vikings, and Overwatch. The game uses both free-to-play and freemium models and is supported by micropayments, which can be used to purchase heroes', 0, 'background_image\\heroes-of-the-storm_DataBase.jpg', 2015, 1),
(6, 'Overwatch', 'Overwatch is a team-based multiplayer first-person shooter video game developed and published by Blizzard Entertainment,Overwatch assigns players into two teams of six, with each player selecting from a roster of nearly 30 characters, known as \"heroes\", each with a unique style of play whose roles are divided into three general categories that fit their role.', 39.99, 'background_image\\Overwatch-DataBase.jpg', 2016, 1),
(7, 'Starcraft', 'StarCraft is a military science fiction media franchise, created by Chris Metzen and James Phinney and owned by Blizzard Entertainment. The series, set in the beginning of the 26th century, centers on a galactic struggle for dominance among four species—the adaptable and mobile Terrans, the ever-evolving insectoid Zerg, the powerfully enigmatic Protoss, and the \"god-like\" Xel\'Naga creator race—in a distant part of the Milky Way galaxy known as the Koprulu Sector.', 14.99, 'background_image\\starcraft_DataBase.jpg', 1998, 1),
(8, 'Warcraft III', 'In the game, players collect resources, train individual units and heroes and build bases in order to achieve various goals (in single-player mode) or to defeat the enemy player. Four playable factions can be chosen from: Humans and Orcs, both of which appeared in the previous games, and two new factions, the Night Elves and the Undead. Warcraft III\'s single-player campaign is laid out similarly to that of StarCraft and is being told through the races in a progressive manner. Players can play matches against the computer or against others using local area networking or Blizzard\'s Battle.net gaming platform.', 29.99, 'background_image\\WarcraftIII_DataBase.jpg', 2019, 1),
(9, 'Age of enpire 2', 'The Age of Kings is set in the Middle Ages and contains thirteen playable civilizations. Players aim to gather resources, which they use to build towns, create armies, and defeat their enemies. There are five historically based campaigns, which constrict the player to specialized and story-backed conditions. There are three additional single-player game modes, and multiplayer is supported. Despite using the same game engine and similar code to its predecessor.', 19.99, 'background_image\\age-of-empires-DataBase.jpg', 1998, 3),
(10, 'Pokemon: Lets Go, Pikachu', 'Reis door Kanto en beleef spannende avonturen in Pokémon: Let’s Go, Pikachu! en Pokémon: Let’s Go, Eevee! voor de Nintendo Switch. Ga op pad als beginnende Pokémon Trainer, vang Pokémon, sluit er vriendschap mee en vecht zij aan zij!', 59.99, 'background_image\\SQ_NSwitch_PokemonLetsGoPikachu_enGB.jpg', 2018, 2),
(11, 'pokemon: let\'s go eevie', 'Reis door Kanto en beleef spannende avonturen in Pokémon: Let’s Go, Pikachu! en Pokémon: Let’s Go, Eevee! voor de Nintendo Switch. Ga op pad als beginnende Pokémon Trainer, vang Pokémon, sluit er vriendschap mee en vecht zij aan zij!', 59, 'background_image\\eevie.jpg', 2018, 2),
(12, 'super smash bros', 'Lanceer je tegenstanders het level uit in deze ultieme actiegame. Dankzij snellere actie, nieuwe voorwerpen, aanvallen, verdedigingsmogelijkheden, technieken en nog veel meer beleef je een zinderende strijd, of je nu thuis of onderweg bent.', 69.99, 'background_image\\super_smash.png', 2018, 2),
(13, 'The Legend of Zelda: Breath of the Wild', 'Vergeet alles wat je ooit hebt geleerd over The Legend of Zelda-games. Maak een ontdekkingsreis in een wereld vol avontuur in The Legend of Zelda: Breath of the Wild, een grensverleggende, nieuwe game in de bekroonde serie.', 69.99, 'background_image\\PS_NSwitch_TheLegendOfZeldaBreathOfTheWild_PEGI.jpg', 2018, 2),
(14, 'Splatoon', 'Verover terrein door de grond met inkt te bedekken in gevechten van vier tegen vier. Het team dat eindigt met het grootste territorium, wint! Je zult moeten samenwerken en op het juiste moment in een inktvis moeten veranderen om je tegenstanders te slim af te zijn. Kliederen maar! ', 59.99, 'background_image\\PS_NSwitch_Splatoon2_nlNL.jpg', 2018, 2),
(15, 'Mario Kart 8 Deluxe', 'Mario, Luigi, Peach en andere helden uit de Super Mario-serie krijgen gezelschap van oude en nieuwe bekenden zoals King Boo, Dry Bones en Bowser Jr. Zelfs de Inklings uit Splatoon scheuren mee over het circuit!\r\nZodra je een coureur hebt gekozen, kun je een voertuig selecteren en het voorzien van banden, een chassis en een paraglider naar keuze voordat het startschot wordt gegeven.', 59.99, 'background_image\\PS_NSwitch_MarioKart8Deluxe_nlNL.jpg', 2018, 2),
(16, 'factorio', 'Factorio is a game in which you build and maintain factories. \r\nYou will be mining resources, researching technologies, building infrastructure, automating production and fighting enemies. Use your imagination to design your factory, combine simple elements into ingenious structures, apply management skills to keep it working, and protect it from the creatures who don\'t really like you. \r\nThe game is very stable and optimized for building massive factories. You can create your own maps, write mods in Lua, or play with friends via Multiplayer. ', 30, 'background_image\\factorio.jpg', 2012, 3),
(17, 'Starbound', 'You’ve fled your home, only to find yourself lost in space with a damaged ship. Your only option is to beam down to the planet below and gather the resources you need to repair your ship and set off to explore the vast, infinite universe…\r\nIn Starbound, you create your own story - there’s no wrong way to play! You may choose to save the universe from the forces that destroyed your home, uncovering greater galactic mysteries in the process, or you may wish to forego a heroic journey entirely in favor of colonizing uncharted planets.', 14.99, 'background_image\\starbound.png', 2012, 3),
(18, 'Stardew valley', 'Build the farm of your dreams: Turn your overgrown fields into a lively and bountiful farm!\r\nExpress yourself: There are hundreds of character & home customization options to choose from!\r\nMaster your ranching skills: Raise animals, go fishing, tend to crops & craft useful machines for your farm!\r\nBecome a part of the local community: Pelican Town is home to 30 residents you can get to know!\r\nMeet someone special: With 12 townsfolk to date, you may even find someone to start a family with!\r\nExplore vast, mysterious caves: Encounter dangerous monsters & valuable treasures deep underground!', 13.99, 'background_image\\SQ_NSwitchDS_StardewValley.jpg', 2016, 3),
(19, 'terraria', 'Gather, transform, and utilize raw materials as you explore an assortment of distinct biomes and structures. Each world is unique, so you never know what you will find! Wield a vast arsenal of weaponry and armor – from swords to magic spells to firearms and beyond – as you triumph over the enemy hordes that are intent on your destruction! Construct the world you desire! From simple dwellings to immense fortresses to intricate machinery, the choice is yours! Become the architect of your very own world! ', 9.99, 'background_image\\SI_WiiU_3DS_Terraria_image1600w.jpg', 2013, 3),
(20, 'the binding of isaac rebirth', 'Rebirth features a new, non-Flash-based engine with 16-bit graphics, a new music score, and a redesigned interface intended to streamline gameplay. The game includes all of the content from the original game, as well as the additional content introduced in the Wrath of the Lamb expansion, while adding content that was cut from the original game due to the limitations of Flash. ', 14.99, 'background_image\\BindingOfIsaacRebirth.png', 2014, 3),
(21, 'rise to ruins', 'Uncompromising, survivalistic, ruthless, strategic pixely-art gameplay! A Real Time Strategy Roguelike Survival Defense Town Management game with a twist! ', 9.99, 'background_image\\rise-to-ruins-pc-cd-key-1.jpg', 2014, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Category_Id`);

--
-- Indexes for table `game_world`
--
ALTER TABLE `game_world`
  ADD PRIMARY KEY (`Game_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
