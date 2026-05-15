-- Last updated: 5/15/2026, 1:56:57 PM
# Write your MySQL query statement below
SELECT player_id, MIN(event_date) first_login
FROM Activity
GROUP BY 1