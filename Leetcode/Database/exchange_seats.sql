select (case
        when mod(id, 2) != 0 and id != counts then id+1
        when mod(id, 2) != 0 and id = counts then id
        else id-1
        end) id,
        student
from seat,
        (select count(*) counts from seat) ct
order by id
