create database banking;
use banking;
drop table deposit;
create table branch(bname varchar(10) primary key,bcity varchar(20), assets real);
create table accounts(accno int primary key,bname varchar(10),balance real,foreign key(bname) references branch(bname));
create table deposit(cname varchar(20) primary key,cstreet varchar(20),ccity varchar(10));
create table loan(loan_num int primary key, bname varchar(10) references branch(bname),amount real);
create table borrower(cname varchar(20) references deposit(cname),loan_num int references loan(loan_num),accno int references accounts(accno));
insert into branch values('vellore','belgavi',456.12);
insert into branch values('hukkeri','belgavi',123.11);
insert into branch values('kuppali','bangalore',112.10);
insert into branch values('jpnagar','bangalore',777.77);
insert into branch values('hukkeri2','belgavi',334.12);
insert into accounts values(111,'vellore',100.00);
insert into accounts values(222,'hukkeri',200.00);
insert into accounts values(333,'kuppali',300.00);
insert into accounts values(444,'jpnagar',400.00);
insert into accounts values(555,'hukkeri',500.00);
insert into deposit values('raj','street1','bangalore');
insert into deposit values('nags','street2','belgaum');
insert into deposit values('nithin','street3','bangalore');
insert into deposit values('mknv','street4','bangalore');
insert into deposit values('nags2','street2','belgaum');
insert into loan values(10,'vellore',1000);
insert into loan values(20,'hukkeri',2000);
insert into loan values(30,'kuppali',3000);
insert into loan values(40,'jpnagar',4000);
insert into loan values(50,'hukkeri',5000);
insert into borrower values('raj',10,111);
insert into borrower values('nags',20,222);
insert into borrower values('nithin',30,333);
insert into borrower values('mknv',40,444);
insert into borrower values('nags',50,555);

select cname from borrower
where accno in(select accno from accounts where bname in 
(select bname from accounts group by bname having count(*)>=2))
group by cname having count(*)>=2;

select cname from deposit where ccity in(select ccity from deposit group by ccity having ccity="bangalore");
delete from accounts where bname in(select bname from branch where bcity = "bangalore");
select * from accounts;


