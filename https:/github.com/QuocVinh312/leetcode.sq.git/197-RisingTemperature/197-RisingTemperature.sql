-- Last updated: 5/2/2026, 3:26:21 PM
# Write your MySQL query statement below
SELECT id
FROM Weather as w1
wHERE w1.temperature > (
    SELECT w2.temperature
    FROM Weather as w2
    WHERE w2.recordDate = w1.recordDate - INTERVAL 1 DAY
)



