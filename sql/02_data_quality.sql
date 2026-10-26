-- checking for false starts for the rides

SELECT

  COUNTIF(TIMESTAMP_DIFF(end_time, start_time, Minute)<2) AS short_duration_trips, 
  COUNTIF(distance_km = 0) AS zero_distance_trips

FROM `sql-practice-end-to-end.sql_practice.rides`  
