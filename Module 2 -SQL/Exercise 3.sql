use cts;

SELECT U.user_id, U.full_name 
FROM Users U 
WHERE U.user_id NOT IN (SELECT user_id FROM Registrations WHERE registration_date >= NOW() - INTERVAL 90 DAY);
