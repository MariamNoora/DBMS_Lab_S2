delimiter $$
create function GetWeekdayName(input_date date)
returns varchar(20)
deterministic
begin
	return dayname(input_date);
end $$
delimiter ;
select GetWeekdayName('2025-03-17') as Weekday;