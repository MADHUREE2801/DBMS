use saayi;
create table sequence(id int(3) not null auto_increment primary key,
name char(5)); 
select * from sequence;
insert into sequence values(105,"aaa"),(106,"bbb");

insert into sequence values("ccc");
alter table sequence auto_increment=1;
alter table sequence add did integer after name;
update sequence set did=id;
select * from sequence;


create index sno on stu(rno);

select * from stu;
begin;
insert into stu values(6,"ccc","II","2021-02-26","c");
savepoint s1;
update  stu set sec="f" where rno=4;
savepoint s2;
select * from stu;

rollback to s1;
select * from stu;


