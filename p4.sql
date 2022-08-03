create database supplier;
use supplier;
create table supplier(sid int primary key,sname varchar(20), address varchar(40));
create table parts(pid int primary key,pname varchar(20),color varchar(20));
create table catalog(sid int references supplier(sid), pid int references parts(pid),cost real);
drop table catalog;
insert into supplier values(123,"rahul","xyz");
insert into supplier values(456,"nag","abc");
insert into supplier values(789,"nithin","cdb");
insert into parts values(100,"zip","red");
insert into parts values(200,"cube","blue");
insert into parts values(300,"mouse","black");
insert into parts values(400,"rope","red");
insert into parts values(500,"keys","red");
insert into catalog values(123,100,1000);
insert into catalog values(789,300,3000);
insert into catalog values(123,400,4000);
insert into catalog(pid,cost) values(500,6000);
insert into catalog(pid,cost) values(200,7000);
select pname from parts where pid in(select pid from catalog where sid=NULL); 
select * from catalog;





