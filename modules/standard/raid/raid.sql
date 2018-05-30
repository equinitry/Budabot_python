CREATE TABLE IF NOT EXISTS raid_points (char_id INT NOT NULL, points INT NOT NULL, action INT NOT NULL, value VARCHAR(50), `time` INT NOT NULL);
CREATE TABLE IF NOT EXISTS raids (raid_id INT PRIMARY KEY, name VARCHAR(50), channel VARCHAR(20), by_who INT NOT NULL, create_time INT NOT NULL);
CREATE TABLE IF NOT EXISTS raid_status (raid_status_id INT PRIMARY KEY, raid_id INT NOT NULL, action INT NOT NULL, value VARCHAR(255), by_who INT NOT NULL, `time` INT NOT NULL);
