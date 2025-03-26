create table professor
(
	pro_id int primary key,
    name varchar(255),
    dept varchar(255)
);
insert into professor values
(1,'Dr. Smith','Chemistry'),
(2,'Dr. Johnson','Mathematics');

delimiter $$
create trigger noDeleteTable
before delete on professor
for each row
begin
	signal sqlstate '45000'
    set message_text='INTRUDER ALERT!!! - Deletion of records from professor table is restricted';
end $$
delimiter ;
select * from professor;
delete from professor where pro_id=1;