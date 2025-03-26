create table products
(
	product_id int auto_increment primary key,
    product_name varchar(255),
    price decimal(10,2)
);
insert into products(product_name,price) values
('Product A',200),
('Product B',300),
('Product C',400);

delimiter &&
create procedure updatePrice(in selected_id int)
begin
	declare current_price decimal(10,2);
    declare exit handler for sqlexception
    begin
		select 'An error occurred while updating the price' as ErrorMessage;
    end ;
    
    select price into current_price
    from products
    where product_id=selected_id;
    
    if current_price is null then
		signal sqlstate '45000'
        set message_text='Record not found for the given product id';
    end if;
    
    update products
    set price=price+100
    where product_id=selected_id;
    
    select * from products;
end &&
delimiter ;

call updatePrice(1);