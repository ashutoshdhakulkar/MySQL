USE EXCELR01;
/* QUES.1 */
SELECT ENAME, SAL*12 AS "ANNUAL SALARY"
FROM emp
WHERE ENAME="SMITH";

/* QUES.2 */
SELECT ENAME,JOB FROM EMP
WHERE JOB="CLERK";

/* QUES.3 */
SELECT ENAME,SAL,JOB FROM emp
WHERE JOB="SALESMAN";

/* QUES.4 */
SELECT * FROM EMP
WHERE SAL > 2000;

/* QUES.5 */
SELECT * FROM EMP
WHERE ENAME="JONES";

/* QUES.6 */
SELECT * FROM emp
WHERE HIREDATE > "1981-01-01";

/* QUES.7 */
SELECT ENAME,SAL, SAL*12 AS "ANNUAL SALARY" FROM emp
WHERE SAL * 12 > 12000;

/* QUES.8 */
SELECT ENAME,DEPTNO FROM EMP
WHERE DEPTNO = 30;

/* QUES.9 */
SELECT ENAME,HIREDATE FROM EMP
WHERE HIREDATE < "1981-01-01";

/* QUES.10 */
SELECT * FROM EMP
WHERE JOB="MANAGER";

/* QUES.11 */
SELECT ENAME,SAL,COMM FROM EMP
WHERE COMM=1400;

/* QUES.12 */
SELECT * FROM emp
WHERE COMM > SAL;

/* QUES.13 */
SELECT ENAME,EMPNO FROM emp
WHERE HIREDATE < "1987-01-01";

/* QUES.14 */
SELECT * FROM emp
WHERE JOB = "ANALYST";

/* QUES.15 */
SELECT * FROM emp
WHERE SAL > 2000;




