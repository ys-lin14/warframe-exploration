DROP DATABASE IF EXISTS steam;
CREATE DATABASE steam;
USE steam;

SET NAMES utf8mb4;
SET character_set_client = utf8mb4;

CREATE TABLE api_queries (
	query_number SMALLINT NOT NULL AUTO_INCREMENT,
	query_cursor VARCHAR(30) NOT NULL,
	query_success TINYINT NOT NULL,		
	number_of_reviews_queried TINYINT NOT NULL,
    query_date date NOT NULL,
    PRIMARY KEY (query_number)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE users (
	steam_id VARCHAR(20) NOT NULL,
    total_playtime SMALLINT NOT NULL,
    playtime_last_two_weeks SMALLINT NOT NULL,
	playtime_at_review SMALLINT NOT NULL,
    last_played date NOT NULL,
    PRIMARY KEY (steam_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE reviews (
	steam_id VARCHAR(20) NOT NULL,
    user_review TEXT NOT NULL,
    timestamp_updated INT NOT NULL,
    recommends_game TINYINT NOT NULL,
    PRIMARY KEY (steam_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;