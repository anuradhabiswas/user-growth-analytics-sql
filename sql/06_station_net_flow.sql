-- Categorozing rides into Short, Medium and Long
SELECT
  CASE
    WHEN TIMESTAMP_DIFF(end_time, start_time, Minute) <= 10 THEN 'Short(<10m)'
    WHEN TIMESTAMP_DIFF(end_time, start_time, Minute) BETWEEN 11 AND 30 THEN 'Medium (11-30m)' 
    ELSE 'LONG (>30m)'
  END AS ride_category,
  COUNT(*) AS count_of_rides
FROM `sql-practice-end-to-end.sql_practice.rides` 
GROUP By ride_category
ORDER BY count_of_rides DESC;



--- net flow for each station

WITH departures AS(

    SELECT start_station_id, COUNT(*) AS total_departures
    FROM `sql-practice-end-to-end.sql_practice.rides` 
    GROUP BY 1
),

 arrivals AS(

    SELECT end_station_id, COUNT(*) AS total_arrivals
    FROM `sql-practice-end-to-end.sql_practice.rides` 
    GROUP BY 1

 )


 SELECT
  s.station_name,
  d.total_departures,
  a.total_arrivals,
  (a.total_arrivals - d.total_departures) AS net_flow

 FROM `sql-practice-end-to-end.sql_practice.stations` AS s
 JOIN departures d ON s.station_id = d.start_station_id
 JOIN arrivals a ON s.station_id = a.end_station_id

 ORDER BY net_flow ASC



 -- user retention


WITH monthly_signups AS(

  SELECT 
    DATE_TRUNC(created_at, MONTH) AS signup_month,
    COUNT(user_id) AS new_user_count
  FROM `sql-practice-end-to-end.sql_practice.users`
  GROUP BY signup_month

)

SELECT
  signup_month,
  new_user_count,
  LAG(new_user_count) OVER(ORDER BY signup_month) AS previous_month_count,

  (new_user_count - LAG(new_user_count) OVER(ORDER BY signup_month))/
  NULLIF(LAG(new_user_count) OVER (ORDER BY signup_month),0)*100 AS mom_growth

FROM monthly_signups
order by signup_month


