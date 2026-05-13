-- Last updated: 5/13/2026, 10:03:22 AM
# Write your MySQL query statement below
WITH ranksalary AS(
SELECT
    e.name AS Employee,
    e.salary AS Salary,
    d.name AS Department,
    DENSE_RANK() OVER(PARTITION BY d.id ORDER BY e.salary DESC) AS ranksa
FROM Employee e
JOIN Department d ON e.departmentId = d.id
)

SELECT  
    Department,
    Employee,
    MAX(Salary) AS Salary
FROM ranksalary
WHERE ranksa IN(1,2,3)
GROUP BY Department, Employee
    