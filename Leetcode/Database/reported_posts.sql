select extra as report_reason, count(distinct post_id) report_count
from actions
where action_date = to_date('2019-07-05','YYYY-MM-DD')-1
and extra is not null
and action = 'report'
group by extra;
