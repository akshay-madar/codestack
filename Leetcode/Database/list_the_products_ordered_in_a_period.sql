select product_name, sum(unit) unit
from products, orders
where products.product_id = orders.product_id
and order_date between '2020-02-01' and '2020-02-29'
group by product_name
having sum(unit) >=100;
