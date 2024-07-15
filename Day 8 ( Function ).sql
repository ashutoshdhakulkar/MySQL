use excelr01;

select * from product;
drop table product;

create table product
(
pid int,
pname varchar(40),
price int
);

insert into product values
(1,"mobile1",10000),
(2,"mobile2",20000),
(3,"mobile3",25000),
(4,"mobile4",50000),
(5,"mobile5",70000);

select * from product;

select pid,pname,price,
case when price >25000 then
"expensive product" 
else
"Not-expensive product"
end status
from product;


select ename,sal,
case when sal>2500
then
"Maximum Sal given to Employee"
else 
"minimum sal given to employee"
end Salary_status
from emp;

create table student
(
sid int,
sname varchar(50),
percentage decimal(5,2)
);

insert into student values
(1,"Ashutosh",95.34),
(2,"Bhushan",88),
(3,"OM",34),
(4,"Swapnil",30);

select sid,sname,percentage,
case when percentage < 36
then
"Failed Student"
else
"Passed Student"
end Grades
from student;

select max(sal) from emp;

select max(sal) from emp 
where job="salesman";

select min(sal) from emp
where job="manager"
and deptno in(10,20);

select sum(sal) from emp
where job="analyst";

select avg(sal) from emp
where mgr is not null;

select count(ename) from emp
where job="president";

select count(*) from emp
where job="president";

select count(distinct deptno) from emp;

select count(distinct job) from emp;

select max(sal), min(sal), sum(sal), count(ename) from emp
where job="clerk";

select ename,sal,comm,sal+comm,sal+ifnull(comm,0)
from emp;

select ename,sal,comm,sal+comm,sal+ifnull(comm,10)
from emp;

select ename,sal,comm,sal+comm,sal+ifnull(comm,-1)
from emp;


select ename
from emp
union
select sal from emp;


select ename
from emp
union all
select sal from emp;


select length("ashutosh");

select now();

select sqrt(4);

select pi();

select power(2,4);


