select project_id
from project
group by project_id
having count(employee_id) >= all (
    select count(employee_id)
    from project
    group by project_id);
