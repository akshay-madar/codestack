# Write your MySQL query statement below
select queries.id, queries.year, coalesce(npv, 0) npv
from queries
left join npv on queries.id = npv.id and queries.year = npv.year
order by queries.id;
