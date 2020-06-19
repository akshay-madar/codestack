# Write your MySQL query statement below
select tb1.pay_month, tb1.department_id,
        case when tb1.a1 > tb2.a2 then 'higher'
            when tb1.a1 < tb2.a2 then 'lower'
            else 'same' end as comparison
from
(
select substring(pay_date, 1, 7) as pay_month, department_id, avg(amount) a1
from salary inner join employee
on salary.employee_id = employee.employee_id
group by 1, 2) tb1 inner join
(
select substring(pay_date, 1, 7) as pay_month, avg(amount) a2
from salary
group by 1) tb2
on tb1.pay_month = tb2.pay_month
group by 1, 2
order by 1 desc, 2;
