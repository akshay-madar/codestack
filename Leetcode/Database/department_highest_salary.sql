select department.name department, employee.name employee , salary
from employee, department
where employee.departmentid = department.id
and (employee.departmentid, salary)
in (select departmentid, max(salary) from employee group by departmentid);
