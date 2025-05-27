use cts;
SELECT E.event_id, E.title 
FROM Events E 
JOIN Registrations R ON E.event_id = R.event_id 
WHERE E.event_id NOT IN (SELECT event_id FROM Feedback) 
GROUP BY E.event_id, E.title;
