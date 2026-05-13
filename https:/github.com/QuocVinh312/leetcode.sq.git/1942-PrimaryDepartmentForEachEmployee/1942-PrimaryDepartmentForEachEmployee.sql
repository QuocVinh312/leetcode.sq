-- Last updated: 5/13/2026, 10:03:05 AM
# Write your MySQL query statement below
WITH CTE AS (
    SELECT
        *,
        COUNT(department_id) OVER(PARTITION BY employee_id) AS c
    FROM Employee
    GROUP BY employee_id, department_id
)

SELECT employee_id, department_id
FROM CTE
WHERE primary_flag = 'Y' OR c = 1