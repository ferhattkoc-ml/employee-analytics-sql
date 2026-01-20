-- calisan_db.calisan_table definition

CREATE TABLE `calisan_table` (
  `calisan_id` int NOT NULL,
  `dep_id` int DEFAULT NULL,
  `sehir_id` int DEFAULT NULL,
  `telefon_tur_id` int DEFAULT NULL,
  `dogumtarihi` date DEFAULT NULL,
  `maas` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`calisan_id`),
  KEY `fk_calisan_dep` (`dep_id`),
  KEY `fk_calisan_sehir` (`sehir_id`),
  KEY `fk_calisan_tel` (`telefon_tur_id`),
  CONSTRAINT `fk_calisan` FOREIGN KEY (`calisan_id`) REFERENCES `calisan` (`calisan_id`),
  CONSTRAINT `fk_calisan_dep` FOREIGN KEY (`dep_id`) REFERENCES `departman` (`dep_id`),
  CONSTRAINT `fk_calisan_sehir` FOREIGN KEY (`sehir_id`) REFERENCES `sehir` (`sehir_id`),
  CONSTRAINT `fk_calisan_tel` FOREIGN KEY (`telefon_tur_id`) REFERENCES `telefon_tur_pk` (`telefon_tur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
