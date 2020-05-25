/* Write your T-SQL query statement below */
select round(sum(case when order_date = customer_pref_delivery_date then 1 else 0 end)*100.00/count(*), 2) immediate_percentage
from (
select delivery_id, customer_id, order_date, customer_pref_delivery_date,
dense_rank() over (partition by customer_id order by order_date) dr
from delivery) tb
where dr = 1;
