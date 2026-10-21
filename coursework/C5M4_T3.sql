WITH trips_over_1_hr AS (
  SELECT *
  FROM `bigquery-public-data.new_york_citibike.citibike_trips`
  WHERE tripduration >= 3600
)

## Count how many trips are 60+ minutes long 

SELECT 
 COUNT(*) AS cnt
FROM trips_over_1_hr