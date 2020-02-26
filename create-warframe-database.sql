DROP DATABASE IF EXISTS steam;
CREATE DATABASE steam;
USE steam;

SET NAMES utf8mb4;
SET character_set_client = utf8mb4;

CREATE TABLE review_query (
	query_number SMALLINT NOT NULL AUTO_INCREMENT,
	query_cursor VARCHAR(30) NOT NULL,
	success TINYINT NOT NULL,		
	number_reviews TINYINT NOT NULL,
    query_date date NOT NULL,
    PRIMARY KEY (query_number)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- refer to https://developer.valvesoftware.com/wiki/SteamID for steamID format