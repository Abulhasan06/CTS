use cts;
SELECT E.event_id, E.title, AVG(TIMESTAMPDIFF(MINUTE, S.start_time, S.end_time)) as avg_duration 
FROM Events E 
JOIN Sessions S ON E.event_id = S.event_id 
GROUP BY E.event_id, E.title;
