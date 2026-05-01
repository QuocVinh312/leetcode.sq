-- Last updated: 5/1/2026, 2:01:42 PM
# Write your MySQL query statement below

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15