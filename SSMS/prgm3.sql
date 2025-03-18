create table sailor
(
	s_id int primary key,
	s_name varchar(30),
	rating int,
	age float
);

insert into sailor values
(22,'Dustin',7,45),
(29,'Brutus',1,33),
(31,'Lubber',8,55.5),
(32,'Andy',8,25.5),
(58,'Rusty',10,35),
(64,'Horataio',7,35),
(71,'Zorba',10,16),
(74,'Horataio',9,35),
(85,'Art',3,25.5),
(95,'Bob',3,63.5);

create table boats
(
	b_id int primary key,
	b_name varchar(30),
	color varchar(15)
);

insert into boats values
(101,'Interlake','Blue'),
(102,'Interlake','Red'),
(103,'Clipper','Green'),
(104,'Marine','Red');

create table reserves
(
	s_id int foreign key references sailor(s_id),
	b_id int foreign key references boats(b_id),
	reserved_day date
);

insert into reserves values
(22,101,'1998-10-10'),
(22,102,'1998-10-10'),
(22,103,'1998-10-08'),
(22,104,'1998-10-07'),
(31,102,'1998-11-10'),
(31,103,'1998-11-06'),
(31,104,'1998-11-12'),
(64,101,'1998-09-05'),
(64,102,'1998-09-08'),
(74,103,'1998-09-08');

select * from sailor;
select * from boats;
select * from reserves;
