-- Last updated: 5/13/2026, 10:03:35 AM
WITH CTE AS (
    SELECT
    *,
    DENSE_RANK() OVER(ORDER BY salary DESC) AS salary_rank
    FROM Employee
)
SELECT MAX(salary) AS SecondHighestSalary
FROM CTE
WHERE salary_rank = 2
