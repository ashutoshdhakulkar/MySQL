USE EXCELR01;

CREATE TABLE emp
 (
  empno decimal(4,0) NOT NULL,
  ename varchar(10) default NULL,
  job varchar(9) default NULL,
  mgr decimal(4,0) default NULL,
  hiredate date default NULL,
  sal decimal(7,2) default NULL,
  comm decimal(7,2) default NULL,
  deptno decimal(2,0) default NULL
 );
 
  CREATE TABLE dept (
  deptno decimal(2,0) default NULL,
  dname varchar(14) default NULL,
  loc varchar(13) default NULL
 );
 
 INSERT INTO emp VALUES 
('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
 INSERT INTO emp VALUES 
('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
 INSERT INTO emp VALUES 
('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
 INSERT INTO emp VALUES
 ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
 INSERT INTO emp VALUES 
('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
 INSERT INTO emp VALUES 
('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
 INSERT INTO emp VALUES 
('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
 INSERT INTO emp VALUES 
('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
 INSERT INTO emp VALUES 
('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
 INSERT INTO emp VALUES 
('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
 INSERT INTO emp VALUES 
('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
 INSERT INTO emp VALUES 
('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
 INSERT INTO emp VALUES 
('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
 INSERT INTO emp VALUES 
('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');
 INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');
 INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');
 INSERT INTO dept VALUES ('30','SALES','CHICAGO');
 INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');
 
 SELECT * FROM EMP;
 
 SELECT ENAME FROM EMP;
 
 SELECT ENAME,SAL FROM EMP;
 
 SELECT * FROM EMP;
 
 SELECT ENAME,SAL,HIREDATE,JOB FROM EMP;
 
 SELECT * FROM EMP;
 
 SELECT DISTINCT DEPTNO FROM EMP;
 
 SELECT * FROM EMP;
 
 SELECT DISTINCT SAL,DEPTNO FROM EMP;
 
 SELECT ENAME ,SAL*12 FROM EMP;
 
 SELECT ENAME, SAL, (SAL+(SAL*0.1)) FROM EMP;
 
 SELECT ENAME, SAL+SAL*10/100 FROM EMP;
 
 
 SELECT ENAME, SAL-SAL*0.25 FROM EMP;
 
 SELECT ENAME , SAL*0.75 FROM EMP;
 
 SELECT ENAME ,SAL*12 AS ANNUAL_SAL FROM EMP;
 
 SELECT ENAME, SAL*12 "ANNUAL SAL" FROM EMP;
 
 SELECT * FROM EMP LIMIT 5;
 
 SELECT * FROM EMP LIMIT 10;
 
USE EXCELR01;
select ename from emp
where deptno=30;

use excelr01;

select ename from emp
where sal > 2500;

select ename from emp
where sal > 2500;

select ename , job 
from emp
where job = "Manager";

select * from emp
where comm = 1400;

select ename, hiredate from emp
where hiredate > '1981-12-31';

select ename, hiredate from emp
where hiredate < "1981-01-01";

select * from emp
where sal * 12 > 10000;

select concat("VADA","PAV");
select concat("VADA"," ","PAV");

select ename, job from emp
where deptno='20'and sal >2500;

select * from emp
where deptno='20' and sal >1500;

select * from emp
where deptno='20' && sal > 2500;

select ename,job,deptno,sal from emp
where deptno=20 and sal > 1500;

select ename,job,sal from emp
where job="ANALYST" and sal>2800;

select ename, hiredate from emp
where hiredate > "1981-12-31" and hiredate < " 1985-01-01";

select ename from emp
where deptno=10 or deptno=20 or deptno=30;

select ename,job,sal from emp
where job ="SALESMAN" OR JOB="PRESIDENT";

select ename,job,sal from emp
where job ="SALESMAN" OR JOB="HR";

SELECT * FROM EMP
WHERE (DEPTNO=10 OR DEPTNO=20)
AND SAL >1000 AND (JOB="ANALYST" OR JOB="CLERK");

SELECT * FROM EMP
WHERE (DEPTNO=10 OR DEPTNO=20)
AND (SAL >1000) AND (JOB="ANALYST" OR JOB="CLERK");

SELECT ENAME,DEPTNO FROM EMP
WHERE DEPTNO != 30;

SELECT ENAME ,DEPTNO FROM EMP
WHERE NOT DEPTNO = 30;

SELECT ENAME ,DEPTNO FROM EMP
where DEPTNO <> 30;

SELECT ENAME, HIREDATE,JOB, SAL FROM EMP
WHERE SAL *12 > 15000 
AND (JOB="SALESMAN" OR JOB="MANAGER" OR JOB="PRESIDENT")
AND (HIREDATE > '1982-12-31')
AND (DEPTNO=20 OR DEPTNO=30);






















 
 
 
 
 
 
                                 
 
 
 
 
 
 
