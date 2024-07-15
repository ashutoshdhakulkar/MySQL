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
