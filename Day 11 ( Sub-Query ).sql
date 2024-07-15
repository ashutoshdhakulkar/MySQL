use excelr01;
select ename, sal from emp
where sal > 2000;

select ename, sal from emp
where sal >(select sal from emp
where ename='ALLEN');

select ename, deptno from emp
where deptno=(select deptno from emp
			  where ename="scott");
              
              
select ename, sal from emp
where sal<(select sal from emp
			  where ename="miller");
              
select ename, hiredate from emp
where hiredate<(select hiredate from emp
			  where ename="king");
              
select ename, job from emp
where job=(select job from emp
			  where ename="ford");
              
select ename, sal,deptno from emp
where deptno=(select deptno from emp
			  where ename="james"
              and ename like "S%");
              
select ename, job, sal from emp
where job='manager' and sal<(select sal from emp
where ename='king');

select ename, sal from emp
where sal >(select sal from emp where ename="allen") and
            sal<(select sal from emp where ename='jones');
            
select ename, job,sal from emp
where job=(select job from emp
			  where ename="miller") and sal <(select sal from emp where ename='blake');   
              
select ename,sal,hiredate,job from emp
where hiredate>(select hiredate from emp where ename="james") 
and deptno =(select deptno from emp where ename='king')
 and ename like "_____";
 
select ename, deptno from emp
where ename='allen';

select dname from dept
where deptno=(select deptno from emp
where ename="allen");

select dname from dept
where deptno=(select deptno from emp
where ename="martin");

              
              
              
              