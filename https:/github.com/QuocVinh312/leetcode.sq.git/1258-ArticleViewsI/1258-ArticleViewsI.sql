-- Last updated: 5/1/2026, 1:09:26 PM
# Write your MySQL query statement below

SELECT author_id as id
FROM Views
WHERE author_id = viewer_id
GROUP BY author_id
ORDER BY author_id
