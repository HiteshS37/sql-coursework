-- AI-assisted correction of C5M1_HOP2_T2.sql; not executed in BigQuery.
-- Applies the date condition to both airport stations.
-- June 2020 is retained from the submitted query, not independently verified.
-- Check that nyc_weather contains 2020 data: C5M1_HOP2_T1.sql reads gsod2019.
SELECT AVG(temperature) AS average_temperature
FROM `YOUR_PROJECT_ID.demos.nyc_weather`
WHERE date BETWEEN '2020-06-01' AND '2020-06-30'
  AND stn IN ('725030', '744860');
