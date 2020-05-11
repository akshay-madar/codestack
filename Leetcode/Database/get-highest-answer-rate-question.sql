select question_id as survey_log from (
select question_id, sum(case when action = 'answer' then 1 else 0 end)/sum(case when action = 'show' then 1 else 0 end) as rate
from survey_log
group by question_id
order by 2 desc limit 1) tb1;
