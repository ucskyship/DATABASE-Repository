-- Insert method one --
-- Inset into human table --

insert into Human values
(01,	'John Doe', '18', 'M',	'0+',	'AA');
insert into Human values(
02,	'Will Bruce', '23', 'M',	'B+',	'AS');
insert into Human values(
03,	'Shawn Micheals', '25', 'M',	'0+',	'AA');
insert into Human values(
04,	'Jane Doe', '18', 'F',	'B-',	'AS');
insert into Human values(
05,	'Ken Green', '20', 'M',	'0+',	'SS');
insert into Human values(
06,	'Sam Lee', '19', 'M',	'A-',	'AS');
insert into Human values(
07,	'Agbabiaka Ajala', '22', 'M',	'0',	'AA');
insert into Human values(
08,	'Ebuka Idoya', '24', 'M',	'0+',	'AA');
insert into Human values(
09,	'Adamu Haruna', '29', 'M',	'0+',	'AS');
insert into Human values(
10,	'Bisola Wayns', '18', 'F',	'0+',	'AA');


-- Insert Method 2
-- insert into games table

insert into Games values
(010,	'Sophia the First',	50.34,	10,	'Best Buy Store'),
(011,	'God of War 3',	70.25,	5,	'Jumia Stores'),
(012,	'Rocketeer',	50.34,	10,	'Konga'),
(013,	'God of War 2',	60.99,	5,	'Jumia Stores'),
(014,	'Call of Duty',	75.34,	10,	'Best Buy Store'),
(015,	'Walking Dead',	40.24,	8,	'Konga'),
(016,	'Van Heilsing',	60.99,	10,	'Konga'),
 (018,	'Hitman 3',	50.34,	10,	'Andromeda Store'),
(019,	'Clash of the Titans',	50.34,	10,	'Atlantean Store');



insert into GamePurchase(humanID, gameID) values
(01, 011),
(02, 012),
(03, 013),
(04, 014),
(05, 015),
(06, 016),
(07, 017),
(08, 018),
(09, 019),
(010, 017);