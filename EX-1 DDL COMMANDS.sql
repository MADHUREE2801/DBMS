create database madhuree;
use madhuree;
show databases;
create table student(Rno int(3),name varchar(15),year varchar(4),
dob date,sec varchar(3));
show tables;
desc student;
alter table student add phno numeric(10);
alter table student add addr varchar(10) after name;
alter table student rename stu;
alter table stu change dob date_of_birth date;
desc stu;
alter table stu drop sec;
drop table stu;
show tables;
drop database madhuree;

alter table student add constraint primary key(rno);
create table dept(rno int(3), deptname varchar(5));
alter table dept add constraint foreign key(rno) references student(rno);
desc dept;

alter table student add constraint unique  (sec);