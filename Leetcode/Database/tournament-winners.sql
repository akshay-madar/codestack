# Write your MySQL query statement below
select x.group_id, x.player_id
from (select p.group_id, a.player_id,
dense_rank() over (partition by p.group_id order by sum(a.score) desc, a.player_id) as rk
from (select first_player as player_id, first_score as score from matches
union all
select second_player, second_score from matches) a
left join players p on a.player_id=p.player_id
group by p.group_id, a.player_id) x
where x.rk=1
