SELECT prod.product_name, sales.year, sales.price
FROM Product prod
INNER JOIN Sales sales ON prod.product_id = sales.product_id;
