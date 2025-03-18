delimiter $$
create procedure CheckPrimeNumber()
begin
	declare num int;
	declare i int default 2;
    declare is_prime boolean default true;
    select 'Enter a number to check if it is prime:' as prompt;
    set num=@user_input;
    if num<2 then
		set is_prime=false;
	else
		while i<=sqrt(num) do
			if num mod i=0 then
				set is_prime=false;
            end if;
            set i=i+1;
        end while;
    end if;
    if is_prime then
		select concat(num,' is a prime number.') as result;
    else
		select concat(num,' is not a prime number.') as result;
    end if;
end $$
delimiter ;
set @user_input=99;
call CheckPrimeNumber();