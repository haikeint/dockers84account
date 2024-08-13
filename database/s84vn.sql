-- CREATE DATABASE s84vn;
CREATE TABLE s84vn.`account` (
  `username` varchar(45) NOT NULL,
  `id` bigint NOT NULL,
  `password` varchar(191) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `idcode` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `idx_account_id` (`id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
PARTITION BY KEY(`username`) PARTITIONS 3;