


-- db_encuesta_sic.encuesta definition

CREATE TABLE `encuesta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `borrado` bit(1) DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `estado` int DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `num_documento` int DEFAULT NULL,
  `usuario_creacion` varchar(255) DEFAULT NULL,
  `marca_favorita` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_MARCAFAVORITA` (`marca_favorita`),
  CONSTRAINT `FK_MARCAFAVORITA` FOREIGN KEY (`marca_favorita`) REFERENCES `item_lista` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- db_encuesta_sic.item definition

CREATE TABLE `item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `borrado` bit(1) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `nombre_item` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- db_encuesta_sic.item_lista definition

CREATE TABLE `item_lista` (
  `id` int NOT NULL AUTO_INCREMENT,
  `borrado` bit(1) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `nombre_lista` varchar(255) DEFAULT NULL,
  `id_item` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ID_ITEM` (`id_item`),
  CONSTRAINT `FK_ID_ITEM` FOREIGN KEY (`id_item`) REFERENCES `item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- db_encuesta_sic.usuario definition

CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `borrado` bit(1) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `intentos` int DEFAULT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;