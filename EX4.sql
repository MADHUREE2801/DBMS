use saayi;

create table book_table(isbn int(4), book_title char(10),cateogory char(5)
, pid int(4));
 
 insert into book_table values
 (1234,"math","text",5555),
 (5678,"norah","novel",2222),
 (9101,"becoming","bio",1111);
 
 create table author_table(aid int(4),aname char(10));
 
 insert into author_table values
 (1009,"dan"),
 (9989,"norah"),
 (7969,"patricia");
 
 create table author_book (aid int(4),isbn int(4));
 
 insert into author_book values
 (1009,9101),
 (3921,5678),
 (5949,3141);
 
 select author_table.aid,author_table.aname,book_table.cateogory 
 from author_table join author_book using(aid) 
 join book_table using (isbn) where book_title="network"; 
 alter table book_table add price float;
 
 update  book_table set price=9.99 ,5.30,7.55 where 
 isbn=1234,5678,9101;
 