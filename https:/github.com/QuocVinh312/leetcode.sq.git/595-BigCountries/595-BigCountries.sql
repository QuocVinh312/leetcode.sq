-- Last updated: 5/1/2026, 1:09:28 PM
# Write your MySQL query statement below

SELECT name, population, area
FROM World
WHERE population >= 25000000 OR area >= 3000000
