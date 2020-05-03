# Write your MySQL query statement below
select team_id,
team_name,
ifnull(sum(case when (team_id=host_team and host_goals>guest_goals)
or (team_id=guest_team and host_goals<guest_goals) then 3
when host_goals=guest_goals then 1 end),0) as num_points
from teams a
left join matches b
on a.team_id=b.host_team or a.team_id=b.guest_team
group by 1, 2
order by 3 desc, 1;
