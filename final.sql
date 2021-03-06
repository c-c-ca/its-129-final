-- Before running, edit connection and add
-- OPT_LOCAL_INFILE=1
-- To Others box in Advanced options
-- In order to load data from .csv file

SET SQL_SAFE_UPDATES = 0;
SET GLOBAL local_infile=1;

DROP DATABASE IF EXISTS colonial;
CREATE DATABASE colonial;

USE colonial;

CREATE TABLE CUSTOMER
(CUSTOMER_NUM CHAR(4) PRIMARY KEY,
LAST_NAME CHAR(30) NOT NULL,
FIRST_NAME CHAR (30),
ADDRESS CHAR(35),
CITY CHAR(35),
STATE CHAR(2),
POSTAL_CODE CHAR(5),
PHONE CHAR(12) );

CREATE TABLE RESERVATION
(RESERVATION_ID CHAR(7) PRIMARY KEY,
TRIP_ID DECIMAL(3,0),
TRIP_DATE DATE,
NUM_PERSONS DECIMAL(3,0),
TRIP_PRICE DECIMAL(6,2),
OTHER_FEES DECIMAL(6,2),
CUSTOMER_NUM CHAR(4) );

CREATE TABLE TRIP
(TRIP_ID DECIMAL(3,0) PRIMARY KEY,
TRIP_NAME CHAR(75),
START_LOCATION CHAR(50),
STATE CHAR(2),
DISTANCE DECIMAL(4,0),
MAX_GRP_SIZE DECIMAL(4,0),
TYPE CHAR(20),
SEASON CHAR(20) );

CREATE TABLE TRIP_GUIDES
(TRIP_ID DECIMAL(3,0),
GUIDE_NUM CHAR(4),
PRIMARY KEY (TRIP_ID, GUIDE_NUM) );

INSERT INTO CUSTOMER
VALUES
('101','Northfold','Liam','9 Old Mill Rd.','Londonderry','NH','03053','603-555-7563');
INSERT INTO CUSTOMER
VALUES
('102','Ocean','Arnold','2332 South St. Apt 3','Springfield','MA','01101','413-555-3212');
INSERT INTO CUSTOMER
VALUES
('103','Kasuma','Sujata','132 Main St. #1','East Hartford','CT','06108','860-555-0703');
INSERT INTO CUSTOMER
VALUES
('104','Goff','Ryan','164A South Bend Rd.','Lowell','MA','01854','781-555-8423');
INSERT INTO CUSTOMER
VALUES
('105','McLean','Kyle','345 Lower Ave.','Wolcott','NY','14590','585-555-5321');
INSERT INTO CUSTOMER
VALUES
('106','Morontoia','Joseph','156 Scholar St.','Johnston','RI','02919','401-555-4848');
INSERT INTO CUSTOMER
VALUES
('107','Marchand','Quinn','76 Cross Rd.','Bath','NH','03740','603-555-0456');
INSERT INTO CUSTOMER
VALUES
('108','Rulf','Uschi','32 Sheep Stop St.','Edinboro','PA','16412','814-555-5521');
INSERT INTO CUSTOMER
VALUES
('109','Caron','Jean Luc','10 Greenfield St.','Rome','ME','04963','207-555-9643');
INSERT INTO CUSTOMER
VALUES
('110','Bers','Martha','65 Granite St.','York','NY','14592','585-555-0111');
INSERT INTO CUSTOMER
VALUES
('112','Jones','Laura','373 Highland Ave.','Somerville','MA','02143','857-555-6258');
INSERT INTO CUSTOMER
VALUES
('115','Vaccari','Adam','1282 Ocean Walk','Ocean CITY','NJ','08226','609-555-5231');
INSERT INTO CUSTOMER
VALUES
('116','Murakami','Iris','7 Cherry Blossom St.','Weymouth','MA','02188','617-555-6665');
INSERT INTO CUSTOMER
VALUES
('119','Chau','Clement','18 Ark Ledge Ln.','Londonderry','VT','05148','802-555-3096');
INSERT INTO CUSTOMER
VALUES
('120','Gernowski','Sadie','24 Stump Rd.','Athens','ME','04912','207-555-4507');
INSERT INTO CUSTOMER
VALUES
('121','Bretton-Borak','Siam','10 Old Main St.','Cambridge','VT','05444','802-555-3443');
INSERT INTO CUSTOMER
VALUES
('122','Hefferson','Orlagh','132 South St. Apt 27','Manchester','NH','03101','603-555-3476');
INSERT INTO CUSTOMER
VALUES
('123','Barnett','Larry','25 Stag Rd.','Fairfield','CT','06824','860-555-9876');
INSERT INTO CUSTOMER
VALUES
('124','Busa','Karen','12 Foster St.','South Windsor','CT','06074','857-555-5532');
INSERT INTO CUSTOMER
VALUES
('125','Peterson','Becca','51 Fredrick St.','Albion','NY','14411','585-555-0900');
INSERT INTO CUSTOMER
VALUES
('126','Brown','Brianne','154 Central St.','Vernon','CT','06066','860-555-3234');
INSERT INTO RESERVATION
VALUES
('1600001',40,'2016-03-26',2,55.00,0.00,'101');
INSERT INTO RESERVATION
VALUES
('1600002',21,'2016-06-08',2,95.00,0.00,'101');
INSERT INTO RESERVATION
VALUES
('1600003',28,'2016-09-12',1,35.00,0.00,'103');
INSERT INTO RESERVATION
VALUES
('1600004',26,'2016-10-16',4,45.00,15.00,'104');
INSERT INTO RESERVATION
VALUES
('1600005',39,'2016-06-25',5,55.00,0.00,'105');
INSERT INTO RESERVATION
VALUES
('1600006',32,'2016-06-18',1,80.00,20.00,'106');
INSERT INTO RESERVATION
VALUES
('1600007',22,'2016-07-09',8,75.00,10.00,'107');
INSERT INTO RESERVATION
VALUES
('1600008',28,'2016-09-12',2,35.00,0.00,'108');
INSERT INTO RESERVATION
VALUES
('1600009',38,'2016-09-11',2,90.00,40.00,'109');
INSERT INTO RESERVATION
VALUES
('1600010',2,'2016-05-14',3,25.00,0.00,'102');
INSERT INTO RESERVATION
VALUES
('1600011',3,'2016-09-15',3,25.00,0.00,'102');
INSERT INTO RESERVATION
VALUES
('1600012',1,'2016-06-12',4,15.00,0.00,'115');
INSERT INTO RESERVATION
VALUES
('1600013',8,'2016-07-09',1,20.00,5.00,'116');
INSERT INTO RESERVATION
VALUES
('1600014',12,'2016-10-01',2,40.00,5.00,'119');
INSERT INTO RESERVATION
VALUES
('1600015',10,'2016-07-23',1,20.00,0.00,'120');
INSERT INTO RESERVATION
VALUES
('1600016',11,'2016-07-23',6,75.00,15.00,'121');
INSERT INTO RESERVATION
VALUES
('1600017',39,'2016-06-18',3,20.00,5.00,'122');
INSERT INTO RESERVATION
VALUES
('1600018',38,'2016-09-18',4,85.00,15.00,'126');
INSERT INTO RESERVATION
VALUES
('1600019',25,'2016-08-29',2,110.00,25.00,'124');
INSERT INTO RESERVATION
VALUES
('1600020',28,'2016-08-27',2,35.00,10.00,'124');
INSERT INTO RESERVATION
VALUES
('1600021',32,'2016-06-11',3,90.00,20.00,'112');
INSERT INTO RESERVATION
VALUES
('1600022',21,'2016-06-08',1,95.00,25.00,'119');
INSERT INTO RESERVATION
VALUES
('1600024',38,'2016-09-11',1,70.00,30.00,'121');
INSERT INTO RESERVATION
VALUES
('1600025',38,'2016-09-11',2,70.00,45.00,'125');
INSERT INTO RESERVATION
VALUES
('1600026',12,'2016-10-01',2,40.00,0.00,'126');
INSERT INTO RESERVATION
VALUES
('1600029',4,'2016-09-19',4,105.00,25.00,'120');
INSERT INTO RESERVATION
VALUES
('1600030',15,'2016-07-25',6,60.00,15.00,'104');
INSERT INTO TRIP
VALUES
(1,'Arethusa Falls ','Harts Location','NH',5,10,'Hiking','Summer');
INSERT INTO TRIP
VALUES
(2,'Mt Ascutney - North Peak','Weathersfield','VT',5,6,'Hiking','Late Spring');
INSERT INTO TRIP
VALUES
(3,'Mt Ascutney - West Peak','Weathersfield','VT',6,10,'Hiking','Early Fall');
INSERT INTO TRIP
VALUES
(4,'Bradbury Mountain Ride','Lewiston-Auburn','ME',25,8,'Biking','Early Fall');
INSERT INTO TRIP
VALUES
(5,'Baldpate Mountain ','North Newry','ME',6,10,'Hiking','Late Spring');
INSERT INTO TRIP
VALUES
(6,'Blueberry Mountain','Batchelders Grant','ME',8,8,'Hiking','Early Fall');
INSERT INTO TRIP
VALUES
(7,'Bloomfield - Maidstone','Bloomfield','CT',10,6,'Paddling','Late Spring');
INSERT INTO TRIP
VALUES
(8,'Black Pond','Lincoln','NH',8,12,'Hiking','Summer');
INSERT INTO TRIP
VALUES
(9,'Big Rock Cave','Tamworth','NH',6,10,'Hiking','Summer');
INSERT INTO TRIP
VALUES
(10,'Mt. Cardigan - Firescrew','Orange','NH',7,8,'Hiking','Summer');
INSERT INTO TRIP
VALUES
(11,'Chocorua Lake Tour','Tamworth','NH',12,15,'Paddling','Summer');
INSERT INTO TRIP
VALUES
(12,'Cadillac Mountain Ride','Bar Harbor','ME',8,16,'Biking','Early Fall');
INSERT INTO TRIP
VALUES
(13,'Cadillac Mountain','Bar Harbor','ME',7,8,'Hiking','Late Spring');
INSERT INTO TRIP
VALUES
(14,'Cannon Mtn','Franconia','NH',6,6,'Hiking','Early Fall');
INSERT INTO TRIP
VALUES
(15,'Crawford Path Presidentials Hike','Crawford Notch','NH',16,4,'Hiking','Summer');
INSERT INTO TRIP
VALUES
(16,'Cherry Pond','Whitefield','NH',6,16,'Hiking','Spring');
INSERT INTO TRIP
VALUES
(17,'Huguenot Head Hike','Bar Harbor','ME',5,10,'Hiking','Early Fall');
INSERT INTO TRIP
VALUES
(18,'Low Bald Spot Hike','Pinkam Notch','NH',8,6,'Hiking','Early Fall');
INSERT INTO TRIP
VALUES
(19,'Mason''s Farm ','North Stratford','CT',12,7,'Paddling','Late Spring');
INSERT INTO TRIP
VALUES
(20,'Lake Mephremagog Tour','Newport','VT',8,15,'Paddling','Late Spring');
INSERT INTO TRIP
VALUES
(21,'Long Pond','Rutland','MA',8,12,'Hiking','Summer');
INSERT INTO TRIP
VALUES
(22,'Long Pond Tour','Greenville','ME',12,10,'Paddling','Summer');
INSERT INTO TRIP
VALUES
(23,'Lower Pond Tour','Poland','ME',8,15,'Paddling','Late Spring');
INSERT INTO TRIP
VALUES
(24,'Mt Adams ','Randolph','NH',9,6,'Hiking','Summer');
INSERT INTO TRIP
VALUES
(25,'Mount Battie Ride','Camden','ME',20,8,'Biking','Early Fall');
INSERT INTO TRIP
VALUES
(26,'Mount Cardigan Hike','Cardigan','NH',4,16,'Hiking','Late Fall');
INSERT INTO TRIP
VALUES
(27,'Mt. Chocorua','Albany','NH',6,10,'Hiking','Spring');
INSERT INTO TRIP
VALUES
(28,'Mount Garfield Hike','Woodstock','NH',5,10,'Hiking','Early Fall');
INSERT INTO TRIP
VALUES
(29,'Metacomet-Monadnock Trail Hike','Pelham','MA',10,12,'Hiking','Late Spring');
INSERT INTO TRIP
VALUES
(30,'McLennan Reservation Hike','Tyringham','MA',6,16,'Hiking','Summer');
INSERT INTO TRIP
VALUES
(31,'Missisquoi River - VT','Lowell','VT',12,10,'Paddling','Summer');
INSERT INTO TRIP
VALUES
(32,'Northern Forest Canoe Trail','Stark','NH',15,10,'Paddling','Summer');
INSERT INTO TRIP
VALUES
(33,'Park Loop Ride','Mount Desert Island','ME',27,8,'Biking','Late Spring');
INSERT INTO TRIP
VALUES
(34,'Pontook Reservoir Tour','Dummer','NH',15,14,'Paddling','Late Spring');
INSERT INTO TRIP
VALUES
(35,'Pisgah STATE Park Ride','Northborough','NH',12,10,'Biking','Summer');
INSERT INTO TRIP
VALUES
(36,'Pondicherry Trail Ride','White Mountains','NH',15,16,'Biking','Late Spring');
INSERT INTO TRIP
VALUES
(37,'Seal Beach Harbor','Bar Harbor','ME',5,16,'Hiking','Early Spring');
INSERT INTO TRIP
VALUES
(38,'Sawyer River Ride','Mount Carrigain','NH',10,18,'Biking','Early Fall');
INSERT INTO TRIP
VALUES
(39,'Welch and Dickey Mountains Hike','Thorton','NH',5,10,'Hiking','Summer');
INSERT INTO TRIP
VALUES
(40,'Wachusett Mountain','Princeton','MA',8,8,'Hiking','Early Spring');
INSERT INTO TRIP
VALUES
(41,'Westfield River Loop','Fort Fairfield','ME',20,10,'Biking','Late Spring');
INSERT INTO TRIP
VALUES
(42,'Waianae Mountain Range','Waianae','HI',9,5,'Hiking','All Seasons');

INSERT INTO TRIP_GUIDES
VALUES
(1,'GZ01');
INSERT INTO TRIP_GUIDES
VALUES
(1,'RH01');
INSERT INTO TRIP_GUIDES
VALUES
(2,'AM01');
INSERT INTO TRIP_GUIDES
VALUES
(2,'SL01');
INSERT INTO TRIP_GUIDES
VALUES
(3,'SL01');
INSERT INTO TRIP_GUIDES
VALUES
(4,'BR01');
INSERT INTO TRIP_GUIDES
VALUES
(4,'GZ01');
INSERT INTO TRIP_GUIDES
VALUES
(5,'KS01');
INSERT INTO TRIP_GUIDES
VALUES
(5,'UG01');
INSERT INTO TRIP_GUIDES
VALUES
(6,'RH01');
INSERT INTO TRIP_GUIDES
VALUES
(7,'SL01');
INSERT INTO TRIP_GUIDES
VALUES
(8,'BR01');
INSERT INTO TRIP_GUIDES
VALUES
(9,'BR01');
INSERT INTO TRIP_GUIDES
VALUES
(10,'GZ01');
INSERT INTO TRIP_GUIDES
VALUES
(11,'DH01');
INSERT INTO TRIP_GUIDES
VALUES
(11,'KS01');
INSERT INTO TRIP_GUIDES
VALUES
(11,'UG01');
INSERT INTO TRIP_GUIDES
VALUES
(12,'BR01');
INSERT INTO TRIP_GUIDES
VALUES
(13,'RH01');
INSERT INTO TRIP_GUIDES
VALUES
(14,'KS02');
INSERT INTO TRIP_GUIDES
VALUES
(15,'GZ01');
INSERT INTO TRIP_GUIDES
VALUES
(16,'KS02');
INSERT INTO TRIP_GUIDES
VALUES
(17,'RH01');
INSERT INTO TRIP_GUIDES
VALUES
(18,'KS02');
INSERT INTO TRIP_GUIDES
VALUES
(19,'DH01');
INSERT INTO TRIP_GUIDES
VALUES
(20,'SL01');
INSERT INTO TRIP_GUIDES
VALUES
(21,'AM01');
INSERT INTO TRIP_GUIDES
VALUES
(22,'UG01');
INSERT INTO TRIP_GUIDES
VALUES
(23,'DH01');
INSERT INTO TRIP_GUIDES
VALUES
(23,'SL01');
INSERT INTO TRIP_GUIDES
VALUES
(24,'BR01');
INSERT INTO TRIP_GUIDES
VALUES
(25,'BR01');
INSERT INTO TRIP_GUIDES
VALUES
(26,'GZ01');
INSERT INTO TRIP_GUIDES
VALUES
(27,'GZ01');
INSERT INTO TRIP_GUIDES
VALUES
(28,'BR01');
INSERT INTO TRIP_GUIDES
VALUES
(29,'DH01');
INSERT INTO TRIP_GUIDES
VALUES
(30,'AM01');
INSERT INTO TRIP_GUIDES
VALUES
(31,'SL01');
INSERT INTO TRIP_GUIDES
VALUES
(32,'KS01');
INSERT INTO TRIP_GUIDES
VALUES
(33,'UG01');
INSERT INTO TRIP_GUIDES
VALUES
(34,'KS01');
INSERT INTO TRIP_GUIDES
VALUES
(35,'GZ01');
INSERT INTO TRIP_GUIDES
VALUES
(36,'KS02');
INSERT INTO TRIP_GUIDES
VALUES
(37,'RH01');
INSERT INTO TRIP_GUIDES
VALUES
(38,'KS02');
INSERT INTO TRIP_GUIDES
VALUES
(39,'BR01');
INSERT INTO TRIP_GUIDES
VALUES
(40,'DH01');
INSERT INTO TRIP_GUIDES
VALUES
(41,'BR01');

-- 1.
-- bak is commonly used as a file-extension to refer to back-up files 
-- so this is a back-up table for the CUSTOMERS table
CREATE TABLE customerBak
(CUSTOMER_NUM CHAR(4) PRIMARY KEY,
LAST_NAME CHAR(30) NOT NULL,
FIRST_NAME CHAR (30),
ADDRESS CHAR(35),
CITY CHAR(35),
STATE CHAR(2),
POSTAL_CODE CHAR(5),
PHONE CHAR(12) );

-- 2.
SELECT CUSTOMER_NUM, FIRST_NAME, LAST_NAME
FROM CUSTOMER;

-- 3.
SELECT count(*) FROM CUSTOMER;

-- 4.
INSERT INTO CUSTOMER (FIRST_NAME, LAST_NAME, CUSTOMER_NUM)
VALUES ('Amber', 'Garelle', '127');

-- 5.
ALTER TABLE customerBak
ADD GENDER VARCHAR(10);

-- 6.
ALTER TABLE customerBak
DROP COLUMN GENDER;

-- 7.
ALTER TABLE reservation
ADD FOREIGN KEY (customer_num)
REFERENCES customer(customer_num);

-- 8.
DELETE FROM customer
WHERE
	customer_num = '127' AND
	first_name = 'Amber' AND
    last_name = 'Garelle';
    
-- 9.
-- The LEFT JOIN returns all the rows from the table on the left 
-- even if no matching rows have been found in the table on the right
SELECT * 
FROM customer
LEFT JOIN reservation
ON customer.customer_num = reservation.customer_num;

-- 10.a
-- Show all of the trips and all of the guides
SELECT *
FROM trip
LEFT JOIN trip_guides
ON trip.trip_id = trip_guides.trip_id;

-- 10.b
-- Show the trip that did not have a guide
SELECT *
FROM trip
LEFT JOIN trip_guides
ON trip.trip_id = trip_guides.trip_id
WHERE GUIDE_NUM IS NULL;

-- 11.a
-- The WHERE keyword must all be included in order to specify 
-- which records should be removed from the table.

-- 11.b
UPDATE customer
SET last_name = 'Chang'
WHERE
	first_name = 'Martha' AND
    last_name = 'Bers';
    
SELECT * FROM customer;

-- 12.
DROP TABLE customerBak;

-- 13.
SELECT 
	trip.trip_id,
    SUM((trip_price + other_fees) * num_persons) as revenue
FROM trip
JOIN reservation
ON trip.trip_id = reservation.trip_id
GROUP BY trip.trip_id
ORDER BY revenue DESC;

-- 14.
-- =*([@[trip_price]]+[@[other_fees])*[@[num_persons]]]

-- SELECT *
-- FROM trip
-- JOIN reservation
-- ON trip.trip_id = reservation.trip_id
--  INTO OUTFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\reservation.csv' FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';

-- 15.
SELECT COUNT(*)
FROM customer
WHERE last_name LIKE '%br%';

-- 16.
CREATE TABLE country
(
	country_id INT AUTO_INCREMENT PRIMARY KEY,
	continent VARCHAR(30),
	country VARCHAR (30),
	capital VARCHAR(30),
    population INT,
    total_area VARCHAR(30)
);

LOAD DATA LOCAL INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\countries.csv' 
INTO TABLE country
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' -- for Windows
-- LINES TERMINATED BY '\n' -- for MacOS / Linux
IGNORE 1 ROWS;

-- SELECT * FROM country;
