use excelr01;
/*Question-01*/
select ename, sal, deptno from emp
where sal >2000 and deptno=10;

/*Question-02*/
select sum(sal), job from emp
where job="clerk";

/*Question-03*/
select avg(sal) from emp;

/*Question-04*/
select count(*)  from emp
where ename like"A%";

/*Question-05*/
select count(*), job from emp
where job="manager" or job="clerk"
group by job;

/*Question-06*/
SELECT SUM(sal) 
FROM emp
WHERE MONTH(hiredate) = 2;

/*Question-07*/
select count(*),mgr from emp
where mgr=7839;

/*Question-08*/
SELECT COUNT(*) AS num_employees_with_commission
FROM emp
WHERE deptno = 30 AND comm > 0;

/*Question-09*/
select avg(sal),sum(sal), count(*), max(sal), job from emp
where job="president";

/*Question-10*/
select count(*) from emp
where ename like"%A%";

/*Question-11*/
select count(*),sum(sal),ename from emp
where ename like"%LL%"
group by ename;

/*Question-12*/
SELECT COUNT(distinct deptno) 
FROM emp;

/*Question-13*/
select count(*) from emp
where ename like"%z%";

/*Question-14*/
select count(*) from emp
where ename like"%$%";

/*Question-15*/
select sum(sal), job,deptno from emp
where job="clerk" and deptno=30;

/*Question-16*/
select max(sal),job from emp
where job="analyst";

/*Question-17*/
select count(distinct sal) from emp;

/*Question-18*/
select count(distinct job) from emp;

/*Question-19*/
select avg(sal), job from emp
where job="clerk";

/*Question-20*/
select min(sal) from emp
where deptno=10 and job in ("manager" or "clerk");

SELECT MIN(sal) AS min_salary
FROM emp
WHERE deptno = 10 AND (job = 'Manager' OR job = 'Clerk');





 