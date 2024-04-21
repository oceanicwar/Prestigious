CREATE TABLE IF NOT EXISTS `prestige_rewards` (
  `entry` int NOT NULL DEFAULT '0',
  `count` int DEFAULT '1',
  `scalable` tinyint DEFAULT NULL,
  `prestige` int DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `prestige_rewards`;
INSERT INTO `prestige_rewards` (`entry`, `count`, `scalable`, `prestige`, `comment`) VALUES
	(37742, 100, 1, 0, 'Prestige Coin');

CREATE TABLE IF NOT EXISTS `prestige_whitelist_quest` (
  `quest_id` int NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `prestige_whitelist_quest`;
INSERT INTO `prestige_whitelist_quest` (`quest_id`, `comment`) VALUES
	(24545, 'Shadowmourne - 1 - The Sacred and the Corrupt'),
	(24547, 'Shadowmourne - 3 - A Feast of Souls'),
	(24548, 'Shadowmourne - 7 - The Splintered Throne'),
	(24549, 'Shadowmourne - 9 - Shadowmourne...'),
	(24743, 'Shadowmourne - 2 - Shadow\'s Edge'),
	(24748, 'Shadowmourne - 10 - The Lich King\'s Last Stand'),
	(24749, 'Shadowmourne - 4 - Unholy Infusion'),
	(24756, 'Shadowmourne - 5 - Blood Infusion'),
	(24757, 'Shadowmourne - 6 - Frost Infusion'),
	(24912, 'Shadowmourne - 8 - Empowerment');

CREATE TABLE IF NOT EXISTS `prestige_sacrifice_brackets` (
  `itemlevel` int NOT NULL,
  `multiplier` float DEFAULT NULL,
  PRIMARY KEY (`itemlevel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `prestige_sacrifice_brackets`;
INSERT INTO `prestige_sacrifice_brackets` (`itemlevel`, `multiplier`) VALUES
	(200, 1.5),
	(216, 2.0),
	(232, 3.0),
	(245, 4.0),
	(251, 5.0),
	(255, 6.0),
	(258, 7.0),
	(262, 8.0),
	(264, 9.0),
	(266, 10.0),
	(268, 11.0),
	(270, 12.0);
