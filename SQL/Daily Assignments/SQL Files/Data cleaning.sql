use employee; /* I used already available database in my local */

select * from customer;
select * from product;
select * from emp;

insert into customer (name) values('Sam');
insert into customer (name) values ('Enayath');

/* Data cleaning in SQL */
/* Finding duplicates in tables */
select name,count(name) from customer group by name having count(name)>1; /* here we find duplicate data from customer table */
select pro_id,count(pro_id) from product group by pro_id having count(pro_id) >1; /* we find duplicate id from product table */

select name, ROW_NUMBER() over (partition by name order by name) as rownumber from customer; 
/* After finding duplicate we want to assign row number to that duplicate record */

with cte as(select cus_id,name,gender,ROW_NUMBER() over (partition by name order by name)as rownumber from customer)
delete from cte where rownumber>1;
/* It deletes duplicate records based on row_number() function */

/* Finding NULL value */
select * from customer where cus_id is null;

/* Deleting NULL value records */
delete from customer where cus_id is null;

/* Updating values instead of NULL */
update customer set cus_id = '6001' where name='Enayath' and cus_id is null;

/* Finding logical errors */
select * from product where year > CURRENT_TIMESTAMP; 
/* we are in 2023 but some records contain 2026, 2030 as company stated year; so these are consider as logical errors */

/* partition */
select name,gender,ROW_NUMBER() over(partition by gender order by name) from customer;
/* It partition table into two part based on gender (F into one part, M into anoter part) and order it based on name 
and provide row number for that record */

select distinct year, avg(profit) over (partition by year) as yearwise_AVGprofit from product;
/* It partition table based on year and calculating yearwise AVG profit */
select distinct year, sum(profit) over (partition by year) as yearwise_profit from product;
/* It partition table based on year and calculating yearwise SUM of profit */