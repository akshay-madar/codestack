select student_id,
min(course_id) as course_id,
max(grade) as grade
from Enrollments
where (student_id, grade) in (select student_id, max(grade) from enrollments group by student_id)
group by student_id
order by student_id
