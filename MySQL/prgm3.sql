delimiter $$
create function SumTwoNumbers(num1 int, num2 int)
returns int
deterministic
begin
	return num1+num2;
end $$
delimiter ;

select SumTwoNumbers(3,4) as result;