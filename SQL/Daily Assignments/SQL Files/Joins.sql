use employee; /* I used already available database in my local */
create table customer(cus_id int,name varchar(20),gender varchar(1)); /* Created customer table */

insert into customer values('1','Enayath','M');
insert into customer values('2','Karthi','M');
insert into customer values('3','Abishek','M');
insert into customer values('4','Harunyaa','F');
insert into customer values('5','Kavin','M');
insert into customer values('6','Sam','F'); /* inserted value into customer table */

select * from customer;

create table product(pro_id int, cus_id int, profit int); /* created product table */

insert into product values('2001','1','500');
insert into product values('2002','5','600');
insert into product values('2003','2','400');
insert into product values('2004','6','700');
insert into product values('2005','8','1000');
insert into product values('2006','3','200'); /* inserted values into product table */

select * from product;

/* Joins */
select customer.cus_id, customer.name, customer.gender, product.profit from customer inner join product on customer.cus_id = product.cus_id;
/* I joined two tables using INNER JOIN; It returns common records in both tables */

select * from customer inner join product on customer.cus_id=product.cus_id;
/* Another example for INNER JOIN */ 

select customer.cus_id, customer.name, customer.gender, product.profit from customer left join product on customer.cus_id = product.cus_id;
/* I joined two tables using LEFT JOIN / LEFT OUTER JOIN; It returns left table's all records and also common records in right table */

select * from customer left outer join product on customer.cus_id=product.cus_id;
/* Another example for LEFT JOIN */

select customer.cus_id, customer.name, customer.gender,product.profit from customer right join product on customer.cus_id = product.cus_id;
/* I joined two tables using RIGHT JOIN / RIGHT OUTER JOIN ; It returns right table's all record and also common records in left table */

select * from customer right outer join product on customer.cus_id=product.cus_id;
/*Another example for RIGHT JOIN */

select customer.cus_id,customer.name, customer.gender,product.profit from customer full join product on customer.cus_id=product.cus_id;
/* I joined two tables using FULL OUTER JOIN / FULL JOIN; It returns all the records from both tables */

select * from customer full outer join product on customer.cus_id=product.cus_id;
/* Another example for FULL JOIN */

select * from customer cross join product; /* All the records are mapped with each and every records in another table */

/* String function */

select ASCII('B'); /* returns ASCII value of the character */

select char(66); /* returns char of the ascii value */

select LEN('Enayathulla'); /* It returns len of the string */

select LOWER('ENAYATH'); /* Lower all the character in string */

select UPPER('enayath'); /* Upper all the character in string */

select REPLACE('H Welcome','H','Hello'); /* It replace the character with given str or chr */

select REVERSE(123); /* It reverse the number and also string */

select STR(123); /* It change other datatype into string datatype */

/* Date function */
/* In datetime datatype sql takes MM/DD/YYYY format we give date as 9/8/2002 or else 8 sep 2002 */
select DATEADD(DD,5,'8 sep , 2023'); /* It add 5 days in given date */
select DATEADD(MM,5,'8 sep , 2023'); /* It add 5 months in given date */ 
select DATEADD(YY,5,'8 sep , 2023'); /* It add 5 years in given date */

select DATEDIFF(DD,'8 sep,2002','8 sep, 2023'); /* It gives date difference */
select DATEDIFF(MM,'8 sep,2002','8 sep, 2023'); /* It gives month difference */
select DATEDIFF(YY,'8 sep,2002','8 sep, 2023'); /* It gives year difference */

select DATEPART(mm,'8 sep 2023'); /*It returns month in the given date */
select DATEPART(dd,'8 sep 2023'); /*It returns date in the given date */
select DATEPART(yy,'8 sep 2023'); /*It returns year in the given date */

select DAY('8 sep 2023'); /* It returns date in the given date */
select MONTH('8 sep 2023'); /* It returns month in the given date */
select YEAR('8 sep 2023'); /* It returns year in the given date */

select DATENAME(dw,'8 sep 2023'); /* It returns weekday for the given date */

/* Mathematical Functions */
select abs(-77); /* It returns absolute value */

select tan(1.5);
select sin(1.5);
select cos(1.5); /* It returns angle in radians */

select ceiling(15.10); /* It returns next number when it have digits otherwise retuns same number */

select exp(2); /* It is used for exponential function */

select floor(19.69); /* It returns number that present before the digit */

select log(5); /* It returns log value */

/* System Functions */
select HOST_ID(); /* returns host id number */
select HOST_NAME(); /* returns host name */
select SUSER_NAME(); /* It returns users name */
select SUSER_ID('PROGRAMMER\Enayath'); /* It returns user id */
select USER_NAME();/* It returns user list in db0, db1, db2 format */
select USER_ID(); /* It returns user's ID number like db0 means 1, db1 means 2 */
select DB_NAME(); /* Returns database name */
select DB_ID();  /* retuns database's ID */

/* Ranking Functions */
select * from product;
insert into product values('2006','7','1000');

select pro_id,cus_id,profit,ROW_NUMBER() over (order by profit desc) from product; 
/* It rank the table based on profit in desc order and also give various rank for same records */

select pro_id,cus_id,profit,RANK() over (order by profit desc) from product;
/* It gives same rank for same record and when ever it gives same rank to that record it skips one rank */

select pro_id,cus_id,profit,DENSE_RANK() over (order by profit desc) from product;
/* It gives same rank for same record but it did not skip any rank (used in school ranking) */

select pro_id,cus_id,profit,NTILE(2) over (order by profit desc) from product;
/* Ntile requires one argument and it classifies the tables into some given argument part */