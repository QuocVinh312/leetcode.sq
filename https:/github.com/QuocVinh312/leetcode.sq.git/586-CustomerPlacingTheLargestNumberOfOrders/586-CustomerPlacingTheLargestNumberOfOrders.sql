-- Last updated: 5/15/2026, 1:57:02 PM
# Write your MySQL query statement below
WITH countorder AS (
    SELECT customer_number, COUNT(order_number) AS countn
    FROM Orders
    GROUP BY customer_number
    )

SELECT customer_number
FROM countorder
WHERE countn = (SELECT MAX(countn) FROM countorder)