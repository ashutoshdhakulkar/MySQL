create table student23
(
sid int,
sname varchar(50),
per bigint
);

insert into student23 values
(01,"Bhushan",97),
(02,"Om",85),
(03,"Shivam",76),
(04,"Shewta",80),
(05,"Rajani",92);

select * from student23;

select sid,sname,per,rank()
over (order by per desc)
from student23;
