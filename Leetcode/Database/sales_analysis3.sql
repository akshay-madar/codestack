select t2.product_id, t1.product_name
from product t1, sales t2
where t1.product_id = t2.product_id
group by t2.product_id, t1.product_name
having sum(case when sale_date between '2019-01-01' and '2019-03-31' then 0 else 1 end) = 0;
