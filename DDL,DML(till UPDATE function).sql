use excelr01;
/*create table student
->sid
->sname
->sadd
->spercentage
->sphno
*/
create table student
(
sid char(5),
sname varchar(50),
student_address varchar(100),
spercentage decimal(5,2),
sphno bigint
);
/*overview of sql statements
1)DATA DEFINITION LANGUAGE(DDL)
2)DATA MANIPULATION LANGUAGE(DML)
3)TRANSACTION CONTROL LANGUAGE(TCL)
4)DATA CONTROL LANGUAGE(DCL)
5)DATA QUERY LANGUAGE(DQL)
1)DATA DEFINITION LANGUAGE(DDL):
"IT IS USED TOCONSTRUCT THE OBJECTS IN 
A DATABASE AND DEALS WITH STRUCTURE OF 
OBJECTS. 
->IT HAS 5 STATEMENTS.
1)CREATE:
"IT IS USED TO CONSTRUCT THE OBJECTS IN
DATABASE"
2)RENAME:
"IT IS USED RENAME EXISTING TABLE NAME TO
NEW TABLE NAME"
3)ALTER
"IT IS USED TO MODIFY STRUCTURE OF TABLE.
4)TRUNCATE:
"IT IS USED TO REMOVE ALL THE RECORDS/ROWS 
PERMANENTLY BUT STRUCTURE OF TABLE REMAINS
SAME.
5)DROP:
"IT IS USED TO REMOVE THE TABLE FROM THE
DATABASE"
*/
/*RENAME:
SYNTAX:
RENAME TABLE EXISTING TABLE_NAME
              TO NEW_TABLE_NAME;
*/
RENAME TABLE STUDENT TO STUD;
RENAME TABLE EMPLOYEE TO EMP;

DESC STUD;
/*ALTER:
SYNTAX:TO ADD COLUMN
ALTER TABLE TABLE_NAME
ADD COLUMN_NAME DATATYPE;
*/
ALTER TABLE STUD
ADD MARKS DECIMAL(5,2);
DESC STUD;
/*ALTER:
SYNTAX:TO DROP COLUMN
ALTER TABLE TABLE_NAME 
DROP COLUMN COLUMN_NAME;*/
ALTER TABLE STUD
DROP COLUMN SPHNO;
DESC STUD;
ALTER TABLE STUD
DROP COLUMN STUDENT_ADDRESS;
DESC STUD;
/*ALTER
SYNTAX:TO RENAME THE COLUMN_NAME.
ALTER TABLE TABLE_NAME
RENAME COLUMN EXISTING_COLUMN_NAME TO NEW_COLUMN_NAME;
*/
ALTER TABLE STUD
RENAME COLUMN SID TO STUDENT_ID;
DESC STUD;
ALTER TABLE STUD
RENAME COLUMN SNAME TO STUDENT_NAME;
DESC STUD;
/*ALTER
SYNTAX:TO MODIFY THE DATATYPES.
ALTER TABLE TABLE_NAME
MODIFY COLUMN_NAME DATATYPE; */
ALTER TABLE STUD 
MODIFY STUDENT_ID INT;
DESC STUD;
ALTER TABLE STUD
MODIFY SPERCENTAGE FLOAT;
DESC STUD;
ALTER TABLE STUD
DROP COLUMN MARKS;

ALTER TABLE STUD
MODIFY STUDENT_ID CHAR(5);
DESC STUD;

ALTER TABLE STUD
RENAME COLUMN STUDENT_NAME TO NAME;

RENAME TABLE STUD TO STUDENT;

/*DROP:
SYNTAX:
DROP TABLE TABLE_NAME;
*/
DROP TABLE EMP;
CREATE TABLE AMAZON
(
ORDER_ID INT,
PNAME VARCHAR(50),
PRICE DECIMAL(9,2),
QUANTITY INT,
PRODUCT_DESCRIPTION VARCHAR(200)
);
/*DATA MANIPULATION LANGUAGE(DML):
"IT IS USED TO MANIPULATE THE OBJECTS BY PERFORMING
INSERT,UPDATE,DELETE OPERATION.
1)INSERT:
"IT IS USED TO INSERT THE RECORDS TO THE TABLE".
SYNTAX:
INSERT INTO TABLE_NAME VALUES(V1,V2,V3........VN);
*/
DESC AMAZON;

INSERT INTO AMAZON VALUES(1,"SHOES",500,1,"RUNNING SHOES");
INSERT INTO AMAZON VALUES(2,"RAINCOAT",800,2,"WATERPROOF");
SELECT *
FROM AMAZON;
INSERT INTO AMAZON VALUES
(3,'MOBILE',35000,1,"BEST_PRODUCT"),
(4,'WATCH',10000,1,"DIGITAL");
SELECT *
FROM AMAZON;
/*UPDATE:
"IT IS USED TO MODIFY EXISTING VALUE TO THE NEW VALUE IN
 THE TABLE"
 SYNTAX:
 UPDATE TABLE_NAME
 SET COLUMN_NAME1=VALUE1,COLUMN_NAME2=VALUE2,.......
 WHERE <FILTER CONDITION>;
 */USE EXCELR01;
UPDATE AMAZON
SET PNAME="LAPTOP"
WHERE ORDER_ID=1;
SELECT * FROM AMAZON;
UPDATE AMAZON
SET PRICE=70000,PNAME="IPHONE",QUANTITY=2;







