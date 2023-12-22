create database Animal;
use Animal;
create table adoption(id integer, NAME varchar(20), breed varchar(20), sex varchar(10));

select * from adoption;

insert into adoption(id,NAME,breed,sex) values('1','Alexa','Dobber','Female');
insert into adoption(id,NAME,breed,sex) values('2','Charlie','Dobber','Male');
insert into adoption(id,NAME,breed,sex) values('3','Shib','Dachshund','Female');
insert into adoption(id,NAME,breed,sex) values('4','Doge','Pug','Male');
insert into adoption(id,NAME,breed,sex) values('5','Duddy','Bulldog','Male');
insert into adoption(id,NAME,breed,sex) values('6','Rocky','German Shepherd','Male');

select * from adoption where sex='Female';

drop table adoption;