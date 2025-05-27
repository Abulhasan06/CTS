use cts;
SELECT E.event_id, E.title, COUNT(R.user_id) as registration_count 
FROM Events E 
JOIN Registrations R ON E.event_id = R.event_id 
GROUP BY E.event_id, E.title 
ORDER BY registration_count DESC 
LIMIT 3;
