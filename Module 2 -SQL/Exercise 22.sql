use cts;
SELECT R.user_id, R.event_id, COUNT(R.registration_id) as registration_count 
FROM Registrations R 
GROUP BY R.user_id, R.event_id 
HAVING COUNT(R.registration_id) > 1;
