create database abc;
use abc;
create table STUDENTS5
(
Roll_no int(20) NOT NULL primary key,
NAME varchar(30),
Class varchar(3)
);

create table score
(
Roll int NOT NULL,
Marks int,
foreign key (ROLL) references STUDENTS5 (ROLL_NO));

desc STUDENTS5;
desc score;

insert into STUDENTS5 values(1,"ADITYA DAS","CSE"),(2,"ABHILASH","CSE"),(3,"ABHI","CSE");
insert into score values (1,12),(2,30),(3,30);

select * from STUDENTS5;
select * from students5;

delete from students5 where Roll_no=3;
#cannot delete from it cause it parent table

delete from score where Roll=3;
#wde can delete cause it is child table

update students5 set NAME="ABHI" where ROll_no=2;
update score set Marks=30 where ROll=1;

#delete forign key
alter table score drop FOREIGN KEY score_ibfk_1;
desc score;

drop table students5;
drop table score;

#again with different type
create table STUDENTS5
(
Roll_no int(20) NOT NULL primary key,
NAME varchar(30),
Class varchar(3)
);

create table score
(
Roll int NOT NULL,
Marks int,
foreign key (ROLL) references STUDENTS5 (ROLL_NO) ON UPDATE CASCADE ON DELETE CASCADE);
insert into STUDENTS5 values(1,"ADITYA DAS","CSE"),(2,"ABHILASH","CSE"),(3,"ABHI","CSE");
insert into score values (1,12),(2,30),(3,30);

delete from students5 where Roll_no=3;
#delete succesfully using cascading operation

insert into students5 value (4,"sagar","cse");
update students5 set NAME="adi" where ROll_no=1;

delete from score where Roll=1;
insert into score values (1,12);

drop table score;

# NOT NULL

create table score
(
Roll int,
Marks int,
foreign key (ROLL) references STUDENTS5 (ROLL_NO) ON UPDATE SET NULL ON DELETE SET NULL);

select * from students5;
update students5 set Roll_no=1 where NAME="adi";
delete from students5 where NAME="ADITYA";


















