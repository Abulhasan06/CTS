use cts;
SELECT E.event_id, E.title, 
       COUNT(Re.resource_id) as total_resources, 
       SUM(CASE WHEN Re.resource_type = 'pdf' THEN 1 ELSE 0 END) as pdf_count, 
       SUM(CASE WHEN Re.resource_type = 'image' THEN 1 ELSE 0 END) as image_count, 
       SUM(CASE WHEN Re.resource_type = 'link' THEN 1 ELSE 0 END) as link_count 
FROM Events E 
LEFT JOIN Resources Re ON E.event_id = Re.event_id 
GROUP BY E.event_id, E.title;

