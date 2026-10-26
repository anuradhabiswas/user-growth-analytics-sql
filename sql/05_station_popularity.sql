-- Find the 10 most popular starting stations

SELECT
    s.station_name,
    COUNT(r.ride_id) AS total_starts

FROM `sql-practice-end-to-end.sql_practice.rides` AS r
JOIN `sql-practice-end-to-end.sql_practice.stations` AS s
    ON r.start_station_id = s.station_id

GROUP BY s.station_name
ORDER BY total_starts DESC
LIMIT 10;
