DROP DATABASE IF EXISTS warframe;
CREATE DATABASE warframe;
USE warframe;

SET NAMES utf8mb4;
SET character_set_client = utf8mb4;

CREATE TABLE api_queries (
	query_number SMALLINT NOT NULL AUTO_INCREMENT,
	query_cursor VARCHAR(30) NOT NULL,
	success TINYINT,		
	reviews_retrieved TINYINT,
    PRIMARY KEY (query_number)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO api_queries(query_cursor) VALUES ('*');

CREATE TABLE users (
	user_number MEDIUMINT UNSIGNED AUTO_INCREMENT,
	steam_id VARCHAR(20) NOT NULL,
    total_minutes_played MEDIUMINT UNSIGNED NOT NULL,
    timestamp_last_played INT UNSIGNED NOT NULL,
    PRIMARY KEY (user_number)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE reviews (
	user_number MEDIUMINT UNSIGNED AUTO_INCREMENT,
	steam_id VARCHAR(20) NOT NULL,
    user_review TEXT NOT NULL,
    timestamp_updated INT UNSIGNED NOT NULL,
    recommends_game TINYINT NOT NULL,
    PRIMARY KEY (user_number)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;