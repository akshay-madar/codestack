with cte as (
select event_type, avg(occurences) a
from events
group by event_type)

select business_id
from events, cte
where events.event_type = cte.event_type and events.occurences > cte.a
group by business_id
having count(business_id) > 1
