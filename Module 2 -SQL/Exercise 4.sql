use cts;


SELECT E.event_id, E.title, COUNT(S.session_id) as session_count 
FROM Events E 
JOIN Sessions S ON E.event_id = S.event_id 
WHERE TIME(S.start_time) BETWEEN '10:00:00' AND '12:00:00' 
GROUP BY E.event_id, E.title;
