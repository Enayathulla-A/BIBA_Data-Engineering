create database Man;
use Man;

create table customer(id integer, NAME varchar(20), DOB date, sex varchar(10));

select * from customer;

insert into customer(id,NAME,DOB,sex) values('1','Enayath','1/1/2001','Male');
insert into customer(id,NAME,DOB,sex) values('2','Karthi','2/2/2001','Male');
insert into customer(id,NAME,DOB,sex) values('3','Abishek','3/3/2001','Male');
insert into customer(id,NAME,DOB,sex) values('4','Harunyaa','4/4/2001','Female');
insert into customer(id,NAME,DOB,sex) values('5','Arun','5/5/2001','Male');
insert into customer(id,NAME,DOB,sex) values('6','Sowmiya','6/6/2001','Female');

select * from customer where NAME = 'Enayath';

SELECT * FROM sys.tables

SELECT Name FROM sys.objects WHERE type_desc = 'USER_TABLE'

alter table customer add Email varchar(100);

update customer set Email ='abc@gmail.com' where Name='Enayath';

delete from customer where DOB='2001-04-04';

select distinct sex,NAME,DOB from customer;

select count(distinct id) from customer;

select count(distinct id) as total_count from customer;

select count(Name),sex from customer group by sex;

select count(Name),sex from customer group by sex having count(Name) > 2;

select * from customer order by DOB;

select getdate();

select CURRENT_TIMESTAMP;
drop table customer

create table student(id integer, Name varchar(20), sex varchar(10), city varchar(50));

insert into student (id,Name,sex,city) values ('1','Enayath','Male','Namakkal');
insert into student (id,Name,sex,city) values ('2','Karthi','Male','Karur');
insert into student (id,Name,sex,city) values ('3','Abishek','Male','Salem');
insert into student (id,Name,sex,city) values ('4','Harunyaa','Male','Theni');
insert into student (id,Name,sex,city) values ('5','Arun','Male','Karur');
insert into student (id,Name,sex,city) values ('6','Sowmiya','Male','Coimbatore');

select * from student;

truncate table student;

select id,Name as Name_With_City from customer union select id,city from student order by id;

EXEC sp_rename 'student', 'students';

select * from students;

exec sp_rename 'students' , 'student';


drop database Animal;

select customer.id, student.Name, student.city from student inner join customer on customer.id=student.id; 