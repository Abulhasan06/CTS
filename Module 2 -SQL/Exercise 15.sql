use cts;

SELECT S1.event_id, S1.title, S2.title 
FROM Sessions S1 
JOIN Sessions S2 ON S1.event_id = S2.event_id 
WHERE S1.session_id < S2.session_id 
AND S1.start_time < S2.end_time 
AND S2.start_time < S1.end_time;

