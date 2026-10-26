--- different membership
SELECT
  u.membership_level,
  COUNT(r.ride_id) AS total_rides,
  AVG(r.distance_km) AS avg_distance_km,
  AVG(TIMESTAMP_DIFF(r.end_time, r.start_time, Minute)) AS avg_duration_mins


FROM `sql-practice-end-to-end.sql_practice.rides` AS r
JOIN `sql-practice-end-to-end.sql_practice.users` AS u
  ON r.user_id = u.user_id

GROUP BY u.membership_level
order by total_rides DESC
