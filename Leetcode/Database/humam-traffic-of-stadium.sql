SELECT id, visit_date, people
FROM stadium
WHERE id IN (
    SELECT DISTINCT s1.id
    FROM
        stadium s1,
        stadium s2,
        stadium s3
    WHERE
        ((s1.id + 1 = s2.id AND s2.id + 1 = s3.id) OR
         (s3.id + 1 = s1.id AND s1.id + 1 = s2.id) OR
         (s2.id + 1 = s3.id AND s3.id + 1 = s1.id)) AND
        s1.people >= 100 AND
        s2.people >= 100 AND
        s3.people >= 100
) ORDER BY id;
