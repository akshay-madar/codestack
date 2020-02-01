select seller_id
from sales
group by seller_id
having sum(price) = (
	                   select max(total_price)
	                   from (select sum(price) as total_price
		                      from sales
		                      group by seller_id) temp)
