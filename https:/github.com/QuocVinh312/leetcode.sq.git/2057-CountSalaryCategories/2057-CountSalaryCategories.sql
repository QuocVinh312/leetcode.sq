-- Last updated: 5/13/2026, 10:03:07 AM
# Write your MySQL query statement below
WITH CTE AS (SELECT 
    *,
    CASE 
        WHEN income < 20000 THEN 'Low Salary'
        WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
        ELSE 'High Salary'
    END AS category
FROM Accounts
)
SELECT
    category, COUNT(category) AS accounts_count
FROM CTE
WHERE category = 'Low Salary'

UNION

SELECT
    'Average Salary', COUNT(category) AS accounts_count
FROM CTE
WHERE category = 'Average Salary'

UNION

SELECT
    'High Salary', COUNT(category) AS accounts_count
FROM CTE
WHERE category = 'High Salary'

