SELECT
 duration,
 start_station_name
FROM
 `bigquery-public-data.london_bicycles.cycle_hire`
WHERE
 duration >= 1200;