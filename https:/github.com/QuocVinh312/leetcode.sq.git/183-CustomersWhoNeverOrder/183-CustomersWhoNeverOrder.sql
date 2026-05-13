-- Last updated: 5/13/2026, 10:03:25 AM
# Write your MySQL query statement below
SELECT name as Customers
FROM Customers c
LEFT JOIN Orders o ON c.id = o.customerId
WHERE customerId IS NULL