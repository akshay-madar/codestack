select distinct b.seat_id
from cinema a join cinema b
where abs(a.seat_id - b.seat_id) = 1
and a.free is true
and b.free is true;
