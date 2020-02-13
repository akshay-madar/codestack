select id, count(id) as num from
(select requester_id as id from request_accepted
union all
select accepter_id as id from request_accepted) as tmp
group by id
order by count(id) desc
limit 1 # fetch next 1 rows only - oracle
