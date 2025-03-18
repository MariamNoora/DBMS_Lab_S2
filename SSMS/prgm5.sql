--AGGREGATE FUNCTION (db - sailor)
select count(s_id) from sailor;
select count(b_id) from reserves;
select count(b_id) from boats;
select sum(rating) from sailor;
select sum(distinct age) from sailor;
select avg(distinct age) from sailor;
select max(age) from sailor;
select min(age) from sailor;
