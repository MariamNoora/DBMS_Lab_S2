create table students
(
	student_id int primary key,
    student_name varchar(255),
    gender enum('Male','Female')
);
create table studentCounts
(
	gender enum('Male','Female') primary key,
    count int default 0
);
insert into studentCounts values
('Male',0),
('Female',0);

delimiter $$
create trigger CountAtInsert
after insert on students
for each row
begin
	if new.gender='Male' then
		update studentCounts
        set count=count+1
        where gender='Male';
	elseif new.gender='Female' then
		update studentCounts
        set count=count+1
        where gender='Female';
	end if;
end $$
delimiter ;

delimiter $$
create trigger CountAtDelete
after delete on students
for each row
begin
	if old.gender='Male' then
		update studentCounts
        set count=count-1
        where gender='Male';
	elseif old.gender='Female' then
		update studentCounts
        set count=count-1
        where gender='Female';
	end if;
end $$
delimiter ;

insert into students values
(1,'Emi','Female'),
(2,'Ryan','Male'),
(3,'Sean','Male'),
(4,'Alex','Female'),
(5,'Astrid','Female'),
(6,'Anna','Female');

select * from studentCounts;
delete from students where student_id=1;
select * from studentCounts;
