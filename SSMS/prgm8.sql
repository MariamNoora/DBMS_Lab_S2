--GROUP BY (db - sailor)
select rating,min(age) from sailor group by rating;
select rating,min(age) from sailor where age>=18 group by rating having count(*)>1;
select b.b_id, count(*) as 'Reservation' from boats b, reserves r where b.b_id=r.b_id and b.color='Red' group by b.b_id;
select rating,avg(age) from sailor group by rating having count(*)>1;
select s.rating, avg(s.age) as average from sailor s where s.age=(select min(age) from sailor) group by s.rating;