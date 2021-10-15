--creating 
create table University(College_Name varchar2(15), colno Number(4) primary key, OpenDay date not null );

create table Courses(Course_No Number(5), Course_name varchar2(20), Course_Disc varchar2(30), ColNo number(4),constraint Course_NO_PK  primary key (Course_No),
constraint colno_FK foreign key (colno) references University(colno) );

create table hello as select * from courses;
--altering
--adding a column
alter table Courses add    opend_day date;
--delete a column
alter table Courses drop column opend_day ;
--add constraint
alter table table_name add constraint Constraint_name primary key(Col_Name);
alter table courses add price Number(7) check(price between 1000 and 3000);

select * from courses;
alter table courses add constraint Uniqueness Unique (price);
alter table courses drop constraint Uniqueness ;

desc courses;
desc University;
-- inserting
insert into University values('Engineering',12,sysdate);
insert into University values('Bussinss',10,sysdate);
insert into courses values(1111,'Linear Algebra', 'Very Hard Course', 12, sysdate );
insert into courses values(11120,'Linear Algebra', 'Very Hard Course', 12, sysdate );
insert into courses values(10101,'Calculus 2', 'Hard Course', 10, sysdate );
insert into courses(course_name, course_no, colno) values('ITP',12345, 12);
insert into courses(course_disc,open_day2,course_no) values('Programming',sysdate,12333);
insert into courses(course_disc,open_day2,course_no) values('Programming',sysdate,12343);
insert into university values('Pharmacy', 13, sysdate)

--delete
delete from courses where course_no=12345;

--update
update courses set price=1200 where colno=10;
update courses set colno=10 where course_NO=1111;
update courses set course_name='Programming', course_disc='programming is easy' where course_disc='Programming';


select *  from university;
select * from courses;
--joining tables
select empno,ename,sal,comm,sal*12 as "Total salary" from emp;
select * from  university,courses
where courses.colno=university.colno(+);



--Renaming a column
ALTER TABLE Courses
RENAME column open_day TO open_day2;

desc courses;



ALTER TABLE table_name ADD column_name datatype;



 
 desc user_constraints;
drop table universityy;

SELECT *

FROM user_cons_columns

WHERE table_name = 'UNIVERSITYY';
 

alter table emp add constraint empsal check (sal>100);

alter table emp modify ename null;


alter table emp add constraint emp_name_M check(ename is not null);









create table emp(empno number(5) constraint emp_empno_PK primary key, 
ename varchar2(50)constraint emp_ename_notnull not null,
sal number(7,2)constraint emp_sal_CK check (sal between 1000 and 10000),
hdate date, deptno number(2), 

--make a refrecinal integrity between deptno in emp table and deptno in dept table
CONSTRAINT emp_deptnoo_dept_FK foreign key (deptno) references dept(deptno));
