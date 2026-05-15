-- Last updated: 5/15/2026, 1:57:00 PM
# Write your MySQL query statement below
SELECT class
FROM Courses
GROUP BY 1
HAVING COUNT(student) >= 5