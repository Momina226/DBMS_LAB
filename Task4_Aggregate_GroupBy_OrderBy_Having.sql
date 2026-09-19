select avg(Rating) from Apps;
select max(Rating) from Apps;
select min(Rating) from Apps;
select sum(Downloads) from Apps;
select * from Apps ORDER BY Downloads DESC;
select * from Apps ORDER  BY Rating DESC;

select CategoryID,count(CategoryID) from Apps group by CategoryID;
select CategoryID,avg(CategoryID) from Apps group by CategoryID;
select max(Price),min(Price) from Apps; 
select * from Apps ORDER BY Downloads DESC;
select DeveloperID,count(DeveloperID) from Apps group by DeveloperID;
select CategoryID,count(CategoryID) from Apps group by CategoryID having count(*)>1;

select DeveloperID,sum(DeveloperID) from Apps group by DeveloperID;
select PublisherID,avg(Rating) from Apps group by PublisherID;
select DeveloperID,count(*) from Apps group by DeveloperID having count(*)>1;
select CategoryID,avg(Rating) from Apps group by CategoryID having avg(Rating)>4.3;
select CategoryID,count(CategoryID) from Apps group by CategoryID order by count(*) DESC;
select * from Apps where Rating =(select max(Rating) from Apps);
select DeveloperID,sum(Price) from Apps group by DeveloperID;
