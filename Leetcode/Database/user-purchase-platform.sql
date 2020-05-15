# Write your MySQL query statement below
select tb1.spend_date, tb1.platform, ifnull(sum(tb2.amount), 0) as total_amount, count(user_id) as total_users
from
(select spend_date, 'both' platform from spending group by spend_date
union
select spend_date, 'desktop' platform from spending group by spend_date
union
select spend_date, 'mobile' platform from spending group by spend_date
) tb1
left join
(select *
from spending
where (user_id, spend_date) in (
select user_id, spend_date
from spending
group by user_id, spend_date
having count(*) = 1
)
union
select user_id, spend_date, 'both' platform, sum(amount) amount
from spending
where (user_id, spend_date) in (
select user_id, spend_date
from spending
group by user_id, spend_date
having count(*) = 2
)
group by user_id, spend_date) tb2
on tb1.spend_date = tb2.spend_date and tb1.platform = tb2.platform
group by tb1.spend_date, tb1.platform; 
