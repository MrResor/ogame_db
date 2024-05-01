DROP DATABASE IF EXISTS `ogame`;
CREATE DATABASE `ogame`;

USE `ogame`;

DROP TABLE IF EXISTS `planets`;
CREATE TABLE `planets` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `galaxy` int NOT NULL,
  `system` int NOT NULL,
  `place` int NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `class` int DEFAULT NULL,
  `fight` int DEFAULT NULL,
  `shield` int DEFAULT NULL,
  `armor` int DEFAULT NULL,
  `hyperspace` int DEFAULT NULL,
  `fuel_drive` int DEFAULT NULL,
  `pulse_drive` int DEFAULT NULL,
  `hyper_drive` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
