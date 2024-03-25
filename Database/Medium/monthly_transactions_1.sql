SELECT t_1.month,
       t_1.country,
       t_1.trans_count,
       COALESCE(t_2.approved_count, 0) AS approved_count,
       t_1.trans_total_amount,
       COALESCE(t_2.approved_total_amount, 0) AS approved_total_amount
FROM
  (SELECT TO_CHAR(trans_date, 'YYYY-MM') AS MONTH,
          country,
          COUNT(id) AS trans_count,
          SUM(amount) AS trans_total_amount
   FROM Transactions
   GROUP BY TO_CHAR(trans_date, 'YYYY-MM'),
            country) AS t_1
LEFT OUTER JOIN
  (SELECT TO_CHAR(trans_date, 'YYYY-MM') AS MONTH,
          country,
          COUNT(id) AS approved_count,
          SUM(amount) AS approved_total_amount
   FROM Transactions
   WHERE state = 'approved'
   GROUP BY TO_CHAR(trans_date, 'YYYY-MM'),
            country) AS t_2 ON (t_1.month = t_2.month
                                AND t_1.country = t_2.country)
OR (t_1.country IS NULL
    AND t_2.country IS NULL);
