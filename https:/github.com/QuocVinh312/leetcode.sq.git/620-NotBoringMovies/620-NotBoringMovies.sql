-- Last updated: 5/4/2026, 11:36:53 AM
# Write your MySQL query statement below
SELECT *
FROM Cinema
WHERE description != 'boring' AND id % 2 <> 0
ORDER BY rating DESC