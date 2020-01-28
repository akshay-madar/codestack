select salesperson.name
from salesperson
where salesperson.sales_id not in
(select salesperson.sales_id from salesperson
join orders on salesperson.sales_id = orders.sales_id
join company on orders.com_id = company.com_id
where company.name = 'red')


#oracle sql
Select name
From salesperson
Where name Not In(
Select s.name
From salesperson s, company c, orders o
Where s.sales_id = o.sales_id and c.com_id = o.com_id and c.name = 'RED')
