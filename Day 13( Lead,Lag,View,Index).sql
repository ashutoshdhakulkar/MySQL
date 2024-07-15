use excelr01;

# 10th minimum salary of employee;
select ename,sal
from(
select ename,sal, dense_rank()
over (order by sal asc) as R1
from emp) as E
where R1=10;

select max(sal),deptno from emp
group by deptno;

select deptno,max(sal) over(partition by deptno) as Dept_max_sal
from emp;

select deptno,min(sal) over(partition by deptno) as Dept_max_sal
from emp;

select max(sal), deptno , job,comm
from emp
group by deptno,job,comm;

select sal
from emp
order by sal;

select sal, lead(sal) over(order by sal asc) 
from emp;

select sal, lag(sal) over(order by sal asc)
from emp;

# JOINS #
select ename from emp
where empno=(select mgr from emp
where ename="smith");

select ename from emp
where empno=(select mgr from emp
where ename="james");

select ename from emp
where empno=(select mgr from emp
where empno=(select mgr from emp
             where ename="scott"));
             
select ename from emp
where empno=(select mgr from emp
where empno=(select mgr from emp
			where ename="blake"));

select ename from emp
where mgr=(select empno from emp
           where ename="king");
           
select ename, sal, job from emp
where sal > all(select sal from emp
                where job='manager');
                
select ename, sal, job from emp
where sal < any(select sal from emp
                where job="salesman");


#  VIEW CONCEPT  #                
select * from emp;

create view MYSQL_VIEW as 
select ename,sal 
from emp;

select * from mysql_view;

create view mysql as 
select ename,mgr,comm
from emp;

select * from mysql;

drop view mysql;
select * from mysql;

# INDEX #
show index from emp;

create index MYSQL
on emp(empno,sal);
show index from emp;

create unique index mysql1
on emp(empno);

drop index mysql1 on emp;
drop index mysql on emp;











                
                
           
           
           








