--DDL

create table course(course_id number(4) primary key, course_name varchar2(10));
create table quiz(quiz_name varchar2(10) , quiz_id number(4) primary key, course_id number(4), constraint FK foreign key (course_id) references course(course_id));;
create table mmmmm as select * from emp;--copy only the data without the constraints

drop table mmmmm;--delete the table

alter table quiz add quiz_date date;
alter table quiz drop column quiz_date1;
alter table quiz modify quiz_name varchar2(15);
alter table quiz add constraint quiz_name_null check(quiz_name is not null);
alter table quiz drop constraint quiz_name_null;

describe quiz;
insert into course values(9999,'database');
insert into course values(9919,'database');
insert into quiz values('database',9999,9919, sysdate);
insert into quiz(quiz_name, course_id, quiz_id) values('digitalLogic', 9999, 9919);
insert into quiz(quiz_name, course_id, quiz_id) values('digitalLogic', 9999, 9911);
update quiz set quiz_date=to_date('10/10/1990','DD/MM/YYYY');
delete from quiz where quiz_id=9911;
select * from quiz;
select * from course;

update course set course_name='digLogic' where course_id=9999;
--ordering

select * from emp
order by  DEPTNO desc,sal desc;
insert into emp(ename,deptno,empno,mgr) values('ahmed', 20,1234, 7369);
insert into emp(ename,empno,mgr) values('ahmed',1134, 7369);
select max(ename) as MAXXXX from emp;-- MIN MAX give me one value
select COUNT(comm) from emp; --count the amount of rows that don't have null in this specific column "comm"
select AVG(comm) from emp; --average and don't count the null
select sum(comm) from emp; --summestion
select sum(comm)/count(comm) as avg from emp;--flsfah

select * from emp where EnaMe like '%A%';
--patterns
--'A%' start with A
--'%A' end with A
--'%A%' have A letter on the name
--'_' anything

select * from emp where ename between 'JONES' and 'SMITH'; -- this condition return the where 1600<sal<3000




--group functions
select sum(sal),max(sal),count(*),avg(sal) from emp;
--joining two tables
select empno,ename,emp.deptno,dname,salgrade from emp,dept,salgrade
where emp.deptno=dept.deptno and sal between losal and hisal;

select deptno,sum(sal),avg(sal) from emp group by deptno; 

select * from emp,dept
where emp.deptno=dept.deptno;

select deptno,job,sum(sal),count(*)
from emp
where sal>900
group by deptno,job
having Count(*)>2
order by job,sum(sal)

-- if you want to do select and you don't want duplicate in one of the colume use DISTINCT
select DISTINCT name from projectLog order by name;
--second max
select * from emp
where sal=(select max(sal) from emp where sal<(select max(sal)from emp));

Select * from emp
where sal>=(select MAX(sal) from emp where sal<(select max(sal) from emp));






--not important
show user;
create user a identified by a; --???????: resources,connect,dba
grant resource, connect to a;
grant resource,connect to user b identified by b;


--important
--in a
grant all on dept to b; --give previliges
revoke all on emp from b; --take previliges
--you can't grant two tables at once

select 'grant select on emp to'|| username from all_users
where username!='C';

grant update(sal) on emp to b;

select 'revoke all on '||tname ||'from b;'
from tab;




--A - - - - - Z - a  - - - - z












select * from emp;









