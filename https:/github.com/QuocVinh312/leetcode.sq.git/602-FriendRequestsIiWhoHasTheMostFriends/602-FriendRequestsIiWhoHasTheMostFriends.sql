-- Last updated: 5/17/2026, 1:54:24 PM
# Write your MySQL query statement below
WITH CTE AS (
    SELECT requester_id
    FROM RequestAccepted
    UNION ALL
    SELECT accepter_id
    FROM RequestAccepted
)
SELECT requester_id AS id, COUNT(*) AS num
FROM CTE
GROUP BY 1
ORDER BY num DESC
LIMIT 1