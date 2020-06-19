# Write your MySQL query statement below
select first_dates.install_dt, count(first_dates.player_id) installs,
    round(count(distinct a.player_id)/count(first_dates.player_id), 2) Day1_retention
from
activity a right join
(select min(event_date) install_dt, player_id
from activity
group by player_id) first_dates
on first_dates.player_id = a.player_id and first_dates.install_dt = a.event_date-1
group by install_dt;
