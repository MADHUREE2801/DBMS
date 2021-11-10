use madhuree;
create table student_table(regno int(3),s_name varchar(3),dept_name
varchar(3),dob date);

insert into student_table values(101,"aaa","cs","2000-07-07"),
(102,"bbb","EE","0000-00-00"),(103,"bbb","EE","2000-03-19");

create table dept_table(did int(4),dept_name char(2));
insert into dept_table values(1111,"BT"),(2222,"CS"),(3333,"EC");

create table course_table(cid int(3),c_name varchar(10),regno int(3),
s_name varchar(3));

insert into course_table values(400,"DBMS",101,"aaa"),
(401,"ADC",105,"eee"),(402,"EMF",102,"bbb");
select * from student_table , course_table;
select *from student_table join course_table using (regno,s_name);
select * from student_table where regno in(select regno from course_table);
select * from student_table where regno not in
(select regno from course_table);



