-- Last updated: 5/13/2026, 10:03:21 AM
# Write your MySQL query statement below

DELETE
    p1
FROM Person p1, Person p2
WHERE 
    p1.email = p2.email
AND
    p1.id > p2.id


