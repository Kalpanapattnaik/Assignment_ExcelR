use assignment;
select * from orders;
call assignment.order_status(1, 2005);

select * from payments;
select assignment.purchase_status(144);

select * from customers;
select customernumber, customername, purchase_status(customernumber) from customers;

select * from movies;
select * from rentals;

update rentals set movieid=11 where memid=9;
DELETE from movies where title ='abc';
SET SQL_SAFE_UPDATES =0 ;

select * from employee;
select * from employee order by salary desc limit 1 offset 2;

select *,dense_rank () OVER (order by salary desc) as Rank_salary from employee;