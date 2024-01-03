SELECT T.Customers
FROM
  (SELECT Customers.name Customers,
          Orders.customerId
   FROM Customers
   LEFT JOIN Orders ON Customers.id = Orders.customerId) T
WHERE T.customerId IS NULL;
