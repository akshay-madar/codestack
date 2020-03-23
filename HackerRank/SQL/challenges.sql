select h.hacker_id, h.name, count(c.challenge_id) as total from hackers h, challenges c where h.hacker_id=c.hacker_id group by h.hacker_id, h.name
having count(c.challenge_id) in
--either in max
( select max(total) from ( select count(*) as total from challenges group by hacker_id )
) or count(c.challenge_id) in
--or should occur only once
( select total from ( select count(*) as total from challenges group by hacker_id) group by total having count(total)=1
) order by count(c.challenge_id) desc, h.hacker_id ;
