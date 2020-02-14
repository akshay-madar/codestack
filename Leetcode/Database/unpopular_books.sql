select book_id, name
from books
where available_from < add_months(to_date('2019-06-23'), -1)
and book_id not in (select book_id
                  from orders
                  where dispatch_date > add_months(to_date('2019-06-23'), -12)
                  group by book_id
                  having sum(quantity) >= 10)
