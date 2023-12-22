create database employee; /* created the database */
create table emp(id integer not null,name varchar(20),gender varchar(1),salary integer,city varchar(20)); /* created the table */
insert into emp(id,name,gender,salary,city) values('1001','Enayath','M','10000','Namakkal');
insert into emp(id,name,gender,salary,city) values('1002','Karthi','M','12000','Karur');
insert into emp(id,name,gender,salary,city) values('1003','Abishek','M','50000','Salem');
insert into emp(id,name,gender,salary,city) values('1004','Harunyaa','F','25000','Theni');
insert into emp(id,name,gender,salary,city) values('1005','Deepika','F','30000','Namakkal');
insert into emp(id,name,gender,salary,city) values('1006','Kavin','M','80000','Namakkal');
insert into emp(id,name,gender,salary,city) values('1007','Nandhu','M','35000','Thirupur');
insert into emp(id,name,gender,salary,city) values('1008','Ragul','M','25000','Namakkal');
insert into emp(id,name,gender,salary,city) values('2004','Sam','F','80000','Kochi'); /* successfully inserted values into the table */

select * from emp;

select avg(salary) as AVG from emp; /* It shows average salary from emp table */

select max(salary) as MAX from emp; /* It shows maximum salary from emp table */

select min(salary) as MIN from emp; /* It shows minimum salary from emp table */

select sum(salary) as SUM from emp; /* It shows sum of salary */

select count(salary),salary from emp group by salary having salary > 10000; /* Used HAVING in GROUP BY comand */

select count(salary), salary from emp group by salary; /* Used GROUP BY command*/

begin tran; /* begin the transaction */
delete from emp where name='Ragul' and city='Namakkal'; /* one record deleted from emp table */
commit; /* I commit the changes */

begin tran; /* begin the transaction */
delete from emp where name='Nandhu' and city='Thirupur'; /* one record deleted from emp table */
rollback; /* I rollback my changes */

begin tran; /* begin the transaction */
save tran s1; /* created save point 1 name as s1 */
delete from emp where name='Nandhu' and city='Thirupur';
save tran s2; /* created save point 2 name as s2 */
delete from emp where name='Kavin' and city='Namakkal';
save tran s3; /* created save point 2 name as s3 */
rollback tran s1; /* rollback to s1 savepoint */

create table emp2(id integer not null,name varchar(20),gender varchar(1),salary integer,city varchar(20));/* created emp2 table */
insert into emp2 values('2001','Vijay','M','25000','Chennai');
insert into emp2 values('2002','Ajith','M','35000','Madurai');
insert into emp2 values('2003','Surya','M','65000','Coimbatore');
insert into emp2 values('2004','Sam','F','80000','Kochi'); /* values successfully inserted into emp2 */

select * from emp2;

select name from emp union select name from emp2; /* union specific column from both tables */

select * from emp union all select * from emp2; /* union all the columns and rows from both tables */

select * from emp intersect select * from emp2; /* intersect both table */

select * from emp except select * from emp2; 
/* Minus duplicate from emp table that are present in emp2;
in sql server MINUS not there so I used EXCEPT keyword */

declare @a int; 
set @a=10;
select @a+5; /*Declaring 'a' and assigning value 10 and print the variable after adding 5 */

declare @startdate datetime;
set @startdate = 'september 8, 2002';
select @startdate - 10; /* Subracting 10 days from specified date */

declare @today datetime, @birthday datetime;
set @today=CURRENT_TIMESTAMP;
set @birthday= 'Sep 8,2002';
select datediff(year, @birthday,@today); /* print different between two dates in year */

create table demo(id int not null,name varchar(20),salary int default 15000); /* I crated the table with 'default' and 'not null' keyword, 
It replace null value with default value */

select * from demo;

insert into demo(id,name) values('3001','Enayath'); /* Here I am not assigning salary, so it takes default value instead of NULL */
insert into demo(id,name,salary) values('3002','Karthi','19000');

create table demo1(id int unique, name varchar(20)); /* I created demo1 table with UNIQUE id */

select * from demo1;

insert into demo1 values('4001','Manoj');
insert into demo1 values('4002','Kavin');
insert into demo1 values('4001','Sam'); /* Here I try to add already available id, so it produce "Statement has been terminated" result */

create table demo2(id int,age int check(age between 21 and 25)); /* I created table, that check the condition before insert the values */

select * from demo2;

insert into demo2 values('5001','22'); /* It will insert into table */
insert into demo2 values('5002','30'); /* It does not insert into table because the age not inside the given range */

create table demo3(id int primary key, Name varchar(20)); /* I created table using primary key */

select * from demo3;

insert into demo3 values('5002','Subi');
insert into demo3(Name) values('Hari'); /* This line not executed because we must give some value to primary key(it not contain null) */

create table demo4(Email varchar(50),id int foreign key references demo3(id)); /* I created table using foreign key, 
So this table act as a child table and primary key having table(demo3) act as parent table. We successfully created relation between them*/

select * from demo4;

insert into demo4 values('abc@gmail.com','5002');
insert into demo4 values('xyz@gmail.com','5002'); /* Here it doesnot show error because foreign key accept duplicates */ 