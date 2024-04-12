SELECT p.product_id,
       COALESCE(ROUND(SUM(p.price * us.units)::numeric / SUM(us.units)::numeric, 2), 0) AS average_price
FROM Prices p
LEFT OUTER JOIN UnitsSold us ON p.product_id = us.product_id
AND us.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
