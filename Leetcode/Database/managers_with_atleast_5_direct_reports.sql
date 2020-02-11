select employee.name
from employee, (select managerid, count(managerid)
from employee
group by managerid
having count(managerid) >= 5) b
where employee.id = b.managerid
