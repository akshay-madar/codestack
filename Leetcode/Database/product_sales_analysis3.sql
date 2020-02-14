select sales.product_id, sales.year first_year, quantity, price
from sales, (select product_id, min(year) year
            from sales group by product_id) tmp
where sales.year = tmp.year and sales.product_id = tmp.product_id
