/*WAQTD NAME&SALARY OF EMPLOYEE IF EMPLOYEE
IS GETTING SALARY MORE THAN ALLEN*/
USE EXCELR01;
SELECT ENAME,SAL
FROM EMP
WHERE SAL>2000;
SELECT ENAME,SAL
FROM EMP
WHERE SAL>'ALLEN';

/*SUBQUERY:
"QUERY WRITTEN INSIDE ANOTHER QUERY WE CALL
 IT AS SUBQUERY".
 WHY?????
CASE1:WHENEVER THERE IS UNKNOWN value
      PRESENT IN THE QUESTION TO FIND THAT
      UNKNOWN VALUE WE USE SUBQUERY.
               SELECT ENAME,SAL
               FROM EMP
               WHERE SAL>(SELECT SAL
						  FROM EMP
						  WHERE ENAME='ALLEN');
*/                      SELECT ENAME,DEPTNO
                        FROM EMP
                        WHERE DEPTNO=(SELECT DEPTNO
                                     FROM EMP
                                     WHERE ENAME='SCOTT');
    /*WAQTD NAME &SALARY OF EMPLOYEE IF EMPLOYEE IS GETTING SALARY
    LESS THAN MILLER*/
                   SELECT ENAME,SAL
                   FROM EMP                  
                   WHERE SAL<( SELECT SAL
							   FROM EMP
							   WHERE ENAME='MILLER');
/*WAQTD NAME &HIREDATE OF EMPLOYEE IF EMPLOYEE IS HIRED
  BEFORE KING*/
                SELECT ENAME,HIREDATE
                FROM EMP
				WHERE HIREDATE< ( SELECT HIREDATE
                                  FROM EMP
                                  WHERE ENAME='KING');
/*WAQTD NAME &JOB OF EMPLOYEE IF EMPLOYEE IS WORKING in
  SAME DESIGNATION AS FORD*/
                         SELECT ENAME,JOB
                         FROM EMP
                         WHERE JOB=( SELECT JOB
									FROM EMP
									WHERE ENAME='FORD');
/*WAQTD NAME &SAL OF EMPLOYEE IF EMPLOYEE NAME STARTS
WITH S & WORKING SAME DEPTNO AS JAMES*/
SELECT ENAME,SAL,DEPTNO
FROM EMP
WHERE DEPTNO=(SELECT DEPTNO
              FROM emp
              WHERE ENAME='JAMES') AND ENAME LIKE 'S%';
/*WAQTD NAME &JOB OF EMPLOYEE IF EMPLOYEE IS WORKING AS MANAGER
AND GETTING A SALARY LESS THAN KING*/              
SELECT ENAME,JOB
FROM EMP
WHERE JOB='MANAGER' AND SAL<(SELECT SAL
                             FROM emp
                             WHERE ENAME='KING');
/*WAQTD NAME &SALARY OF EMPLOYEE IF EMPLOYEE IS GETTING 
SALARY MORE THAN ALLEN BUT LESS THAN JONES*/
 SELECT ENAME,SAL
 FROM EMP
 WHERE  SAL>(SELECT SAL
			 FROM EMP
             WHERE ENAME='ALLEN') AND SAL<(SELECT SAL
                                           FROM EMP
										   WHERE ENAME='JONES');
 /*WAQTD NAME &JOB OF EMPLOYEE IF EMPLOYEE WORKING IN SAME
 DESIGNATION AS MILLER AND GETTING SALARY LESS THAN BLAKE*/
 SELECT ENAME,JOB
 FROM emp
 WHERE JOB=(SELECT JOB
            FROM EMP
            WHERE ENAME='MILLER') AND SAL<(SELECT SAL
                                           FROM EMP
                                           WHERE ENAME='BLAKE');
/*WAQTD NAME,SAL,HIREDATE,JOB OF EMPLOYEEE IF EMPLOYEE HIRED AFTER
  JAMES BUT BEFORE KING AND WORKING IN SAME DEPPTNO AS KING
  AND ENAME HAS 5 CHARACTERS*/
SELECT ENAME,SAL,HIREDATE,JOB
FROM EMP
WHERE HIREDATE>(SELECT HIREDATE
                FROM EMP
                WHERE ENAME='JAMES') 
AND HIREDATE<(SELECT HIREDATE
              FROM emp
			  WHERE ENAME='KING') AND
                DEPTNO=(SELECT DEPTNO
                        FROM emp
						WHERE ENAME='KING') AND ENAME LIKE'_____';
 /*WAQTD DNAME OF ALLEN*/
 SELECT DNAME
 FROM emp
 WHERE ENAME='ALLEN';
 
 select dname
 from dept
 where deptno=(select deptno
               from emp
               where ename='martin');
 
                        
                        
                        
                        