select temp.id, temp.name, sum(temp.sc)
from (
select submissions.hacker_id id, name, challenge_id, max(score) sc
from submissions, hackers
where submissions.hacker_id = hackers.hacker_id
group by submissions.hacker_id, name, challenge_id
order by submissions.hacker_id, challenge_id) temp
group by temp.id, temp.name
having sum(temp.sc) <> 0
order by 3 desc, temp.id;
