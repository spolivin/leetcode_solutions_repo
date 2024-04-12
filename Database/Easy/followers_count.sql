SELECT DISTINCT user_id,
       COUNT(follower_id) OVER (PARTITION BY user_id) AS followers_count
FROM Followers
ORDER BY user_id;
