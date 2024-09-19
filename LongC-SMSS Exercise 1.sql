--task 1 create table OWNER
CREATE TABLE OWNER (
OwnerID CHAR(1) PRIMARY KEY NOT NULL,
OwnerFirstName VARCHAR(20) NOT NULL,
OwnerLastName VARCHAR(20) NOT NULL,
OwnerEmail VARCHAR(30) NOT NULL,
OwnerJoinDate DATE,
OwnerEndDate DATE
);

--task 2 insert values into table OWNER
INSERT INTO OWNER VALUES ('1','Kaya','Logan','k.logan@xmail','2022-03-08',null);
INSERT INTO OWNER VALUES ('2','Ruth','Gibbs','r.gibbs@xmail','2022-06-26',null);
INSERT INTO OWNER VALUES ('3','Alberto','Burke','a.burke@xmail','2022-08-02',null);
INSERT INTO OWNER VALUES ('4','Kristen','Jones','k.jones@xmail','2022-08-08',null);
INSERT INTO OWNER VALUES ('5','Alec','Webster','a.webster@xmail','2022-09-17',null);
INSERT INTO OWNER VALUES ('6','Ronald','Snow','r.snow@xmail','2022-04-15','2022-05-15');
INSERT INTO OWNER VALUES ('7','Donald','Schmidt','d.schmidt@xmail','2022-03-15','2022-06-12');

--double check all OWNER records
SELECT * FROM OWNER;

--task 3 create table HOUSE
CREATE TABLE HOUSE (
HouseID CHAR(1) PRIMARY KEY NOT NULL,
HouseAddress VARCHAR(40) NOT NULL,
HouseCity VARCHAR(20) NOT NULL,
HouseZipCode CHAR(5) NOT NULL,
HouseState CHAR(2) NOT NULL,
HouseNumberofRooms TINYINT,
HouseSquareMeter TINYINT,
HouseBuildYear SMALLINT,
HouseJoinDate DATE,
HouseEndDate DATE,
OwnerID CHAR(1)
);

--task 4 insert values into table HOUSE
INSERT INTO HOUSE VALUES('1','33 Southpoint Dr','Lancaster','14086','NY',4,150,2001,'2022-03-10',null,'1');
INSERT INTO HOUSE VALUES('2','204 Garfield Ave','Libertyville','60048','IL',3,120,1990,'2022-06-26',null,'2');
INSERT INTO HOUSE VALUES('3','3200 Price Rd','Bartlesville','74006','OK',4,150,2001,'2022-08-02',null,'3');
INSERT INTO HOUSE VALUES('4','12791 Amethyst St','Garden Grove','92845','CA',6,210,1975,'2022-08-15',null,'4');
INSERT INTO HOUSE VALUES('5','100 Cleveland Ave','Endicott','13760','NY',2,75,1920,'2022-09-17',null,'5');
INSERT INTO HOUSE VALUES('6','505 Dawson St','Morro Bay','93442','CA',4,120,1982,'2022-08-22',null,'4');
INSERT INTO HOUSE VALUES('7','20 Woodlawn Rd','Hadley','01035','MA',3,130,1925,'2022-04-15','2022-05-15','6');
INSERT INTO HOUSE VALUES('8','2402 13th St','Meridian','39301','MS',2,90,1994,'2022-03-15','2022-06-12','7');

--double check HOUSE table
SELECT * FROM HOUSE;

--double check data in GUEST table
SELECT * FROM GUEST;

--task 7 create table named CHANNEL
CREATE TABLE CHANNEL (
ChannelID CHAR(1) PRIMARY KEY NOT NULL,
ChannelName VARCHAR(15) NOT NULL,
ChannelCommission DECIMAL(3,2) NOT NULL
);

--task 8 insert values into CHANNEL
INSERT INTO CHANNEL VALUES('1','InstantStay',0);
INSERT INTO CHANNEL VALUES('2','Newspaper',0.07);
INSERT INTO CHANNEL VALUES('3','Online Ads',0.15);
INSERT INTO CHANNEL VALUES('4','Travel Agency',0.13);

--double check CHANNEL
SELECT * FROM CHANNEL;

--task 9 create table STAY
CREATE TABLE STAY (
StayID CHAR(5) PRIMARY KEY NOT NULL,
HouseID CHAR(1) NOT NULL,
GuestID CHAR(5) NOT NULL,
ChannelID CHAR(1) NOT NULL,
StayStartDate DATE NOT NULL,
StayEndDate DATE NOT NULL,
StayPrice SMALLINT NOT NULL,
StayDiscount TINYINT NOT NULL
);

--task 10 insert values into STAY table
INSERT INTO STAY VALUES('1','1','1','1','2022-04-10','2022-04-15',110,0);

--double check STAY table
SELECT * FROM STAY;