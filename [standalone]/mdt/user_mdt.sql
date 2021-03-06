CREATE TABLE `player_mdt` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` varchar(11) DEFAULT NULL,
	`notes` varchar(255) DEFAULT NULL,
	`mugshot_url` varchar(255) DEFAULT NULL,
	`bail` bit DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `vehicle_mdt` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`plate` varchar(255) DEFAULT NULL,
	`stolen` bit DEFAULT 0,
	`notes` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `player_convictions` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` varchar(11) DEFAULT NULL,
	`offense` varchar(255) DEFAULT NULL,
	`count` int(11) DEFAULT NULL,
	
	PRIMARY KEY (`id`)
);

CREATE TABLE `mdt_reports` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` varchar(11) DEFAULT NULL,
	`title` varchar(255) DEFAULT NULL,
	`incident` longtext DEFAULT NULL,
    `charges` longtext DEFAULT NULL,
    `author` varchar(255) DEFAULT NULL,
	`name` varchar(255) DEFAULT NULL,
    `date` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `mdt_warrants` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(255) DEFAULT NULL,
	`char_id` varchar(11) DEFAULT NULL,
	`report_id` int(11) DEFAULT NULL,
	`report_title` varchar(255) DEFAULT NULL,
	`charges` longtext DEFAULT NULL,
	`date` varchar(255) DEFAULT NULL,
	`expire` varchar(255) DEFAULT NULL,
	`notes` varchar(255) DEFAULT NULL,
	`author` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(50) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  `jailtime` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`, `jailtime`) VALUES
	(1, 'Assassination', 0, 0, 0),
	(2, 'Racketeering/RICO', 0, 0, 0),
	(3, 'Treason', 0, 0, 0),
	(4, 'Terrorism', 0, 0, 0),
	(5, 'Murder of a Government Official', 1500, 0, 60),
	(6, 'Attempted Murder of a Government Official', 500, 0, 20),
	(7, 'Assault on a Government Official', 250, 0, 10),
	(8, 'Impersonation of a Government Official', 200, 0, 5),
	(9, 'Possession of Government Property', 200, 0, 5),
	(10, 'Aggravated Armed Robbery', 300, 0, 10),
	(11, 'Armed Robbery', 200, 0, 5),
	(12, 'Felony Murder', 1000, 0, 45),
	(13, 'Attempted Murder', 250, 0, 5),
	(14, 'Torture', 150, 0, 5),
	(15, 'Manslaughter', 750, 0, 30),
	(16, 'Kidnapping', 100, 0, 5),
	(17, 'Attempted Kidnapping', 50, 0, 5),
	(18, 'Assault with a Deadly Weapon', 200, 0, 10),
	(19, 'Attempted/Unarmed Robbery', 100, 0, 5),
	(20, 'Grand Theft Auto', 250, 0, 5),
	(21, 'Theft of a Motor Vehicle', 125, 0, 5),
	(22, 'Hit and Run w/ Injuries', 150, 0, 5),
	(23, 'Felony Evading/Eluding an LEO', 200, 0, 5),
	(24, 'Felony Speeding/Reckless Driving', 150, 0, 5),
	(25, 'Harboring a Fugitive', 300, 0, 5),
	(26, 'Escaping Police Custody', 100, 0, 5),
	(27, 'Criminal Threats', 75, 0, 5),
	(28, 'Arson', 100, 0, 5),
	(29, 'Weapons Stockpiling/Trafficking/Sales', 1000, 0, 15),
	(30, 'Possession of Burglary Tools', 150, 0, 5),
	(31, 'Possession of a Class III Weapon', 1000, 0, 15),
	(32, 'Possession of a Class II Weapon', 500, 0, 10),
	(33, 'Criminal Possession of a Class I Firearm', 250, 0, 10),
	(34, 'Possession of illegal gun modifications', 250, 0, 5),
	(35, 'Possession of Dirty Money', 100, 0, 5),
	(36, 'Drug Cultivation/Manufacturing', 300, 0, 5),
	(37, 'Poss. of a CDS Schedule I w/ Intent to Sell', 300, 0, 5),
	(38, 'Poss. of a CDS Schedule II w/ Intent to Sell', 600, 0, 10),
	(39, 'Poss. of a CDS Schedule III w/ Intent to Sell', 1000, 0, 15),
	(40, 'Stalking', 100, 0, 5),
	(41, 'Perjury', 150, 0, 5),
	(42, 'Fraud', 150, 0, 5),
	(43, 'Extortion', 150, 0, 5),
	(44, 'Bribery', 150, 0, 5),
	(45, 'Felonious Trespassing', 500, 0, 10),
	(46, 'Burglary', 200, 0, 5),
	(47, 'Brandishing a Firearm', 150, 0, 0),
	(48, 'Negligent Discharge  of a Firearm', 150, 0, 0),
	(49, 'Failure to Inform LEO', 100, 0, 0),
	(50, 'Failure to Identify', 100, 0, 0),
	(51, 'Reckless Endangerment', 100, 0, 5),
	(52, 'Assault', 150, 0, 5),
	(53, 'Criminal Threats', 75, 0, 0),
	(54, 'Contempt of Court', 150, 0, 5),
	(55, 'Obstruction of Justice', 100, 0, 3),
	(56, 'Vandalism/Destruction of Property', 150, 0, 0),
	(57, 'Public Intoxication', 50, 0, 0),
	(58, 'Resisting Arrest', 100, 0, 5),
	(59, 'Disorderly Conduct/Disturbing the Peace', 100, 0, 0),
	(60, 'Harassment', 50, 0, 0),
	(61, 'Defmation/Slander', 50, 0, 0),
	(62, 'Loitering', 50, 0, 0),
	(63, 'Jay Walking', 50, 0, 0),
	(64, 'Reckless Driving', 100, 0, 5),
	(65, 'Attempted Grand Theft Auto', 150, 0, 5),
	(66, 'Driving While Intoxicated', 150, 0, 5),
	(67, 'Driving w/ out a License', 200, 0, 3),
	(68, 'Participation in a non sanction street race', 400, 0, 5),
	(69, 'Joyriding', 250, 0, 5),
	(70, 'Illegal Vehicle Modifications', 1000, 0, 0),
	(71, 'Evading Arrest ( Foot )', 200, 0, 5),
	(72, 'Money Laundering', 200, 0, 5),
	(73, 'Illegal Gambling', 200, 0, 5),
	(74, 'False Identification', 250, 0, 5),
	(75, 'Failure to Comply with a Court Order', 0, 0, 0),
	(76, 'Failure to Obey a Lawful Order', 250, 0, 5),
	(77, 'Misuse/Abuse of 911', 250, 0, 5),
	(78, 'False Statements ', 250, 0, 5),
	(79, 'Breaking and Entering', 750, 0, 0),
	(80, 'Trespassing', 250, 0, 5),
	(81, 'Poss. Illegal Contraband', 750, 0, 5),
	(82, 'Conspiracy to Commit a Misdemeanor', 750, 0, 5),
	(83, 'Indecent Exposure', 250, 0, 0),
	(84, 'Act of Sexual Intercourse in Public', 500, 0, 0),
	(85, 'Failure to Stop', 150, 0, 0),
	(86, 'General Speeding', 150, 0, 0),
	(87, 'Speeding 15 MPH Over', 250, 0, 0),
	(88, 'Speeding 30 MPH Over', 500, 0, 0),
	(89, 'Unroadworthy Vehicle', 250, 0, 0),
	(90, 'Careless Driving', 500, 0, 0),
	(91, 'Illegal U-Turn', 150, 0, 0),
	(92, 'Illegal Window TInt', 300, 0, 0),
	(93, 'Failure to Yield to Emergency Services', 250, 0, 0),
	(94, 'Failure to Give Right of Way', 250, 0, 0),
	(95, 'Light Law Violation', 250, 0, 0),
	(96, 'Parking Violation', 150, 0, 0),
	(97, 'Improper/Unsafe Turn', 150, 0, 0),
	(98, 'Improper/Missing Plate', 100, 0, 0),
	(99, 'Wrong Way of Travel', 250, 0, 0),
	(100, 'Improper/Illegal Passing', 150, 0, 0),
	(101, 'Failure to Maintain Lane', 150, 0, 0),
	(102, 'Illegal Use of Sirens/ELS', 300, 0, 0),
	(103, 'Obstructing/Impeding', 250, 0, 0),
	(104, 'Possession of Stolen Property', 150, 0, 3);
