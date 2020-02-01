select distinct buyer_id
from sales inner join Product
where Sales.product_id = Product.product_id
    and product_name = 'S8'
    and buyer_id not in
    (select distinct buyer_id
    from Sales inner join Product
    where Sales.product_id = Product.product_id
        and product_name = 'iPhone')
