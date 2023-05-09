CREATE DATABASE IF NOT EXISTS `mbta`;
USE `mbta`;

CREATE TABLE `cards` (
    `id` INT AUTO_INCREMENT,
    PRIMARY KEY(`id`)
);

CREATE TABLE `stations` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL UNIQUE,
    `line` ENUM('blue', 'green', 'orange', 'red') NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `swipes` (
    `id` INT AUTO_INCREMENT,
    `card_id` INT,
    `station_id` INT,
    `type` ENUM('enter', 'exit', 'deposit') NOT NULL,
    `datetime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `amount` DECIMAL(5,2) NOT NULL CHECK(`amount` != 0),
    PRIMARY KEY(`id`),
    FOREIGN KEY(`station_id`) REFERENCES `stations`(`id`),
    FOREIGN KEY(`card_id`) REFERENCES `cards`(`id`)
);


DESCRIBE `cards`;
DESCRIBE `stations`;
DESCRIBE `swipes`;


SHOW TABLES;

LOAD DATA INFILE 'red.csv'
INTO TABLE `stations`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

ALTER TABLE `stations`
MODIFY `line` ENUM('blue', 'green', 'orange', 'red', 'silver') NOT NULL;
