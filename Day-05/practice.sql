/*Group By Statement*/

create table movies(movie_id int, movie_name varchar(50),genre varchar(50),
lingo varchar(50), rating Numeric(3,1), ticket_sales int);

insert into movies values
(1,'Avengers','Action','English',8.5,5000),
(2,'Iron Man','Action','English',8.0,4500),
(3,'Batman','Action','English',8.3,4800),
(4,'Joker','Drama','English',8.7,5200),
(5,'Titanic','Romance','English',8.4,6000),
(6,'Notebook','Romance','English',7.9,3500),
(7,'Dangal','Sports','Hindi',8.8,7000),
(8,'Lagaan','Sports','Hindi',8.2,5500),
(9,'3 Idiots','Comedy','Hindi',8.9,8000),
(10,'Hera Pheri','Comedy','Hindi',8.5,6200),
(11,'Golmaal','Comedy','Hindi',7.8,5000),
(12,'Interstellar','Sci-Fi','English',8.9,7500),
(13,'Inception','Sci-Fi','English',8.8,7200),
(14,'Gravity','Sci-Fi','English',7.7,4000),
(15,'Drishyam','Thriller','Hindi',8.4,6500),
(16,'Andhadhun','Thriller','Hindi',8.6,6800),
(17,'Sholay','Action','Hindi',8.1,5800),
(18,'PK','Comedy','Hindi',8.1,6900),
(19,'The Martian','Sci-Fi','English',8.0,4300),
(20,'Rockstar','Drama','Hindi',7.9,4700);

select * from movies;

select genre, count(*) from movies group by genre;
select lingo, count(*) from movies group by lingo;
select  genre, round(Avg(rating),1) as rating from movies group by genre order by rating desc;
select lingo, sum(ticket_sales) as Total from movies group by lingo;

select genre, max(rating) as highest from movies group by genre order by highest desc;
select genre,count(*), min(rating) as lowest from movies group by genre order by lowest desc;
select lingo, round(avg(ticket_sales),0) as average from movies group by lingo;
select genre, lingo ,count(*) from movies group by genre, lingo order by lingo;

select genre, lingo, count(*), round(avg(rating),1), sum(ticket_sales) from movies group by genre,lingo having count(*)>2 order by lingo;
select genre,lingo, count(*) from movies group by genre,lingo having count(*)>1;
select genre, sum(ticket_sales) from movies group by genre having sum(ticket_sales)>12000;
select lingo,round(avg(rating),1) from movies group by lingo having avg(rating)>8.2;
select genre, count(*) from movies group by genre having count(*)>3;

select genre , sum(ticket_sales) from movies group by genre having sum(ticket_sales)>15000;
select genre, count(*) from movies group by genre having count(*)>3;
select lingo, sum(ticket_sales) from movies group by lingo having sum(ticket_sales)>20000; 
select genre , count(*), round(avg(rating),1) from movies group by genre having count(*)>2 AND avg(rating)>8;
select genre ,max(rating), min(rating) from movies group by genre having max(rating)>8.5 AND min(rating)>7.5;
