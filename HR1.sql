-- when we want to assign a value to a row then we can say x=null;
-- but when we want to compare values we can't say x=null we should say x is null

--this will go to each employee in dept number 20 and update their salary by adding 10%
update emp set sal=sal*1.1
where deptno=20;
-- to cancel any update
rollback;
--to save any update
commit;
--delete all rows in employee table
delete from emp;
--to delete specific rows add condition
delete from emp where deptno=10;

--to add or drop column
alter table table_name add column column_Name varChar2(50); 
create table emp_testt as select * from emp;
alter table emp_testt add  nat varchar(50);
alter table emp_testt drop column nat;
show user;
create table dept_test as select * from dept;

-- add primary key too deptno column in deptno
alter table dept_test add constraint dept_test_pk primary key(deptno);

-- add forgin key too deptno column in emp_testt and refere it to column deptno in dept_test
alter table emp_testt add constraint emp_testt foreign key(deptno) references dept_test(deptno);

-- add primary key too deptno column in deptno
alter table dept_test add constraint dept_test_pk primary key(deptno);