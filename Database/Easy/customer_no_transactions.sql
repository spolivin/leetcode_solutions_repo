SELECT visits.customer_id, COUNT(visits.customer_id) count_no_trans
FROM Visits visits
LEFT JOIN Transactions transactions ON visits.visit_id = transactions.visit_id
WHERE transactions.transaction_id IS NULL
GROUP BY visits.customer_id;
