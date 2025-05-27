use cts;
SELECT speaker_name, COUNT(session_id) as session_count 
FROM Sessions 
GROUP BY speaker_name 
HAVING COUNT(session_id) > 1;
