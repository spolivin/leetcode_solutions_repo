SELECT T.class
FROM (
  SELECT class, 
         COUNT(student)
  FROM Courses
  GROUP BY class
) T
WHERE T.count >= 5;
