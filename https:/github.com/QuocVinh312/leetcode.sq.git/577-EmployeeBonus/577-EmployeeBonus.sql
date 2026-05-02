-- Last updated: 5/2/2026, 5:02:04 PM
# Write your MySQL query statement below
SELECT name, bonus
FROM Employee AS e
LEFT JOIN Bonus AS b ON e.empID = b.empID
WHERE bonus < 1000 OR bonus IS NULL
