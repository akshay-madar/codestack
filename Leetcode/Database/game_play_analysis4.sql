select round(sum(case when t1.event_date = t2.first_event+1 then 1 else 0 end)/count(distinct t1.player_id), 2) as fraction
from Activity as t1 inner join
    (select player_id, min(event_date) as first_event
    from Activity
    group by player_id) as t2
on t1.player_id = t2.player_id;
