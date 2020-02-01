select project_id, round(avg(experience_years), 2) average_years
from project join employee
on project.employee_id = employee.employee_id
group by project_id;
