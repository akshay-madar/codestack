select dept_name, nvl(count(student_id), 0) student_number
from department, student
where department.dept_id = student.dept_id(+)
group by dept_name
order by count(student_id) desc, dept_name;
