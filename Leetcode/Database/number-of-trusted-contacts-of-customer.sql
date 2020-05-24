# Write your MySQL query statement below
select invoice_id, a.customer_name, price, count(contact_name) as contacts_cnt,
sum(case when b.email is not null then 1 else 0 end) as trusted_contacts_cnt
from invoices
inner join customers a
on invoices.user_id = a.customer_id
left join contacts
on contacts.user_id = a.customer_id
left join customers b
on contacts.contact_email = b.email
group by invoice_id, customer_name, price
order by invoice_id;
