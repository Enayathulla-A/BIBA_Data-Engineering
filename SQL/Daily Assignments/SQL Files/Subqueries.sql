use employee; /* I using already available databse in my local */

select * from customer;
select * from product;

/* Equi Join */
select * from customer,product where customer.cus_id=product.cus_id; /* It joins two tables based on condition */
select * from customer join product on customer.cus_id=product.cus_id; /* It also same as previous query */

/* Non Equi join */
select * from customer,product where customer.cus_id > product.cus_id; /* It joins two bales based on condition */

/* Different b/w Equi join and Non Equi join; Equi join only have = conditon, Non Equi Join have <, >, <=, >= conditions */

/* Self Join*/
select * from customer,product where customer.cus_id<>product.cus_id; /* It map all the records with each other records in other table */

/* Nested Queries */
/* Exists */
select cus_id,name from customer where exists (select pro_id from product where cus_id<5); 
/* If any value exists in subqury then only main query fully executed */

/* Not Exists */
select cus_id,name from customer where not exists (select pro_id from product where cus_id>10); 
/* If value not exists in subqury then only main query fully executed */

/* Any or Some */
select cus_id,name from customer where cus_id = any (select cus_id from product where profit>100);
/* If any values exists in subquery and the main query returns only matched records with subquery */

/* All */
select cus_id,name from customer where cus_id = all (select cus_id from product where profit = 200);
select cus_id,name from customer where cus_id > all (select cus_id from product where cus_id <=2);
/* Main query each and every value tested based on condition with subqueries;
The record satisfies condition for all subquies records, then only it produce results */
/* For better unserstanding ==> "https://youtu.be/AB8w5tTrBjs?si=as6KqL8zSgc0uoG0" */



/* In */
select * from customer where cus_id in (select cus_id from product where profit > 200);
/* The subquery values present in main query means that value only displayed */

/* Not In */
select * from customer where cus_id not in (select cus_id from product where profit > 200);
/* The main query's not presented records(in sub query) only displayed */

/* subquery witin select */
select name,(select count(profit) from product where profit>500) as expected_profit from customer;
/* The subquey must be return only one value */

/* Correlated subqueries */
select * from customer where cus_id=(select cus_id from product where cus_id = 5);
/* Subquery return one cus_id present in product that cus_id records displayed from customer table */

/* Not exists with correlated query */
select * from customer where not exists (select cus_id from product where customer.cus_id = product.cus_id);
/* It returns customer table record that not exists in product table */

/* Subquery in From clause */
select cus_id, sum_profit 
from (select pro_id,cus_id,sum(profit) as sum_profit from product group by cus_id,pro_id) customer where sum_profit < 500;