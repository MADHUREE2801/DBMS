use saayi;
  create table stu(rno int(3) primary key ,name varchar(15),
  year varchar(3),dob date, sec varchar(3));


  insert into stu values
  (05,"saayishree","II", '2002-01-28',"c"),
  (04,"gss","I",'2002-01-28',"c");  #2 TUPLES WILL BE ADDED

select * from stu;

update stu set name="saayi" where rno=05;
select rno from stu;

select name from stu order by rno;

insert into stu (name,year) values ("madhuree","II"),
("abc","I");# 2 MORE TUPLES ARE ADDED

alter table stu drop primary key;
desc stu;

