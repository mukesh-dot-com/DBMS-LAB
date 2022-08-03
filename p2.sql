create database insurance088;
use insurance088;
show tables;
create table person(d_id varchar(5) primary key,pname varchar(30),address varchar(100));
create table car(regno varchar(5) primary key, model varchar(10),year int);
create table accident(report int primary key, Dacc date,location varchar(100));
create table owns(d_id varchar(5) primary key,regno varchar(5));
alter table owns add foreign key(d_id) references person(d_id) on update cascade;
alter table owns add foreign key(regno) references car(regno) on update cascade;
drop table partic;
create table partic(d_id varchar(5), regno varchar(5),report int,damt int,foreign key(regno) references car(regno) on update cascade,foreign key(d_id) references person(d_id) on update cascade,foreign key(report) references accident(report) on update cascade);
insert into person values('123','mknv','blore');
insert into person values('246','nag','blgm');
insert into person values('548','nith','blore');
insert into car values('ka200','porsche',2002);
insert into car values('ka400','buggati',2005);
insert into car values('ka600','bmw',2006);
insert into accident values(11111,'2002-09-04','JAPAN');
insert into accident values(22222,'2004-10-01','USA');
insert into accident values(33333,'2010-01-21','UK');
insert into owns values('123','ka200');
insert into owns values('246','ka400');
insert into owns values('548','ka600');
insert into partic values('123','ka200',11111,20000);
insert into partic values('246','ka400',22222,40000);
insert into partic values('548','ka600',33333,60000);
select * from partic;


