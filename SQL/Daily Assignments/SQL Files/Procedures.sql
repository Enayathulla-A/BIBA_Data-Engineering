use employee; /* I use already available database in my local */

select * from customer;
select * from product;

/* Procedures */ 
/* Procedure is nothing but it same as function in other languages; In sql it called procedures */
/* It have two part one procedure creation another one procedure calling */
create procedure customer_id as select cus_id from customer; /* successfully created procedure */
exec customer_id; /* It is procedure calling */

create procedure DisplayProfit as select pro_id,profit from product;
exec DisplayProfit;

/* And also we pass argumants to procedures like as functions */
create procedure example3 @id int, @val int as select * from product where pro_id=@id or profit=@val;
exec example3 2001,600; /* Like wise we pass more parameters */

create procedure example4 @sex varchar(1) as select * from customer where gender=@sex;
exec example4 M; /* or */ exec example4 'M'; /* It returns only Male gender record */
exec example4 F; /* or */ exec example4 'F'; /* It returns only Female gender record */

select * from product;
alter table product add year int;
update product set year=2020 where cus_id <=3;
update product set year=2021 where cus_id > 4 and cus_id <7;
update product set year=2023 where cus_id>=7;
/* Total and Subtotal */
select year,sum(profit) as sum_profit from product where profit > 200 group by year with rollup; /* This rollup gives total amount in last */