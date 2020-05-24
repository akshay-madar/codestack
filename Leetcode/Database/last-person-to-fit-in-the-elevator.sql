# Write your MySQL query statement below
select tb.person_name as person_name
from (select *, sum(weight) over(order by turn) rk from queue) tb
where tb.rk <= 1000 order by tb.rk desc limit 1;
