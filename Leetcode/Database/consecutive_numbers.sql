select distinct a.num as consecutivenums
from logs a, logs b, logs c
where a.num = b.num and b.num = c.num
and a.id = b.id - 1 and b.id = c.id - 1

SELECT DISTINCT num
FROM
(
SELECT num,LEAD(num) OVER(ORDER BY id) AS lead, LAG(num) OVER (ORDER BY id) AS lag
FROM logs
) as t
WHERE num=lead and num=lag;
