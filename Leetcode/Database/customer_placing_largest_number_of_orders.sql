select a.customer_number
from (select customer_number, count(order_number)
                         from orders group by customer_number order by count(order_number) desc) as a
limit 1;
