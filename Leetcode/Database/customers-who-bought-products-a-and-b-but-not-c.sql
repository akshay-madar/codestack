# Write your MySQL query statement below
select customers.customer_id, customer_name
from customers
inner join orders a
inner join orders b
on customers.customer_id = a.customer_id
and customers.customer_id = b.customer_id
where a.product_name = 'A' and b.product_name = 'B'
and customers.customer_id not in (select customer_id from orders where product_name = 'C')
order by customers.customer_id
