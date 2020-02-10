select post_id, count(distinct s2.sub_id) number_of_comments
from (select distinct sub_id as post_id
from submissions
where parent_id is null) s1, submissions s2
where s1.post_id = s2.parent_id(+)
group by post_id
order by post_id;
