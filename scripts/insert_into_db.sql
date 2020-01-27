
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
-- Insert into `genre`
-- -----------------------------------------------------

INSERT INTO `metal_rock_db`.`genre` (
	`ge_id`,
    `ge_name`
) VALUES
	('1','Heavy Metal'),
    ('2','Power Metal'),
    ('3','Thrash Metal'),
    ('4','Progressive Rock'),
    ('5','Progressive Metal'),
    ('6','Symphonic Metal'),
    ('7', 'Speed Metal');
    
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
	('1','Batallions of Fear', '14', '1988', NULL, '1');