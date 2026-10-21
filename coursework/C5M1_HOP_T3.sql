SELECT
 *
FROM
 bigquery-public-data.sdoh_cdc_wonder_natality.county_natality
ORDER BY --sort order func
 BIRTHS DESC-- sorting to Births col (ASC or DESC specifier)
LIMIT
 10