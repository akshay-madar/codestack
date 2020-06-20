# Write your MySQL query statement below
select salaries.company_id, salaries.employee_id, salaries.employee_name,
case
    when tb.mx_salary < 1000 then salaries.salary
    when tb.mx_salary between 1000 and 10000 then round(salaries.salary - salaries.salary*(0.24),0)
    else round(salaries.salary - salaries.salary*(0.49), 0) end salary
from salaries inner join
(select company_id, max(salary) mx_salary from salaries group by company_id) tb
on salaries.company_id = tb.company_id;
