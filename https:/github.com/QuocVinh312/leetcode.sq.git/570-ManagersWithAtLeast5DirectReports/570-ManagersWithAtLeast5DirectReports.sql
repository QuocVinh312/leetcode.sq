-- Last updated: 5/13/2026, 10:03:19 AM
# Write your MySQL query statement below
SELECT e.name
FROM Employee AS e
LEFT JOIN Employee AS e1 ON e.id = e1.managerId
GROUP BY e.id
HAVING COUNT(e1.managerId) >= 5