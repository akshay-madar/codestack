/* Write your T-SQL query statement below */
(select distinct products.product_id, products.new_price as price
from products inner join (
select
product_id,
new_price,
dense_rank() over(partition by product_id order by change_date desc) dr
from products
where change_date <= '2019-08-16') tb
on products.product_id = tb.product_id
and products.new_price = tb.new_price
where tb.dr = 1)

union

(select product_id, 10 as price
from products where product_id not in (select distinct product_id from products where change_date <= '2019-08-16'))
