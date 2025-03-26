create table goldPrices
(
	priceID int primary key auto_increment,
    goldPrice decimal(10,2),
    updatedAt timestamp default current_timestamp on update current_timestamp
);
insert into goldPrices(goldPrice) values(5000.00);
create table goldPriceLog
(
	logID int primary key auto_increment,
    oldPrice decimal(10,2),
    newPrice decimal(10,2),
    changedAt timestamp default current_timestamp
);

delimiter $$
	create trigger logPriceChange
	before update on goldPrices
    for each row
begin
	insert into goldPriceLog(oldPrice,newPrice)
    values(old.goldPrice,new.goldPrice);
end $$
delimiter ;

update goldPrices set goldPrice=5200.00 where priceID=1;
select * from goldPriceLog;