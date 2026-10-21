-- From my coursework: coursework/C5M1_HOP2_T1.sql
-- I used this exercise to practise parsing dates and handling missing weather values.
-- It reads observations from two New York airport stations in the 2019 table.
-- Main concepts: PARSE_DATE, CONCAT, IF, CAST and conditional NULL handling.

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