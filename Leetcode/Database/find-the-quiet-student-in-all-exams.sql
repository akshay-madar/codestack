# Write your MySQL query statement below
select distinct exam.student_id student_id, student_name
from student inner join exam
on student.student_id = exam.student_id
where exam.student_id not in (
select distinct student_id
from exam inner join (
select exam_id, min(score) mn, max(score) mx
from exam
group by exam_id) tb
on exam.exam_id = tb.exam_id
where score = mn or score= mx)
order by exam.student_id;
