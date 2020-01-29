
-- -----------------------------------------------------
-- Insert into `band`
-- -----------------------------------------------------

INSERT INTO `metal_rock_db`.`band` (
	`ba_id`,
    `ba_name`,
    `ba_no_members`,
    `ba_no_albums`,
    `ba_country`,
    `ba_year_established`,
    `ba_year_disbanded`
) VALUES 
	('1','Blind Guardian', '4', '11', 'Germany', '1988', NULL),
    ('2','Iron Maiden', '5', '16', 'United Kingdom', "1975", NULL),
    ('3', 'Black Sabbath', '4','19','United Kingdom', '1968', '2017'),
    ('4', 'Dream Theater', '5', '14','United States', '1985', NULL),
    ('5', 'Dio', '5', '10','United States', '1982', '2010'),
    ('6', 'Metallica', '4', '10', 'United States', '1981', NULL);
        
-- -----------------------------------------------------
-- Insert into `album`
-- -----------------------------------------------------

INSERT INTO `metal_rock_db`.`album` (
	`al_id`,
    `al_title`,
    `al_no_songs`,
    `al_year`,
    `al_average_price`,
    `band_ba_id`
) VALUES 
	('1','Batallions of Fear', '14', '1988', '20', '1'),
    ('2','Black Sabbath','7','1970','9','3'),
    ('3','The Number of the Beast','8','1982','15','2'),
    ('4','Nightfall in Middle-Earth','22','1998','13','1'),
    ('5','Fear of the Dark','12','1992','10','2'),
    ('6','Heaven and Hell','8','1980','12','3'),
    ('7','A Night at the Opera','10','2002','10','1'),
    ('8','Falling into Infinity','11','1997','6','4'),
    ('9','Dance of Death','11','2003',NULL,'2'),
    ('10','Ride the Lightning','8','1984','8','6'),
    ('11','Holy Diver','9','1983','6','5'),
    ('12','Load','14','1996','6','6');
    
-- -----------------------------------------------------
-- Insert into `genre`
-- -----------------------------------------------------

INSERT INTO `metal_rock_db`.`genre` (
	`ge_id`,
    `ge_name`
) VALUES
	('1','heavy metal'),
    ('2','power metal'),
    ('3','thrash metal'),
    ('4','progressive rock'),
    ('5','progressive metal'),
    ('6','symphonic metal'),
    ('7', 'speed metal');
       
-- -----------------------------------------------------
-- Insert into `album_has_genre`
-- -----------------------------------------------------

INSERT INTO `metal_rock_db`.`album_has_genre` (
	`album_al_id`,
    `genre_ge_id`
) VALUES
	('9','1'),
    ('7','2'),
    ('7','5'),
    ('7','6'),
    ('5','1'),
    ('3','1'),
    ('6','1'),
    ('8','4'),
    ('8','5'),
    ('1','7'),
    ('10','3'),
    ('1','3'),
    ('2','1'),
    ('11','1'),
    ('4','2'),
    ('4','5'),
    ('4','7'),
    ('4','6'),
    ('12', '1');
    
-- -----------------------------------------------------
-- Insert into `song`
-- -----------------------------------------------------

INSERT INTO `metal_rock_db`.`song` (
    `so_title`,
    `so_number_in_album`,
    `so_duration`,
    `so_link_yt`,
    `so_link_lyrics`,
    `album_al_id`
) VALUES
	('Mirror Mirror','9','306',NULL,'https://www.lyrics.com/lyric/2555730/Blind+Guardian/Mirror+Mirror','4');