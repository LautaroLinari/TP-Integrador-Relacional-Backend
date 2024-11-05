CREATE SCHEMA IF NOT EXISTS trailerflix
DEFAULT CHARACTER SET utf8mb4;

USE trailerflix;

CREATE TABLE IF NOT EXISTS `categorias` (
	`ID` int NOT NULL,
	`nombre_categoria` varchar(255) DEFAULT '100',
	PRIMARY KEY (`ID`)
);

CREATE TABLE IF NOT EXISTS `contenidos` (
	`ID` int NOT NULL AUTO_INCREMENT,
    `id_categoria` int NOT NULL,
	`titulo` varchar(255) DEFAULT '255',
	`resumen` text,
    `duracion` varchar(20),
	`temporadas` int,
	`enlaces_trailer` varchar(255) DEFAULT '255',
	PRIMARY KEY (`ID`),
	FOREIGN KEY(`id_categoria`) REFERENCES `categorias` (`id`)
);

CREATE TABLE IF NOT EXISTS `generos` (
	`ID` int NOT NULL AUTO_INCREMENT,
	`nombre_genero` varchar(255) DEFAULT '100',
	PRIMARY KEY (`ID`)
);

CREATE TABLE IF NOT EXISTS `actores` (
	`ID` int NOT NULL AUTO_INCREMENT,
	`nombre` varchar(255) DEFAULT '100',
	`apellido` varchar(255) DEFAULT '100',
	PRIMARY KEY (`ID`)
);

CREATE TABLE IF NOT EXISTS `contenido_actores` (
	`ID_contenido` int NOT NULL,
	`ID_actor` int NOT NULL,
	FOREIGN KEY(`ID_contenido`) REFERENCES `contenidos` (`id`),
	FOREIGN KEY(`ID_actor`) REFERENCES `actores` (`id`)
);


CREATE TABLE IF NOT EXISTS `contenido_generos` (
	`ID_contenido` int NOT NULL,
	`ID_genero` int NOT NULL,
	FOREIGN KEY(`ID_contenido`) REFERENCES `contenidos` (`id`),
	FOREIGN KEY(`ID_genero`) REFERENCES `generos` (`id`)
);
