use saayi;
create table loan_table(loan_no int(3),branch_name char(10),
amount float);
alter table loan_table add constraint primary key(loan_no);
insert into loan_table values
(111,"chennai",100000.00),
(222,"coimbatore",50000.00),
(333,"trichy",20000.00);

create table account_table(account_no int(5),brach_name 
char(10),balance float);
alter table account_table add constraint primary key(account_no);
insert into account_table values
(10110,"trichy",75000.00),
(10120,"chennai",10000.00),
(20130,"coimbatore",75000.00);

create table depositor_table(custid int(3),
custname varchar(20),accountno int(5));
alter table depositor_table add constraint primary key(custid);

alter table depositor_table add constraint foreign key(accountno)
 references  account_table(account_no);

insert into depositor_table values
(101,"MAHA",77432),
(150,"HARSHI",68531),
(165,"MAGESH",73592);

create table borrower_table(
custid int(3) ,
custname varchar(20),loan_no int(3));

alter table borrower_table add constraint 
foreign key(custid) references depositor_table(custid);

insert into borrower_table values
(101,"maha",111),
(150,"harshi",222),
(165,"magesh",333);

create view loaninfo as select loan_no,branch_name from loan_table;

desc loaninfo;

insert into loaninfo values
(777,"pondi"),
(888,"pondi");

select * from loaninfo;

update loaninfo set branch_name="CHENNAI" where loan_no=777;

delete from loaninfo where loan_no=777;

/* join view*/
create view loan_customer as select l.loan_no,branch_name,custname 
from loan_table as l,borrower_table as b where l.loan_no=b.loan_no;

desc loan_customer;

select * from loan_customer;

/* cannot insert values into a join view*/
insert into loan_customer values
(100,"agee","chennai");/* error*/

create view loan_amount as select amount from loan_table
where amount>(select avg(amount) from loan_table); 

select * from loan_amount;

create view c_customers as select custname,brach_name from 
depositor_table d, account_table a where d.accountno=a.account_no  
and brach_name= "Chennai";

create view count as select brach_name,count(*) 
from account_table group by brach_name;

select * from count;

create view cust_loan as select custname, branch_name,amount
from loan_table join borrower_table using(loan_no) where amount>50000
and branch_name="chennai";

select * from cust_loan;

drop view cust_loan;

