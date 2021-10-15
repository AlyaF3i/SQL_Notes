alter table emp add constraint empsal check(sal>100);

alter table emp modify ename  null;

alter table emp modify ename  number(50);

select * 
from emp;

Select * 
from dept;

drop table dept_test cascade constraints;
select empno,dept.deptno from emp,dept;--cross product
-- if we add condition to cross product it become equi join (PK  compare FK)
select * from emp,dept
where ;
drop table dept_test cascade constraints;
select empno,dept.deptno from emp,dept
where dept.deptno==emp.deptno(+);-- for outer join we go to the side where it will have n89 we put + (outer join)
----
--- if we don't have pk fk relation between 2 table and you try to join them we call that in equi join
select empno, ename, sale from emp,salgrade where sal between losal and hisal;


