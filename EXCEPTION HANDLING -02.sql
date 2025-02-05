CREATE DATABASE TALENTED;
USE TALENTED;

# TRIGGERS #

CREATE TABLE EMP
(
EMPNO INT,
ENAME VARCHAR(50),
SAL INT,
WORKING_HOURS INT
);

INSERT INTO EMP VALUES
(1,"OM",10000,65),
(2,"SHUBHAM", 20000, -65),
(3,"VIKAS",30000,45);

INSERT INTO EMP VALUES
(4,"ARUN",25000,-90);

SELECT * FROM EMP;


CREATE TABLE EMP2
(
EMPNO INT,
ENAME VARCHAR(100),
SAL INT
);

CREATE TABLE AUDIT
(
EMPNO INT,
DESCRIPTION VARCHAR(100)
);


INSERT INTO EMP2 VALUES
(1,"ROHIT",1000);

INSERT INTO EMP2 VALUES
(2,"ARUN",2000);

SELECT * FROM EMP2;
SELECT * FROM AUDIT;

CREATE TABLE PRODUCT
(
PID INT,
PNAME VARCHAR(50),
PRICE INT
);

INSERT INTO PRODUCT VALUES
(1,"MOBILE1",25000),
(2,"MOBILE2",50000),
(3,"MOBILE3",75000),
(4,"MOBILE4",200000),
(5,"MOBILE5",250000);

UPDATE PRODUCT
SET PRICE=20000
WHERE PID=4;

SELECT * FROM PRODUCT;

CREATE TABLE STUDENT
(
SID INT,
SNAME VARCHAR(100),
CLASS INT
);

INSERT INTO STUDENT VALUES
(1,"SHUBHAM",1),
(2,"OM",10),
(3,"VIKAS",7),
(4,"ATHARVA",4);

CREATE TABLE STUDENT_INFO
(
USER VARCHAR(100),
DESCRIPTION VARCHAR(100)
);

update student
set class=class+1;

select * from student_info;

CREATE TABLE EMP3
(
EMPNO INT,
ENAME VARCHAR(100),
SAL INT
);

INSERT INTO EMP3 VALUES
(1,"SHUBHAM",10000),
(2,"HP",20000),
(3,"DIVYA",30000),
(4,"KIRAN",40000);

CREATE TABLE BACKUP
(
EMPNO INT,
ENAME VARCHAR(100),
SAL INT,
TOE TIMESTAMP DEFAULT NOW()  # TIME ODF EXIT
);

DELETE FROM EMP3 WHERE EMPNO=1;
SELECT * FROM BACKUP;
SELECT * FROM EMP3;

DELETE FROM EMP3 WHERE EMPNO=3;
SELECT * FROM BACKUP;

CREATE TABLE MP4
(
EMPNO INT,
ENAME VARCHAR(100),
SAL INT
);

INSERT INTO MP4 VALUES
(1,"SHUBHAM",10000),
(2,"HP",20000),
(3,"DIVYA",30000),
(4,"KIRAN",40000);


CREATE TABLE BUDGET
(
TOTAL INT
);

INSERT INTO BUDGET(TOTAL) SELECT SUM(SAL) FROM MP4;


SELECT * FROM BUDGET;

DELETE FROM MP4 WHERE EMPNO=1;
SELECT * FROM BUDGET;
DELETE FROM MP4 WHERE EMPNO=3;
SELECT * FROM BUDGET;


