USE playstoredb;
ALTER TABLE Apps 
ADD CONSTRAINT fk_developer 
FOREIGN KEY (DeveloperID) 
REFERENCES Developers(DeveloperID); 
ALTER TABLE Apps
ADD CONSTRAINT fk_publisher
FOREIGN KEY (PublisherID)
REFERENCES Publishers(PublisherID);
ALTER TABLE Apps
ADD CONSTRAINT fk_category
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID);
SELECT * FROM Apps;
SELECT * FROM Apps 
WHERE Rating >4.5; 
SELECT * FROM Apps
WHERE Price = 0;
SELECT * FROM Apps
WHERE CategoryID=305;
SELECT * FROM Apps
WHERE Downloads > 500000000;
SELECT * FROM Apps
WHERE Rating between 4.3 AND 4.7 ;
SELECT * FROM Apps
WHERE Price IN(0,299);
SELECT * FROM Apps
WHERE AppName LIKE 'G%';
SELECT * FROM Apps
WHERE AppName LIKE 'Google%';
SELECT * FROM Apps
WHERE Rating > 4.0 AND Downloads > 500000000;
SELECT * FROM Apps
WHERE CategoryID=301 OR CategoryID=305;
SELECT * FROM Apps
WHERE NOT AppName LIKE 'G%'; 
SELECT * FROM Apps
WHERE Rating < 4.5 OR Downloads >  1000000000 ;
SELECT * FROM Apps
WHERE AppName LIKE '%a%';
SELECT * FROM Apps
WHERE Price BETWEEN 0 AND 300;
SELECT * FROM Apps
WHERE PublisherID IN(201,204);
INSERT INTO Apps
(AppID,AppName,DeveloperID,PublisherID,CategoryID,Rating,Downloads,Price)
VALUES
(1012,'testing',105,201,304,4.5,100000000,150);
SELECT * FROM Apps
WHERE AppID=1012;
SELECT * FROM Apps
WHERE NOT CategoryID=305;
SELECT * FROM Apps;


