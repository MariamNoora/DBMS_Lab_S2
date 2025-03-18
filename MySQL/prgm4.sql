create table sailors
(
	sid int primary key,
    name varchar(50),
    rating int
);
insert into sailors values
(101,'John',5),
(102,'Mary',3),
(103,'Alex',4);
delimiter $$
create function GetSailorRating(sailor_id int)
returns int
deterministic
begin
	declare sailor_rating int;
    select rating into sailor_rating 
    from sailors
    where sid=sailor_id;
    return sailor_rating;
end $$
delimiter ;

select GetSailorRating(101) as rating;