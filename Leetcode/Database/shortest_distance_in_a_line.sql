select min(abs(a.x - b.x)) shortest
from point a join point b
on a.x <> b.x;
