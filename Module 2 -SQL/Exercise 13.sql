use cts;

SELECT E.city, AVG(F.rating) as avg_rating 
FROM Events E 
JOIN Feedback F ON E.event_id = F.event_id 
GROUP BY E.city;

