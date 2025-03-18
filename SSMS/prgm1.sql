create table employee
(
	ssn int primary key,
	name varchar(20),
	age int,
	gender char
);

insert into employee values
(108,'MARIAM',23,'f'),
(109,'NOORA',23,'f');

(103,'JANE',23,'m'),
(104,'RYAN',23,'m'),
(105,'WANDA',23,'f'),
(106,'JAY',23,'m');

update employee set age=28 where name='JANE';
update employee set age=21 where name='RYAN';
update employee set age=33 where name='WANDA';

update employee set desig='intern' where ssn=101;
update employee set desig='intern' where ssn=102;
update employee set desig='director' where ssn=103;
update employee set desig='art director' where ssn=104;
update employee set desig='intern' where ssn=105;
update employee set desig='fashion designer' where ssn=106;
update employee set desig='developer' where ssn=107;
update employee set desig='intern' where ssn=108;
update employee set desig='intern' where ssn=109;


select name from employee;
select name from employee where age>25 and age<30;
select name from employee where gender='m';

select distinct age from employee;

alter table employee add desig varchar(15);
select * from employee;
delete from employee where ssn=109;
drop table employee;
