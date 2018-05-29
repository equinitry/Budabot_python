CREATE TABLE IF NOT EXISTS alts (group_id INT NOT NULL PRIMARY KEY, main_id INT default 0, group_info VARCHAR(1) default "");
CREATE TABLE IF NOT EXISTS alts_validate (sender_id INT NOT NULL, new_alt_id INT NOT NULL, time BIGINT default 0);
