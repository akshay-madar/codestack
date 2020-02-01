select a.ad_id, ROUND(case when SUM(case when action = 'Ignored' then 0 else 1 end) +
SUM(case when action != 'Viewed' then 0 else 1 end) = 0 then 0 else
SUM(case when action = 'Clicked' then 1 else 0 end) /
(SUM(case when action = 'Clicked' then 1 else 0 end) + SUM(case when action = 'Viewed' then 1 else 0 end)) * 100 end,2) ctr
from Ads a
group by a.ad_id
order by 2 desc, 1 asc



SELECT ad_id, CASE
              WHEN SUM(if(action = 'Clicked', 1, 0))+SUM(if(action = 'Viewed', 1, 0)) = 0 THEN                   0.00
              ELSE ROUND(100*(SUM(if(action = 'Clicked',1,0))/(SUM(if(action = 'Clicked',1,0))+SUM(if(action = 'Viewed',1,0)))), 2) END ctr
FROM Ads
GROUP BY 1
ORDER BY 2 DESC, 1
