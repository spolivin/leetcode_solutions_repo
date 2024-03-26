SELECT name
FROM Employee
WHERE id IN
    (SELECT managerId
     FROM Employee
     GROUP BY managerId
     HAVING COUNT(name) >= 5
     OR (COUNT(*) - COUNT(name) >= 5));
