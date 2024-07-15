use excelr01;

select ename,dname from emp
cross join dept;

select ename, dname from emp
inner join dept
on emp.deptno=dept.deptno;

select ename, job, dname from emp
inner join dept
on emp.deptno=dept.deptno
where dname="research";

select ename,dname,sal,loc from emp
inner join dept
on emp.deptno=dept.deptno
where loc="new york" and sal is not null;

select * from emp
inner join dept
on emp.deptno=dept.deptno
where loc in ("new york" ,"dallas")
and sal>all(select sal from emp
            where job="manager");
            
select ename,sal,dname,loc from emp
inner join dept
on emp.deptno=dept.deptno  
where mgr is null and emp.deptno=10;  

select count(*) from emp
inner join dept
on emp.deptno=dept.deptno
where loc="new york";
            
            




select ename,sal, loc from emp
inner join dept
on emp.deptno=dept.deptno;







