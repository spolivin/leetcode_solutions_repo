WITH t_1 AS
  (SELECT machine_id,
          SUM(timestamp::numeric) / COUNT(DISTINCT process_id) AS end_time
   FROM Activity
   WHERE activity_type = 'end'
   GROUP BY machine_id),
     t_2 AS
  (SELECT machine_id,
          SUM(timestamp::numeric) / COUNT(DISTINCT process_id) AS start_time
   FROM Activity
   WHERE activity_type = 'start'
   GROUP BY machine_id)
SELECT t_1.machine_id,
       ROUND(t_1.end_time - t_2.start_time, 3) AS processing_time
FROM t_1
INNER JOIN t_2 ON t_1.machine_id = t_2.machine_id;
