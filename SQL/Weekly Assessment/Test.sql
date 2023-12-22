create database Test; /* I created database */
use Test; /* I am using Test Database */
create table sample1(id int,name varchar(20),city varchar(10),year int); /* I created the table */
insert into sample1 values('101','Enayath','Namakkal','2002');
insert into sample1 values('102','Haru','Theni','2001');
insert into sample1 values('103','Karthi','Karur','2002');
insert into sample1 values('104','Deepika','Velur','2001');
insert into sample1 values('105','Chandru','Erode','2000');
insert into sample1 values('106','Aneez','Namakkal','1995');
insert into sample1 values('107','Kathar','Salem','2005'); /* I successfully inserted values into tables */

select * from sample1;

create table sample2(id int,product varchar(10),price int); /* I created another table */
insert into sample2 values('101','iphone','150000');
insert into sample2 values('103','TV','45000');
insert into sample2 values('104','Fridge','90000');
insert into sample2 values('109','Dish wash','60000'); /* I inserted values into tables */
insert into sample2 values ('201','Vivo','45000');
insert into sample2 values ('202','Oppo','60000');

select * from sample2;

/* 1.Querying Data by Using Joins and Subqueries */

/* Inner join */
select * from sample1 inner join sample2 on sample1.id=sample2.id;

/* Left join */
select * from sample1 left join sample2 on sample1.id=sample2.id;

/* Right join */
select * from sample1 right join sample2 on sample1.id=sample2.id;

/* Full join */
select * from sample1 full join sample2 on sample1.id=sample2.id;

/* subqueries */
select * from sample1 where id=any(select id from sample2 where price>50000);
select id,name,city from sample1 where id not in (select id from sample2);
select id,name,city from sample1 where exists (select id from sample2);

/* 2.Manipulate data by using sql commands using groupby and having clause. */

/* group by */
select name,city,avg(year) as AVG_YEAR from sample1 group by name,city;
select count(id),year from sample1 group by year;
select price,count(price) as available_product_in_same_price from sample2 group by price;

/* Having */
select id,name,city,year from sample1 group by id,name,city,year having year>2000;
select product,price from sample2 group by product,price having price>50000;
select price,count(price) as product_available from sample2 group by price having price>50000;