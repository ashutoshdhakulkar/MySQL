use excelr01;

#QUESTION-01#
select ename,deptno from emp
where deptno=(select deptno from emp
where ename="smith");

#QUESTION-02#
select ename, hiredate from emp
where hiredate > (select hiredate from emp
where ename="jones");

#QUESTION-03#
select * from emp
where job=(select job from emp
where ename='king');

#QUESTION-04#
SELECT ename, sal, deptno
FROM emp
WHERE sal > 2000
  AND deptno = (SELECT deptno FROM emp WHERE ename = 'JAMES');

#QUESTION-05#
select * from emp
WHERE sal > 1500
  AND job = (SELECT job FROM emp WHERE ename ='MILLER');
  
#QUESTION-06#
select * from emp
where sal>(select sal from emp where ename='smith') and sal<(select sal from emp where ename='king');

#QUESTION-07#
select ename,sal, deptno from emp
where comm is not null
and deptno=20
and sal > (select sal from emp where ename='scott');

#QUESTION-08#
select ename, hiredate from emp
where hiredate>(select hiredate from emp where ename='james') and ename like "%S";

#QUESTION-09#
select ename, job, sal,deptno from emp
where deptno=(select deptno from emp where ename='james') 
and sal > (select sal from emp where ename='adam')
and job=(select job from emp where ename='miller')
and hiredate > (select hiredate from emp where ename='martin');

#QUESTION-10#
SELECT * FROM emp
WHERE job = 'SALESMAN'
AND deptno = 20
AND comm > (SELECT comm FROM emp WHERE ename = 'SMITH')
AND hiredate > (SELECT hiredate FROM emp WHERE ename = 'KING');








  
  


