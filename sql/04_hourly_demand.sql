-- peak hours

SELECT

  EXTRACT(HOUR FROM start_time) AS hour_of_day,
  COUNT (*) AS ride_count

FROM `sql-practice-end-to-end.sql_practice.rides`  

GROUP by hour_of_day 
ORDER BY hour_of_day 
