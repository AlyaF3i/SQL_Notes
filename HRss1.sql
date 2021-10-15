select sqrt(sal),power(sal,2), mod(sal,100),sign(sal),abs(sal)
from emp;

select sqrt(9),power(4,2), mod(100,100),sign(-500),abs(-10)
from dual;

select ceil(2.1),floor(2.9),ceil(-2.1),floor(-2.9)
from dual;

select round(45.1,-1),round(52.1,-1) from dual;
select round(100.6),round(100.6153,2)from dual;
select trunc(90.95,1) from dual;
select trunc(90.99990,2) from dual;
select trunc(5951.90,-1),trunc(5951.90,-2),trunc(5951.90,-3),trunc(5951.90,-4) from dual;



select empno,ename,emp.deptno,dname,grade
from emp,dept,salgrade
where emp.deptno=dept.deptno and
sal between losal and hisal;

select sum(sal),min(sal),max(sal),count(*),round(avg(sal))
from emp;
select * from emp;
