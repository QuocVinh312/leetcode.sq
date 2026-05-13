-- Last updated: 5/13/2026, 10:03:31 AM
# Write your MySQL query statement below
SELECT 
    score, 
    DENSE_RANK() OVER(ORDER BY score DESC) AS 'rank'
FROM Scores