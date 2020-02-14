select project.project_id, project.employee_id
from project, employee, (select project_id, max(experience_years) a
                from project, employee
                where project.employee_id = employee.employee_id
                group by project_id) tmp
where project.project_id = tmp.project_id
and employee.experience_years = tmp.a
and project.employee_id = employee.employee_id
