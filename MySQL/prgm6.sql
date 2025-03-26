create table account
(
	acc_no int primary key,
    acc_holder varchar(20),
    balance decimal(10,2)
);
insert into account values
(1,'Alice',10000.00),
(2,'Bob',5000.00);

delimiter //
create procedure deposit_money(in p_acc_no int, in p_amt decimal(10,2))
begin
	update account
    set balance=balance+p_amt
    where acc_no=p_acc_no;
    select 'Deposite Successful.' as message;
end //
delimiter ;

delimiter //
create procedure withdraw_money(in p_acc_no int,in p_amt decimal(10,2))
begin
	declare current_balance decimal(10,2);
    select balance into current_balance
    from account
    where acc_no=p_acc_no;
    
    if current_balance>=p_amt then
		update account
        set balance=balance-p_amt
        where acc_no=p_acc_no;
        select 'Withdrawal Successful.' as message;
	else
		select 'Insufficient balance' as message;
    end if;
end //
delimiter ;

delimiter //
create procedure check_balance(in p_acc_no int)
begin
	select balance as Current_Balance
    from account
    where acc_no=p_acc_no;
end //
delimiter ;

call deposit_money(1,2000.00);
call withdraw_money(2,3000.00);
call check_balance(1);
