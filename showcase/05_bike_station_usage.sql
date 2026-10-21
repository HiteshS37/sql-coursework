-- Source: coursework/C5M4_HOP_T6.sql
-- Coursework query supplied by Hitesh Srinivas.
-- Documentation added with AI assistance; query logic preserved.
-- Question: Find the most frequent departure station of the bike with the greatest total recorded duration.
-- Concepts: CTE, INNER JOIN, SUM, COUNT, GROUP BY
-- Interpretation: One station for one selected bike. LIMIT 1 has no secondary tie-breaker; ties can select different bikes or stations.
-- Validation: static review only; not executed against BigQuery in this review.

WITH longest_bikes_used AS (
 SELECT  
 bike_id,
 SUM(duration_minutes) AS trip_duration
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips` 
GROUP BY bike_id
ORDER BY trip_duration DESC
LIMIT 1
)

## find station where the longest-used bike leaves most often. 

SELECT trips.start_station_id, 
 COUNT(*) AS trip_ct,
FROM longest_bikes_used AS longest
INNER JOIN
 `bigquery-public-data.austin_bikeshare.bikeshare_trips` AS trips
 ON longest.bike_id = trips.bike_id  
GROUP BY trips.start_station_id
ORDER BY trip_ct DESC
LIMIT 1

# To find the station where the longest-used bike left least frequently, run "ORDER BY trip_ct ASC" in the second occurance