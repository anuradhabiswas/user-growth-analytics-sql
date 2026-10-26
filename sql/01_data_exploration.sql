SELECT * FROM `sql-practice-end-to-end.sql_practice.rides` LIMIT 1000

SELECT * FROM `sql-practice-end-to-end.sql_practice.stations` LIMIT 1000

SELECT * FROM `sql-practice-end-to-end.sql_practice.users` LIMIT 1000


-- get count of rows per table
SELECT
  (SELECT COUNT(*) FROM `sql-practice-end-to-end.sql_practice.rides`) AS total_rides,
  (SELECT COUNT(*) FROM `sql-practice-end-to-end.sql_practice.stations`) AS total_stations,
  (SELECT COUNT(*) FROM `sql-practice-end-to-end.sql_practice.users`) AS total_users


-- check for missing values
SELECT

COUNTIF(ride_id IS NULL) AS null_ride_ids, 
COUNTIF(user_id IS NULL) AS null_user_id, 
COUNTIF(start_time IS NULL) AS null_start_time, 
COUNTIF(end_time IS NULL) AS null_end_time 


FROM `sql-practice-end-to-end.sql_practice.rides`  

-- Summary statistics for the rides table

SELECT

  MIN(distance_km) AS min_dst,
  MAX(distance_km) AS max_dst,
  AVG(distance_km) AS avg_dst,
  MIN(TIMESTAMP_DIFF(end_time, start_time, Minute)) AS min_duration_mins,
  MAX(TIMESTAMP_DIFF(end_time, start_time, Minute)) AS max_duration_mins,
  AVG(TIMESTAMP_DIFF(end_time, start_time, Minute)) AS avg_duration_mins


FROM `sql-practice-end-to-end.sql_practice.rides`  
