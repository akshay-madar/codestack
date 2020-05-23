# Write your MySQL query statement below
select min(tb.log_id) start_id, max(tb.log_id) end_id
from(
select log_id, log_id - row_number() over (order by log_id) df
from logs) tb
group by tb.df;
