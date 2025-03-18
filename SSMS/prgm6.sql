--ADDITIONAL QUESTIONS (db - sailor)
select avg(age) from sailor where rating=10;
select count(distinct s_name) from sailor;
select s_name,age from sailor where age=(select max(age) from sailor);
select count(*) as 'no_sailors' from sailor;
select s_name from sailor where age>(select max(age) from sailor where rating=10);
