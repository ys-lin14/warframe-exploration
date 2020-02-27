DROP DATABASE IF EXISTS warframe;
CREATE DATABASE warframe;
USE warframe;

SET NAMES utf8mb4;
SET character_set_client = utf8mb4;

CREATE TABLE api_queries (
	query_number SMALLINT NOT NULL AUTO_INCREMENT,
	query_cursor VARCHAR(30) NOT NULL,
	query_success TINYINT,		
	number_of_reviews_queried TINYINT,
    PRIMARY KEY (query_number)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO api_queries(query_cursor) VALUES ('*');

CREATE TABLE users (
	steam_id VARCHAR(20) NOT NULL,
    total_playtime MEDIUMINT NOT NULL,
    playtime_last_two_weeks SMALLINT NOT NULL,
	playtime_at_review MEDIUMINT NOT NULL,
    last_played date NOT NULL,
    PRIMARY KEY (steam_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE reviews (
	steam_id VARCHAR(20) NOT NULL,
    user_review TEXT NOT NULL,
    timestamp_updated INT NOT NULL,
    recommends_game TINYINT NOT NULL,
    PRIMARY KEY (steam_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;