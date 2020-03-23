SELECT NAME FROM Students a, Friends b, Packages c, Packages d WHERE a.ID = b.ID and a.ID = c.ID AND b.friend_id = d.ID AND c.salary < d.salary ORDER BY d.salary;
