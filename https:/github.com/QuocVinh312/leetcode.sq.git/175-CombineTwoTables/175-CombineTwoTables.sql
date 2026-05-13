-- Last updated: 5/13/2026, 10:03:36 AM
# Write your MySQL query statement below
SELECT firstName, lastName, city, state
FROM Person
LEFT JOIN Address ON Person.personId = Address.personId