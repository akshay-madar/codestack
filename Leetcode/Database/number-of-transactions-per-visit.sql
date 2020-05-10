select tb.ct as transactions_count, count(tb.ct) as visits_count
from
(
select visits.user_id, count(transactions.user_id) as ct
from visits left join transactions
on visits.user_id = transactions.user_id
and visit_date = transaction_date
group by visits.user_id, visit_date) tb
group by tb.ct
order by tb.ct;
