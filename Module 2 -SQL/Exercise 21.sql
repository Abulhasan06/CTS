use cts;
SELECT U.user_id, U.full_name, COUNT(F.feedback_id) as feedback_count 
FROM Users U 
JOIN Feedback F ON U.user_id = F.user_id 
GROUP BY U.user_id, U.full_name 
ORDER BY feedback_count DESC 
LIMIT 5;
