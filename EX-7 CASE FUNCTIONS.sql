use madhuree;
select case 1 when 1 then "ONE" when 2 then "TWO" else "MORE" end;
select case 2 when 1 then "ONE" when 2 then "TWO" else "MORE" end;
select case 19 when 1 then "ONE" when 2 then "TWO" else "MORE" end;

select case 10 when 1 then "one" when 2 then "two" else "more" end;

use saayi;
select case rno when 101 then "stud1" when 102 then "stu2" else "studn"
 end from  stu;
 
 select case rno when 101 then "stud1" when 102 then "stud2" else "studn"
 end as rolllabel from stu;
 
 select case when rno>5 then "A" else "B" end as rolllabel from stu;
 select case 'A' when 'A' then 'vowel' else 'consonant' end;
  select case 'E' when 'A' then 'vowel' else 'consonant' end;
  
select * from stu;  
select count(case when year="II" then "senior" end )  from stu;

select case when 2<3 then "true" else "false" end ;
select case when 2>3 then "true" else "false" end ;

select if(1<5,1,0);
select if(1>5,1,0);

select if(strcmp("hello","Hello"),1,0);
select if(rno>=5,"c","b") end from stu;

select * from stu where if(rno>5,1,0)=1;

select count(if(rno>5,1,0)=1) from stu;
