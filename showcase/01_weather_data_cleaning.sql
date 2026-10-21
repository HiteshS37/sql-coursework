-- Source: coursework/C5M1_HOP2_T1.sql
-- Coursework query supplied by Hitesh Srinivas.
-- Documentation added with AI assistance; query logic preserved.
-- Question: Prepare weather observations for two New York airport stations.
-- Concepts: PARSE_DATE, CONCAT, IF, CAST, missing-value handling
-- Interpretation: One observation per source row, sorted by date and station. This query reads the 2019 table; it does not generate 2020 observations.
-- Validation: static review only; not executed against BigQuery in this review.

SELECT
 stn,
 PARSE_DATE('%Y%m%d', CONCAT(year, mo, da)) AS date,
 IF (
     temp = 9999.9,
     NULL,
     temp) AS temperature,
 IF (
     wdsp = "999.9",
     NULL,
     CAST(wdsp AS FLOAT64)) AS wind_speed,
 IF (
     prcp = 99.99,
     NULL,
     prcp) AS precipitation
FROM
 `bigquery-public-data.noaa_gsod.gsod2019`
WHERE
 stn = "725030"  --La Guardia
 OR
 stn = "744860"  --JFK
ORDER BY
 date DESC,
 stn ASC