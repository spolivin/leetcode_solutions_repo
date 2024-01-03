SELECT product_name,
       SUM(unit) unit
FROM Products
INNER JOIN Orders ON Products.product_id = Orders.product_id
WHERE EXTRACT(MONTH
              FROM order_date) = 2
  AND EXTRACT(YEAR
              FROM order_date) = 2020
GROUP BY product_name
HAVING SUM(unit) >= 100;
