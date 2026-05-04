-- Last updated: 5/4/2026, 4:49:01 PM
# Write your MySQL query statement below
WITH CTE AS (
    SELECT 
        player_id, 
        event_date,
        ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY event_date ASC) AS rankd
    FROM activity
),
CTE1 AS (
    SELECT player_id, DATEDIFF(MAX(event_date), MIN(event_date)) AS diffday
    FROM CTE
    WHERE rankd IN(1,2)
    GROUP BY player_id
    HAVING diffday = 1
)

SELECT ROUND(COUNT(*)/(SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM CTE1
