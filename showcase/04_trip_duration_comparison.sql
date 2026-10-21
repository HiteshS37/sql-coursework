-- Source: coursework/C5M3_HOP3_T2_sq.sql
-- Coursework query supplied by Hitesh Srinivas.
-- Documentation added with AI assistance; query logic preserved.
-- Question: Compare each bicycle trip with the average duration at its starting station.
-- Concepts: Correlated subqueries, AVG, ROUND, ORDER BY, LIMIT
-- Interpretation: Up to 25 trips with the largest positive differences. No anomaly threshold or cause is established.
-- Validation: static review only; not executed against BigQuery in this review.

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