create database StudentFaculty;
use StudentFaculty;
show tables;
create table student(snum int primary key,sname varchar(20),major varchar(20),level varchar(20),age int);
drop table enrolled; 
create table class(cname varchar(20),meets_at time,room varchar(20),fid int primary key);
create table enrolled(snum int references student(snum),cname varchar(20) references class(cname));
create table faculty(fid int references class(fid),fname varchar(20),depid int);
insert into student values(100,"mknv","cs","jr",20),
(200,"nag","cs","jr",20),
(300,"nithin","cv","sr",20),
(400,"loki","cv","sr",20),
(500,"jai","cs","jr",20);

insert into faculty values(12,'raj',1000),
(14,'jak',2000),
(13,'mek',3000),
(15,'kik',4000),
(17,'poi',5000);

insert into enrolled values(100,'class1'),
(200,'clas5'),(100,'class3'),
(400,'class5'),(200,'class11'),
(300,'class1'),(500,'class8'),
(200,'class3'),(400,'class8');

insert into 

insert into class values('class1','12/11/15 8:15:17','r1',14),
('class3','12/11/15 10:15:17','r3',14),
('class5','12/11/15 10:15:17','r3',14),
('class6','12/11/15 13:15:17','r2',12),
('class8','12/11/15 20:15:17','r5',13),
('class11','12/11/15 12:15:17','r2',14),
('class13','12/11/15 02:15:17','r4',15);

insert into faculty values(10,'abd',1000),
(20,'abv',1001),
(30,'a',1002),
(40,'v',1001),
(50,'aaaa',1000);

