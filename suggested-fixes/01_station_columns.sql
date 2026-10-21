-- AI-assisted correction of C3M3_HOP_T3.sql. Not a newly completed independent project.
-- Adds the missing comma so both columns are selected. Not executed in BigQuery.
SELECT
 start_station_name,
 start_station_id
FROM
 `bigquery-public-data.london_bicycles.cycle_hire`
WHERE
 start_station_id = 111;