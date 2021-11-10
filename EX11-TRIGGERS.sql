use saayi;
create table translog(user varchar(20),process varchar(20),dt date);
select * from stu;
delimiter $
create trigger trigger1 before delete on stu
for each row begin
insert into translog values(user(),"value deleted",now());
end $

delete from stu where rno=5;
select * from translog;
select * from stu;

drop trigger trigger1;
delimiter $
create trigger trigger2 after delete on stu 
for each row begin 
insert into translog values(user(),"value deleted",now());
end $

delete from stu where rno=101;

select * from translog;
select * from stu;

drop trigger trigger2;
delimiter $
create trigger trigger3 before insert on stu
for each row begin
insert into translog values(user(),"value added",now());
end $
insert into stu values(101,"HARSHA","III",'2021-01-20','c');
select * from translog ;
select * from stu;

delete from stu where rno=6;
drop trigger trigger3;

drop trigger trigger4;
delimiter $
create trigger trigger4 after insert on stu
for each row begin
insert into translog values(user(),"value added",now());
end $

insert into stu values(105,"saayi shree","II",now(),"c");

select * from translog;
select * from stu;

delimiter $
create trigger trigger5 before update on stu
for each row begin
insert into translog values(user(),"VALUE UPDATED",now());
end $

update stu set year='IV' where rno=106;

select * from translog;
select *from stu;
drop trigger trigger5;

delimiter $
create trigger trigger6 after update on stu
for each row begin
insert into stu values(user(),"values updated",now());
end $

update stu set year="I" where rno=102;

select * from translog;
select * from stu;
