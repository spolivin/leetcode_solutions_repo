WITH t_1 AS
  (SELECT *
   FROM Students s
   CROSS JOIN Subjects),
     t_2 AS
  (SELECT student_id,
          subject_name,
          COUNT(subject_name) AS attended_exams
   FROM Examinations
   GROUP BY student_id,
            subject_name)
SELECT t_1.student_id,
       t_1.student_name,
       t_1.subject_name,
       COALESCE(t_2.attended_exams, 0) AS attended_exams
FROM t_1
LEFT OUTER JOIN t_2 ON (t_1.student_id = t_2.student_id)
AND (t_1.subject_name = t_2.subject_name)
ORDER BY t_1.student_id,
         t_1.subject_name
