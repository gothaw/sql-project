
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

INSERT INTO `metal_rock_db`.`musician` (
	`mu_id`,
    `mu_first_name`,
    `mu_last_name`,
    `mu_city_origin`,
    `mu_country_origin`,
    `mu_date_of_birth`,
    `mu_date_of_death`
) VALUES
	('1','Geezer','Butler','Birmingham','United Kingdom','1949-06-17',NULL),
    ('2','Ozzy','Osbourne','Birmingham','United Kingdom','1948-12-03',NULL),
    ('3','Hansi','Kürsch','Lank-Latum','Germany','1966-08-10',NULL),
    ('4','André','Olbrich','Düsseldorf','Germany','1967-05-03',NULL),
    ('5','Marcus','Siepen','Krefeld','Germany','1968-09-08',NULL),
    ('6','Frederik','Ehmke','Malsch','Germany','1978-06-21',NULL),
    ('7','Steve','Harris','Leytonstone','United Kingdom','1956-03-12',NULL),
    ('8','Dave','Murray','Edmonton','United Kingdom','1956-12-23',NULL),
    ('9','Adrian','Smith','London','United Kingdom','1957-02-27',NULL),
    ('10','Bruce','Dickinson','Worksop','United Kingdom','1958-08-07',NULL),
    ('11','Tony','Iommi','Birmingham','United Kingdom','1948-02-19',NULL),
    ('12','Bill','Ward','Birmingham','United Kingdom','1948-05-02',NULL),
    ('13','Nicko','McBrain','London','United Kingdom','1952-06-05',NULL),
    ('14','Janick','Gers','Hartlepool','United Kingdom','1957-01-27',NULL),
    ('15','John','Myung','Chicago','United States','1967-01-24',NULL),
    ('16','John','Petrucci','New York','United States','1967-06-12',NULL),
    ('17','Ronnie James','Dio','Portsmouth','United States','1942-06-10','2010-05-16'),
    ('18','James','Hetfield','Downey','United States','1963-08-03',NULL),
    ('19','Lars','Ulrich','Gentofte','Denmark','1963-12-26',NULL),
    ('20','Kirk','Hammett','San Francisco','United States','1964-11-18',NULL),
    ('21','Robert','Trujillo','Santa Monica','United States','1964-10-23',NULL);

-- -----------------------------------------------------
-- Insert into `band_has_musician`
-- -----------------------------------------------------

INSERT INTO `metal_rock_db`.`band_has_musician` (
	`band_ba_id`,
    `musician_mu_id`,
    `ba_mu_joined`,
    `ba_mu_left`
) VALUES
	('6','18','1982',NULL),
	('6','19','1982',NULL),
	('6','20','1983',NULL),
	('6','21','2003',NULL),
	('1','3','1984',NULL),
	('1','4','1984',NULL),
	('1','5','1984',NULL),
	('1','6','1984',NULL),
	('5','17','1982','2010'),
	('4','15','1985',NULL),
	('4','16','1985',NULL),
	('2','7','1980',NULL),
	('2','8','1980',NULL),
	('2','9','1981',NULL),
	('2','10','1982',NULL),
	('2','13','1983',NULL),
	('2','14','1990',NULL),
	('3','1','1968','2017'),
	('3','2','1968','2017'),
	('3','11','1968','2017'),
	('3','12','1968','2012'),
	('3','17','1979','2010');
    
-- -----------------------------------------------------
-- Insert into `role`
-- -----------------------------------------------------

INSERT INTO `metal_rock_db`.`role` (
	`ro_id`,
    `ro_name`
) VALUES
	('1','vocalist'),
    ('2','lead guitarist'),
    ('3','rythym guitarist'),
    ('4','guitarist'),
    ('5','bassist'),
    ('6','drummer'),
    ('7','keyboard player'),
    ('8','backing vocalist');
    
-- -----------------------------------------------------
-- Insert into `musician_has_role`
-- -----------------------------------------------------

INSERT INTO `metal_rock_db`.`musician_has_role` (
	`musician_mu_id`,
    `role_ro_id`
) VALUES
	('18','1'),
    ('18','3'),
	('19','6'),
	('20','2'),
	('20','8'),
    ('21','5'),
    ('21','8'),
	('3','1'),
    ('3','5'),
	('4','2'),
    ('4','8'),
	('5','3'),
    ('5','8'),
	('6','6'),
	('17','1'),
    ('17','7'),
	('15','5'),
	('16','4'),
	('7','5'),
	('8','4'),
	('9','4'),
	('10','1'),
	('13','6'),
	('14','4'),
	('1','5'),
	('2','1'),
	('11','4'),
	('12','6');
    
-- -----------------------------------------------------
-- Insert into `instrument_type`
-- -----------------------------------------------------

INSERT INTO `metal_rock_db`.`instrument_type` (
	`in_type_id`,
    `in_type_name`
) VALUES
	('1','drum kit'),
    ('2','electronic drum kit'),
	('3','electric guitar'),
    ('4','acoustic guitar'),
    ('5','classical guitar'),
    ('6','keyboard'),
	('7','bass guitar'),
    ('8','acoustic bass guitar');
    
-- -----------------------------------------------------
-- Insert into `instrument`
-- -----------------------------------------------------

INSERT INTO `metal_rock_db`.`instrument` (
	`in_id`,
    `in_manufacturer`,
    `in_model`,
    `in_year_produced`,
    `in_average_price`,
    `in_description`,
    `instrument_type_in_type_id`
) VALUES
	('1','Gibson','EDS-1275','1974','6000','A doubleneck Gibson electric guitar, weighing about 13 pounds (5.9 kg) and introduced in 1963. Popularized by both rock and jazz musicians such as Don Felder, Jimmy Page, Alex Lifeson, Steve Miller and John McLaughlin, it was named "the coolest guitar in rock" by the website Gigwise.','3'),
    ('2','ESP','Snakebyte','2003','3500','Made by hand at the ESP Custom Shop in Japan, the ESP Snakebyte is a Signature Series model of James Hetfield, the frontman of Metallica and one of the world`s most highly respected rhythm guitar players in any genre. The Snakebyte was created based on James` own original design. It features  set-neck construction at 24.75" scale, with a mahogany body and a single-piece mahogany neck with ebony fingerboard and 22 extra-jumbo frets with a snake inlay at the 12th fret.','3'),
    ('3','Gibson','Les Paul','1968','3500','The Gibson Les Paul is a solid body electric guitar that was first sold by the Gibson Guitar Corporation in 1952. The Les Paul was designed by Gibson president Ted McCarty, factory manager John Huis and their team with some input from and endorsement by guitarist Les Paul. Its typical design features a solid mahogany body with a carved maple top and a single cutaway, a mahogany set-in neck with a rosewood fretboard, two pickups with independent volume and tone controls, and a stoptail bridge, although variants exist.','3'),
    ('4','Fender','Precision Bass','2002','2000','The Steve Harris Precision Bass has been designed in collaboration with Fender and one of the most influential metal bassists alive. Built for heavy rock, this bass guitar comes in Steve Harris` famously regal gloss White finish with special pinstriping, mirrored pickguard and West Ham United F.C. crest. Boardering on the thin line between love and hate, this Precision Bass combines music and football, two things that have a special place in Harris` heart. Other ironclad features include a single powerful Seymour Duncan Steve Harris signature model pickup, Fender High Mass bridge, Rotosound Steve Harris Signature flat-wound strings and Harris`s signature on the back of the headstock.','7'),
    ('5','Fender','Stratocaster','1954','2000','The Fender Stratocaster is a model of electric guitar designed from 1952 into 1954 by Leo Fender, Bill Carson, George Fullerton, and completed by Freddie Tavares. The Fender Musical Instruments Corporation has continuously manufactured the Stratocaster from 1954 to the present. It is a double-cutaway guitar, with an extended top "horn" shape for balance like the Precision Bass guitar. Along with the Gibson Les Paul and Fender Telecaster, it is one of the most-often emulated electric guitar shapes. "Stratocaster" and "Strat" are trademark terms belonging to Fender. Guitars that duplicate the Stratocaster by other manufacturers are usually called S-Type or ST-type guitars.','3'),
    ('6','Roland','TD-50KVX','2001','7500','Roland know that for any ambitious pro drummer only the very best is good enough, and with that in mind they have developed the TD50KVX - their latest flagship V-Drums setup.','1'),
	('7','ESP','MH-1000','2005','2500','As part of the LTD Deluxe Series designed for professional musicians, the LTD MH-1000 EverTune gives you more than you bargained for. It offers set-thru construction, meaning the neck extends deeply into the guitar`s body cavity, offering unparalleled access to the upper frets with a smooth heel joint. It has a mahogany body with a flamed maple top in a See Thru Black finish, highlighting the great look of the figured wood grain. It also features a three-piece thin U-shaped maple neck, and an ebony fingerboard with 24 extra-jumbo frets. ','3'),
    ('8','Taylor','814ce DLX V-Class','2007','4000','The Taylor 814ce DLX V-Class electro-acoustic guitar sees one of Taylor’s best selling guitars taken up a notch with new V bracing and additional premium features.','4'),
	('9','ESP','Eclipse','2003','3000','Created at the ESP facility in Tokyo, Japan, the ESP E-II Series is our highest-quality factory-produced instrument collection. With the E-II Eclipse EverTune, you get one of the most finely-crafted guitars imaginable, with a unique set of components designed for serious musicians. It features the EverTune constant tension bridge, a fully-mechanical system that keeps your guitar in tune in nearly every imaginable environment, and keeps your intonation perfect at every point on the fingerboard. The E-II Eclipse EverTune also includes a set of phenomenal pickups: a Seymour Duncan Sentient in the neck position for wide dynamic range and excellent articulation, and an aggressive Seymour Duncan Pegasus in the bridge that`s highly responsive and harmonically rich.','3'),
	('10','Warwick','Streamer','2004','1500','Warwick have been making bass guitars for over 30 years. This gives them great insight into what professional bassists want, pure quality. The Warwick RockBass Robert Trujillo Bass is the signature bass guitar designed around Metallica bass player Robert Trujillo`s design specifications. Easy to play, quick and sharp notes, and lots of deep control for tone. The Trujillo RockBass is a must have for metal and hard rock bass players influenced by Trujillo`s distinctive and aggressive bass playing style. Tough, durable, and tour ready. The Robert Trujillo signature bass is as ready to rock as you are.','7');

-- -----------------------------------------------------
-- Insert into `musician_has_instrument`
-- -----------------------------------------------------

INSERT INTO `metal_rock_db`.`musician_has_instrument` (
	`musician_mu_id`,
    `instrument_in_id`
) VALUES
	('4','7'),
	('5','7'),
	('5','9'),
    ('5','8'),
	('7','4'),
	('8','5'),
	('9','5'),
	('14','5'),
	('18','1'),
    ('18','2'),
    ('18','3'),
	('19','6'),
	('20','9'),
	('20','7'),
    ('21','10');