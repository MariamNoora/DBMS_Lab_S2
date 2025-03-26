create table sailorss
(
	sid int primary key,
    sname varchar(255),
    rating int
);
insert into sailorss values
(1,'John',10),
(2,'Jane',7),
(3,'Mark',8);

delimiter $$
create procedure displaySailor()
begin
	declare sailor_id int;
	declare sailor_rating int;
    declare done int default false;
    declare sailor_cursor cursor for
    select sid,rating from sailorss;
    declare continue handler for not found set done=true;
    
    open sailor_cursor;
    read_loop:loop
			fetch sailor_cursor into sailor_id,sailor_rating;
		if done then
			leave read_loop;
		end if;
		select sailor_id as sid,sailor_rating as rating;
    end loop;
    close sailor_cursor;
end $$
delimiter ;

call displaySailor()