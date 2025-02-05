use excelr01;

create table uber1
(
id int primary key,
customer_name varchar(50),
cphno bigint check(length(cphno)=10),
CITY VARCHAR(20) DEFAULT "PUNE"
);
DESC UBER1;
INSERT INTO UBER1 VALUES(2,"OM",1234567892,"MUMBAI");
SELECT *
FROM UBER1;





create table customer01
(
cid int primary key,
cname varchar(50),
id int,
CONSTRAINT ID_FK01 FOREIGN KEY(ID) 
references UBER(ID)
);
DESC UBER1;
DESC CUSTOMER01;
ALTER TABLE CUSTOMER01
ADD CONSTRAINT ID_FK02 FOREIGN KEY(ID) 
REFERENCES UBER1(ID);
DROP TABLE UBER1;
/*DATA QUERY LANGUAGE(DQL):
"IT IS PROCESS RETRIVING DATA FROM DATABASE DATA QUERY
LANGUAGE(DQL)"
->IT HAS 4 STATEMENTS
1)SELECT
2)PROJECTION
3)SELECTION
4)JOINS
1)SELECT:
"IT IS A PROCESS RERIVING DATA FROM THE TABLE &DISPLAY IT".
2)PROJECTION:
"IT IS A PROCESS OF RERIVING DATA BY SELECTING ONLY
 COLUMNS"
3)SELECTION:
"IT IS A PROCESS OF RETRIVING DATA BY SELECTING BOTH
ROWS &COLUMNS".
4)JOINS:
"IT IS PROCESS OF RETRIVING DATA FROM MULTIPLE TABLES
SIMULTANESOULY IS KNOWN AS JOINS".
/*PROJECTION:
"IT IS PROCESS OF RETRIVING DATA BY SELECTING ONLY
COLUMNS".

SYNTAX:
SELECT * /[DISTINCT]COLUMN_NAME/EXPRESSION[ALIAS]
FROM TABLE_NAME;
*/
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
/*WAQTD NAME OF EMPLOYEE*/
SELECT *
FROM EMP;
SELECT ENAME
FROM EMP;
/*WAQTD NAME &SALARY OF EMPLOYEE*/
SELECT ENAME,SAL
FROM EMP;
/*WAQTD DETAILS OF EMPLOYEE*/
SELECT *
FROM EMP;
/*WAQTD NAME,SALARY,JOINING DATE,JOB OF EMPLOYEE*/
SELECT ENAME,SAL,HIREDATE,JOB
FROM EMP;
SELECT * FROM EMP;
SELECT DISTINCT DEPTNO
FROM EMP;
/*DISTINCT CLAUSE/KEYWORD:
"IT IS USED TO REMOVE DUPLICATE/REPETED VALLUE FROM
THE RESULT TABLE
->DISTINCT CLAUSE HAS TO BE USED AS FIRST ARGUMENT
 IN SELECT CLAUSE ONLY.
*/
SELECT *
FROM EMP;
SELECT DISTINCT SAL,DEPTNO
FROM EMP;
/*WAQTD NAME &ANNUAL SALARY OF EMPLOYEE*/
SELECT ENAME,SAL*12
FROM EMP;
/*WAQTD NAME OF EMPLOYEE ALONG WITH 10% HIKE IN A
  SALARY*/
  SELECT ENAME,SAL+SAL*10/100
  FROM EMP;
  SELECT ENAME,SAL+SAL*0.1
  FROM EMP;
  SELECT ENAME,SAL*0.10+SAL
  FROM EMP;
/*WAQTD NAME OF ALONG WITH 25% DEDUCTION SALARY*/
SELECT ENAME,SAL-SAL*25/100
FROM EMP;
SELECT SAL*3/4
FROM EMP;
SELECT SAL*0.75
FROM EMP;
/*ALIAS:
"ALTERNATE NAME GIVEN TO THE COLUMN/EXPRESSION
IN A RESULT TABLE WE CALL IT AS ALIAS".
->WE CAN WRITE THE ALIAS WITH OR WITHOUT AS KEYWORD.
*/
SELECT ENAME,SAL*12 AS ANNUALSAL
FROM EMP;
SELECT ENAME,SAL*12 ANNUALSAL
FROM EMP;
SELECT ENAME,SAL*12 ANNUAL_SAL
FROM EMP;
SELECT ENAME,SAL*12 "ANNUAL SAL"
FROM EMP;
SELECT *
FROM EMP;

SELECT *
FROM EMP
LIMIT 10;

/*DEFAULT:
"IT IS CONSTRAINT WHICH IS USED ASSIGN DEFAULT VALUE
TO THE PARTICULAR COLUMN"*/

