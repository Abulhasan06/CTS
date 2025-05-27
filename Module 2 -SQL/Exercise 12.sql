use cts;
SELECT E.event_id, E.title, COUNT(S.session_id) as session_count 
FROM Events E 
JOIN Sessions S ON E.event_id = S.event_id 
GROUP BY E.event_id, E.title 
ORDER BY session_count DESC 
LIMIT 1;

