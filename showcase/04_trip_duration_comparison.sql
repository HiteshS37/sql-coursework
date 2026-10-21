-- From my coursework: coursework/C5M3_HOP3_T2_sq.sql
-- In this exercise, I compared a bike trip's duration with the average at its starting station.
-- The result shows differences from an average; it does not explain why a trip was longer.
-- Main concepts: correlated subqueries, AVG, ROUND, ORDER BY and LIMIT.

SELECT
  starttime,
  start_station_id,
  tripduration,
  ( 
    SELECT ROUND(AVG(tripduration),2) 
    FROM `bigquery-public-data.new_york_citibike.citibike_trips` 
    WHERE start_station_id = outer_trips.start_station_id
  ) AS avg_duration_for_station,
 ROUND(tripduration - (
    SELECT AVG(tripduration)
    FROM `bigquery-public-data.new_york_citibike.citibike_trips`
    WHERE start_station_id = outer_trips.start_station_id),2) AS difference_from_avg
FROM `bigquery-public-data.new_york_citibike.citibike_trips` AS outer_trips
ORDER BY difference_from_avg DESC
LIMIT 25;