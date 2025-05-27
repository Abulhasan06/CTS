use cts;

SELECT registration_date, COUNT(user_id) as new_user_count 
FROM Users 
WHERE registration_date >= NOW() - INTERVAL 7 DAY 
GROUP BY registration_date;
