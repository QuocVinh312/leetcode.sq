-- Last updated: 5/13/2026, 10:03:27 AM
# Write your MySQL query statement below
SELECT 
    DISTINCT email AS Email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1