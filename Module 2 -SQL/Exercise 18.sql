use cts;
SELECT E.event_id, E.title 
FROM Events E 
WHERE E.event_id NOT IN (SELECT event_id FROM Resources);
