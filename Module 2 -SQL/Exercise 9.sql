use cts;
SELECT U.user_id, U.full_name, 
       COUNT(E.event_id) as total_events, 
       SUM(CASE WHEN E.status = 'upcoming' THEN 1 ELSE 0 END) as upcoming_events, 
       SUM(CASE WHEN E.status = 'completed' THEN 1 ELSE 0 END) as completed_events 
FROM Users U 
JOIN Events E ON U.user_id = E.organizer_id 
GROUP BY U.user_id, U.full_name;
