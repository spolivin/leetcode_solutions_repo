SELECT T1.name Employee
FROM Employee T1
INNER JOIN Employee T2 ON T1.managerId = T2.id
WHERE T1.salary > T2.salary;
