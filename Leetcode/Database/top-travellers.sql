select name, coalesce(sum(distance), 0) as travelled_distance
from users, rides
where users.id = rides.user_id(+)
group by name
order by 2 desc, 1;
