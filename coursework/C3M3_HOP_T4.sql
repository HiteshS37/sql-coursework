SELECT
 bike_id,
 rental_id,
 start_station_id,
 start_station_name
FROM
 `bigquery-public-data.london_bicycles.cycle_hire`
WHERE
 bike_id = 1710;