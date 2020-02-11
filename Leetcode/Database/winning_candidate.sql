select candidate.name
from candidate, vote
where candidate.id = candidateid
group by name
having count(candidate.id) = (select max(count(candidateid)) from vote group by candidateid)
