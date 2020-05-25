select activity
from (
select activity
, rank() over (order by count(id) desc) as desc_rk
, rank() over (order by count(id) asc) as asc_rk
from friends
group by activity) tb
where desc_rk!=1 and asc_rk!=1
