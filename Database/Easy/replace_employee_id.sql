SELECT unique_id, name
FROM Employees AS emp
LEFT JOIN EmployeeUNI AS emp_unq ON emp.id = emp_unq.id;
