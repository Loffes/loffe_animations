DROP TABLE IF EXISTS `favoriteanimation`;

CREATE TABLE `favoriteanimation` (
	`id` bigint(255) NOT NULL AUTO_INCREMENT,
	`identifier` varchar(60) NOT NULL,
	`lib` varchar(255) DEFAULT 'mini@strip_club@idles@bouncer@base',
	`animation` varchar(255) DEFAULT 'base',
	`repet` int(5) DEFAULT 1,
	`button` int(5) DEFAULT 20,
	`scenario` BOOLEAN NOT NULL DEFAULT FALSE,
	PRIMARY KEY (`id`)
);