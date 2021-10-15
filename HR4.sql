select deptno,job,sum(sal),count(*)
from emp
where sal>900
group by deptno,job
having Count(*)>2
order by job,sum(sal)

----------
select * from emp
where lower(job)=lower('manager')
order by sal desc;

update emp set job=lower(job);
-----------



--------------------------
select lower('My Name IS MOHAAAAAA') from dual;
select upper('My Name IS MOHAAAAAA') from dual;
select initcap('my name IS MOHAAAAAA') from dual;

select lpad(ename,15,'*')||rpad(ename,15,' ') from emp;

select substr(ename,-5,2), ename from emp;
select ename,instr(ename,'T',-2,2) from emp;

select substr('mohammad sh daoud',instr('mohammad sh daoud',' ',1,2)) from dual;

select ltrim('Mohammad','M'),' Mohammad'
from dual;

select to_char(hiredate,'DD/MM/YYYY') from emp;
from emp
where soundex(ename)=soundex('Turne');

select ename,length(ename), ascii('A'),chr(65)
from emp;


select replace('abcddcba','ab','MOHAMMAD') from dual;
--------------------------------------------------------

select to_char(sysdate,'hh:mi:ss am') from dual;

update emp set hiredate=to_date('10/10/1990','DD/MM/YYYY') where empno=7369;

