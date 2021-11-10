use saayi;
select length("hello");
select strcmp("hell","hell"); #both are equal ,op=0
select strcmp("hello","abc"); #hello > abc :op=1
select strcmp("abc","hello"); #abc < hello :op=-1
select strcmp("abc","AbC"); #does no consider case

select now();

select curdate();
select curtime();

select user();
select database();
select version();


delimiter $;
create function oddeven(a int) returns char(10)
begin
if(a%2=0)
 then return("EVEN");
 else
  return("ODD");
  end if;
  end $;
  select  oddeven(5); 
  
  delimiter $;
  create function add(a int,b int) returns int
  begin ;
  declare c int;
  set c:=a+b;
  return (c);
  end ($);
  
  select add(5,3); $
  
  
  delimiter $
create function greatest (a int,b int) returns int
begin
if(a>b)
then return(a);
else
return(b);
end if; 
end $


  
