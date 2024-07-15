USE EXCELR01;
/*special operators
WAQTD NAME & DEPTNO IF EMPLOYEE WORKING
IN DEPTNO 10,20,30,40*/
SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO=10 OR DEPTNO=20 OR DEPTNO=30
OR DEPTNO=40;
/*IN:
"IT IS MULTI-VALUED OPERATOR WHICH ACCEPTS
MULTIPLE VALUES AT THE RHS.
SYNTAX:
COLUMN_NAME/EXPRESSION IN(V1,V2,V3,..VN);
*/
SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO IN(10,20,30,40);
/*WAQTD NAME&JOB OF EMPLOYEE IF EMPLOYEE
IS WORKING AS SALESMAN OR ANALYST*/
SELECT ENAME,JOB
FROM EMP
-- WHERE JOB='SALESMAN' OR JOB='ANALYST';
 WHERE JOB IN('SALESMAN','ANALYST');

/*WAQTD NAME &SALARY OF EMPLOYEE IF EMPLOYEE
IS GETTING SALARY OF RS 800 OR 1000 OR 3000.*/
SELECT ENAME,SAL
FROM EMP
WHERE SAL IN(800,1000,3000);
/*NOT IN:
"IT IS SIMILAR TO IN OPERATOR BUT INSTEAD OF
SELECTING VALUES VALUES ARE GETTING REJECTED".
SYNTAX:
COLUMN_NAME/EXPRESSION NOT IN(V1,V2,V3...VN);
*/
/*WAQTD NAME &JOB OF EMPLOYEE IF EMPLOYEE IS 
NOT WORKING AS PRESIDENT AND NOT WORKING AS
CLERK*/
SELECT ENAME,JOB
FROM EMP
-- WHERE JOB!='PRESIDENT' AND JOB!='CLERK';
 WHERE JOB NOT IN('PRESIDENT','CLERK');
/*WAQTD NAME OF EMPLOYEE IF EMPLOYEE IS
HIRED DURING 1981*/
SELECT ENAME,HIREDATE
FROM EMP
WHERE 
HIREDATE>='1981-01-01' AND HIREDATE<='1981-12-31';
/*BETWEEN:
"IT IS USED TO SELECT THE RANGE OF VALUES".
SYNTAX:
COLUMN_NAME BETWEEN LOWERRANGE AND HIGHERRANGE
*/
SELECT ENAME,HIREDATE
FROM EMP
WHERE HIREDATE between '1981-01-01' AND '1981-12-31';
/*WAQTD NAME & SALARY OF EMPLOYEE IF EMPLOYEE
IS GETTING SALARY IN RANGE OF 3000 AND 1500*/
SELECT ENAME,SAL
FROM EMP
WHERE SAL BETWEEN 1500 AND 3000;
/* NOT BETWEEN:
"EXCATLY OPPOSITE OF BETWEEN OPERATOR"
SYNTAX:
COLUMN_NAME NOT BETWEEN LOWERRANGE AND HIGHERRANGE;
*/
/*WAQTD NAME OF EMPLOYEE IF EMPLOYEE NOT HIRED
DURING 1981*/
SELECT ENAME,HIREDATE
FROM EMP
WHERE HIREDATE NOT BETWEEN '1981-01-01' AND '1981-12-31';
/*WAQTD NAME & SALARY OF EMPLOYEE IF EMPLOYEE IS
 NOT GETTING A SALARY*/
 SELECT * FROM EMP;
 /*IS:IT IS USED TO COMPARE WITH THE NULL VALUE.
 SYNTAX:COLUMN_NAME/EXPRESSION IS NULL*/
 SELECT ENAME,SAL
 FROM EMP
 WHERE SAL IS NULL;
 /*WAQTD NAME &COMMISSION OF EMPLOYEE IF EMPLOYEE
 IS NOT GETTING COMISSION*/
 SELECT ENAME,COMM
 FROM EMP
 WHERE COMM IS NULL;
 SELECT *
 FROM EMP;
 SELECT ENAME,JOB
 FROM EMP
 WHERE MGR IS NULL;
 /*WAQTD NAME & SALARY OF EMPLOYEE IF EMPLOYEE IS
 GETTING SALARY*/
 /*IS NOT:IT IS USED TO COMPARE NOT NULL VALUES
 SYNTAX:COLUMN_NAME/EXPRESSION IS NOT NULL;
 */
 SELECT ENAME,SAL
 FROM EMP
 WHERE SAL IS NOT NULL;
 /*WAQTD NAME OF EMPLOYEE IF EMPLOYEE IS 
 HAVING REPORTING MANAGER*/
 SELECT ENAME,MGR
 FROM emp
 WHERE MGR IS NOT NULL;
/*LIKE:
"IT IS USED FOR PATTERN-MATCHING"
->TO ACHIEVE THE PATTERN MATCHING WE REQUIRE 2
  SYMBOLS 
  % -(PERCENTILE)
  _ -(UNDERSCORE)
SYNTAX:COLUMN_NAME LIKE 'PATTERN_TO_MATCH';
*/
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%R';
/*WAQTD NAME OF EMPLOYEE IF EMPLOYEE NAME STARTS
WITH K*/
SELECT ENAME
FROM EMP
WHERE ENAME LIKE 'K%';
/*WAQTD NAME OF EMPLOYEE IF EMPLOYEE NAME ENDS WITH
  N*/
SELECT ENAME
FROM emp
WHERE ENAME LIKE '%N';
/*WAQTD NAME OF EMPLOYEE IF EMPLOYEE NAME STARTS WITH
S AND ENDS WITH T*/
SELECT ENAME
FROM EMP
-- WHERE ENAME LIKE 'S%' AND ENAME LIKE '%T';
WHERE ENAME LIKE 'S%T';
/*WAQTD NAME OF EMPLOYEE IF EMPLOYEE NAME HAS
  A CHARACTER A IN THEIR NAME*/
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%A%';
/*WAQTD NAME OF EMPLOYEE IF EMPLOYEE NAME HAS
4 CHARACTERS IN THEIR NAME*/
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '____'; 
/*WAQTD NAME OF EMPLOYEE IF EMPLOYEE NAMES
  2ND CHARACTER STARTS WITH A*/
  SELECT ENAME
  FROM EMP
  WHERE ENAME LIKE '_A%';
/*WAQTD NAME OF EMPLOYEE IF EMPLOYEE NAMES 3RD CHARCTER
 STARTS WITH L*/
 SELECT ENAME
 FROM EMP
 WHERE ENAME LIKE '__L%';
 /*WAQTD NAME OF EMPLOYEE IF EMPLOYEE NAME
 SATRTS WITH VOWELS(A,E,I,O,U)*/
 SELECT ENAME
 FROM EMP
 WHERE ENAME LIKE 'A%' OR ENAME LIKE 'E%' OR
  ENAME LIKE 'I%' OR ENAME LIKE 'O%' OR ENAME
  LIKE 'U%';
/*WAQTD NAME OF EMPLOYEE IF EMPLOYEE NAME DOES NOT 
STARTS WITH VOWELS*/
SELECT ENAME
FROM EMP
WHERE ENAME NOT LIKE 'A%' AND ENAME NOT LIKE 'E%'
AND ENAME NOT LIKE 'I%' AND ENAME NOT LIKE 'O%'
AND ENAME NOT LIKE 'U%';
/*WAQTD NAME OF EMPLOYEE IF EMPLOYEE NAME HAS
  _ IN THEIR NAME*/
SELECT ENAME
FROM emp
WHERE ENAME LIKE '%_%';
SELECT ENAME 
FROM EMP
WHERE ENAME LIKE '_';
UPDATE EMP
SET ENAME='S_MITH'
WHERE ENAME='SMITH';
SELECT *
FROM EMP;
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%#_%' ESCAPE '#';

SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%\_%';


