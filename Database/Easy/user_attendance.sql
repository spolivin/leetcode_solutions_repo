WITH t_1 AS
  (SELECT r.contest_id,
          COUNT(r.user_id) AS user_count
   FROM Register r
   LEFT OUTER JOIN Users u ON r.user_id = u.user_id
   GROUP BY r.contest_id)
SELECT t_1.contest_id,
       ROUND(100 * t_1.user_count::numeric / t.total_count, 2) AS percentage
FROM t_1
CROSS JOIN
  (SELECT COUNT(*) AS total_count
   FROM Users) t
ORDER BY percentage DESC,
         t_1.contest_id;
