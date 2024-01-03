SELECT T.class
FROM
  (SELECT CLASS,
          COUNT(student)
   FROM Courses
   GROUP BY CLASS) T
WHERE T.count >= 5;
