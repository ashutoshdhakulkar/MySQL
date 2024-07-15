use excelr01;

select * from emp
where deptno=(select deptno from dept
              where loc ="New York");
 
 # Single row subquery
select dname from dept
where deptno=(select deptno from emp
              where ename="smith");
 
#multi row sub-query
select dname from dept
where deptno in (select deptno from emp
              where ename in ('Smith','allen'));
              
select * from emp
where deptno=20 and job="manager"
and deptno in (select deptno from dept
               where dname="research");
               
select ename, sal, job from emp
where job="salesman" and deptno in(select deptno from dept
                                  where loc in ("dallas","chicago"));

select dname, loc from dept
where deptno in ( select deptno from emp
                  where job="manager");
                  
select max(sal) from emp;        

#Nested Sub-Query
select max(sal) from emp
where sal<(select max(sal) from emp);

select max(sal) from emp
where sal<(select max(sal) from emp
           where sal<(select max(sal) from emp));

select max(sal) from emp
where sal<(select max(sal) from emp
           where sal<(select max(sal) from emp
           where sal<(select max(sal) from emp
           where sal<(select max(sal) from emp))));
           
select min(sal) from emp
where sal>(select min(sal) from emp);

select min(sal) from emp
where sal>(select min(sal) from emp
where sal>(select min(sal) from emp));




           
           

           
           


                                                      
                                  
                                  

                                  
              
              
              