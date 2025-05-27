use cts;
SELECT E.event_id, E.title, 
       COUNT(R.user_id) as total_registrations, 
       AVG(F.rating) as avg_feedback_rating 
FROM Events E 
JOIN Registrations R ON E.event_id = R.event_id 
JOIN Feedback F ON E.event_id = F.event_id 
WHERE E.status = 'completed' 
GROUP BY E.event_id, E.title;
