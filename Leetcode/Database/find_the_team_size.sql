select a.employee_id, b.count as team_size
from employee a join (select team_id, count(*) as count
from employee group by team_id) b on
a.team_id = b.team_id
