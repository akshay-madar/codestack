select distinct a.num as consecutivenums
from logs a, logs b, logs c
where a.num = b.num and b.num = c.num
and a.id = b.id - 1 and b.id = c.id - 1
