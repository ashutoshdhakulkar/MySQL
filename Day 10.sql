use excelr01;

select count(*), deptno from emp
group by deptno
having count(*)>=3; # count fn cannot be written in where clause#

select count(*),deptno from emp
where job!="analyst"
group by deptno
having count(*) >=4;

select count(*), deptno from emp
group by deptno
having max(sal) > 3000;

select sal from emp
group by sal
having count(*) >1;

select job from emp
group by job
having count(*) > 1;

select sum(sal) from emp
group by job
having sum(sal) > 1500;

# NEW Concept #
# TCL #
# first step to turn off autocommit#
set autocommit = off;

select * from emp;
commit;
delete from emp;

select * from emp;
rollback;
select * from emp;

select * from emp;
commit;

delete from emp where deptno=10;
select * from emp;
rollback;
select * from emp;






