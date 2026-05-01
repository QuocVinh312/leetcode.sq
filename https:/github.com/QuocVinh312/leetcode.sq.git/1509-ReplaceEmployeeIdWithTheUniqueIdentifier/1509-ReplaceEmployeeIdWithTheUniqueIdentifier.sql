-- Last updated: 5/1/2026, 2:01:44 PM
# Write your MySQL query statement below
SELECT unique_id, name
FROM Employees
LEFT JOIN EmployeeUNI ON Employees.id = EmployeeUNI.id
