-- Last updated: 5/4/2026, 4:48:54 PM
# Write your MySQL query statement below
WITH CTE AS (SELECT 
    *, 
    ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date ASC) AS rankday, 
    CASE WHEN customer_pref_delivery_date = order_date THEN 1 ELSE 0 END AS isimmediate
    FROM Delivery
)
SELECT ROUND(SUM(isimmediate)/SUM(rankday)*100,2) immediate_percentage
FROM CTE
WHERE rankday = 1