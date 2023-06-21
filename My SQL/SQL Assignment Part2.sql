use assignment;
select * from employee;
select * from employee where deptno=10 and salary>3000;
select * from students;
select *, case when marks>80 then 'Distinction' 
when marks between 50 and 80  then 'Frist class' 
when marks between 40 and 50 then 'Second Class' 
when marks<40 then 'Fail' 
else 'No Grade Available' end as Grade from students;
select count(marks) from students where marks>=50 and marks<=80;
select count(marks) from students where marks>80 and marks<=100;
select * from station;
select distinct city from station where mod(id,2)=0;

select count(city) from station;
select count(distinct city) from station;
select (count(city)- count(distinct city)) from station as Ans;

select distinct city from station where left(city,1) in ('a','e','i','o','u');
select distinct city from station where right(city,1) in ('a','e','i','o','u');
select distinct city from station where left(city,1) in ('a','e','i','o','u') and right(city,1) in ('a','e','i','o','u');

select distinct city from station where left(city,1) not in ('a','e','i','o','u');
select distinct city from station where left(city,1) not in ('a','e','i','o','u') and right(city,1) not in ('a','e','i','o','u');

select * from emp;
select * from emp where salary>2000 order by salary desc;
select * from emp where datediff(hire_date,current_date)<36 order by salary desc;
select * from emp where salary>2000 and datediff(hire_date,current_date)<36 order by salary desc;

select * from employee;
select deptno, sum(salary) from employee group by deptno;

select * from city;
select count(name) from city where population>100000;
select sum(population) from city where district='california';
select countrycode,district,avg(population) from city group by countrycode,district;

select * from orders;
select * from customers;
select orders.ordernumber,orders.status,customers.customernumber,customers.customername,orders.comments 
from orders inner join customers on orders.customernumber=customers.customernumber where orders.status='disputed';