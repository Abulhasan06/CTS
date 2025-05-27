use cts;
SELECT U.user_id, U.full_name 
FROM Users U 
WHERE U.registration_date >= NOW() - INTERVAL 30 DAY 
AND U.user_id NOT IN (SELECT user_id FROM Registrations);
