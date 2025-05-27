use cts;
SELECT E.title, E.start_date, E.end_date 
FROM Events E 
JOIN Registrations R ON E.event_id = R.event_id 
JOIN Users U ON R.user_id = U.user_id 
WHERE U.user_id = 1 AND E.status = 'upcoming' AND E.city = U.city 
ORDER BY E.start_date;
