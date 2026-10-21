-- Source: coursework/C5M3_HOP_T2_join.sql
-- Coursework query supplied by Hitesh Srinivas.
-- Documentation added with AI assistance; query logic preserved.
-- Question: Summarise the secondary-school-age population by region for 2015.
-- Concepts: INNER JOIN, SUM, GROUP BY, filtering
-- Interpretation: One row per region. Confirm country_summary has one matching row per country code before treating the sums as validated.
-- Validation: static review only; not executed against BigQuery in this review.

SELECT
summary.region,
SUM(edu.value) secondary_edu_population
FROM
   `bigquery-public-data.world_bank_intl_education.international_education` AS edu
INNER JOIN
 `bigquery-public-data.world_bank_intl_education.country_summary` AS summary
ON edu.country_code = summary.country_code 
 WHERE summary.region IS NOT NULL
 AND edu.indicator_name = 'Population of the official age for secondary education, both sexes (number)'
 AND edu.year = 2015
GROUP BY summary.region
ORDER BY secondary_edu_population DESC
