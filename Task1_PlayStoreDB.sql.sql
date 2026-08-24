DROP DATABASE IF EXISTS PlaystoreDB;
CREATE DATABASE PlaystoreDB;
USE PlaystoreDB;
CREATE TABLE Developers
(
	DeveloperID INT PRIMARY KEY,
    DeveloperName VARCHAR(60) NOT NULL,
    Country VARCHAR(30),
    FoundedYear INT
);
INSERT INTO Developers 
(DeveloperID,DeveloperName,Country,FoundedYear)
VALUES
(101, "Google LLC","USA",1998),
(102,"Meta PLatforms","USA",2004),
(103,"Spotify AB","Sweden",2006),
(104,"Canva Pty Ltd","Australia",2012),
(105,"BYJU's","India",2011);
CREATE TABLE Publishers
(PublisherID INT PRIMARY KEY,
PublisherName VARCHAR(60),
HeadOffice VARCHAR(40),
SupportEmail VARCHAR(60)
);
INSERT INTO Publishers
(PublisherID,PublisherName,HeadOffice,SupportEmail)
VALUES
(201,"Google Play","California","support@google.com"),
(202,"Samsung Galaxy Store","Seoul","support@google.com"),
(203,"Huawwel AppGallery","shenzhen","support@google.com"),
(204,"Amazon Appstore","Seattle","support@google.com");
CREATE TABLE Categories
(CategoryID INT PRIMARY KEY,
CategoryName VARCHAR(40),
MinimumAge INT
);
INSERT INTO Categories
(CategoryID,CategoryName,MinimumAge)
VALUES
(301,"Education",3),
(302,"Productivity",3),
(303,"Music",12),
(304,"Social",13),
(305,"Gaming",16);
CREATE TABLE Apps
(AppID INT PRIMARY KEY,
AppName VARCHAR(60),
DeveloperID INT,
PublisherID INT,
CategoryID INT,
Rating DECIMAL(2,1),
Downloads BIGINT,
Price DECIMAL(6,2)
);
INSERT INTO Apps
(AppID,AppName,DeveloperID,PublisherID,CategoryID,Rating,Downloads,Price)
VALUES
(1001,"Google classroom",101,201,301,4.6,500000000,0),
(1002,"Google keep",101,201,302,4.5,1000000000,0),
(1003,"Instagram",102,201,304,4.4,5000000000,0),
(1004,"Spotify",103,201,303,4.5,1000000000,0),
(1005,"canva",104,201,302,4.7,500000000,0),
(1006,"byjus learning",105,201,301,4.3,100000000,299),
(1007,"candy crush",102,204,305,4.6,1000000000,0),
(1008,"temple run",104,203,305,4.2,500000000,0);
DESC Apps;
INSERT INTO Developers
(DeveloperID,DeveloperName,Country,FoundedYear)
VALUES
(106,"OpenAI","USA",2015);
INSERT INTO Categories
(CategoryID,CategoryName,MinimumAge)
VALUES
(306,"Artificial Intelligence",12);
INSERT INTO Apps
(AppID,AppName,DeveloperID,PublisherID,CategoryID,Rating,Downloads,Price)
VALUES
(1009,"ChatGPT",106,205,306,4.8,100000000,0);
UPDATE Apps
SET Rating=4.5
WHERE AppID=1008;
DELETE FROM Developers
WHERE DeveloperID=105;
UPDATE Publishers
SET SupportEmail="support@samsung.com"
WHERE PublisherID=202;
INSERT INTO Apps
(AppID,AppName,DeveloperID,PublisherID,CategoryID,Rating,Downloads,Price)
VALUES
(1010,"snapchat",105,203,302,4.2,300000000,0),
(1011,"ludo",103,205,306,4.7,1000000000,0);
UPDATE Apps
SET Price=199
WHERE AppID=1006;
DELETE FROM Categories
WHERE CategoryID=303;
SELECT * FROM Developers;
SELECT * FROM Publishers;
SELECT * FROM Categories;
SELECT * FROM Apps;
