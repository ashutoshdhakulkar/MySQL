use excelr01;

/* DDL */
DROP TABLE student;
create table student
(
sid char(5),
sname varchar(30),
sadd varchar(30),
spercentage float, # or decimal(5,2)
sphone bigint # or bigint or char(10)
);
select * from student;

/* overview of sql statements
 DDL DML TCL DCL DQL */

rename table student to STUD;
USE EXCELR01;
RENAME TABLE EMPLOYEE TO EMP;

describe stud;

alter table stud
add marks decimal(5,2);
describe stud;

alter table stud
add aadhar_number bigint;
desc stud;

alter table stud
add subjects varchar(20);
desc stud;

alter table stud
drop column sphone;
desc stud;

alter table stud
drop column sadd;
desc stud;

alter table stud
rename column sid to
student_id;

desc stud;

alter table stud
rename column sname to student_name;
desc stud;

alter table stud
modify student_id int;
desc stud;

alter table stud
modify spercentage decimal;

alter table stud
modify spercentage float;
desc stud;

alter table stud
modify spercentage float(3,1);
desc stud;

use excelr01;

drop table emp;

create table amazon
(
order_id int,
pname varchar(50),
price decimal(9,2),
quantity int,
product_description varchar(200)
);
desc amazon;

/*DML(data manipulation language): */

insert into amazon values(1,"SHOES",500,1,"RUNNING SHOES");
INSERT INTO amazon VALUES(2,"RAINCOAT",800,2,"WATER_PROOF");

select * FROM AMAZON;

insert into amazon values
(3,"MOBILE",35000,1,"BEST PRODUCT"),
(4,"WATCH",5000,5,"DIGITAL");

SELECT * FROM AMAZON;

use excelr01;

update amazon
set pname="LAPTOP"
WHERE ORDER_ID=1;

select * from amazon;

update amazon
set pname="I_PHONE"
where pname="MOBILE";


select * from amazon;

update amazon
set price=8000
where price=500;

select * from amazon;

















 
