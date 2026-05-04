-- Last updated: 5/4/2026, 2:54:54 PM
# Write your MySQL query statement below
WITH CTE AS (
    SELECT u.user_id, contest_id, COUNT(contest_id) AS times
    FROM Users u
    JOIN Register s ON u.user_id = s.user_id
    GROUP BY u.user_id, contest_id
)

SELECT 
    contest_id, 
    ROUND(SUM(times)/(SELECT COUNT(DISTINCT user_id) FROM Users)*100,2) AS percentage
FROM CTE
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC