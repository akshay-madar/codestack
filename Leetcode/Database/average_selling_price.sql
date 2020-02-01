select a.product_id,
round(sum(a.units*b.price)/sum(a.units),2) as average_price
from unitssold a, prices b
where a.product_id = b.product_id and
a.purchase_date between b.start_date and b.end_date
group by a.product_id;
