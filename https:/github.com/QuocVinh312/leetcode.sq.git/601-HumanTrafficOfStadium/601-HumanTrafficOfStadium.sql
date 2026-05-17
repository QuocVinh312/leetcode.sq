-- Last updated: 5/17/2026, 1:54:26 PM
# Write your MySQL query statement below
WITH CTE AS (SELECT 
    id, 
    LAG(id,1) OVER(ORDER BY id) AS prev1, 
    LAG(id,2) OVER(ORDER BY id) AS prev2, 
    LEAD(id,1) OVER(ORDER BY id) AS next1,
    LEAD(id,2) OVER(ORDER BY id) AS next2,
    visit_date,
    people
FROM Stadium
WHERE people >= 100
)
SELECT id, visit_date, people
FROM CTE
WHERE 
    -- first
    next1 = id + 1 AND next2 = id + 2 OR
    -- mid
    id = prev1 + 1 AND id = next1 - 1 OR
    -- last
    id = prev1 + 1 AND id = prev2 + 2
ORDER BY visit_date