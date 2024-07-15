use excelr01;
select upper("viKas");
select lower("SWAPniL");

select reverse("Viajy");

select ename from emp
where ename= reverse(ename);

update emp
set ename="Nitin"
where ename="Allen";

select ename from emp
where ename= reverse(ename);

update emp
set ename="Allen"
where ename="Nitin";

select mod(10,3);

select mod(10,2);

select empno from emp
where mod(empno,2)=0;

select empno from emp
where mod(empno,2)!=0;

select empno from emp
where mod(empno,2)=1;

select mod(15,9);

select coalesce(null,"ashu",4,5);
select coalesce(9,"rahul",null);
select empno from emp
where mod(empno,2)=0;

select empno from emp
where mod(empno,2)=0;


 set global  log_bin_trust_function_creators=1;
 

/* GROUPBY CLAUSE - TO GROUP THE RECORDS*/

SELECT DEPTNO, COUNT(*) FROM EMP
GROUP BY DEPTNO;

SELECT MAX(SAL), MIN(SAL), SUM(SAL),COUNT(*),COMM FROM EMP
WHERE JOB="CLERK"
GROUP BY COMM;

SELECT MAX(SAL), MIN(SAL), SUM(SAL),COUNT(*),SAL*12 FROM EMP
WHERE JOB="CLERK"
GROUP BY SAL*12;

SELECT COUNT(*), DEPTNO FROM EMP
WHERE JOB!="ANALYST"
GROUP  BY DEPTNO;

SELECT MAX(SAL), JOB FROM EMP
GROUP BY JOB;

SELECT COUNT(*) , DEPTNO FROM EMP
WHERE ENAME LIKE"%A%" OR ENAME LIKE "%S%"
GROUP BY DEPTNO;

SELECT COUNT(*) , ENAME FROM EMP
WHERE ENAME LIKE"%A%" OR ENAME LIKE "%S%"
GROUP BY ENAME;

SELECT COUNT(*) ,SAL FROM EMP
GROUP BY SAL;

SELECT COUNT(*) , JOB FROM EMP
GROUP BY JOB;

SELECT SAL FROM EMP
ORDER BY SAL DESC;

SELECT ENAME FROM EMP
ORDER BY ENAME ; 