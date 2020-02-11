select candidate.name
from candidate, vote
where candidate.id = CandidateId
group by name
having count(candidate.id) = (select max(count(candidateId)) from vote group by candidateid)
