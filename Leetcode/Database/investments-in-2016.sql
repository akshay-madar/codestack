/* Write your T-SQL query statement below */
select sum(tiv_2016) as tiv_2016
from insurance
where tiv_2015 in
(
select tiv_2015
from insurance
group by tiv_2015
having count(pid) > 1)
and (lat, lon) not in (select lat, lon from insurance group by lat, lon having count() > 1 );
