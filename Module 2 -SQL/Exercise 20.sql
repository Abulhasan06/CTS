use cts;
SELECT U.user_id, U.full_name, 
       COUNT(DISTINCT R.event_id) as events_attended, 
       COUNT(F.feedback_id) as feedbacks_submitted 
FROM Users U 
LEFT JOIN Registrations R ON U.user_id = R.user_id 
LEFT JOIN Feedback F ON U.user_id = F.user_id 
GROUP BY U.user_id, U.full_name;

