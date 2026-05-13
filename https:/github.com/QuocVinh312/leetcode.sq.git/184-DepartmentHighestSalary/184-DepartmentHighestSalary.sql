-- Last updated: 5/13/2026, 10:03:24 AM
# Write your MySQL query statement below
WITH ranksalary AS (
    SELECT 
    d.name AS Department,
    e.name AS Employee,
    salary,
    DENSE_RANK() 
    OVER(PARTITION BY d.id ORDER BY e.salary DESC) AS ranksa
FROM Employee e
JOIN Department d ON e.departmentId = d.id
)

SELECT 
    Department,
    Employee,
    salary AS Salary
FROM ranksalary
WHERE ranksa = 1

