DROP TABLE IF EXISTS tower_site;
CREATE TABLE tower_site (playfield_id int(11) NOT NULL, site_number smallint(6) NOT NULL, min_ql smallint(6) NOT NULL, max_ql smallint(6) NOT NULL, x_coord smallint(6) NOT NULL, y_coord smallint(6) NOT NULL, site_name varchar(50) NOT NULL, PRIMARY KEY (playfield_id, site_number));
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (505,1,60,90,2740,4260,'Griffon Frontier');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (505,2,80,110,540,4180,'Draught');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (505,3,70,95,1740,3460,'Dreadfire Volcano');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (505,4,80,120,2780,3420,'Northeast Barren Lands');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (505,5,60,90,580,3140,'Western Desert');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (505,6,50,75,2420,1900,'Waylander Mines');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (505,7,70,100,1860,1700,'North of Main Omni Base');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (505,8,61,82,460,1380,'Dome Ore');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (505,9,100,150,2700,620,'Crystal Forge Volcano');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (505,10,100,150,660,460,'SW Low Plateau');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (550,1,10,20,2660,2020,'Sifter Beach');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (550,2,20,30,1780,1780,'Academy Ore');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (550,3,15,25,1980,1340,'Athen Fault');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (550,4,10,20,2660,820,'Grindmoore');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (550,5,15,23,1380,380,'Gladius Grove');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (551,1,40,90,1700,3700,'Styx Magma');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (551,2,35,50,2220,3340,'Carbon Grove');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (551,3,26,50,980,3140,'Between the Craters');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (551,4,25,35,340,2420,'Powdered Dunes');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (551,5,32,45,2540,2060,'Dust Bank');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (551,6,20,30,580,1740,'Charred Groove');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (551,7,12,45,940,1540,'West of Perdition');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (551,8,15,30,660,900,'North of Yuttos');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (560,1,100,170,1500,3420,'Terraform Edge');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (560,2,170,250,3060,3020,'West Spirals');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (560,3,170,250,3500,2980,'East Spirals');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (560,4,130,170,1220,2220,'Middle Mort Desert');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (560,5,1,100,900,1460,'Green Crater');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (560,6,110,160,3100,1460,'Oasis Ore');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (560,7,150,200,2740,700,'South East Craterwall');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (560,8,100,150,540,540,'South West Craterwall');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (560,9,160,210,2780,540,'Stormshelter');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (565,1,25,40,2940,2900,'Rich Desert Ridge');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (565,2,30,45,1980,2580,'East of Meetmedere');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (565,3,50,75,540,2020,'Middle of Western Desert');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (565,4,40,60,2580,1940,'North of Rhino Village');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (565,5,40,60,2700,1260,'South of Rhino Village');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (567,1,12,20,1220,1060,'In the Newland Desert');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (567,2,15,25,540,460,'West of Newland Lake');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (570,1,200,300,3220,3020,'North of Cyborg Hideout');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (570,2,191,250,3780,2540,'Middle of Liberty');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (570,3,120,180,980,2060,'South of Sabulum');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (570,4,190,230,3940,2060,'Cyborg Border');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (570,5,200,300,2820,1820,'Middle of Perpetual Wastelands');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (570,6,200,300,3740,1700,'South of Cyborg Hideout');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (570,7,100,150,1500,1340,'Lower Plateu Zone');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (570,8,100,150,2100,1380,'The Mid Canyon Crossing');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (570,9,120,180,3020,1220,'Plains of dust');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (570,10,100,150,900,1060,'West of Canyon');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (570,11,100,150,3180,940,'The Canyon Mines');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (570,12,190,230,2300,780,'South of Canyon');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (585,1,40,60,1220,2740,'Northern Wastelands');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (585,2,11,16,2180,2580,'West Wastelands');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (585,3,40,55,1020,2460,'Mid Wastelands');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (585,4,30,45,2140,1660,'Giant Green River Bank North');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (585,5,11,16,1180,1340,'West of the Dead Forest');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (585,6,30,45,2100,1340,'Giant Green River Bank South');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (585,7,15,22,1420,1020,'Canyon East');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (585,8,25,35,820,780,'Canyon South');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (585,9,35,50,900,460,'By the River');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (590,1,140,200,1740,3100,'By the Fisher Village');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (590,2,140,200,2100,3060,'Fisher Village Approach');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (590,3,100,170,2900,2820,'North Forest');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (590,4,90,130,3340,2700,'North-east Forest');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (590,5,130,170,860,1220,'North-west of Lava Ditches');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (590,6,100,150,3100,980,'Mid Clutching Forest');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (590,7,130,170,860,780,'South-west of Lava Ditches');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (590,8,100,150,3180,620,'South Clutching Forest');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (595,1,100,150,1140,3380,'Old ruins');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (595,2,100,150,3180,2900,'Plains of defense');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (595,3,130,180,1740,2300,'The haunted forest outskirt');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (595,4,130,180,900,2220,'Forest of Xzawkaz');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (595,5,200,300,2260,1860,'In the Swamp of Horrors');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (595,6,130,180,1420,1500,'Island of Control');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (595,7,130,180,1340,1140,'The swamp of hope');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (595,8,200,300,2900,1100,'South of the Medusa');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (595,9,140,210,2140,780,'Middle of the Foul Forest');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (595,10,200,300,540,540,'Southern Forest of Xzawkaz');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (600,1,30,45,2420,2980,'By the Rivers Edge');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (600,2,50,75,620,2900,'North Forest Road');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (600,3,25,50,1300,2660,'Along the Rivers Edge');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (600,4,30,45,3740,2500,'East Forest');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (600,5,25,50,3140,2020,'Rhino Hills');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (600,6,50,75,580,1700,'West Forest');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (600,7,60,90,1940,1620,'Crossroads');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (600,8,60,90,1140,1500,'Forestdawn');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (600,9,50,75,3220,1140,'East of Crater');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (605,1,160,200,2940,2820,'Forest Waters');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (605,2,110,120,1100,2620,'Muddy Pools');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (605,3,100,150,1700,2300,'West of Wine');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (605,4,120,180,2940,2260,'East of Wine');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (605,5,130,195,1900,1740,'Central Belial Forest');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (605,6,130,190,2500,1660,'River Delta');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (605,7,160,200,2540,1220,'Junction Forest');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (605,8,100,150,2340,860,'Borderline');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (605,9,120,180,2020,420,'Southern belial Mine');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (605,10,140,200,620,380,'Southwest Belial Mining District');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (610,1,60,90,1380,2780,'Tetlies Land control area');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (610,2,80,120,2900,2660,'East of the Great Marsh');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (610,3,60,90,660,2460,'West of outpost 10-3');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (610,4,100,150,2300,2020,'Defense of Geholva');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (610,5,106,143,2740,1180,'South of Forest of Geholva');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (610,6,120,180,860,900,'Avid Crater');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (610,7,120,180,1540,900,'East of Avid Crater');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (610,8,100,150,2460,540,'Bendelham forest Defense');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (615,1,60,100,1900,3020,'North of Lenne');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (615,2,100,150,860,2820,'Little Hawaii Defense');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (615,3,90,120,2620,2660,'Defense of Zoto');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (615,4,60,100,900,2100,'By the Ocean');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (615,5,61,100,2300,1180,'Birm');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (615,6,120,180,2700,660,'SFH Defense');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (615,7,100,150,1860,500,'South in Nightplain');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (620,1,150,200,2700,3860,'Krud the Lost Valley Defense');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (620,2,150,225,1900,3180,'Pranade');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (620,3,120,180,620,2980,'Plains of Jarga Defense');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (620,4,200,300,2460,2260,'Old Plains');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (620,5,200,300,1540,1780,'Middle of Easter Fouls Plains');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (620,6,130,200,1540,1140,'Clefre Defense');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (620,7,100,150,2020,860,'Central Sharewood');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (620,8,200,300,820,540,'Pegradul');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (625,1,90,130,1460,1940,'The Resilient Forest - North');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (625,2,90,120,1900,1540,'The Resilient Forest - East');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (625,3,125,170,2780,1380,'Central Prowler Waste');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (625,4,100,125,1380,1180,'Central Resilient Forest');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (625,5,125,170,2860,1020,'Southern Prowler Waste');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (625,6,100,150,4020,980,'The Barren Hills');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (625,7,100,125,1740,860,'The Resilient Forest - South');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (625,8,50,75,2460,540,'The Silent Woods - East');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (630,1,40,60,1540,2660,'Pleasant Range Offense Hill');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (630,2,60,90,2380,2500,'Central Pleasant Range');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (630,3,50,75,580,2420,'West of 20K');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (630,4,30,70,3220,2220,'Pleasant Range Defense');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (630,5,60,90,3220,1980,'Pleasant River Defense');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (630,6,60,90,3260,1500,'Pleasant River Offense');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (630,7,40,60,2260,1140,'Central Pleasant Plains');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (630,8,30,70,3020,1020,'East Pleasant Plains');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (630,9,30,45,740,460,'West of Versailles Tower');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (635,1,55,70,700,2420,'Northern River Bank');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (635,2,60,90,1780,2460,'Hawker Trench');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (635,3,70,105,1460,1740,'Klapam Forest Defense');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (635,4,55,70,2020,1740,'Klompfot Defense');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (635,5,70,105,1900,1220,'South of Trench');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (635,6,80,120,1140,940,'Nile Hills');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (635,7,55,70,1780,700,'Aprils Rock Offense');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (635,8,80,150,820,420,'Southern Lower River Bank');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (635,9,80,150,1700,340,'Aprils Rock Defense');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (646,1,10,15,460,1300,'Great W. Forest Vein');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (646,2,10,15,2940,980,'The Hidden Notum Canal');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (646,3,20,30,3220,620,'Mountain Areas');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (646,4,10,15,580,580,'Great W. Forest Dorsal');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (646,5,10,15,1500,460,'Western Mountain Areas');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (647,1,90,135,1100,3100,'The Mineral Mine');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (647,2,20,30,2900,2940,'NE Desert Aperient');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (647,3,37,64,1900,2700,'SurroundingTemple of Three Winds');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (647,4,25,40,2220,1900,'Piercing Thundertube');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (647,5,30,45,2820,1940,'Central Striking Ant');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (647,6,25,40,620,1660,'Tir Prairie');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (647,7,25,40,1180,1700,'Crater Swamp');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (650,1,50,75,540,2820,'West Pass');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (650,2,65,75,900,2300,'Crowning Shallows');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (650,3,100,150,1660,2180,'Haven Notum Crematorium');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (650,4,70,140,2020,1740,'Stret Vale Deux Drilling Field');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (650,5,120,180,1340,1620,'The Flooded Bottomland');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (650,6,75,90,1820,740,'Stret Woods');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (650,7,60,90,940,420,'Greenslopes');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (655,1,30,45,420,2700,'Skop Notum Mine');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (655,2,30,80,2820,2340,'Klor');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (655,3,60,80,2820,1660,'Harstad');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (655,4,40,90,540,1580,'Ubleo');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (655,5,40,60,1420,1580,'Flubu Notum Mine');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (655,6,40,70,4340,900,'Plago');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (655,7,60,80,2260,380,'jucha');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (655,8,70,105,4380,380,'Mune');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (655,9,30,60,820,340,'Mocnuf Notum Mine');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (665,1,80,150,940,4820,'Central Desert north');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (665,2,45,75,1260,3860,'Notum Disruption Mountain');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (665,3,75,110,1940,3860,'The Notum Plains');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (665,4,100,150,940,3380,'Near Clan Outpost');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (665,5,45,80,1300,3060,'Central Mountains');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (665,6,55,150,380,2300,'Surrounding Evil');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (665,7,45,60,1260,2140,'Notum Mountain');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (665,8,55,100,2020,1980,'Near Omni-Tek Outpost');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (665,9,100,150,420,820,'Shores Notum Vein');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (670,1,30,45,1100,4340,'Yukon Source');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (670,2,35,50,1460,2540,'Frisko');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (670,3,30,45,2140,2420,'Round Hills');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (670,4,50,75,2140,1900,'Dense Drewen');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (670,5,35,50,1260,1820,'Borrowed Hill');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (670,6,35,50,1340,1340,'Narrow Lune');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (670,7,10,15,2500,1220,'Micron Slopes Notum Mine');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (670,8,50,75,2100,540,'High Juniper');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (670,9,50,75,2300,460,'High Juniper Notum Vein');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (685,1,35,50,2140,2620,'Nature Reverve - East');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (685,2,35,50,1900,2580,'Nature Reverve - West');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (685,3,50,75,1300,1900,'Poole - West');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (685,4,50,75,1580,1820,'Poole - East');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (685,5,15,25,1140,1100,'V-Hill');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (685,6,20,30,1580,700,'Lunder Hills - North');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (685,7,25,40,2740,460,'Galway hills');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (685,8,20,30,1220,380,'Lunder Hills');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (685,9,25,40,2260,380,'South-east Woods');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (687,1,10,15,500,1900,'Blossom Valley');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (687,2,10,15,380,1300,'Konty Passage Plains');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (687,3,17,28,900,1220,'Vas'' Pass');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (687,4,15,25,780,900,'Arthur''s Pass');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (687,5,10,15,380,580,'Kontys Sixth Passage - West');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (687,6,10,15,620,540,'Kontys Sixth Passage - East');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (695,1,30,45,940,3260,'North West Lush Fields');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (695,2,20,30,2420,3180,'North East Lush Fields');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (695,3,10,40,3460,2940,'Stret River Island');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (695,4,40,60,1260,2460,'West of Outpost');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (695,5,35,60,1740,2460,'East of Outpost');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (695,6,20,30,1780,1820,'Central Lush Fields');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (695,7,10,15,2860,420,'South East Lush Fields');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (695,8,30,45,980,380,'South West Lush Fields');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (696,1,15,25,780,1420,'Mutant Domain North');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (696,2,20,30,500,860,'Mutant Domain Central');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (696,3,25,40,780,460,'Mutant Domain South');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (716,1,20,35,500,3220,'Northern Grassland');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (716,2,15,30,980,3020,'Moderate Grassland');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (716,3,10,20,460,2180,'Dungeon Hilltop');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (716,4,10,15,700,2180,'Rocky Upsurge');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (716,5,15,25,340,1420,'Northern Easy Swamps Notum Field');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (716,6,15,26,460,820,'Ocean Inlet');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (717,1,30,45,1620,2660,'Greater Omni Forest Swamps');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (717,2,15,25,1180,2460,'Dragonback Ridge');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (717,3,30,45,1900,1820,'Mountainous Regions');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (717,4,20,35,1860,1340,'Waterfall Swamp');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (717,5,10,15,1500,1300,'Greater Omni Forest South');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (717,6,25,40,900,1220,'Northern Semi-Barren Area');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (717,7,10,25,1940,900,'Ring Mountain Range');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (717,8,14,25,940,460,'Southern Isle');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (760,1,60,90,1580,2380,'Notum Ore in Buttu');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (760,2,35,50,940,2020,'Mountain of Fourtyone');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (760,3,35,50,1300,1980,'Mountain in 4Holes');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (760,4,45,60,1660,1740,'South of Ahenus');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (760,5,70,100,1820,1340,'Ibreri Woods North');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (760,6,35,50,1460,1260,'Mountain of Fourtytwo');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (760,7,100,150,1740,1060,'Ibreri Woods');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (760,8,45,70,1180,500,'Ibreri');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (760,9,45,70,460,420,'Jall Mountain');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (790,1,20,30,1700,3100,'Hells Courtyard');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (790,2,15,25,2300,2860,'Pondus Beach');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (790,3,15,30,1700,2780,'Hound Land');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (790,4,20,40,1980,2780,'Hound Notum Field');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (790,5,20,30,1700,1940,'East Mutie');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (790,6,12,30,1340,1220,'Omni Outpost');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (790,7,20,30,660,1180,'South Mutie');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (790,8,30,60,2260,1140,'The Beach');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (791,1,15,26,420,2020,'Populous Mountain');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (791,2,12,22,660,1500,'Hound Land Mining');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (791,3,12,20,220,1060,'Stret West Notum Ore');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (791,4,10,15,740,820,'Snake Mountain');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (791,5,20,40,780,460,'Southern Empty Wastes and Roads');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (791,6,10,20,380,340,'Transit Valley Ore');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (795,1,40,60,4220,1580,'Illuminati');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (795,2,100,150,500,1540,'Northern Forest of Illuminations');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (795,3,25,50,3420,1540,'Fate Notum Field');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (795,4,71,120,580,820,'Pegrama');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (795,5,84,120,1220,700,'Grazeland Notum Field');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (795,6,50,75,4020,620,'Winterbottom');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (795,7,90,120,540,500,'Southern Forest of Illuminations');
INSERT INTO tower_site (playfield_id, site_number, min_ql, max_ql, x_coord, y_coord, site_name) VALUES (795,8,60,90,2900,500,'Summer');