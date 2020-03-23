select (case when grade <8 THEN NULL ELSE name END) name, grade, marks
from students,grades
where marks between min_Mark and Max_Mark
order by grade desc, name, isnull(name, marks);
