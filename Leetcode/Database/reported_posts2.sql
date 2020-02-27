
select round(avg(removed_post/total_post) * 100, 2) as average_daily_percent
from
    (
    select action_date,
           count(distinct r.post_id) as removed_post,
           count(distinct a.post_id) as total_post
    from actions a, removals r
    where a.post_id = r.post_id(+)
    and action = 'report' and extra = 'spam'
    group by action_date
    ) tem

--another solution
    select round(avg(a.rate) *100,2) as average_daily_percent from
    (select action_date, count(distinct r.post_id)/ count(distinct a.post_id) as rate
    from actions a, removals r where a.post_id = r.post_id(+)
    and action = 'report' and extra = 'spam'
    group by action_date) a
