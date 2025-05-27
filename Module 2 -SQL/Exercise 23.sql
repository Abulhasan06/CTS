use cts;
SELECT YEAR(R.registration_date) as year, MONTH(R.registration_date) as month, COUNT(R.registration_id) as registration_count 
FROM Registrations R 
WHERE R.registration_date >= NOW() - INTERVAL 12 MONTH 
GROUP BY YEAR(R.registration_date), MONTH(R.registration_date) 
ORDER BY year, month;
