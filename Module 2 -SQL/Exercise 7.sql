use cts;
SELECT U.full_name, F.comments, E.title 
FROM Feedback F 
JOIN Users U ON F.user_id = U.user_id 
JOIN Events E ON F.event_id = E.event_id 
WHERE F.rating < 3;
