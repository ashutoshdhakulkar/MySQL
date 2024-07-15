use excelr01;
/*01.WAQTD NUMBER OF EMPLOYEES WORKING IN EACH DEPARTEMENT EXCEPT PRESIDENT.*/
select count(*),deptno from emp
where job!="President"
group by deptno;

/*2.WAQTD TOTAL SALARY NEEDED TO PAY ALL THE  
EMPLOYEES IN EACH JOB.*/
select sum(sal), job from emp
group by job;

/*3.WAQTD NUMBER OF EMPLOYEEES WORKING AS  
MANAGER IN EACH DEPARTMENT .*/
select count(*),job from emp
where job="manager"
group by job;

/*4.WAQTD AVG SALARY NEEDED TO PAY ALL THE  
EMPLOYEES IN EACH DEPARTMENT EXCLUDING THE  
EMPLOYEES OF DEPTNO 20.*/
select avg(sal), deptno from emp
where deptno!=20
group by deptno;

/*5.WAQTD NUMBER OF EMPLOYEES HAVING CHARACTER  
'A' IN THEIR NAMES IN EACH JOB .*/
select count(*) , job from emp
where job like"%A%"
group by job;

SELECT 
    JOB,
    COUNT(*) AS EMPLOYEES_WITH_A
FROM 
    EMP
WHERE 
    UPPER(ENAME) LIKE '%A%'
GROUP BY 
    JOB;


/*6.WAQTD NUMBER OF EMPLOYEES AND AVG SALARY  
NEEDED TO PAY THE EMPLOYEES WHO SALARY IN  
GREATER THAN 2000 IN EACH DEPT.*/

select count(*) , avg(sal), deptno from emp
where sal > 2000
group by deptno;

/*7.WAQDTD TOTAL SALARY NEEDED TO PAY AND NUMBER  
OF SALESMANS IN EACH DEPT.*/

select count(*),sum(sal) , job from emp
where job="salesman"
group by job;

/*8.WAQTD NUMBER OF EMPLOYEES WITH THEIR MAXIMUM  
SALARIES IN EACH JOB.*/

select count(*), max(sal), job from emp
group by job;

/*9.WAQTD MAXIMUM SALARIES GIVEN TO AN EMPLOYEE  
WORKING IN EACH DEPT.*/

select max(sal) ,deptno from emp
group by deptno;

/*10.WAQTD NUMBER OF TIMES THE SALARIES PRESENT IN  
EMPLOYEE TABLE .*/

select count(*), sal from emp
group by sal;
