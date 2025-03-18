delimiter $$
create procedure FindFactorial(in num int,out result bigint)
begin
	declare i int default 1;
    set result=1;
    if num<0 then
		set result=null;
	else
		while i<=num do
			set result=result*i;
            set i=i+1;
        end while;
    end if;
end $$
delimiter ;
call FindFactorial(5,@factorial);
select @factorial;