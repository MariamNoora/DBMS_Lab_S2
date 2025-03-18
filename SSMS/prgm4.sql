--DML (db - sailor)
select * from sailor;
select * from boats;
select * from reserves;
select s_name as Name, Age from sailor;
select * from sailor where rating>8;
select s_name as Name from sailor where rating>7 and age>25;
select b_name, color from boats;
select * from boats where color='Red';
select s.s_name from sailor s, reserves r where s.s_id=r.s_id and r.b_id=103;
select distinct s.s_name from sailor s, reserves r, boats b where s.s_id=r.s_id and r.b_id=b.b_id and b.color like 'Red';
select distinct b.color from sailor s, reserves r, boats b where s.s_id=r.s_id and r.b_id=b.b_id and s.s_name='Lubber';
select distinct s.s_name from sailor s, reserves r where s.s_id=r.s_id;
select s.s_name from sailor s where s.s_id in (select s.s_id from sailor s, reserves r, boats b where s.s_id=r.s_id and b.b_id=r.b_id group by s.s_id having count(b.b_id)>1);