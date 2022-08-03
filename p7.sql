create database book;
use book;
create table author(aid int primary key,aname varchar(50),acity varchar(50),acountry varchar(50));
create table publisher(pid int primary key,pname varchar(50),pcity varchar(50),pcountry varchar(50));
create table category(cid int primary key,cdesc varchar(50));
create table catalog(bid int primary key,btitle varchar(50),aid int references author(aid),pid int references publisher(pid),cid int references category(cid),year int,price int);
create table order_details(oid int primary key, bid int references catalog(bid),qty int);

insert into author values(100,'nag','blgm','india');
insert into author values(101,'muk','blore','india2');
insert into author values(102,'nag2','haveri','india3');
insert into author values(103,'nith','blore','india');
insert into author values(104,'loki','ctr','india2');

insert into publisher values(120,'chap','dist','india');
insert into publisher values(121,'chap2','dist2','india2');
insert into publisher values(122,'chap3','dist3','india3');
insert into publisher values(123,'chap4','dist4','india');
insert into publisher values(124,'chap5','dist5','india2');

insert into category values(990,'abc');
insert into category values(991,'xyz');
insert into category values(992,'abc2');
insert into category values(993,'xyz2');
insert into category values(994,'cv2');

insert into catalog values(001,'book1',100,120,990,2002,30000);
insert into catalog values(002,'book2',101,123,991,2001,10000);
insert into catalog values(003,'book3',100,122,993,2006,60000);
insert into catalog values(004,'book4',102,120,992,2003,20000);
insert into catalog values(005,'book5',103,121,994,2007,3000);
insert into catalog values(006,'book6',104,120,991,2008,100);
insert into catalog values(007,'book7',101,123,990,2001,3700);
insert into catalog values(008,'book8',102,124,992,2002,390000);
insert into catalog values(009,'book9',100,120,991,2002,90000);

insert into order_details values(10,004,2);
insert into order_details values(11,001,2);
insert into order_details values(12,003,2);
insert into order_details values(13,002,3);
insert into order_details values(14,008,2);
insert into order_details values(15,009,2);
insert into order_details values(17,006,2);
insert into order_details values(18,002,2);
insert into order_details values(19,003,2);
insert into order_details values(20,004,2);

select * from authors where ;

