SELECT
 *
FROM
 bigquery-public-data.sdoh_cdc_wonder_natality.county_natality
ORDER BY --sort order func
 BIRTHS -- sorting to Births col
LIMIT
 10