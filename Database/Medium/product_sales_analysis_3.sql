SELECT sales.product_id,
       sales.year AS first_year,
       sales.quantity,
       sales.price
FROM Product AS prod
INNER JOIN Sales AS sales ON prod.product_id = sales.product_id
WHERE (sales.product_id,
       sales.year) IN
    (SELECT product_id,
            MIN(YEAR)
     FROM Sales
     GROUP BY product_id);
