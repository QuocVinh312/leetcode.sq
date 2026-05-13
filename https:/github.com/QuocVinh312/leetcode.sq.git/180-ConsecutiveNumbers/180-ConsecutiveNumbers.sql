-- Last updated: 5/13/2026, 10:03:30 AM
# Write your MySQL query statement below
WITH CTE AS (
    SELECT 
        *, 
        LAG(num,1) OVER(ORDER BY id) as truoc,
        LEAD(num,1) OVER(ORDER BY id) as sau
    FROM Logs
)

SELECT DISTINCT num AS ConsecutiveNums
FROM CTE
WHERE num = truoc AND num = sau

