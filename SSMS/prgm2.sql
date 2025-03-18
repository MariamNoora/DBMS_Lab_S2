create table jobs
(
  job_id int primary key,
  job_title varchar(25),
  salary int
);

insert into jobs values
(101,'DEVELOPER',20000),
(102,'ENGINEER',21000),
(103,'TEACHER',18000),
(104,'DOCTOR',30000),
(105,'DESIGNER',25000),
(106,'MANAGER',14000);

create table regions
(
  region_id int primary key,
  region_name varchar(30)
);

insert into regions values
(999,'SOUTH ASIA'),
(980,'SOUTH-EAST ASIA'),
(849,'EAST ASIA'),
(751,'NORTH AMERICA');

create table countries
(
  country_id int primary key,
  country_name varchar(25),
  region_id int foreign key references regions(region_id)
);

insert into countries values
(1810,'INDIA',999),
(3512,'THAILAND',980),
(6231,'KOREA',849),
(9814,'USA',751);

create table location
(
  loc_id int primary key,
  street_address varchar(35),
  postal_code int,
  city varchar(20),
  state_province varchar(20),
  country_id int foreign key references countries(country_id)
);

insert into location values
(1,'VRINDAVAN ROAD',683106,'ALUVA','KERALA',1810),
(2,'KHAO SAN ROAD',513104,'BANGKOK','THAILAND',3512),
(3,'MYEONGDONG',323156,'SEOUL','SOUTH KOREA',6231),
(4,'WALL STREET',783226,'NEW YORK CITY','NEW YORK',9814);


create table departments
(
	d_id int primary key,
	d_name varchar(20),
	loc_id int foreign key references location(loc_id)
);

insert into departments values
(1001,'CUSTOMER SERVICE',2),
(1004,'HR',1),
(1002,'MARKETING',3),
(1006,'TELECOMMUNICATIONS',2),
(1003,'FINANCE',3),
(1007,'ADMINISTRATION',4),
(1005,'SALES',4);

create table employee
(
	emp_id int primary key,
	f_name varchar(25),
	l_name varchar(25),
	email varchar(30),
	phone_num varchar(10),
	hire_date date,
	job_id int foreign key references jobs(job_id),
	salary int,
	manager_id int,
	dep_id int foreign key references departments(d_id)
);

insert into employee values
(9001,'shemina','t s','sheminats37@gmail.com','9074582727','2025-07-22',101,50000,3711,1004),
(9002,'aiswarya','r nair','aiswarya@gmail.com','9852479473','2025-04-22',106,100000,5721,1003),
(9003,'mariam','noora','mnoora@gmail.com','8714283124','2025-02-26',105,70000,1306,1004),
(9004,'hana','nazrin','hana@gmail.com','8574587937','2025-07-20',103,50000,3991,1002);

create table dependants
(
	dependant_id int primary key,
	first_name varchar(25),
	last_name varchar(25),
	relationship varchar(15),
	emp_id int foreign key references employee(emp_id)
);

insert into dependants values
(1, 'Ayana', 'S', 'Daughter', 9001),
(2, 'Girija', 'Suntharampilla', 'Daughter', 9002),
(3, 'M N', 'Sujavuddin', 'Father', 9003),
(4, 'Hadhiq', 'Rahman', 'Brother', 9004);

select * from jobs;
select * from regions;
select * from countries;
select * from location;
select * from departments;
select * from employee;
select * from dependants;