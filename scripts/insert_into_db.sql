
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
	('Mirror Mirror','9','306','https://youtu.be/CNGCvI9dpZY','https://www.lyrics.com/lyric/2555730/Blind+Guardian/Mirror+Mirror','4'),
    ('Black Sabbath','1','380','https://youtu.be/0lVdMbUx1_k',NULL,'1'),
    ('Number of the Beast','5','265','https://youtu.be/WxnN05vOuSM','https://www.lyrics.com/lyric/673078/Iron+Maiden/Number+of+the+Beast','3'),
    ('Run to the Hills','6','230','https://youtu.be/86URGgqONvA','https://www.lyrics.com/lyric/518185/Iron+Maiden/Run+to+the+Hills','3'),
    ('Majesty','1','448','https://youtu.be/ozOXyQPLISc',NULL,'1'),
    ('Nightfall','4','334','https://youtu.be/M0TcB5lxfuY','https://www.lyrics.com/lyric/2555725/Blind+Guardian/Nightfall','4'),
    ('N.I.B.','4','368','https://youtu.be/MiY2JsGXrtM','https://www.lyrics.com/lyric/20506/Black+Sabbath/N.I.B.','4'),
    ('Hallowed Be Thy Name','8','428','https://youtu.be/HAQQUDbuudY','https://www.lyrics.com/lyric/817713/Iron+Maiden/Hallowed+Be+Thy+Name','3'),
    ('Afraid to Shoot Strangers','3','412','https://youtu.be/0c9iYZdsZMM','https://www.lyrics.com/lyric/817720/Iron+Maiden/Afraid+to+Shoot+Strangers','5'),
    ('Fear of the Dark','12','436','https://youtu.be/bePCRKGUwAY','https://www.lyrics.com/lyric/817724/Iron+Maiden/Fear+of+the+Dark','5'),
    ('Heaven and Hell','4','419','https://youtu.be/uWAhd4KkVUU','https://www.lyrics.com/lyric/872026/Black+Sabbath/Heaven+and+Hell','6'),
    ('Die Young','6','285',NULL,'https://www.lyrics.com/lyric/872028/Black+Sabbath/Die+Young','6'),
    ('Into the Storm','2','264','https://youtu.be/Yx1PCWkOb3Y','https://www.lyrics.com/lyric/2555723/Blind+Guardian/Into+the+Storm','4'),
    ('Run for the Night','5','213','https://youtu.be/MfKxRVZEoZA',NULL,'1'),
    ('And Then There Was Silence','10','846','https://youtu.be/HcRIGCmCoZA','https://www.lyrics.com/lyric/5413849/Blind+Guardian/And+Then+There+Was+Silence','7'),
    ('Time Stands Still (At the Iron Hill)','13','293','https://youtu.be/6Yz4_1mZarA','https://www.lyrics.com/lyric/2555734/Blind+Guardian/Time+Stands+Still+%28At+the+Iron+Hill%29','4'),
    ('Battlefield','2','337','https://youtu.be/64PQZwjrF2E','https://www.lyrics.com/track/5413841/Blind+Guardian/Battlefield','7'),
    ('Dance of Death','5','516','https://youtu.be/3659fTXvFts',NULL,'9'),
    ('Paschendale','8','507','https://youtu.be/oEFmrm_GdUw',NULL,'9'),
    ('Face in the Sand','9','391',NULL,NULL,'9'),
    ('For Whom the Bell Tolls','3','310','https://youtu.be/eeqGuaAl6Ic',NULL,'10'),
    ('Fade to Black','4','415','https://youtu.be/HdWw9SksiwQ',NULL,'10'),
    ('Creeping Death','7','396','https://youtu.be/xAOMEqMXiXI',NULL,'10'),
    ('The Call of Ktulu','8','533','https://youtu.be/TfGMinbSVI8',NULL,'10'),
    ('Until It Sleeps','4','268',NULL,NULL,'12'),
    ('Bleeding Me','7','498',NULL,NULL,'12'),
    ('Rainbow in the Dark','8','255',NULL,'https://www.lyrics.com/lyric/877609/Dio/Rainbow+in+the+Dark','11');
    
    

-- -----------------------------------------------------
-- Insert into `musician`
-- -----------------------------------------------------

INSERT INTO `metal_rock_db`.`song` (
	`mu_id`,
    `mu_first_name`,
    `mu_last_name`,
    `mu_city_origin`,
    `mu_country_origin`,
    `mu_date_of_birth`,
    `mu_date_of_death`
) VALUES
	('Mirror Mirror','9','306','https://youtu.be/CNGCvI9dpZY','https://www.lyrics.com/lyric/2555730/Blind+Guardian/Mirror+Mirror','4');
